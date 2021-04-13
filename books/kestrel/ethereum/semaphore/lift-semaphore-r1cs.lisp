; A semaphore-specific R1CS lifter
;
; Copyright (C) 2020-2021 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ZKSEMAPHORE")

(include-book "kestrel/crypto/r1cs/tools/lift-r1cs" :dir :system)

;; A thin wrapper around lift-r1cs-new that sets the prime for semaphore.
;; If the VARS are keywords (which is common), they get converted to the ZKSEMAPHORE package."
(defmacro lift-semaphore-r1cs (name-of-defconst vars constraints &rest args)
  `(r1cs::lift-r1cs-new ,name-of-defconst
                        ,vars
                        ,constraints
                        ;; This is baby-jubjub-prime:
                        21888242871839275222246405745257275088548364400416034343698204186575808495617
                        :package "ZKSEMAPHORE"
                        ,@args))

;;TODO: generalize to verify-r1cs
(defmacro verify-semaphore-r1cs (lifted-r1cs ; a DAG
                                 input-vars
                                 spec-term ; a term over the input and output vars
                                 &key
                                 ;; same as for acl2::prove-implication-with-r1cs-prover:
                                 (tactic ''(:rep :rewrite :subst))
                                 (rule-lists 'nil) ;todo: improve by building some in and allowing :extra-rules and :remove-rules?
                                 (global-rules 'nil) ;; rules to be added to every rule-list
                                 (interpreted-function-alist 'nil)
                                 (no-splitp 't) ; whether to prevent splitting into cases (note that we change the default here)
                                 (monitor 'nil)
                                 (print ':brief))
  `(encapsulate ()
     ;; Print the prime more clearly:
     (table acl2::evisc-table 21888242871839275222246405745257275088548364400416034343698204186575808495617 "<p>") ;a bit scary since it makes p look like a var

     ;; TODO: Suppress printing of error output at the end of failed proofs:
     (acl2::prove-implication-with-r1cs-prover
      (acl2::conjoin-term-with-dag! (acl2::make-conjunction-from-list
                                     (cons
                                      ;; Assume all vars are field elements:
                                      (pfield::gen-fe-listp-assumption (acl2::dag-vars ,lifted-r1cs)
                                                                       ;; bake in baby-jubjub-prime:
                                                                       ''21888242871839275222246405745257275088548364400416034343698204186575808495617)
                                      ;; Assume that the inputs are bits:
                                      (acl2::make-bitp-claims ,input-vars)))
                                    ,lifted-r1cs)
      ,spec-term
      :tactic ,tactic
      :rule-lists ,rule-lists   ;todo: use a default rule-list
      :global-rules ,global-rules ;todo: add some default global-rules
      :interpreted-function-alist ,interpreted-function-alist ;todo
      :no-splitp ,no-splitp
      :monitor ,monitor
      :print ,print)))
