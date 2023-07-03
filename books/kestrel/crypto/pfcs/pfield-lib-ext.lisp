; PFCS (Prime Field Constraint System) Library
;
; Copyright (C) 2023 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "PFCS")

(include-book "kestrel/prime-fields/fe-listp" :dir :system)
(include-book "std/util/defrule" :dir :system)
(include-book "xdoc/defxdoc-plus" :dir :system)

(local (include-book "std/lists/list-fix" :dir :system))

(local (include-book "kestrel/built-ins/disable" :dir :system))
(local (acl2::disable-most-builtin-logic-defuns))
(local (acl2::disable-builtin-rewrite-rules-for-defaults))
(set-induction-depth-limit 0)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ prime-field-library-extensions
  :parents (prime-field-constraint-systems)
  :short "Extensions of the prime fields library."
  :long
  (xdoc::topstring
   (xdoc::p
    "These may be moved to the prime fields library."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defruled nat-listp-when-fe-listp
  (implies (fe-listp x p)
           (nat-listp x))
  :induct t
  :enable nat-listp)

(defrule fe-listp-fw-to-nat-listp
  (implies (fe-listp x p)
           (nat-listp x))
  :rule-classes :forward-chaining
  :induct t
  :enable nat-listp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule pfield::fe-listp-of-append
  (equal (pfield::fe-listp (append x y) p)
         (and (pfield::fe-listp (true-list-fix x) p)
              (pfield::fe-listp y p)))
  :induct t
  :enable append)
