; A utility to term a DAG or term into a DAG.
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2020 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "make-term-into-dag-array-basic")
(include-book "kestrel/utilities/translate" :dir :system)

;; Returns (mv erp dag)
(defun dag-or-term-to-dag-basic (item wrld)
  (declare (xargs :mode :program)) ;; because this calls translate-term
  (if (eq nil item) ; we assume nil is the constant nil, not an empty DAG
      (mv (erp-nil) *nil*)
    (if (weak-dagp item)
        (mv (erp-nil) item) ;already a DAG
      ;; translate the given form to obtain a pseudo-term and then make that into a DAG:
      (make-term-into-dag-basic (translate-term item 'dag-or-term-to-dag wrld)
                                nil))))
