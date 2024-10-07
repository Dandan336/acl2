// http://opensource.org/licenses/BSD-3-Clause

// Copyright (C) May - August 2023, Regents of the University of Texas
// Copyright (C) August 2023 - May 2024, Yahya Sohail
// Copyright (C) May 2024 - August 2024, Intel Corporation

// All rights reserved.

// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:

// o Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.

// o Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the distribution.

// o Neither the name of the copyright holders nor the names of its
//   contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.

// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

// Original Author(s):
// Yahya Sohail        <yahya.sohail@intel.com>

#include <arpa/inet.h>
#include <errno.h>
#include <fcntl.h>
#include <linux/kvm.h>
#include <netinet/in.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <unistd.h>

typedef uint64_t vm_ptr;

typedef int kvm_fd;

typedef struct {
  int fd;
  struct kvm_run *run;
  size_t run_size;
} vcpu;

typedef struct {
  int fd;
  vcpu vcpu;
  void *guest_mem;
} vm;

size_t kvm_get_vcpu_mmap_size(kvm_fd kvm) {
  return ioctl(kvm, KVM_GET_VCPU_MMAP_SIZE, NULL);
}

vm *vm_create(kvm_fd kvm) {
  vm *v = malloc(sizeof(vm));
  v->fd = ioctl(kvm, KVM_CREATE_VM, 0);
  v->vcpu.fd = ioctl(v->fd, KVM_CREATE_VCPU, 0);
  v->vcpu.run_size = kvm_get_vcpu_mmap_size(kvm);
  v->vcpu.run = mmap(NULL, v->vcpu.run_size, PROT_READ | PROT_WRITE, MAP_SHARED,
                     v->vcpu.fd, 0);
  return v;
}

void vm_link_mem(vm *v, uint16_t slot, vm_ptr g_addr, void *h_addr,
                 size_t len) {
  struct kvm_userspace_memory_region params = {.slot = slot,
                                               .flags = 0,
                                               .guest_phys_addr = g_addr,
                                               .userspace_addr =
                                                   (uint64_t)h_addr,
                                               .memory_size = len};
  ioctl(v->fd, KVM_SET_USER_MEMORY_REGION, &params);
}

void vcpu_cleanup(vcpu *vcpu) {
  munmap(vcpu->run, vcpu->run_size);
  close(vcpu->fd);
}

void vm_cleanup(vm *v) {
  vcpu_cleanup(&v->vcpu);
  close(v->fd);
}

typedef struct {
  struct kvm_regs regs;
  struct kvm_sregs sregs;
  struct kvm_msrs *msrs;
  void *mem;
} x86_model_state;

typedef struct {
  uint16_t selector;
  uint64_t base;
  uint32_t limit;
  uint16_t attr;
} __attribute__((packed)) segment_file;

typedef struct {
  uint64_t base;
  uint16_t limit;
} __attribute__((packed)) table_register_file;

typedef struct {
  uint64_t rax;
  uint64_t rcx;
  uint64_t rdx;
  uint64_t rbx;
  uint64_t rsp;
  uint64_t rbp;
  uint64_t rsi;
  uint64_t rdi;
  uint64_t r8;
  uint64_t r9;
  uint64_t r10;
  uint64_t r11;
  uint64_t r12;
  uint64_t r13;
  uint64_t r14;
  uint64_t r15;
} gprs_file;

typedef struct {
  gprs_file gprs;
  uint64_t rip;
  uint32_t rflags;
  segment_file cs, ds, es, fs, gs, ss, tr, ldt;
  table_register_file gdtr, idtr;
  uint64_t cr0, cr2, cr3, cr4, cr8;
  uint64_t efer, fs_base, gs_base;
} __attribute__((packed)) state_file;

typedef struct {
  uint64_t pg_addr;
  uint8_t contents[1 << 20];
} __attribute__((packed)) mem_file_element;

void segment_file_to_kvm_segment(struct kvm_segment *ks, segment_file *sf) {
  ks->selector = sf->selector;
  ks->base = sf->base;
  ks->limit = sf->limit;
  ks->type = sf->attr & 0xf;
  ks->present = (sf->attr >> 7) & 1;
  ks->dpl = (sf->attr >> 5) & 3;
  ks->db = (sf->attr >> 10) & 1;
  ks->s = (sf->attr >> 4) & 1;
  ks->l = (sf->attr >> 9) & 1;
  ks->g = (sf->attr >> 11) & 1;
  ks->avl = (sf->attr >> 8) & 1;
  ks->unusable = !ks->present || ks->type == 0;
}

void table_register_file_to_kvm_dtable(struct kvm_dtable *kd,
                                       table_register_file *trf) {
  kd->base = trf->base;
  kd->limit = trf->limit;
}

x86_model_state *load_state_from_file(char *filename) {
  x86_model_state *state = malloc(sizeof(x86_model_state));
  int fd = open(filename, O_RDONLY);
  state_file *file_contents =
      mmap(NULL, sizeof(state_file), PROT_READ, MAP_SHARED, fd, 0);

  // Copy gprs, rip, and rflags
  state->regs.rax = file_contents->gprs.rax;
  printf("file_contents->gprs.rax= %lx\n", file_contents->gprs.rax);
  state->regs.rcx = file_contents->gprs.rcx;
  printf("file_contents->gprs.rcx= %lx\n", file_contents->gprs.rcx);
  state->regs.rdx = file_contents->gprs.rdx;
  printf("file_contents->gprs.rdx= %lx\n", file_contents->gprs.rdx);
  state->regs.rbx = file_contents->gprs.rbx;
  printf("file_contents->gprs.rbx= %lx\n", file_contents->gprs.rbx);
  state->regs.rsp = file_contents->gprs.rsp;
  printf("file_contents->gprs.rsp= %lx\n", file_contents->gprs.rsp);
  state->regs.rbp = file_contents->gprs.rbp;
  printf("file_contents->gprs.rbp= %lx\n", file_contents->gprs.rbp);
  state->regs.rsi = file_contents->gprs.rsi;
  printf("file_contents->gprs.rsi= %lx\n", file_contents->gprs.rsi);
  state->regs.rdi = file_contents->gprs.rdi;
  printf("file_contents->gprs.rdi= %lx\n", file_contents->gprs.rdi);
  state->regs.r8 = file_contents->gprs.r8;
  printf("file_contents->gprs.r8= %lx\n", file_contents->gprs.r8);
  state->regs.r9 = file_contents->gprs.r9;
  printf("file_contents->gprs.r9= %lx\n", file_contents->gprs.r9);
  state->regs.r10 = file_contents->gprs.r10;
  printf("file_contents->gprs.r10= %lx\n", file_contents->gprs.r10);
  state->regs.r11 = file_contents->gprs.r11;
  printf("file_contents->gprs.r11= %lx\n", file_contents->gprs.r11);
  state->regs.r12 = file_contents->gprs.r12;
  printf("file_contents->gprs.r12= %lx\n", file_contents->gprs.r12);
  state->regs.r13 = file_contents->gprs.r13;
  printf("file_contents->gprs.r13= %lx\n", file_contents->gprs.r13);
  state->regs.r14 = file_contents->gprs.r14;
  printf("file_contents->gprs.r14= %lx\n", file_contents->gprs.r14);
  state->regs.r15 = file_contents->gprs.r15;
  printf("file_contents->gprs.r15= %lx\n", file_contents->gprs.r15);
  state->regs.rip = file_contents->rip;
  printf("file_contents->rip= %lx\n", file_contents->rip);
  state->regs.rflags = file_contents->rflags;
  printf("file_contents->rflags= %lx\n", file_contents->rflags);

  segment_file_to_kvm_segment(&state->sregs.cs, &file_contents->cs);
  segment_file_to_kvm_segment(&state->sregs.ds, &file_contents->ds);
  segment_file_to_kvm_segment(&state->sregs.es, &file_contents->es);
  segment_file_to_kvm_segment(&state->sregs.fs, &file_contents->fs);
  segment_file_to_kvm_segment(&state->sregs.gs, &file_contents->gs);
  segment_file_to_kvm_segment(&state->sregs.ss, &file_contents->ss);
  // segment_file_to_kvm_segment(&state->sregs.tr, &file_contents->tr);
  // segment_file_to_kvm_segment(&state->sregs.ldt, &file_contents->ldt);
  state->sregs.tr.type = 11;
  state->sregs.tr.s = 0;
  state->sregs.tr.present = 1;
  state->sregs.tr.g = 1;
  state->sregs.tr.limit = 0xFFFFF;
  state->sregs.tr.unusable = 0;
  state->sregs.tr.selector = 0;
  state->sregs.ldt.unusable = 1;
  table_register_file_to_kvm_dtable(&state->sregs.gdt, &file_contents->gdtr);
  table_register_file_to_kvm_dtable(&state->sregs.idt, &file_contents->idtr);
  state->sregs.cr0 = file_contents->cr0;
  state->sregs.cr2 = file_contents->cr2;
  state->sregs.cr3 = file_contents->cr3;
  printf("file_contents->cr3 = %lx\n", file_contents->cr3);
  state->sregs.cr4 = file_contents->cr4;
  state->sregs.cr8 = file_contents->cr8;
  state->sregs.efer = file_contents->efer;

  state->msrs = malloc(sizeof(*state->msrs) + 2 * sizeof(struct kvm_msr_entry));
  state->msrs->nmsrs = 2;
  state->msrs->entries[0].index = 0xC0000100;
  state->msrs->entries[0].data = file_contents->fs_base;
  state->msrs->entries[1].index = 0xC0000101;
  state->msrs->entries[1].data = file_contents->gs_base;

  struct stat st;
  fstat(fd, &st);
  state->mem =
      mmap(NULL, st.st_size, PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE,
           fd, sizeof(state_file) + (-sizeof(state_file) & 0xFFF));

  munmap(file_contents, sizeof(state_file));

  return state;
}

void vm_load_model_state(vm *v, x86_model_state *state) {
  ioctl(v->vcpu.fd, KVM_SET_REGS, &state->regs);

  // The sregs in the state doesn't have all the values valid, so
  // we pull the old sregs and then set the valid fields out of the state and
  // write it back
  struct kvm_sregs sregs;
  memset(&sregs, 0, sizeof(sregs));
  sregs.cs = state->sregs.cs;
  sregs.ds = state->sregs.ds;
  sregs.es = state->sregs.es;
  sregs.fs = state->sregs.fs;
  sregs.gs = state->sregs.gs;
  sregs.ss = state->sregs.ss;
  sregs.gdt = state->sregs.gdt;
  sregs.idt = state->sregs.idt;
  sregs.cr0 = state->sregs.cr0;
  sregs.cr2 = state->sregs.cr2;
  sregs.cr3 = state->sregs.cr3;
  sregs.cr4 = state->sregs.cr4;
  sregs.cr8 = state->sregs.cr8;
  sregs.efer = state->sregs.efer;
  sregs.tr = state->sregs.tr;
  sregs.ldt = state->sregs.ldt;
  memset(sregs.interrupt_bitmap, 0, sizeof(sregs.interrupt_bitmap));
  ioctl(v->vcpu.fd, KVM_SET_SREGS, &sregs);
  printf("set cr3: %lx\n", sregs.cr3);

  ioctl(v->vcpu.fd, KVM_SET_MSRS, state->msrs);

  v->guest_mem = state->mem;

  vm_link_mem(v, 0, 0, (void *)((uintptr_t)v->guest_mem), (4UL << 30));
}

static uint64_t translate_addr(vcpu *vc, uint64_t linear_address, bool *valid) {
  struct kvm_translation translation = {.linear_address = linear_address};
  ioctl(vc->fd, KVM_TRANSLATE, &translation);
  if (valid)
    *valid = translation.valid;
  return translation.physical_address;
}

// void vm_run_outside_hole_single_instruction(vm *v);

uint64_t vm_run(vm *v) {
  printf("%d err; errno: %d\n", ioctl(v->vcpu.fd, KVM_RUN, NULL), errno);
  printf("Exit reason: %d; hardware_exit_reason: %lx\n",
         v->vcpu.run->exit_reason,
         (uint64_t)v->vcpu.run->hw.hardware_exit_reason);

  struct kvm_regs regs;
  ioctl(v->vcpu.fd, KVM_GET_REGS, &regs);
  struct kvm_sregs sregs;
  ioctl(v->vcpu.fd, KVM_GET_SREGS, &sregs);
  printf("cr0 : %lx\n", (uint64_t)sregs.cr0);
  printf("cr2 : %lx\n", (uint64_t)sregs.cr2);
  printf("cr3 : %lx\n", (uint64_t)sregs.cr3);
  printf("rip : %lx\n", (uint64_t)regs.rip);
  bool valid_rip_trans;
  uint64_t physical_rip = translate_addr(&v->vcpu, regs.rip, &valid_rip_trans);
  uint8_t *arr = (uint8_t *)((uintptr_t)v->guest_mem + physical_rip);
  if (valid_rip_trans) {
    printf("Physical RIP: %lx\n", physical_rip);
    printf("Bytes at rip:\n");
    for (size_t idx = 0; idx < 0x100; idx++) {
      printf("%02x ", arr[idx]);
    }
  }
  printf("\nRAX: %lx\n", (uint64_t)regs.rax);
  printf("RAX (physical): %lx\n", translate_addr(&v->vcpu, regs.rax, NULL));
  printf("RBX: %lx\n", (uint64_t)regs.rbx);
  printf("RBX (physical): %lx\n", translate_addr(&v->vcpu, regs.rbx, NULL));
  printf("RCX: %lx\n", (uint64_t)regs.rcx);
  printf("RDX: %lx\n", (uint64_t)regs.rdx);
  printf("RDI: %lx\n", (uint64_t)regs.rdi);
  uint64_t rdi_phys = translate_addr(&v->vcpu, regs.rdi, NULL);
  printf("RDI (physical): %lx\n", (uint64_t)rdi_phys);
  printf("RSI: %lx\n", (uint64_t)regs.rsi);
  printf("RSI (physical): %lx\n", translate_addr(&v->vcpu, regs.rsi, NULL));
  printf("R12: %lx\n", (uint64_t)regs.r12);
  uint64_t r12_phys = translate_addr(&v->vcpu, (uint64_t)regs.r12, NULL);
  printf("R12 (physical): %lx\n", r12_phys);
  if (r12_phys != -1) {
    printf("R12 (string): %s\n", (char *)((uintptr_t)v->guest_mem + r12_phys));
  }

  // While it's possible the sequence of two bytes starting at RIP are in
  // different pages and not next to each other in physical memory, this is
  // unlikely and so I don't deal with it here. Let's hope that doesn't bite me.
  if (valid_rip_trans && *(uint16_t *)arr == 0x300f && (uint32_t)regs.rcx == 0xc0000080) {
    // wrmsr
    // rcx = EFER
    sregs.efer = (regs.rdx << 32) | (uint32_t)regs.rax;
    regs.rip += 2;
  } else if (valid_rip_trans && *(uint16_t *)arr == 0x01e6) {
    // out 0x1, al
    uint64_t rbx_phys = translate_addr(&v->vcpu, regs.rbx, NULL);
    fprintf(stderr, "%.*s", (uint16_t)regs.r13,
            (char *)((uintptr_t)v->guest_mem + rbx_phys));
    regs.rip += 2;
  } else if (v->vcpu.run->exit_reason == KVM_EXIT_MMIO) {
    printf("%lx <-> %lx\n", v->vcpu.run->mmio.data,
           v->vcpu.run->mmio.phys_addr);
  } else if (v->vcpu.run->exit_reason == KVM_EXIT_HLT) {
    printf("HLTed\n");
    regs.rip += 1;
  } else {
    struct kvm_regs regs;
    ioctl(v->vcpu.fd, KVM_GET_REGS, &regs);
    struct kvm_sregs sregs;
    ioctl(v->vcpu.fd, KVM_GET_SREGS, &sregs);
    printf("idt: %lx\n", (uint64_t)sregs.idt.base);
    uint64_t gate_ptr = sregs.idt.base + 16 * 3;
    uint64_t gate_phys_ptr = translate_addr(&v->vcpu, gate_ptr, NULL);
    printf("%d\n", *(char *)(3 + (uintptr_t)v->guest_mem + gate_phys_ptr));
    return regs.rip;
  }

  ioctl(v->vcpu.fd, KVM_SET_REGS, &regs);
  ioctl(v->vcpu.fd, KVM_SET_SREGS, &sregs);
  return vm_run(v);
}

void vm_run_single(vm *v) {
  struct kvm_guest_debug guest_dbg = {
      .control = KVM_GUESTDBG_ENABLE | KVM_GUESTDBG_SINGLESTEP |
                 KVM_GUESTDBG_USE_SW_BP,
  };
  ioctl(v->vcpu.fd, KVM_SET_GUEST_DEBUG, &guest_dbg);
  vm_run(v);
}

uint64_t get_gprs(vm *v, gprs_file *gprs, uint64_t *rflags) {
  struct kvm_regs regs;
  ioctl(v->vcpu.fd, KVM_GET_REGS, &regs);

  gprs->rax = regs.rax;
  gprs->rcx = regs.rcx;
  gprs->rdx = regs.rdx;
  gprs->rbx = regs.rbx;
  gprs->rsp = regs.rsp;
  gprs->rbp = regs.rbp;
  gprs->rsi = regs.rsi;
  gprs->rdi = regs.rdi;
  gprs->r8 = regs.r8;
  gprs->r9 = regs.r9;
  gprs->r10 = regs.r10;
  gprs->r11 = regs.r11;
  gprs->r12 = regs.r12;
  gprs->r13 = regs.r13;
  gprs->r14 = regs.r14;
  gprs->r15 = regs.r15;
  *rflags = regs.rflags;
  return regs.rip;
}

vm *init_vm(kvm_fd *kvm_out) {
  kvm_fd kvm;
  kvm_fd *kvm_ptr;

  if (kvm_out == NULL)
    kvm_ptr = &kvm;
  else
    kvm_ptr = kvm_out;

  *kvm_ptr = open("/dev/kvm", O_RDWR | O_CLOEXEC);
  vm *v = vm_create(*kvm_ptr);

  x86_model_state *state = load_state_from_file("state.virt");

  vm_load_model_state(v, state);
  printf("Some code: %lx\n",
         *((uint64_t *)((uintptr_t)v->guest_mem + 0x1003C00)));
  return v;
}

int main(int argc, char **argv) {
  kvm_fd kvm;
  vm *v = init_vm(&kvm);

#ifdef VALIDATE
  int sock_fd = socket(AF_INET, SOCK_STREAM | SOCK_CLOEXEC, 0);
  int val = 1;
  setsockopt(sock_fd, SOL_SOCKET, SO_REUSEADDR, &val, sizeof(int));
  struct sockaddr_in serv = {.sin_addr = {.s_addr = htonl(INADDR_LOOPBACK)},
                             .sin_port = htons(4425),
                             .sin_family = AF_INET};
  int ret = bind(sock_fd, (struct sockaddr *)&serv, sizeof(serv));
  if (ret) {
    perror("Failed to bind");
    return 1;
  }
  ret = listen(sock_fd, 1);
  if (ret) {
    perror("Failed to listen");
    return 1;
  }
  struct sockaddr_in dest;
  socklen_t socklen = sizeof(dest);
  while (true) {
    int consock_fd = accept(sock_fd, (struct sockaddr *)&dest, &socklen);

    vm_run_single(v);
    gprs_file real_gprs;
    uint64_t real_rflags;
    uint64_t rip = get_gprs(v, &real_gprs, &real_rflags);
    printf("\nGot real registers\n");
    for (size_t i = 0; i < 16; i++) {
      printf("%lx ", *(uint64_t *)((uintptr_t)&real_gprs + i * 8));
    }
    printf("\nGot RIP: %lx\n", rip);
    printf("\nGot rflags: %lx\n", real_rflags);

    send(consock_fd, &real_gprs, sizeof(real_gprs), 0);
    send(consock_fd, &rip, sizeof(rip), 0);
    send(consock_fd, &real_rflags, sizeof(real_rflags), 0);
    printf("Sent real gprs, rip, and rflags\n");
    close(consock_fd);
  }

  close(sock_fd);
#else
  vm_run(v);
#endif

  vm_cleanup(v);
  close(kvm);

  return 0;
}
