; Tests of renaming functions in untranslated terms
;
; Copyright (C) 2021 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "rename-functions")
(include-book "std/testing/assert-equal" :dir :system)

(defstub foo (x y) t)

(assert-equal (rename-functions-in-untranslated-term
               '(foo (foo x 3) nil) '((foo . bar)) state)
              '(bar (bar x 3) nil))

;; Test with a cond
(assert-equal (rename-functions-in-untranslated-term
               '(cond ((equal x 3) (natp 3))
                      ((equal x 4) (natp 4)))
               '((natp . posp)) state)
              '(COND ((EQUAL X 3) (POSP 3))
                     ((EQUAL X 4) (POSP 4))))

;; Test with a cond with a clause of length 1
(assert-equal (rename-functions-in-untranslated-term
               '(cond ((equal x 3))
                      ((equal x 4) (natp 4)))
               '((natp . posp)) state)
              '(COND ((EQUAL X 3))
                     ((EQUAL X 4) (POSP 4))))

;; TODO: Add tests of case, case-match, b*, etc.

(assert-equal
 (rename-functions-in-untranslated-term
  '(b* ((x (car y))
        ((when (consp x))
         (+ (car x) (cdr x)))
        (- (cw "Hello"))
        ((mv a b c) (mv (< a a) b c)))
     (list x a b c))
  '((< . new<) (car . newcar) (consp . newconsp)) state)
 '(B* ((X (NEWCAR Y))
       ((WHEN (newCONSP X))
        (+ (newcar x) (cdr x)))
       (- (CW "Hello"))
       ((MV A B C) (MV (new< A A) B C)))
    (LIST X A B C)))


;; Example with an ignored let var.  Gave an error before we changed the tool to set ignore-ok.
(assert-equal
 (rename-functions-in-untranslated-term
 '(LET ((Y 4)) x)
 '((foo . bar))
 state)
 '(LET ((Y 4)) x))
