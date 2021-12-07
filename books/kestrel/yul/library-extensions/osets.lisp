; Yul Library
;
; Copyright (C) 2021 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "SET")

(include-book "kestrel/utilities/osets" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(std::define insert-list ((l true-listp) (s setp))
  :returns (new-s setp)
  (cond ((endp l) (sfix s))
        (t (insert-list (cdr l) (insert (car l) s))))
  ///

  (std::defrule subset-of-insert-list
    (subset s (insert-list l s))
    :enable insert-list))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(std::defruled intersect-of-union
  (equal (intersect a (union b c))
         (union (intersect a b)
                     (intersect a c)))
  :enable (double-containment
           pick-a-point-subset-strategy))
