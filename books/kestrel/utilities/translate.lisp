; A simple utility to translate a term
;
; Copyright (C) 2014-2020 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; STATUS: IN-PROGRESS

;; Translate a term (by expanding macros, quoting constants, turing lets into
;; lambdas, etc.).
;; Returns the translation of TERM.
;; I think this is based on something Matt K. wrote.
;; This throws an informative hard error if something is wrong with the term.
;; See also check-user-term.
(defun translate-term (term ctx wrld)
  (declare (xargs :mode :program
                  ;; todo: guard
                  ))
  (mv-let (erp result) ;TODO: This is a context-message pair.  Use the error message in the error case.
    (translate-cmp term
                   t ;stobjs-out, don't enforce stobj restrictions
                   t ;logic-modep ;; means :program mode cannot be involved (TRANSLATE-CMP explicitly checks for that).
                   t ;known-stobjs
                   ctx
                   wrld
                   (default-state-vars nil))
    (if erp
        (er hard! ctx "Failed to translate term ~x0. ~@1" term result)
      result)))

;; Translate a list of terms.
;; Compare to TRANSLATE-TERM-LST?
(defun translate-terms (terms ctx wrld)
  (declare (xargs :mode :program))
  (if (endp terms)
      nil
    (cons (translate-term (first terms) ctx wrld)
          (translate-terms (rest terms) ctx wrld))))
