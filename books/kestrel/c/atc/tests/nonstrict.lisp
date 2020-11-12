; C Library
;
; Copyright (C) 2020 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "kestrel/c/atc/atc" :dir :system :ttags ((:quicklisp) (:quicklisp.osicat) (:oslib) (:open-output-channel!)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Some examples to test code generation for non-strict logical operators.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun |and| (|x| |y|)
  (declare (xargs :guard (and (c::sintp |x|) (c::sintp |y|))))
  (c::sint01 (and (c::sint-nonzerop |x|)
                  (c::sint-nonzerop |y|))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun |or| (|x| |y|)
  (declare (xargs :guard (and (c::sintp |x|) (c::sintp |y|))))
  (c::sint01 (or (c::sint-nonzerop |x|)
                 (c::sint-nonzerop |y|))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun |ifand| (|x| |y|)
  (declare (xargs :guard (and (c::sintp |x|) (c::sintp |y|))))
  (if (c::sint-nonzerop
       (c::sint01
        (and (c::sint-nonzerop (c::sint-lt |x| |y|))
             (c::sint-nonzerop (c::sint-lt |y| (c::sint-const 100))))))
      |x|
    |y|))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun |ifor| (|x| |y|)
  (declare (xargs :guard (and (c::sintp |x|) (c::sintp |y|))))
  (if (c::sint-nonzerop
       (c::sint01
        (or (c::sint-nonzerop (c::sint-lt |x| |y|))
            (c::sint-nonzerop (c::sint-ge |y| (c::sint-const 100))))))
      |x|
    |y|))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun |condand| (|x|)
  (declare (xargs :guard (c::sintp |x|)))
  (c::sint-eq |x|
              (if (c::sint-nonzerop
                   (c::sint01
                    (and (c::sint-nonzerop
                          (c::sint-le (c::sint-const 0) |x|))
                         (c::sint-nonzerop
                          (c::sint-le |x| (c::sint-const 10))))))
                  (c::sint-const 10)
                (c::sint-const 20))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun |condor| (|x|)
  (declare (xargs :guard (c::sintp |x|)))
  (c::sint-eq |x|
              (if (c::sint-nonzerop
                   (c::sint01
                    (or (c::sint-nonzerop
                         (c::sint-lt |x| (c::sint-const 0)))
                        (c::sint-nonzerop
                         (c::sint-gt |x| (c::sint-const 10))))))
                  (c::sint-const 10)
                (c::sint-const 20))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(c::atc |and|
        |or|
        |ifand|
        |ifor|
        |condand|
        |condor|
        :output-file "nonstrict.c")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#|

On macOS or Linux, you can compile and run this code as follows:

  gcc -o nonstrict nonstrict.c nonstrict-test.c
  ./nonstrict

|#
