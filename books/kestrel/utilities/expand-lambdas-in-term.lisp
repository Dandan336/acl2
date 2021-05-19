; Utilities for expanding lambdas
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2020 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; STATUS: IN-PROGRESS

(include-book "substitution")
(include-book "lambda-free-termp")
(include-book "lambdas-closed-in-termp")
(local (include-book "../alists-light/pairlis-dollar"))
(local (include-book "../alists-light/strip-cars"))
(local (include-book "../lists-light/subsetp-equal"))
(local (include-book "../typed-lists-light/symbol-listp"))

(defthm-flag-my-sublis-var
  (defthm lambda-free-termp-of-my-sublis-var
    (implies (and (lambda-free-termp form)
                  (lambda-free-termsp (strip-cdrs alist)))
             (lambda-free-termp (my-sublis-var alist form)))
    :flag my-sublis-var)
  (defthm lambda-free-termsp-of-my-sublis-var-lst
    (implies (and (lambda-free-termsp l)
                  (lambda-free-termsp (strip-cdrs alist)))
             (lambda-free-termsp (my-sublis-var-lst alist l)))
    :flag my-sublis-var-lst)
  :hints (("Goal" :in-theory (enable my-sublis-var
                                     my-sublis-var-lst))))

;(later we may handle non-pseudo-terms that still include lets).
;This is similar to remove-lambdas, but we don't use remove-lambdas,
;because it has to preserve quote normal form. For example:
;(remove-lambdas '((lambda (x y) (binary-+ x y)) '1 '2)) produces '3
;whereas we want (binary-+ '1 '2).
(mutual-recursion
 (defund expand-lambdas-in-term (term)
   (declare (xargs :measure (acl2-count term)
                   :guard (pseudo-termp term)
                   :verify-guards nil)) ;see verify-guards form below
   (if (variablep term)
       term
     (if (quotep term)
         term
       ;;it's a function call (maybe a lambda application):
       (let* ((args (fargs term))
              (args (expand-lambdas-in-terms args)) ;process the args first
              (fn (ffn-symb term)))
         (if (flambdap fn) ;test for lambda application.  term is: ((lambda (formals) body) ... args ...)
             (let* ((lambda-body (expand-lambdas-in-term (lambda-body fn)))) ;;apply recursively to the lambda body
               ;; beta-reduce (TODO: Make a simple version of subcor-var and call that here):
               (my-sublis-var (pairlis$ (lambda-formals fn) args) lambda-body))
           ;;not a lambda application, so just rebuild the function call:
           `(,fn ,@args))))))

 (defund expand-lambdas-in-terms (terms)
   (declare (xargs :measure (acl2-count terms)
                   :guard (pseudo-term-listp terms)))
   (if (endp terms)
       nil
     (cons (expand-lambdas-in-term (first terms))
           (expand-lambdas-in-terms (rest terms))))))

(make-flag expand-lambdas-in-term)

;TODO: Automate some of this?

(defthm len-of-expand-lambdas-in-terms
  (equal (len (expand-lambdas-in-terms terms))
         (len terms))
  :hints (("Goal" :induct (len terms)
           :in-theory (enable len expand-lambdas-in-terms))))

(defthm consp-of-expand-lambdas-in-terms
  (equal (consp (expand-lambdas-in-terms terms))
         (consp terms))
  :hints (("Goal" :induct (len terms)
           :in-theory (enable len expand-lambdas-in-terms))))

(defthm-flag-expand-lambdas-in-term
  (defthm pseudo-termp-of-expand-lambdas-in-term
    (implies (pseudo-termp term)
             (pseudo-termp (expand-lambdas-in-term term)))
    :flag expand-lambdas-in-term)
  (defthm pseudo-term-listp-of-expand-lambdas-in-terms
    (implies (pseudo-term-listp terms)
             (pseudo-term-listp (expand-lambdas-in-terms terms)))
    :flag expand-lambdas-in-terms)
  :hints (("Goal" :in-theory (enable expand-lambdas-in-term
                                     expand-lambdas-in-terms))))

(verify-guards expand-lambdas-in-term)

(defthm car-of-expand-lambdas-in-terms
  (equal (car (expand-lambdas-in-terms terms))
         (expand-lambdas-in-term (car terms)))
  :hints (("Goal" :in-theory (enable expand-lambdas-in-terms))))

(defthm-flag-expand-lambdas-in-term
  (defthm lambda-free-termp-of-expand-lambdas-in-term
    (implies (pseudo-termp term)
             (lambda-free-termp (expand-lambdas-in-term term)))
    :flag expand-lambdas-in-term)
  (defthm lambda-free-term-listp-of-expand-lambdas-in-terms
    (implies (pseudo-term-listp terms)
             (lambda-free-termsp (expand-lambdas-in-terms terms)))
    :flag expand-lambdas-in-terms)
  :hints (("Goal" :in-theory (enable expand-lambdas-in-term
                                     expand-lambdas-in-terms))))

(defthm not-consp-of-car-of-expand-lambdas-in-term
  (implies (pseudo-termp term)
           (not (consp (car (expand-lambdas-in-term term)))))
  :hints (("Goal" :use (:instance lambda-free-termp-of-expand-lambdas-in-term)
           :in-theory (disable lambda-free-termp-of-expand-lambdas-in-term))))

(local
 (defthm subsetp-equal-of-vars-in-term-of-assoc-equal-and-vars-in-terms-of-strip-cdrs
   (implies (and (member-equal term (strip-cars alist))
                 (assoc-equal term alist))
            (subsetp-equal (vars-in-term (cdr (assoc-equal term alist)))
                           (vars-in-terms (strip-cdrs alist))))
   :hints (("Goal" :in-theory (enable subsetp-equal assoc-equal vars-in-terms)))))

;move
(defthm-flag-vars-in-term
  (defthm subsetp-equal-of-vars-in-term-of-my-sublis-var-and-vars-in-terms-of-strip-cdrs
    (implies (subsetp-equal (vars-in-term term)
                            (strip-cars alist))
             (subsetp-equal (vars-in-term (my-sublis-var alist term))
                            (vars-in-terms (strip-cdrs alist))))
    :flag vars-in-term)
  (defthm subsetp-equal-of-vars-in-term-of-my-sublis-var-lst-and-vars-in-terms-of-strip-cdrs
    (implies (subsetp-equal (vars-in-terms terms)
                            (strip-cars alist))
             (subsetp-equal (vars-in-terms (my-sublis-var-lst alist terms))
                            (vars-in-terms (strip-cdrs alist))))
    :flag vars-in-terms)
  :hints (("Goal" :in-theory (enable my-sublis-var
                                     my-sublis-var-lst
                                     vars-in-term
                                     vars-in-terms))))

;; Expanding lambdas doesn't introduce new free vars (assuming lambdas are
;; closed).  Note that expanding lambdas can remove free vars, since some
;; lambda formals may not appear in the lambda body (so their actuals are
;; effectively dropped).
(defthm-flag-expand-lambdas-in-term
  (defthm subsetp-equal-of-vars-in-term-of-expand-lambdas-in-term-and-vars-in-term
    (implies (and (pseudo-termp term)
                  (lambdas-closed-in-termp term))
             (subsetp-equal (vars-in-term (expand-lambdas-in-term term))
                            (vars-in-term term)))
    :flag expand-lambdas-in-term)
  (defthm subsetp-equal-of-vars-in-terms-of-expand-lambdas-in-terms-and-vars-in-terms
    (implies (and (pseudo-term-listp terms)
                  (lambdas-closed-in-termsp terms))
             (subsetp-equal (vars-in-terms (expand-lambdas-in-terms terms))
                            (vars-in-terms terms)))
    :flag expand-lambdas-in-terms)
  :hints ( ("subgoal *1/2" :use (:instance subsetp-equal-of-vars-in-term-of-my-sublis-var-and-vars-in-terms-of-strip-cdrs
                                           (term (expand-lambdas-in-term (caddr (car term))))
                                           (alist (pairlis$ (cadr (car term))
                                                            (expand-lambdas-in-terms (cdr term))))))
           ("Goal" :in-theory (e/d (vars-in-term
                                    expand-lambdas-in-term
                                    expand-lambdas-in-terms
                                    lambdas-closed-in-termp)
                                   (subsetp-equal-of-vars-in-term-of-my-sublis-var-and-vars-in-terms-of-strip-cdrs)))))
