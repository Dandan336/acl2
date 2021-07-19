#include <stdio.h>

void test_f() {
  unsigned char a[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  int i = 4;
  f(a, i);
  for (int i = 0; i < 10; ++i)
    printf("a[%d] = %d\n", i, a[i]);
}

void test_copy() {
  unsigned char a[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  unsigned char b[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  copy(a, b, 10);
  for (int i = 0; i < 10; ++i)
    printf("b[%d] = %d\n", i, b[i]);
}

int main(void) {
  test_f();
  test_copy();
}
