; A tool to introduce a prime number and prove various properties
;
; Copyright (C) 2019-2020 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)
; Contributing Author: Eric McCarthy (mccarthy@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "PRIMES")

;; This utility defines a constant, a 0-ary function, and several rules about
;; the given prime number.  It is intended to be used for large primes for
;; which calling primep takes too long.  It requires a Pratt certificate to
;; prove primality.

;; TODO: Add xdoc.

(include-book "projects/quadratic-reciprocity/euclid" :dir :system) ;for rtl::primep
(include-book "kestrel/utilities/pack" :dir :system)

(defund defprime-fn (name number pratt-cert)
  (declare (xargs :guard (and (symbolp name)
                              (posp number)
                              (true-listp pratt-cert) ;; todo: strengthen?
                              )))
  (let ((defconst-name (acl2::pack-in-package-of-symbol 'defprime '* name '*))
        (pratt-cert-defconst-name (acl2::pack-in-package-of-symbol 'defprime '* name '-pratt-cert*)))
    `(encapsulate ()

       (local (include-book "projects/quadratic-reciprocity/pratt" :dir :system))

       ;; Prevent very expensive calls to primep.
       (in-theory (disable (:e rtl::primep)))

       ;; A defconst representing the prime.
       (defconst ,defconst-name ,number)

       ;; A 0-ary function.  Using this instead of the defconst can make things
       ;; more readable, since the defconst will be turned into a number when
       ;; terms are translated.  Also, this allows us to disable concrete
       ;; executions involving the prime by disabling the
       ;; :executable-counterpart.
       (defund ,name ()
         (declare (xargs :guard t))
         ,defconst-name)

       ;; (in-theory (disable (:e ,name)))

       (table acl2::evisc-table ,number ,(concatenate 'string "#.*" (symbol-name name) "*"))

       ;; We use Russinoff's algorithm from "Pratt certification and the primality of 2^255 - 19"
       ;; where a Pratt certificate of n is a tree
       ;; (r (p1 ... pn) (e1 ... en) (c1 ... cn))
       ;; such that
       ;; 1. r is primitive root of n
       ;; 2. n - 1 = (p1^e1)...(pn^en)
       ;; 3. ci is a pratt certificate of pi.

       (defconst ,pratt-cert-defconst-name
         ',pratt-cert)

       ;; Since primep may often be disabled and this cannot be efficiently executed.
       (defthm ,(acl2::pack-in-package-of-symbol 'defprime 'primep-of- name '-constant)
         (rtl::primep ,defconst-name)
         :hints (("Goal" :in-theory (enable (:e rtl::certify-prime))
                  :use (:instance rtl::certification-theorem
                                  (p ,defconst-name)
                                  (c ,pratt-cert-defconst-name)))))

       (defthm ,(acl2::pack-in-package-of-symbol 'defprime 'primep-of- name)
         (rtl::primep (,name))
         :hints (("Goal" :in-theory (enable (:e rtl::certify-prime))
                  :use (:instance rtl::certification-theorem
                                  (p ,defconst-name)
                                  (c ,pratt-cert-defconst-name)))))

       ;; To allow the :linear rule to be created.
       (local (in-theory (disable (:e ,name))))

       ;; A fairly strong linear rule.  Should allow ACL2 to prove that a call
       ;; of the 0-ary function is greater than 2, etc.
       (defthm ,(acl2::pack-in-package-of-symbol 'defprime name '-linear)
         (= (,name) ,defconst-name)
         :rule-classes :linear
         :hints (("Goal" :in-theory (enable (:e ,name))))))))

(defmacro defprime (name number pratt-cert)
  `(make-event (defprime-fn ',name ',number ',pratt-cert)))
