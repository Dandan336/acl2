; A lightweight book about the built-in function integer-listp
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2020 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(in-theory (disable integer-listp))
(local (include-book "../lists-light/len"))

(defthm integer-listp-of-cdr
  (implies (integer-listp x)
           (integer-listp (cdr x)))
  :hints (("Goal" :in-theory (enable integer-listp))))

;compare to the one in books/std/typed-lists/integer-listp.
;that one uses iff?
(defthm integer-listp-of-take-2
  (implies (integer-listp lst)
           (equal (integer-listp (take n lst))
                  (<= (nfix n) (len lst))))
  :hints (("Goal" :in-theory (e/d (take integer-listp) (;TAKE-OF-CDR-BECOMES-SUBRANGE
                                              )))))
