; Formal Unit Tester for x86
;
; Copyright (C) 2021-2022 Kestrel Technology, LLC
; Copyright (C) 2023 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "X")

;; See also the Formal Unit Tester for Java.

(include-book "kestrel/x86/parsers/parse-executable" :dir :system)
(include-book "kestrel/axe/tactic-prover" :dir :system)
(include-book "kestrel/utilities/strip-stars-from-name" :dir :system)
(include-book "kestrel/strings-light/string-starts-withp" :dir :system)
(include-book "kestrel/strings-light/add-prefix-to-strings" :dir :system)
(include-book "unroll-x86-code")
(include-book "tester-rules")
(include-book "rule-lists")
(local (include-book "kestrel/alists-light/alistp" :dir :system))
(local (include-book "kestrel/typed-lists-light/character-listp" :dir :system))

;; TODO: Parens in output may not be balanced?
;; todo: allow :monitor to be :debug?

;; TODO: move this stuff to mach-o-tools.lisp:

;; Returns the section, or nil if the section doesn't exist.
;; Returns the segment, or nil if the segment doesn't exist
(defund maybe-get-mach-o-segment-from-load-commands (segment-name load-commands)
  (if (endp load-commands)
      nil
    (let* ((load-command (first load-commands))
           (cmd (acl2::lookup-eq-safe :cmd load-command)))
      (if (not (or (eq cmd :LC_SEGMENT)
                   (eq cmd :LC_SEGMENT_64)))
          (maybe-get-mach-o-segment-from-load-commands segment-name (rest load-commands))
        (let ((this-name (acl2::lookup-eq-safe :SEGNAME load-command)))
          (if (equal segment-name this-name)
              load-command
            (maybe-get-mach-o-segment-from-load-commands segment-name (rest load-commands))))))))

(acl2::def-constant-opener maybe-get-mach-o-segment-from-load-commands)

;; Returns the segment, or nil if the segment doesn't exist.
(defund maybe-get-mach-o-segment (segment-name parsed-mach-o)
  (declare (xargs :guard (and (stringp segment-name)
                              ;; parsed-mach-o
                              )
                  :verify-guards nil))
  (maybe-get-mach-o-segment-from-load-commands segment-name (acl2::lookup-eq-safe :cmds parsed-mach-o)))

(acl2::def-constant-opener maybe-get-mach-o-segment)

(defund maybe-get-mach-o-section (name sections)
  (declare (xargs :guard (and (stringp name)
                              (alistp sections))))
  (if (endp sections)
      nil
    (let* ((section (first sections)))
      (if (not (alistp section))
          (er hard? 'maybe-get-mach-o-section "Ill-formed section: ~x0." section)
        (if (equal name (acl2::lookup-eq-safe :sectname section))
            section
          (maybe-get-mach-o-section name (rest sections)))))))

(acl2::def-constant-opener maybe-get-mach-o-section)

(defun mach-o-section-presentp (segment-name section-name parsed-mach-o)
  (declare (xargs :guard (and (stringp segment-name)
                              (stringp section-name)
                              ;; parsed-mach-o
                              )
                  :verify-guards nil))
  (let ((seg (maybe-get-mach-o-segment segment-name parsed-mach-o)))
    (and seg
         (if (maybe-get-mach-o-section section-name (acl2::lookup-eq-safe :sections seg))
             t
           nil))))

(acl2::def-constant-opener mach-o-section-presentp)
(acl2::def-constant-opener alistp)

(defun elf-section-presentp (section-name parsed-elf)
  (if (assoc-equal section-name (lookup-eq :sections parsed-elf)) t nil))

;; ;todo: not really an assumption generator
(defun section-assumptions-mach-o-64 (segment-name section-name parsed-mach-o
                                      text-offset stack-slots-needed x86)
  (declare (xargs :guard (and (stringp segment-name)
                              (stringp section-name)
                              ;; parsed-mach-o
                              (natp text-offset)
                              (natp stack-slots-needed))
                  :stobjs x86
                  :verify-guards nil ;todo
                  ))
  (if (mach-o-section-presentp segment-name section-name parsed-mach-o)
      (let* ((segment (acl2::get-mach-o-segment segment-name (acl2::lookup-eq-safe :cmds parsed-mach-o)))
             (section (acl2::get-mach-o-section section-name (acl2::lookup-eq-safe :SECTIONS segment)))
             (section-bytes (acl2::lookup-eq-safe :contents section))
             (section-address (acl2::lookup-eq-safe :addr section))
             (text-section-address (acl2::get-mach-o-code-address parsed-mach-o))
             ;; todo: can this be negative?:
             (section-offset-from-text (- section-address text-section-address))
             (section-start (+ text-offset section-offset-from-text)))
        (and (bytes-loaded-at-address-64 section-bytes section-start x86)
             ;; (canonical-address-p$inline const-section-start)
             ;; (canonical-address-p$inline (+ -1 (len const-section-bytes) const-section-start))
             ;; The constant data is disjoint from the part of the stack that is written:
             (separate :r (len section-bytes) section-start
                       ;; Only a single stack slot is written
                       ;;old: (create-canonical-address-list 8 (+ -8 (rgfi *rsp* x86)))
                       :r (* 8 stack-slots-needed) (+ (* -8 stack-slots-needed) (rgfi *rsp* x86)))))
    ;; no assumptions if section not present:
    t))

;; ;todo: not really an assumption generator
;; TODO: Can ELF sections be loaded at different addresss?
(defun section-assumptions-elf-64 (section-name
                                   parsed-elf
                                   text-offset
                                   position-independentp ; whether to assume position independence
                                   stack-slots-needed
                                   x86)
  (declare (xargs :guard (and (stringp section-name)
                              ;; parsed-elf
                              (natp text-offset)
                              (booleanp position-independentp)
                              (natp stack-slots-needed))
                  :stobjs x86
                  :verify-guards nil ;todo
                  ))
  (if (elf-section-presentp section-name parsed-elf)
      (let* ((section-bytes (acl2::get-elf-section-bytes section-name parsed-elf))
             (section-address (acl2::get-elf-section-address section-name parsed-elf))
             (text-section-address (acl2::get-elf-code-address parsed-elf))
             ;; todo: can this be negative?:
             (section-offset-from-text (- section-address text-section-address))
             (section-start (if position-independentp
                                ;; position-independent, so assume the section is loaded at some offset wrt the text section:
                                (+ text-offset section-offset-from-text)
                              ;; not position-independent, so use the numeric address (may be necessary):
                              section-address)))
        (and (bytes-loaded-at-address-64 section-bytes section-start x86)
             ;; (canonical-address-p$inline const-section-start)
             ;; (canonical-address-p$inline (+ -1 (len const-section-bytes) const-section-start))
             ;; The constant data is disjoint from the part of the stack that is written:
             (separate :r (len section-bytes) section-start
                       ;; Only a single stack slot is written
                       ;;old: (create-canonical-address-list 8 (+ -8 (rgfi *rsp* x86)))
                       :r (* 8 stack-slots-needed) (+ (* -8 stack-slots-needed) (rgfi *rsp* x86)))))
    ;; no assumptions if section not present:
    t))

(defund make-register-replacement-assumptions (param-names register-names)
  (declare (xargs :guard (and (symbol-listp param-names)
                              (symbol-listp register-names))))
  (if (or (endp param-names)
          (endp register-names) ; additional params will be on the stack
          )
      nil
    (let ((register-name (first register-names))
          (param-name (first param-names)))
      (cons `(equal (,register-name x86) ,param-name)
            (make-register-replacement-assumptions (rest param-names) (rest register-names))))))

(defun architecture-specific-assumptions (executable-type position-independentp stack-slots parsed-executable)
  (declare (xargs :guard (and (member-eq executable-type '(:mach-o-64 :elf-64))
                              (booleanp position-independentp)
                              (natp stack-slots)
                              ;; parsed-executable
                              )
                  :verify-guards nil))
  (if (eq :mach-o-64 executable-type)
      (b* ((- (and (mach-o-section-presentp "__TEXT" "__const" parsed-executable) (cw "(__TEXT,__const section detected.)~%")))
           (- (and (mach-o-section-presentp "__DATA" "__data" parsed-executable) (cw "(__DATA,__data section detected.)~%")))
           (- (and (mach-o-section-presentp "__DATA_CONST" "__got" parsed-executable) (cw "(__DATA_CONST,__got section detected.)~%"))))
        `((section-assumptions-mach-o-64 "__TEXT" "__const" ',parsed-executable text-offset ',stack-slots x86)
          (section-assumptions-mach-o-64 "__DATA" "__data" ',parsed-executable text-offset ',stack-slots x86)
          (section-assumptions-mach-o-64 "__DATA_CONST" "__got" ',parsed-executable text-offset ',stack-slots x86)
          ;; ,@(and const-section-presentp ; suppress when there is no __const section
          ;;        `((acl2::const-assumptions-mach-o-64 ',parsed-executable text-offset ,stack-slots x86)))
          ;; ,@(and data-section-presentp ; suppress when there is no __data section
          ;;        `((acl2::data-assumptions-mach-o-64 ',parsed-executable text-offset ,stack-slots x86)))
          ))
    (if (eq :elf-64 executable-type) ; todo: handle elf32
        (b* ((- (and (elf-section-presentp ".data" parsed-executable) (cw "(.data section detected.)~%")))
             ;; todo: handle more sections!
             )
          `((section-assumptions-elf-64 ".data" ',parsed-executable text-offset ,position-independentp
                                        ',stack-slots x86)))
      nil)))

;move
(local (in-theory (disable read-run-time)))

;move
(defthm rationalp-of-mv-nth-0-of-read-run-time
  (rationalp (mv-nth 0 (read-run-time state)))
  :rule-classes :type-prescription
  :hints (("Goal" :in-theory (enable read-run-time))))

;move
(local (in-theory (disable get-real-time)))

;move
(defthm rationalp-of-mv-nth-0-of-get-real-time
  (rationalp (mv-nth 0 (get-real-time state)))
  :rule-classes :type-prescription
  :hints (("Goal" :in-theory (enable get-real-time))))

;; Returns (mv time-difference state).  Rounds up to the next second.
(defun real-time-since (start-real-time state)
  (declare (xargs :guard (rationalp start-real-time)
                  :stobjs state))
  (mv-let (now state)
    (get-real-time state)
    (mv (ceiling (- now start-real-time) 1)
        state)))

;; Returns an (mv erp passedp time state).
;; TODO: Add redundancy checking
(defun test-function-core (function-name-string
                           parsed-executable
                           param-names ; todo: can we somehow get these from the executable?
                           assumptions ; untranslated terms
                           extra-rules extra-lift-rules extra-proof-rules
                           remove-rules remove-lift-rules remove-proof-rules
                           print monitor debug
                           step-limit step-increment
                           prune tactics
                           max-conflicts  ;a number of conflicts, or nil for no max
                           stack-slots
                           position-independentp
                           state)
  (declare (xargs :guard (and (stringp function-name-string)
                              (symbol-listp extra-rules)
                              (symbol-listp extra-lift-rules)
                              (symbol-listp extra-proof-rules)
                              (symbol-listp remove-rules)
                              (symbol-listp remove-lift-rules)
                              (symbol-listp remove-proof-rules)
                              (symbol-listp monitor)
                              (booleanp debug)
                              (natp step-limit)
                              (natp step-increment)
                              (or (eq nil prune)
                                  (eq t prune)
                                  (natp prune))
                              (acl2::tacticsp tactics)
                              (or (null max-conflicts)
                                  (natp max-conflicts))
                              (or (natp stack-slots)
                                  (eq :auto stack-slots))
                              (booleanp position-independentp))
                  :mode :program ; because of apply-tactic-prover and def-unrolled-fn-core
                  :stobjs state)
           (ignore debug) ; todo
           )
  (b* ((stack-slots (if (eq :auto stack-slots) 100 stack-slots))
       ;; Translate the assumptions supplied by the user:
       (user-assumptions (translate-terms assumptions 'test-function-core (w state)))
       (executable-type (acl2::parsed-executable-type parsed-executable))
       ((mv start-real-time state) (get-real-time state)) ; we use wall-clock time so that time in STP is counted
       (- (cw "(Now testing ~x0.~%" function-name-string))
       ;; Check the param names:
       ((when (not (or (eq :none param-names)
                       (and (symbol-listp param-names)
                            (no-duplicatesp param-names)
                            (not (member-eq 'x86 param-names))))))
        (cw "ERROR: Bad param names: ~x0." param-names)
        (mv (erp-t) nil nil state))
       ;; These serve to introduce vars for the 6 registers that may contain params (todo: confirm this)
       ;; TODO: Consider the implications if the replacement may be incomplete.
       (register-assumptions (if (eq param-names :none)
                                 ;; We make the register variables be usb64s (todo: add those assumptions), and we assert that the registers
                                 ;; contain their signed forms:
                                 `((equal (rdi x86) (logext 64 rdi))
                                   (equal (rsi x86) (logext 64 rsi))
                                   (equal (rdx x86) (logext 64 rdx))
                                   (equal (rcx x86) (logext 64 rcx))
                                   (equal (r8 x86) (logext 64 r8))
                                   (equal (r9 x86) (logext 64 r9)))
                               (make-register-replacement-assumptions param-names '(rdi rsi rdx rcx r8 r9))))
       (assumptions `(,@user-assumptions
                      ;; these help with floating point code:
                      (equal (x86isa::cr0bits->ts (x86isa::ctri 0 x86)) 0)
                      (equal (x86isa::cr0bits->em (x86isa::ctri 0 x86)) 0)
                      (equal (x86isa::cr4bits->osfxsr (x86isa::ctri 4 x86)) 1)
                      (equal (x86isa::feature-flag ':sse) 1) ; build in?
                      (equal (x86isa::feature-flag ':sse2) 1)
                      (equal (x86isa::mxcsrbits->daz$inline (xr ':mxcsr 'nil x86)) 0) ; denormals are not 0 (true at reset)
                      (equal (x86isa::mxcsrbits->de$inline (xr ':mxcsr 'nil x86)) 0) ; no denormal result created yet
                      (equal (x86isa::mxcsrbits->im$inline (xr ':mxcsr 'nil x86)) 1) ; invalid operations are being masked (true at reset)
                      (equal (x86isa::mxcsrbits->dm$inline (xr ':mxcsr 'nil x86)) 1) ; denormal operations are being masked (true at reset)
                      (equal (x86isa::mxcsrbits->ie$inline (xr ':mxcsr 'nil x86)) 0) ;
                      ,@register-assumptions
                      ;; todo: build this into def-unrolled:
                      ,@(architecture-specific-assumptions executable-type position-independentp stack-slots parsed-executable)
                      ))
       (target function-name-string)
       ;; Unroll the computation:
       ((mv erp result-dag-or-quotep & & state)
        (def-unrolled-fn-core
          target
          parsed-executable
          assumptions
          nil ;suppress-assumptions
          stack-slots
          position-independentp
          '(:register-bool 0) ; output, rax (output should always be boolean), this chops it down to 1 byte
          t                   ; use-internal-contextsp
          prune
          ;; extra-rules:
          (append '(x86isa::SAL/SHL-SPEC-8-redef
                    x86isa::SAL/SHL-SPEC-16-redef
                    x86isa::SAL/SHL-SPEC-32-redef
                    x86isa::SAL/SHL-SPEC-64-redef
                    x86isa::SHR-SPEC-8-redef
                    x86isa::SHR-SPEC-16-redef
                    x86isa::SHR-SPEC-32-redef
                    x86isa::SHR-SPEC-64-redef
                    x86isa::SAR-SPEC-8-redef
                    x86isa::SAR-SPEC-16-redef
                    x86isa::SAR-SPEC-32-redef
                    x86isa::SAR-SPEC-64-redef
                    x86isa::GPR-OR-SPEC-1-redef
                    x86isa::GPR-OR-SPEC-2-redef
                    x86isa::GPR-OR-SPEC-4-redef
                    x86isa::GPR-OR-SPEC-8-redef
                    ) ; push back to def-unrolled
                  extra-rules
                  extra-lift-rules
                  *extra-lifting-rules*)
          ;; remove-rules:
          (append
           '(                        ;; x86isa::gpr-sub-spec-1
             ;; x86isa::gpr-sub-spec-2
             ;; x86isa::gpr-sub-spec-4
             ;; x86isa::gpr-sub-spec-8
             x86isa::x86-cwd/cdq/cqo ; todo: push back to def-unrolled..
             x86isa::GPR-OR-SPEC-1$inline
             x86isa::GPR-OR-SPEC-2$inline
             x86isa::GPR-OR-SPEC-4$inline
             x86isa::GPR-OR-SPEC-8$inline
             x86isa::SAL/SHL-SPEC-8
             x86isa::SAL/SHL-SPEC-16
             x86isa::SAL/SHL-SPEC-32
             x86isa::SAL/SHL-SPEC-64
             x86isa::SHR-SPEC-8
             x86isa::SHR-SPEC-16
             x86isa::SHR-SPEC-32
             x86isa::SHR-SPEC-64
             ;;x86isa::SAR-SPEC-8 ; why are these not present?
             ;;x86isa::SAR-SPEC-16
             ;;x86isa::SAR-SPEC-32
             ;;x86isa::SAR-SPEC-64
             acl2::bvchop-of-bvshr
             acl2::bvchop-of-bvashr)
           remove-rules
           remove-lift-rules)
          ;; extra-assumption-rules:
          (append (lifter-rules64-new)
                  '(section-assumptions-mach-o-64
                    mach-o-section-presentp-constant-opener
                    maybe-get-mach-o-segment-constant-opener
                    maybe-get-mach-o-segment-from-load-commands-constant-opener
                    maybe-get-mach-o-section-constant-opener
                    acl2::alistp-constant-opener
                    ;;acl2::const-assumptions-mach-o-64
                    ;;acl2::data-assumptions-mach-o-64
                    ;;acl2::get-mach-o-constants-address-constant-opener
                    ;;acl2::get-mach-o-constants-constant-opener
                    ;;acl2::get-mach-o-data-address-constant-opener
                    ;;acl2::get-mach-o-data-constant-opener
                    acl2::get-elf-section-address
                    acl2::get-elf-section-bytes
                    section-assumptions-elf-64
                    elf-section-presentp
                    fix-of-rsp
                    integerp-of-rsp))
          step-limit
          step-increment
          t ; memoizep
          monitor
          print
          10 ; print-base
          state))
       ((when erp) (mv erp nil nil state))
       ((when (quotep result-dag-or-quotep))
        (mv-let (elapsed state)
          (real-time-since start-real-time state)
          (if (equal result-dag-or-quotep ''1)
              (progn$ (cw "Test ~x0 passed (lifting returned the constant dag ~x1).)~%" function-name-string result-dag-or-quotep)
                      (mv (erp-nil)
                          t ; passed ;; `(table test-function-table ',whole-form '(value-triple :invisible))
                          elapsed
                          state))
            (progn$ (cw "Test ~x0 failed (lifting returned the constant dag ~x1 where '1 would mean success).)~%" function-name-string result-dag-or-quotep)
                    (mv (erp-nil)
                        nil ; failed ;; `(table test-function-table ',whole-form '(value-triple :invisible))
                        elapsed
                        state)))))
       (result-dag result-dag-or-quotep)
       ;; Always print the DAG, so we can see the nodenums (e.g., if one is non-pure):
       (- (progn$ (cw "(DAG after lifting:~%")
                  (acl2::print-list result-dag)
                  (cw ")~%")))
       ;; Print the term if small
       (- (and (acl2::dag-or-quotep-size-less-thanp result-dag 1000)
               (cw "(Term after lifting: ~X01)~%" (acl2::dag-to-term result-dag) nil)))
       (result-dag-fns (dag-fns result-dag))
       ((when (member-eq 'run-until-rsp-greater-than result-dag-fns)) ; TODO: try pruning first
        (cw "FAILED: Did not finish the run.  See DAG above.)~%")
        (mv-let (elapsed state)
          (real-time-since start-real-time state)
          (mv (erp-nil) nil elapsed state)))
       (- (and (not (acl2::dag-is-purep result-dag)) ; TODO: This was saying an IF is not pure (why?).  Does it still?
               (cw "WARNING: Result of lifting is not pure (see above).~%")))
       ;; Prove the test routine always returns 1 (we pass :bit for the type):
       ((mv result info-acc
            & ; actual-dag
            & ; assumptions-given
            state)
        (acl2::apply-tactic-prover result-dag
                                   ;; tests ;a natp indicating how many tests to run
                                   tactics
                                   nil ; assumptions
                                   t   ; simplify-assumptions
                                   ;; types ;does soundness depend on these or are they just for testing? these seem to be used when calling stp..
                                   print
                                   ;; debug ; todo: use this?
                                   max-conflicts
                                   t       ; call-stp-when-pruning
                                   t ; counterexamplep
                                   nil ; print-cex-as-signedp
                                   (set-difference-eq (append *proof-rules* extra-rules extra-proof-rules)
                                                      (append remove-rules
                                                              remove-proof-rules
                                                              ;; these can introduce boolor:
                                                              '(acl2::boolif-x-x-y
                                                                acl2::boolif-when-quotep-arg2
                                                                acl2::boolif-when-quotep-arg3
                                                                acl2::bvchop-of-bvshr
                                                                acl2::bvchop-of-bvashr)))
                                   nil ; interpreted-fns
                                   ;; monitor:
                                   (append '(ACL2::EQUAL-OF-BVPLUS-MOVE-BVMINUS-BETTER ;drop?
;bvlt-reduce-when-not-equal-one-less
;boolif-of-bvlt-strengthen-to-equal
                                             )
                                           monitor)
                                   t ;normalize-xors
                                   :bit ; type (means try to prove that the DAG is 1)
                                   state
                                   ;;rand
                                   ))
       ((mv elapsed state) (real-time-since start-real-time state)))
    (if (eq result acl2::*error*)
        (mv :error-in-tactic-proof nil nil state)
      (if (eq result acl2::*valid*)
          (progn$ (cw "Test ~x0 passed.)~%" function-name-string)
                  (mv (erp-nil)
                      t ; passed ;; `(table test-function-table ',whole-form '(value-triple :invisible))
                      elapsed
                      state))
        ;; result is :invalid, :no-change, or some remaining problems:
        (progn$ (cw "Failure info: ~x0.~%" info-acc) ; todo: sort the counterexample to be in the same order as the param names...
                (cw "Test ~x0 failed.)~%" function-name-string)
                (mv (erp-nil)
                    nil ; failed
                    elapsed
                    state))))))

;; Returns (mv erp event state).
;;If the test passes, EVENT is just (value-triple :invisible).  throws an error if the test failed.
(defun test-function-fn (function-name-string
                         executable ; a parsed-executable or a string (meaning read from that file)
                         param-names ; todo: can we somehoe get these from the executable?
                         assumptions
                         extra-rules extra-lift-rules extra-proof-rules
                         remove-rules remove-lift-rules remove-proof-rules
                         print monitor debug
                         step-limit step-increment
                         prune tactics
                         max-conflicts stack-slots
                         position-independent
                         expected-result
                         state)
  (declare (xargs :guard (and (stringp function-name-string)
                              (symbol-listp extra-rules)
                              (symbol-listp extra-lift-rules)
                              (symbol-listp extra-proof-rules)
                              (symbol-listp remove-rules)
                              (symbol-listp remove-lift-rules)
                              (symbol-listp remove-proof-rules)
                              (symbol-listp monitor)
                              (booleanp debug)
                              (natp step-limit)
                              (natp step-increment)
                              (or (eq nil prune)
                                  (eq t prune)
                                  (natp prune))
                              (acl2::tacticsp tactics)
                              (or (null max-conflicts)
                                  (natp max-conflicts))
                              (or (natp stack-slots)
                                  (eq :auto stack-slots))
                              (member-eq position-independent '(t nil :auto))
                              (member-eq expected-result '(:pass :fail :any)))
                  :mode :program
                  :stobjs state))
  (b* (((mv erp parsed-executable state)
        (if (stringp executable)
            (acl2::parse-executable executable state)
          (mv nil executable state)))
       ((when erp) (mv erp nil state))
       (executable-type (acl2::parsed-executable-type parsed-executable))
       ;; Handle a :position-independent of :auto:
       (position-independentp (if (eq :auto position-independent)
                                  (if (eq executable-type :mach-o-64)
                                      t ; since clang seems to produce position-independent code by default
                                    (if (eq executable-type :elf-64)
                                        nil ; since gcc seems to not produce position-independent code by default
                                      ;; TODO: Think about this case:
                                      t))
                                position-independent))
       (function-name-string
        (if (eq executable-type :mach-o-64)
            (concatenate 'string "_" function-name-string) ; todo: why do we always have to add the underscore?
          function-name-string))
       ((mv erp passedp elapsed state)
        (test-function-core function-name-string parsed-executable param-names assumptions
                            extra-rules extra-lift-rules extra-proof-rules
                            remove-rules remove-lift-rules remove-proof-rules
                            print monitor debug step-limit step-increment prune tactics max-conflicts stack-slots position-independentp state))
       ((when erp) (mv erp nil state))
       (- (cw "Time: ~x0s.~%" elapsed))
       (result-ok (if (eq :any expected-result)
                      t
                    (if (eq :pass expected-result)
                        passedp
                      ;; expected-result is :fail
                      (not passedp)))))
    (if result-ok
        (progn$ ;; (cw "Test ~s0: ~s1.~%" function-name-string (if passedp "PASSED" "FAILED"))
         (mv (erp-nil) '(value-triple :invisible) state))
      (prog2$ (er hard? 'test-function-fn "For test ~x0, expected ~x1 but got ~x2." function-name-string expected-result (if passedp :pass :fail))
              (mv :unexpected-result nil state)))))

;; Test a single function:
(defmacro test-function (function-name-string
                         executable ; a parsed-executable or a string (meaning read from that file)
                         &key
                         (param-names ':none)
                         (assumptions 'nil)
                         (extra-rules 'nil)
                         (extra-lift-rules 'nil)
                         (extra-proof-rules 'nil)
                         (remove-rules 'nil)
                         (remove-lift-rules 'nil)
                         (remove-proof-rules 'nil)
                         (print 'nil)
                         (monitor 'nil)
                         (debug 'nil)
                         (step-limit '1000000)
                         (step-increment '100)
                         (prune '10000)             ; t, nil, or a max size
                         (tactics '(:rewrite :stp)) ; todo: try something with :prune
                         (expected-result ':pass)
                         (stack-slots ':auto)
                         (position-independent ':auto)
                         (max-conflicts '1000000))
  `(acl2::make-event-quiet (test-function-fn ',function-name-string
                                             ,executable   ; gets evaluated
                                             ,param-names  ; gets evaluated
                                             ,assumptions  ; gets evaluated
                                             ,extra-rules  ; gets evaluated
                                             ,extra-lift-rules ; gets evaluated
                                             ,extra-proof-rules ; gets evaluated
                                             ,remove-rules ; gets evaluated
                                             ,remove-lift-rules ; gets evaluated
                                             ,remove-proof-rules ; gets evaluated
                                             ',print
                                             ,monitor ; gets evaluated
                                             ',debug ',step-limit ',step-increment ',prune ',tactics ',max-conflicts ',stack-slots ',position-independent ',expected-result state)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Returns an (mv erp result-alist state).
(defun test-functions-fn-aux (function-name-strings
                              parsed-executable
                              assumptions-alist
                              extra-rules extra-lift-rules extra-proof-rules
                              remove-rules remove-lift-rules remove-proof-rules
                              print monitor debug step-limit step-increment prune
                              tactics max-conflicts
                              stack-slots
                              position-independentp
                              expected-failures
                              result-alist
                              state)
  (declare (xargs :guard (and (string-listp function-name-strings)
                              (and (alistp assumptions-alist)
                                   (string-listp (strip-cars assumptions-alist))
                                   (true-list-listp (strip-cdrs assumptions-alist)))
                              (symbol-listp extra-rules)
                              (symbol-listp extra-lift-rules)
                              (symbol-listp extra-proof-rules)
                              (symbol-listp remove-rules)
                              (symbol-listp remove-lift-rules)
                              (symbol-listp remove-proof-rules)
                              (symbol-listp monitor)
                              (booleanp debug)
                              (natp step-limit)
                              (natp step-increment)
                              (or (eq nil prune)
                                  (eq t prune)
                                  (natp prune))
                              (acl2::tacticsp tactics)
                              (or (null max-conflicts)
                                  (natp max-conflicts))
                              (or (natp stack-slots)
                                  (eq :auto stack-slots))
                              (booleanp position-independentp)
                              (string-listp expected-failures)
                              (alistp result-alist))
                  :mode :program
                  :stobjs state))
  (if (endp function-name-strings)
      (mv (erp-nil) (acl2::reverse-list result-alist) state)
    (b* ((function-name (first function-name-strings))
         ((mv erp passedp elapsed state)
          (test-function-core function-name parsed-executable
                              :none ; todo: some way to pass in param-names?
                              (acl2::lookup-equal function-name assumptions-alist)
                              extra-rules extra-lift-rules extra-proof-rules
                              remove-rules remove-lift-rules remove-proof-rules
                              print monitor debug step-limit step-increment prune tactics max-conflicts stack-slots position-independentp state))
         ((when erp) (mv erp nil state))
         (result (if passedp :pass :fail))
         (expected-result (if (member-equal function-name expected-failures)
                              :fail
                            :pass))
         (- (cw "~%")) ; blank line as separator
         )
      (test-functions-fn-aux (rest function-name-strings) parsed-executable assumptions-alist
                             extra-rules extra-lift-rules extra-proof-rules
                             remove-rules remove-lift-rules remove-proof-rules
                             print monitor debug step-limit step-increment prune
                             tactics max-conflicts stack-slots position-independentp
                             expected-failures
                             (acons function-name (list result expected-result elapsed) result-alist)
                             state))))

;; (defun shorten-string (str numchars)
;;   (declare (xargs :guard (and (stringp str)
;;                               (natp numchars))
;;                   :guard-debug t
;;                   ))
;;   (let ((chars (coerce str 'list)))
;;     (coerce (take (min numchars (len chars)) chars) 'string)))

;; (defun shorten-symbol (sym numchars)
;;   (declare (xargs :guard (and (symbolp sym)
;;                               (natp numchars))))
;;   (intern-in-package-of-symbol (shorten-string (symbol-name sym) numchars) sym))

;; TODO: Print OK if expected, otherwise ERROR
(defund print-test-summary-aux (result-alist)
  (declare (xargs :guard (alistp result-alist)))
  (if (endp result-alist)
      nil
    (prog2$
     (let* ((entry (first result-alist))
            (name (car entry)) ; a string
            (val (cdr entry)))
       (if (not (and (stringp name)
                     (= 3 (len val))))
           (er hard? 'print-test-summary-aux "Bad entry in result-alist: ~x0." entry)
         (let* ((result (first val)) ; either :pass or :fail
                (expected-result (second val)) ; :pass or :fail or :any
                (elapsed (third val))
                (result-string (if (eq :pass result) "pass" "fail"))
                (numspaces (nfix (- 40 (len (coerce name 'list)))))
                )
           (if (equal result expected-result)
               (cw "Test ~s0:~_1 OK (~s2) ~c3s.~%" name numspaces result-string (cons elapsed 4))
             (if (eq :any expected-result)
                 ;; In this case, we don't know whether the test is supposed to pass:
                 (cw "Test ~s0:~_1 ?? (~s2) ~c3s.~%" name numspaces result-string (cons elapsed 4))
               (cw "Test ~s0:~_1 ERROR (~s2, but we expected ~s3). ~c4s~%" name numspaces result-string (if (eq :pass expected-result) "pass" "fail") (cons elapsed 4)))))))
     (print-test-summary-aux (rest result-alist)))))

(defund print-test-summary (result-alist executable-form)
  (declare (xargs :guard (alistp result-alist)))
  (progn$ (cw"~%========================================~%")
          (if (or (symbolp executable-form)
                  (stringp executable-form))
              (let ((executable-name (if (stringp executable-form)
                                         executable-form
                                       (if (acl2::starts-and-ends-with-starsp executable-form)
                                           (acl2::strip-stars-from-name executable-form)
                                         executable-form))))
                (cw "SUMMARY OF RESULTS for ~x0:~%" executable-name))
            (cw "SUMMARY OF RESULTS:~%"))
          (print-test-summary-aux result-alist)
          (cw"========================================~%")))

(defun any-result-unexpectedp (result-alist)
  (declare (xargs :guard (alistp result-alist)))
  (if (endp result-alist)
      nil
    (let* ((entry (first result-alist))
           ;; (name (car entry)) ; a string
           (val (cdr entry)))
      (if (not (and ;; (stringp name)
                (= 3 (len val))))
          (er hard? 'any-result-unexpectedp "Bad entry in result-alist: ~x0." entry)
        (let* ((result (first val))           ; either :pass or :fail
               (expected-result (second val))  ; :pass or :fail or :any
               (expectedp (or (eq :any expected-result)
                              (equal result expected-result))))
          (or (not expectedp)
              (any-result-unexpectedp (rest result-alist))))))))

;; Filter the STRINGS, keeping only those that start with PREFIX
(defun acl2::strings-starting-with (prefix strings)
  (declare (xargs :guard (and (string-listp strings)
                              (stringp prefix))))
  (if (endp strings)
      nil
    (let ((string (first strings)))
      (if (acl2::string-starts-withp string prefix)
          (cons string
                (acl2::strings-starting-with prefix (rest strings)))
        (acl2::strings-starting-with prefix (rest strings))))))

;; Returns (mv erp event state) an event (a progn containing an event for each test).
;; TODO: Return an error if any test is not as expected, but not until the end.
(defun test-functions-fn (function-name-strings ; can be :all
                          executable
                          executable-form ; used to get the executable name for the summary
                          assumptions
                          extra-rules extra-lift-rules extra-proof-rules
                          remove-rules remove-lift-rules remove-proof-rules
                          print monitor debug step-limit step-increment prune
                          tactics max-conflicts stack-slots position-independent
                          expected-failures
                          exclude
                          state)
  (declare (xargs :guard (and (or (string-listp function-name-strings)
                                  (eq :all function-name-strings))
                              ;; assumptions
                              (symbol-listp extra-rules)
                              (symbol-listp extra-lift-rules)
                              (symbol-listp extra-proof-rules)
                              (symbol-listp remove-rules)
                              (symbol-listp remove-lift-rules)
                              (symbol-listp remove-proof-rules)
                              (symbol-listp monitor)
                              (booleanp debug)
                              (natp step-limit)
                              (natp step-increment)
                              (or (eq nil prune)
                                  (eq t prune)
                                  (natp prune))
                              (acl2::tacticsp tactics)
                              (or (null max-conflicts)
                                  (natp max-conflicts))
                              (or (natp stack-slots)
                                  (eq :auto stack-slots))
                              (member-eq position-independent '(t nil :auto))
                              (or (eq :auto expected-failures)
                                  (string-listp expected-failures))
                              (string-listp exclude))
                  :mode :program
                  :stobjs state))
  (b* (((mv overall-start-real-time state) (get-real-time state))
       ((mv erp parsed-executable state)
        (if (stringp executable)
            (acl2::parse-executable executable state)
          (mv nil executable state)))
       ((when erp) (mv erp nil state))
       (executable-type (acl2::parsed-executable-type parsed-executable))
       ;; Handle a :position-independent of :auto:
       (position-independentp (if (eq :auto position-independent)
                                  (if (eq executable-type :mach-o-64)
                                      t ; since clang seems to produce position-independent code by default
                                    (if (eq executable-type :elf-64)
                                        nil ; since gcc seems to not produce position-independent code by default
                                      ;; TODO: Think about this case:
                                      t))
                                position-independent))
       ;; We will test all functions whose names begin with test_ or fail_test_
       (function-name-strings (if (eq :all function-name-strings)
                                  (if (eq :elf-64 executable-type)
                                      (let ((all-functions (acl2::get-all-elf-symbols parsed-executable)))
                                        (append (acl2::strings-starting-with "test_" all-functions)
                                                (acl2::strings-starting-with "fail_test_" (acl2::get-all-elf-symbols parsed-executable))))
                                    (if (eq :mach-o-64 executable-type)
                                        (let ((all-functions (acl2::get-all-mach-o-symbols parsed-executable)))
                                          (append (acl2::strings-starting-with "_test_" all-functions)
                                                  (acl2::strings-starting-with "_fail_test_" all-functions)))
                                      (er hard? 'test-functions-fn "Unsupported executable type: ~x0" executable-type)))
                                ;; The functions to test were given explicitly:
                                (if (eq executable-type :mach-o-64)
                                    ;; todo: why do we always have to add the underscore?
                                    (acl2::add-prefix-to-strings "_" function-name-strings)
                                  function-name-strings)))
       (assumption-alist (if (null assumptions)
                             nil
                           (let ((first-assumption-item (first assumptions)))
                             (if (and (consp first-assumption-item)
                                      (stringp (car first-assumption-item)))
                                 ;; it's an alist, not a list of terms: ; todo: make this a doublet list?
                                 (if (and (alistp assumptions)
                                          (string-listp (strip-cars assumptions))
                                          (true-list-listp (strip-cdrs assumptions)))
                                     assumptions
                                   (er hard? 'test-functions-fn "Ill-formed assumptions: ~X01." assumptions nil))
                               ;; it's a list of (untranslated) terms to be used as assumptions for every function:
                               (pairlis$ function-name-strings (acl2::repeat (len function-name-strings) assumptions))))))
       (expected-failures (if (eq expected-failures :auto)
                              (if (eq :elf-64 executable-type)
                                  (acl2::strings-starting-with "fail_test_" function-name-strings)
                                (if (eq :mach-o-64 executable-type)
                                    (acl2::strings-starting-with "_fail_test_" function-name-strings)
                                  (er hard? 'test-functions-fn "Unsupported executable type: ~x0" executable-type)))
                            ;; The expected failures were given explicitly:
                            expected-failures))
       ;; Handle any excludes:
       (exclude (if (eq executable-type :mach-o-64)
                    (acl2::add-prefix-to-strings "_" exclude)
                  exclude))
       (function-name-strings (set-difference-equal function-name-strings exclude))
       (expected-failures (set-difference-equal expected-failures exclude))
       ;; Test the functions:
       ((mv erp result-alist state)
        (test-functions-fn-aux function-name-strings parsed-executable
                               assumption-alist
                               extra-rules extra-lift-rules extra-proof-rules
                               remove-rules remove-lift-rules remove-proof-rules
                               print monitor debug step-limit step-increment prune
                               tactics max-conflicts stack-slots position-independentp
                               expected-failures
                               nil ; empty result-alist
                               state))
       ((mv overall-time state) (real-time-since overall-start-real-time state))
       ((when erp) (mv erp nil state))
       (- (print-test-summary result-alist executable-form))
       (- (cw "TOTAL TIME: ~x0s (~x1 tests).~%" overall-time (len function-name-strings))))
    (if (any-result-unexpectedp result-alist)
        (prog2$ (er hard? 'test-functions-fn "Unexpected result (see above).")
                (mv t nil state))
      (mv (erp-nil)
          `(value-triple :invisible)
          state))))

;; Test a list of functions:
(defmacro test-functions (function-name-strings ; or can be :all
                          executable ; a string or a parsed executable
                          &key
                          (extra-rules 'nil)
                          (extra-lift-rules 'nil)
                          (extra-proof-rules 'nil)
                          (remove-rules 'nil)
                          (remove-lift-rules 'nil)
                          (remove-proof-rules 'nil)
                          (print 'nil)
                          (monitor 'nil)
                          (debug 'nil)
                          (step-limit '1000000)
                          (step-increment '100)
                          (prune '10000)             ; t, nil, or a max size
                          (tactics '(:rewrite :stp)) ; todo: try something with :prune
                          (max-conflicts '1000000)
                          (stack-slots ':auto)
                          (position-independent ':auto)
                          (expected-failures ':auto)
                          (assumptions 'nil) ; an alist pairing function names (strings) with lists of terms, or just a list of terms
                          )
  `(acl2::make-event-quiet (test-functions-fn ',function-name-strings
                                              ,executable ; gets evaluated (often a constant like *foo.o*)
                                              ',executable  ; unevaluated
                                              ,assumptions  ; gets evaluated
                                              ,extra-rules  ; gets evaluated
                                              ,extra-lift-rules ; gets evaluated
                                              ,extra-proof-rules ; gets evaluated
                                              ,remove-rules ; gets evaluated
                                              ,remove-lift-rules ; gets evaluated
                                              ,remove-proof-rules ; gets evaluated
                                              ',print
                                              ,monitor ; gets evaluated
                                              ',debug ',step-limit ',step-increment ',prune
                                              ',tactics ',max-conflicts ',stack-slots ',position-independent
                                              ',expected-failures
                                              nil ; no need for excludes (just don't list the functions you don't want to test)
                                              state)))

;; Tests all the functions in the file
(defmacro test-file (executable ; a string or a parsed executable
                     &key
                     (exclude 'nil) ; names of functions (strings) to exclude from testing
                     (extra-rules 'nil)
                     (extra-lift-rules 'nil)
                     (extra-proof-rules 'nil)
                     (remove-rules 'nil)
                     (remove-lift-rules 'nil)
                     (remove-proof-rules 'nil)
                     (print 'nil)
                     (monitor 'nil)
                     (debug 'nil)
                     (step-limit '1000000)
                     (step-increment '100)
                     (prune '10000)             ; t, nil, or a max size
                     (tactics '(:rewrite :stp)) ; todo: try something with :prune
                     (max-conflicts '1000000)
                     (stack-slots ':auto)
                     (position-independent ':auto)
                     (expected-failures ':auto)
                     (assumptions 'nil) ; an alist pairing function names (strings) with lists of terms, or just a list of terms
                     )
  `(acl2::make-event-quiet (test-functions-fn :all
                                              ,executable ; gets evaluated (often a constant like *foo.o*)
                                              ',executable  ; unevaluated
                                              ,assumptions  ; gets evaluated
                                              ,extra-rules  ; gets evaluated
                                              ,extra-lift-rules ; gets evaluated
                                              ,extra-proof-rules ; gets evaluated
                                              ,remove-rules ; gets evaluated
                                              ,remove-lift-rules ; gets evaluated
                                              ,remove-proof-rules ; gets evaluated
                                              ',print
                                              ,monitor ; gets evaluated
                                              ',debug ',step-limit ',step-increment ',prune
                                              ',tactics ',max-conflicts ',stack-slots ',position-independent
                                              ',expected-failures
                                              ',exclude
                                              state)))
