; Lifter for R1CSes (in sparse form)
;
; Copyright (C) 2019-2020 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "R1CS")

;; A new version of the lifter for R1CSes in sparse form.  This version creates
;; a defconst containing the resulting DAG, but it does not embed the DAG in a
;; defun (thus, this version does not depend on any skip-proofs).

(include-book "lift-r1cs-rules")
(include-book "lift-r1cs-rule-lists")
(include-book "../sparse/rule-lists")
(include-book "../sparse/rules-axe")
(include-book "../sparse/rules")
(include-book "filter-and-combine-symbol-alists")
(include-book "lift-r1cs-common")
(include-book "kestrel/axe/def-simplified" :dir :system)
(include-book "kestrel/axe/interpreted-function-alists" :dir :system) ; for make-interpreted-function-alist
(include-book "kestrel/prime-fields/prime-fields-rules-axe" :dir :system)
(include-book "kestrel/prime-fields/rules2" :dir :system)
(include-book "kestrel/utilities/ensure-rules-known" :dir :system)

(acl2::ensure-rules-known (lift-r1cs-rules))

(defun fep-assumptions-for-vars-aux (vars prime acc)
  (declare (xargs :guard (and (symbol-listp vars)
                              (true-listp acc))))
  (if (endp vars)
      (acl2::reverse-list acc)
    (fep-assumptions-for-vars-aux (rest vars)
                                  prime
                                  (cons `(fep ,(first vars) ,prime)
                                        acc))))

;; Make a list of assertions stating that each of the VARS satisfies fep.
(defun fep-assumptions-for-vars (vars prime)
  (declare (xargs :guard (symbol-listp vars)))
  (fep-assumptions-for-vars-aux vars prime nil))

;; Bind vars to themselves, except any var that is a keyword gets bound to its counterpart in the ACL2 package.
;; TODO: generalize to take a package argument?
(defun r1cs-var-to-acl2-var-alist (vars acc)
  (declare (xargs :guard (and (symbol-listp vars)
                              (alistp acc))))
  (if (endp vars)
      (acl2::reverse-list acc)
    (let* ((var (first vars))
           (new-var (if (equal "KEYWORD" (symbol-package-name var))
                        (intern (symbol-name var) "ACL2")
                      var)))
      (r1cs-var-to-acl2-var-alist (rest vars) (acons var new-var acc)))))

;; Returns (mv erp event state).
(defun lift-r1cs-new-fn (name-of-defconst
                         vars ; may be in the keyword package, in which case we switch to the acl2 package...
                         constraints
                         prime
                         extra-rules remove-rules rules
                         monitor memoizep
                         count-hitsp
                         print
                         whole-form state)
  (declare (xargs :guard (and (symbolp name-of-defconst)
                              (symbol-listp vars)
                              (r1cs-constraint-listp constraints)
                              ;;(r1csp r1cs)
                              (natp prime) ;;(rtl::primep prime) ;todo, slow!
                              (symbol-listp extra-rules)
                              (symbol-listp remove-rules)
                              (symbol-listp rules)
                              (symbol-listp monitor)
                              (booleanp memoizep)
                              (booleanp count-hitsp))
                  :mode :program
                  :stobjs state))
  (b* ( ;; (vars (r1cs->vars r1cs))
       ;; (constraints (r1cs->constraints r1cs))
       ;; Maps the vars in the R1CS (which are just symbols in that piece of
       ;; data) to ACL2 variables for the proof:
       (r1cs-var-to-acl2-var-alist (r1cs-var-to-acl2-var-alist vars nil))
       (acl2-vars (strip-cdrs r1cs-var-to-acl2-var-alist))
       ((acl2::when (not (no-duplicatesp acl2-vars))) ;todo: optimize by sorting
        (er hard? 'lift-r1cs-new-fn "Duplicate var(s) detected in ~X01." acl2-vars nil)
        (mv t ;erp
            nil
            state))
       (term-to-simplify `(r1cs::r1cs-constraints-holdp ',constraints
                                                        ,(make-efficient-symbolic-valuation-for-alist r1cs-var-to-acl2-var-alist)
                                                        ',prime)))
  (acl2::def-simplified-fn name-of-defconst
                           term-to-simplify
                           ;; The extra rules:
                           (if rules
                               nil ;rules are given below, so extra-rules are not allowed
                             (append (lift-r1cs-rules)
                                     extra-rules))
                           remove-rules
                           rules ;to override the default
                           ;; nil ;rule-alists
                           ;; drop? but we need to know that all lookups of vars give integers:
                           ;; TODO: Use the more compact machinery for this?:
                           (fep-assumptions-for-vars acl2-vars prime)
                           ;; TODO: Add more functions to this?
                           ;; TODO: Make this once and store it?
                           (acl2::make-interpreted-function-alist '(r1cs::r1cs-constraint->a$inline
                                                                    r1cs::r1cs-constraint->b$inline
                                                                    r1cs::r1cs-constraint->c$inline
                                                                    assoc-equal ; called by r1cs::r1cs-constraint->a$inline, etc
                                                                    ;; todo: i had assoc here; should that be an error?
                                                                    mul
                                                                    neg
                                                                    add
                                                                    pfield::pos-fix
                                                                    pfield::fep)
                                                                  (w state))
                           monitor
                           memoizep
                           count-hitsp
                           ;; nil                             ;simplify-xorsp
                           print
                           whole-form
                           state)))

;; Lifts an R1CS into a logical term, represented as an Axe DAG.  Takes an
;; R1CS, given as a list of variables, a list of constraints, and a prime.
;; Creates a constant DAG named <name-of-defconst>.
(defmacro lift-r1cs-new (&whole whole-form
                                name-of-defconst ; name of the defconst to create, will hold the lifted R1CS
                                ;; r1cs ;todo: currentlty can't make the r1cs (due to prime tests?)
                                vars ;; the variables of the R1CS to lift
                                constraints ;; the constraints of the R1CS to lift
                                prime       ;; the prime of the R1CS to lift
                                &key
                                (extra-rules 'nil)
                                (remove-rules 'nil)
                                (rules 'nil)
                                (monitor 'nil)
                                (memoizep 'nil) ;; memoization can slow down R1CS lifting a lot, due to many terms with the same single nodenum (the valuation?) being put into the same memo slot
                                (count-hitsp 'nil)
                                (print 'nil))
  `(acl2::make-event-quiet (lift-r1cs-new-fn ',name-of-defconst
                                             ,vars
                                             ,constraints
                                             ,prime
                                             ,extra-rules
                                             ,remove-rules
                                             ,rules
                                             ,monitor
                                             ,memoizep
                                             ,count-hitsp
                                             ,print
                                             ',whole-form
                                             state)))
