; Proofs about pre-simplify-term
;
; Copyright (C) 2024 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; The proofs in this book use the if-and-not-eval because simplify-ors requires it.

(include-book "pre-simplify-term")
(include-book "kestrel/evaluators/if-and-not-eval" :dir :system)
;(include-book "no-duplicate-lambda-formals-in-termp")
;(include-book "lambdas-closed-in-termp")
(local (include-book "simplify-ors-proofs"))
(local (include-book "drop-unused-lambda-bindings-proofs"))
(local (include-book "drop-trivial-lambdas-proofs"))
(local (include-book "substitute-unnecessary-lambda-vars2-proofs"))
(local (include-book "substitute-constants-in-lambdas-proofs"))
(local (include-book "kestrel/lists-light/subsetp-equal" :dir :system))

;; switches the evaluator
(defthm drop-unused-lambda-bindings-correct-for-if-and-not-eval
  (implies (and (pseudo-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (lambdas-closed-in-termp term))
           (equal (if-and-not-eval (drop-unused-lambda-bindings term) alist)
                  (if-and-not-eval term alist)))
  :hints (("Goal" :use (:functional-instance
                        drop-unused-lambda-bindings-correct
                        (empty-eval if-and-not-eval)
                        (empty-eval-list if-and-not-eval-list)))))

;; switches the evaluator
(defthm substitute-constants-in-lambdas-correct-for-if-and-not-eval
  (implies (and (pseudo-termp term)
                (no-nils-in-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (lambdas-closed-in-termp term))
           (equal (if-and-not-eval (substitute-constants-in-lambdas term) alist)
                  (if-and-not-eval term alist)))
  :hints (("Goal" :use (:functional-instance
                        substitute-constants-in-lambdas-correct
                        (empty-eval if-and-not-eval)
                        (empty-eval-list if-and-not-eval-list)))))

;; switches the evaluator
;; todo: rectify the names of these correctness rules
(defthm empty-eval-of-substitute-unnecessary-lambda-vars-in-term2-for-if-and-not-eval
  (implies (and (pseudo-termp term)
                (no-nils-in-termp term)
                (lambdas-closed-in-termp term)
                (no-duplicate-lambda-formals-in-termp term))
           (equal (if-and-not-eval (substitute-unnecessary-lambda-vars-in-term2 term print hands-off-fns) alist)
                  (if-and-not-eval term alist)))
  :hints (("Goal" :use (:functional-instance
                        empty-eval-of-substitute-unnecessary-lambda-vars-in-term2
                        (empty-eval if-and-not-eval)
                        (empty-eval-list if-and-not-eval-list)))))

;; switches the evaluator
(defthm drop-trivial-lambdas-correct-for-if-and-not-eval
  (implies (and (pseudo-termp term)
                (no-nils-in-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (lambdas-closed-in-termp term))
           (equal (if-and-not-eval (drop-trivial-lambdas term) alist)
                  (if-and-not-eval term alist)))
  :hints (("Goal" :use (:functional-instance
                        drop-trivial-lambdas-correct
                        (empty-eval if-and-not-eval)
                         (empty-eval-list if-and-not-eval-list)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defthm pre-simplify-term-one-step-correct
  (implies (and (pseudo-termp term)
                (no-nils-in-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (lambdas-closed-in-termp term))
           (equal (if-and-not-eval (pre-simplify-term-one-step term nil) alist)
                  (if-and-not-eval term alist)))
  :hints (("Goal" :in-theory (enable pre-simplify-term-one-step))))

(defthm pre-simplify-term-one-step-correct-iff
  (implies (and (pseudo-termp term)
                (no-nils-in-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (lambdas-closed-in-termp term))
           (iff (if-and-not-eval (pre-simplify-term-one-step term iffp) alist)
                (if-and-not-eval term alist)))
  :hints (("Goal" :in-theory (enable pre-simplify-term-one-step))))

(defthm no-nils-in-termp-of-pre-simplify-term-one-step
  (implies (and (pseudo-termp term)
                (no-nils-in-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (lambdas-closed-in-termp term))
           (no-nils-in-termp (pre-simplify-term-one-step term iffp)))
  :hints (("Goal" :in-theory (enable pre-simplify-term-one-step))))

(defthm lambdas-closed-in-termp-of-pre-simplify-term-one-step
  (implies (and (pseudo-termp term)
                (no-nils-in-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (lambdas-closed-in-termp term))
           (lambdas-closed-in-termp (pre-simplify-term-one-step term iffp)))
  :hints (("Goal" :in-theory (enable pre-simplify-term-one-step))))

(defthm no-duplicate-lambda-formals-in-termp-of-pre-simplify-term-one-step
  (implies (and (pseudo-termp term)
                (no-nils-in-termp term)
                (no-duplicate-lambda-formals-in-termp term))
           (no-duplicate-lambda-formals-in-termp (pre-simplify-term-one-step term iffp)))
  :hints (("Goal" :in-theory (enable pre-simplify-term-one-step))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defthm pre-simplify-term-loop-correct
  (implies (and (pseudo-termp term)
                (no-nils-in-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (lambdas-closed-in-termp term))
           (equal (if-and-not-eval (pre-simplify-term-loop count term nil) alist)
                  (if-and-not-eval term alist)))
  :hints (("Goal" :in-theory (enable pre-simplify-term-loop))))

(defthm pre-simplify-term-loop-correct-iff
  (implies (and (pseudo-termp term)
                (no-nils-in-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (lambdas-closed-in-termp term))
           (iff (if-and-not-eval (pre-simplify-term-loop count term iffp) alist)
                (if-and-not-eval term alist)))
  :hints (("Goal" :in-theory (enable pre-simplify-term-loop))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; pre-simplify-term does not change the meaning of terms.
(defthm pre-simplify-term-correct
  (implies (and (pseudo-termp term)
                (no-nils-in-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (lambdas-closed-in-termp term))
           (equal (if-and-not-eval (pre-simplify-term term nil print) alist)
                  (if-and-not-eval term alist)))
  :hints (("Goal" :in-theory (enable pre-simplify-term))))

(defthm pre-simplify-term-correct-iff
  (implies (and (pseudo-termp term)
                (no-nils-in-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (lambdas-closed-in-termp term))
           (iff (if-and-not-eval (pre-simplify-term term iffp print) alist)
                (if-and-not-eval term alist)))
  :hints (("Goal" :in-theory (enable pre-simplify-term))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defthm subsetp-equal-of-free-vars-in-term-of-pre-simplify-term-one-step
  (implies (and (pseudo-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (lambdas-closed-in-termp term))
           (subsetp-equal (free-vars-in-term (pre-simplify-term-one-step term iffp))
                          (free-vars-in-term term)))
  :hints (("Goal" :in-theory (enable pre-simplify-term-one-step))))

(defthm subsetp-equal-of-free-vars-in-term-of-pre-simplify-term-loop
  (implies (and (pseudo-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (no-nils-in-termp term)
                (lambdas-closed-in-termp term))
           (subsetp-equal (free-vars-in-term (pre-simplify-term-loop count term iffp))
                          (free-vars-in-term term)))
  :hints (("Goal" :in-theory (enable pre-simplify-term-loop))))

(defthm subsetp-equal-of-free-vars-in-term-of-pre-simplify-term
  (implies (and (pseudo-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (no-nils-in-termp term)
                (lambdas-closed-in-termp term))
           (subsetp-equal (free-vars-in-term (pre-simplify-term term iffp print))
                          (free-vars-in-term term)))
  :hints (("Goal" :in-theory (enable pre-simplify-term))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; If it's a var, it's one of the original free-vars.
(defthmd member-equal-of-pre-simplify-term-and-free-vars-in-term-when-not-consp-of-pre-simplify-term
  (implies (and (not (consp (pre-simplify-term term iffp print)))
                (pseudo-termp term)
                (no-duplicate-lambda-formals-in-termp term)
                (no-nils-in-termp term)
                (lambdas-closed-in-termp term))
           (member-equal (pre-simplify-term term iffp print)
                         (free-vars-in-term term)))
  :hints (("Goal" :use subsetp-equal-of-free-vars-in-term-of-pre-simplify-term
           :in-theory (disable subsetp-equal-of-free-vars-in-term-of-pre-simplify-term))))
