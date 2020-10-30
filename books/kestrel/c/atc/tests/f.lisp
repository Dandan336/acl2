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

; This is a simple artificial example.
; A function with three inputs,
; whose values are in small ranges,
; and are combined with some arithmetic operations.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(encapsulate ()

  (local (include-book "arithmetic-5/top" :dir :system))

  (local
   (set-default-hints '((nonlinearp-default-hint
                         stable-under-simplificationp
                         hist
                         pspv))))

  (defun |f| (|x| |y| |z|)
    (declare (xargs :guard (and (c::sintp |x|)
                                (c::sintp |y|)
                                (c::sintp |z|)
                                ;; -10 <= x <= 10:
                                (<= -10 (c::sint->get |x|))
                                (<= (c::sint->get |x|) 10)
                                ;; -10 <= y <= 10:
                                (<= -10 (c::sint->get |y|))
                                (<= (c::sint->get |y|) 10)
                                ;; -10 <= z <= 10:
                                (<= -10 (c::sint->get |z|))
                                (<= (c::sint->get |z|) 10))
                    :guard-hints (("Goal"
                                   :in-theory (enable sbyte32p
                                                      sbyte32-fix
                                                      c::sintp
                                                      c::sint-add-okp
                                                      c::sint-sub-okp
                                                      c::sint-mul-okp
                                                      c::sint-add
                                                      c::sint-sub
                                                      c::sint->get)))))
    (c::sint-mul (c::sint-add |x| |y|)
                 (c::sint-sub |z| (c::sint-const 3)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(c::atc |f| :output-file "f.c")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#|

On macOS or Linux, you can compile and run this code as follows:

  gcc -o f f.c f-test.c
  ./f

|#
