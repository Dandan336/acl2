; A lightweight book about the built-in function rational-listp
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2020 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; STATUS: In-progress

(in-theory (disable rational-listp))

(defthm rational-listp-of-cdr
  (implies (rational-listp x)
           (rational-listp (cdr x)))
  :hints (("Goal" :in-theory (enable rational-listp))))

(defthm rational-listp-of-cons
  (equal (rational-listp (cons a x))
         (and (rationalp a)
              (rational-listp x)))
  :hints (("Goal" :in-theory (enable rational-listp))))
