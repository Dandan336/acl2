; SV - Symbolic Vector Hardware Analysis Framework
; Copyright (C) 2022 Intel Corporation
;
; License: (An MIT/X11-style license)
;
;   Permission is hereby granted, free of charge, to any person obtaining a
;   copy of this software and associated documentation files (the "Software"),
;   to deal in the Software without restriction, including without limitation
;   the rights to use, copy, modify, merge, publish, distribute, sublicense,
;   and/or sell copies of the Software, and to permit persons to whom the
;   Software is furnished to do so, subject to the following conditions:
;
;   The above copyright notice and this permission notice shall be included in
;   all copies or substantial portions of the Software.
;
;   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;   DEALINGS IN THE SOFTWARE.
;
; Original author: Sol Swords <sol.swords@intel.com>

(in-package "SV")

(include-book "../svex/override-types")
(include-book "../svex/override-mux")
(include-book "../svex/depends")
(include-book "fsm-base")
;; (local (include-book "../svex/alist-thms"))
(local (include-book "std/lists/sets" :dir :system))
(local (std::add-default-post-define-hook :fix))


;; (local (defthm svex-env-extract-of-append-extract-superset
;;          (implies (subsetp-equal (Svarlist-fix keys1) (svarlist-fix keys2))
;;                   (equal (svex-env-extract keys1 (append (svex-env-extract keys2 x) rest))
;;                          (svex-env-extract keys1 x)))
;;          :hints(("Goal" :induct (svex-env-extract keys1 x)
;;                  :expand ((svarlist-fix keys1)
;;                           (:free (x) (svex-env-extract keys1 x)))
;;                  :in-theory (enable subsetp-equal (:i svex-env-extract))))))

(define svex-env-filter-override ((x svex-env-p)
                                  (type svar-overridetype-p))
  :returns (new-x svex-env-p)
  (if (atom x)
      nil
    (if (and (mbt (and (consp (car x))
                       (svar-p (caar x))))
             (svar-override-p (caar x) type))
        (cons (mbe :logic (cons (caar x) (4vec-fix (cdar x)))
                   :exec (car x))
              (svex-env-filter-override (cdr x) type))
      (svex-env-filter-override (cdr x) type)))
  ///
  (defret boundp-of-<fn>
    (equal (svex-env-boundp k new-x)
           (and (svar-override-p k type)
                (svex-env-boundp k x)))
    :hints(("Goal" :in-theory (enable svex-env-boundp))))

  (defret lookup-of-<fn>
    (equal (svex-env-lookup k new-x)
           (if (svar-override-p k type)
               (svex-env-lookup k x)
             (4vec-x)))
    :hints(("Goal" :in-theory (enable svex-env-lookup))))

  (defthm svex-env-filter-override-of-append
    (equal (svex-env-filter-override (append x y) type)
           (append (svex-env-filter-override x type)
                   (svex-env-filter-override y type))))

  (local (defthm svar-override-p-diff
           (implies (and (svar-override-p x type1)
                         (not (svar-overridetype-equiv type1 type2)))
                    (not (svar-override-p x type2)))
           :hints(("Goal" :in-theory (enable svar-override-p)))))


  (local
   (defret svex-env-filter-override-when-keys-override-p-lemma
     (implies (svarlist-override-p (alist-keys (svex-env-fix x)) key-type)
              (equal new-x
                     (and (svar-overridetype-equiv type key-type)
                          (svex-env-fix x))))
     :hints(("Goal" :in-theory (e/d (svex-env-fix
                                     svarlist-override-p
                                     alist-keys)
                                    (svar-overridetype-equiv))))))

  (defret svex-env-filter-override-when-keys-override-p
    (implies (and (equal keys (alist-keys (svex-env-fix x)))
                  (svarlist-override-p keys key-type))
             (equal new-x
                    (and (svar-overridetype-equiv type key-type)
                         (svex-env-fix x)))))

  (defret svex-env-filter-override-when-keys-change-override-p
    (implies (and (equal keys (alist-keys (svex-env-fix x)))
                  (bind-free (case-match keys
                               (('svarlist-change-override & key-type)
                                `((key-type . ,key-type)))
                               (& nil))
                             (key-type))
                  (svarlist-override-p keys key-type))
             (equal new-x
                    (and (svar-overridetype-equiv type key-type)
                         (svex-env-fix x)))))

  (defret svarlist-override-p-alist-keys-of-<fn>
    (svarlist-override-p (alist-keys new-x) type)
    :hints(("Goal" :in-theory (enable svarlist-override-p alist-keys))))

  (local (in-theory (enable svex-env-fix))))




(define svex-alistlist-all-keys ((x svex-alistlist-p))
  (if (atom x)
      nil
    (append (svex-alist-keys (car x))
            (svex-alistlist-all-keys (cdr x)))))

(define svex-envlist-all-keys ((x svex-envlist-p))
  (if (atom x)
      nil
    (append (alist-keys (svex-env-fix (car x)))
            (svex-envlist-all-keys (cdr x))))
  ///
  (defthm svex-envlist-all-keys-of-svex-alistlist-eval
    (Equal (svex-envlist-all-keys (svex-alistlist-eval x env))
           (svex-alistlist-all-keys x))
    :hints(("Goal" :in-theory (enable svex-alistlist-all-keys
                                      svex-alistlist-eval)))))

(define svex-envlist-filter-override ((x svex-envlist-p)
                                       (type svar-overridetype-p))
  :returns (new-x svex-envlist-p)
  (if (atom x)
      nil
    (cons (svex-env-filter-override (car x) type)
          (svex-envlist-filter-override (cdr x) type)))
  ///

  (defthm svex-envlist-filter-override-of-append
    (equal (svex-envlist-filter-override (append x y) type)
           (append (svex-envlist-filter-override x type)
                   (svex-envlist-filter-override y type))))


  (local
   (defret svex-envlist-filter-override-when-keys-override-p-lemma
     (implies (svarlist-override-p (svex-envlist-all-keys x) key-type)
              (equal new-x
                     (if (svar-overridetype-equiv key-type type)
                         (svex-envlist-fix x)
                       (repeat (len x) nil))))
     :hints(("Goal" :in-theory (enable svex-envlist-all-keys
                                       svarlist-override-p
                                       repeat)))))

  (defret svex-envlist-filter-override-when-keys-override-p
    (implies (and (equal keys (svex-envlist-all-keys x))
                  (svarlist-override-p keys key-type))
             (equal new-x
                    (if (svar-overridetype-equiv key-type type)
                        (svex-envlist-fix x)
                      (repeat (len x) nil)))))

  (defret svex-envlist-filter-override-when-keys-change-override-p
    (implies (and (equal keys (svex-envlist-all-keys x))
                  (bind-free (case-match keys
                               (('svarlist-change-override & key-type)
                                `((key-type . ,key-type)))
                               (& nil))
                             (key-type))
                  (svarlist-override-p keys key-type))
             (equal new-x
                    (if (svar-overridetype-equiv key-type type)
                        (svex-envlist-fix x)
                      (repeat (len x) nil))))))




(define svex-envlist-extract-keys ((keys svarlist-p)
                                   (envs svex-envlist-p))
  :returns (new-envs svex-envlist-p)
  (if (atom envs)
      nil
    (cons (svex-env-extract keys (car envs))
          (svex-envlist-extract-keys keys (cdr envs))))
  ///
  (local (defthm set-difference-of-append
           (Equal (set-difference-equal (append a b) c)
                  (append (set-difference-equal a c) (set-difference-equal b c)))))

;; Rules: ((:DEFINITION SVEX-ENVS-SIMILAR)
;;         (:EXECUTABLE-COUNTERPART NOT)
;;         (:REWRITE ACL2::MEMBER-OF-SET-DIFFERENCE-EQUAL)
;;         (:REWRITE MEMBER-OF-SVEX-ALIST-DEPENDENCIES)
;;         (:REWRITE ACL2::SUBSETP-MEMBER . 1)
;;         (:REWRITE ACL2::SUBSETP-MEMBER . 2)
;;         (:REWRITE ACL2::SUBSETP-MEMBER . 3)
;;         (:REWRITE ACL2::SUBSETP-REFL)
;;         (:REWRITE SVAR-P-OF-SVAR-FIX)
;;         (:REWRITE SVARLIST-FIX-WHEN-SVARLIST-P)
;;         (:REWRITE SVARLIST-P-OF-SVEX-ALIST-DEPENDENCIES)
;;         (:REWRITE SVEX-ALIST-EVAL-EQUIV-WHEN-EXTRACT-DEPENDENCIES-SIMILAR)
;;         (:REWRITE SVEX-ENV-BOUNDP-OF-SVEX-ENV-EXTRACT)
;;         (:REWRITE SVEX-ENV-LOOKUP-OF-APPEND)
;;         (:REWRITE SVEX-ENV-LOOKUP-OF-SVEX-ENV-EXTRACT)
;;         (:TYPE-PRESCRIPTION MEMBER-EQUAL)
;;         (:TYPE-PRESCRIPTION SUBSETP-EQUAL)
;;         (:TYPE-PRESCRIPTION SVEX-ALIST-DEPENDS-ON))

  
  (local (defthm svex-alist-eval-of-append-lemma
           (implies (subsetp-equal (set-difference-equal (svex-alist-dependencies x)
                                                         (svarlist-fix st-keys))
                                   (svarlist-fix in-keys))
                    (svex-envs-equivalent (SVEX-ALIST-EVAL
                                           x
                                           (APPEND (SVEX-ENV-EXTRACT st-keys INITST)
                                                   (SVEX-ENV-EXTRACT in-KEYS in)))
                                          (SVEX-ALIST-EVAL
                                           x
                                           (APPEND (SVEX-ENV-EXTRACT st-keys INITST)
                                                   in))))
           :hints(("Goal" :in-theory (enable svex-alist-eval-equiv-when-extract-dependencies-similar
                                             svex-envs-similar)))))

  (defthm base-fsm-eval-of-svex-envlist-extract-keys
    (implies (subsetp-equal (set-difference-equal (append (svex-alist-dependencies (base-fsm->values fsm))
                                                          (svex-alist-dependencies (base-fsm->nextstate fsm)))
                                                  (svex-alist-keys (base-fsm->nextstate fsm)))
                            (svarlist-fix keys))
             (svex-envlists-equivalent (base-fsm-eval (svex-envlist-extract-keys keys ins) initst fsm)
                                       (base-fsm-eval ins initst fsm)))
    :hints(("Goal" :in-theory (enable base-fsm-eval
                                      svex-envlists-equivalent-redef
                                      base-fsm-step
                                      base-fsm-step-outs
                                      base-fsm-step-env)
            :induct (base-fsm-eval ins initst fsm))))

  (defthm base-fsm-final-state-of-svex-envlist-extract-keys
    (implies (subsetp-equal (set-difference-equal (svex-alist-dependencies nextstate)
                                                  (svex-alist-keys nextstate))
                            (svarlist-fix keys))
             (svex-envs-equivalent (base-fsm-final-state (svex-envlist-extract-keys keys ins) initst nextstate)
                                   (base-fsm-final-state ins initst nextstate)))
    :hints(("Goal" :in-theory (enable base-fsm-final-state
                                      base-fsm-step
                                      base-fsm-step-env)
            :induct (base-fsm-final-state ins initst nextstate))))

  (defthm svar-override-triplelist-envlist-muxes-<<=-of-extract-impl-env
    (implies (subsetp-equal (svar-override-triplelist-override-vars x) (svarlist-fix keys))
             (equal (svar-override-triplelist-envlists-muxes-<<= x (svex-envlist-extract-keys keys impl-env) spec-env spec-outs)
                    (svar-override-triplelist-envlists-muxes-<<= x impl-env spec-env spec-outs)))
    :hints(("Goal" :in-theory (enable svar-override-triplelist-envlists-muxes-<<=))))


  (defthm svex-env-muxtests-subsetp-of-extract-impl-env
    (implies (subsetp-equal (svarlist-fix testvars) (svarlist-fix keys))
             (equal (svex-env-muxtests-subsetp testvars spec-env (svex-env-extract keys impl-env))
                    (svex-env-muxtests-subsetp testvars spec-env impl-env)))
    :hints(("Goal" :in-theory (enable svex-env-muxtests-subsetp))))

  (defthm svex-envlists-muxtests-subsetp-of-extract-impl-env
    (implies (subsetp-equal (svarlist-fix testvars) (svarlist-fix keys))
             (equal (svex-envlists-muxtests-subsetp testvars spec-envs (svex-envlist-extract-keys keys impl-envs))
                    (svex-envlists-muxtests-subsetp testvars spec-envs impl-envs)))
    :hints(("Goal" :in-theory (enable svex-envlists-muxtests-subsetp))))

  (defret len-of-<fn>
    (equal (len new-envs)
           (len envs))))


(define svarlist-filter-override ((x svarlist-p)
                                  (type svar-overridetype-p))
  :returns (new-x svarlist-p)
  (if (Atom x)
      nil
    (if (svar-override-p (car x) type)
        (cons (svar-fix (car x))
              (svarlist-filter-override (cdr x) type))
      (svarlist-filter-override (cdr x) type)))
  ///

  (defret svarlist-override-p-of-<fn>
    (svarlist-override-p new-x type)
    :hints(("Goal" :in-theory (enable svarlist-override-p))))

  (local (defthm svar-fix-equals-x
           (equal (equal (svar-fix x) x)
                  (svar-p x))))

  (defret member-of-<fn>
    (iff (member-equal v new-x)
         (and (svar-override-p v type)
              (member-equal v (svarlist-fix x))))))


(define svar-override-okp ((x svar-p))
  (or (svar-override-p x :test)
      (svar-override-p x :val)
      (svar-override-p x nil))
  ///
  (defthm svar-override-okp-when-svar-override-p
    (implies (svar-override-p x type)
             (svar-override-okp x))
    :hints(("Goal" :in-theory (enable svar-override-p))))
  (defthm svar-override-okp-of-svar-change-override
    (svar-override-okp (svar-change-override x type))))

(define svarlist-override-okp ((x svarlist-p))
  (if (atom x)
      t
    (and (svar-override-okp (car x))
         (svarlist-override-okp (cdr x))))
  ///
  (defthm svarlist-override-okp-of-append
    (iff (svarlist-override-okp (append x y))
         (and (svarlist-override-okp x)
              (svarlist-override-okp y))))

  (defthm svarlist-override-okp-when-svarlist-override-p
    (implies (svarlist-override-p x type)
             (svarlist-override-okp x))
    :hints(("Goal" :in-theory (enable svarlist-override-p))))

  (defthm svarlist-override-okp-of-svarlist-change-override
    (svarlist-override-okp (svarlist-change-override x type))
    :hints(("Goal" :in-theory (enable svarlist-change-override)))))


(define svarlist-override-okp-badguy ((x svarlist-p))
  :returns (badguy)
  (if (atom x)
      nil
    (if (svar-override-okp (car x))
        (svarlist-override-okp-badguy (cdr x))
      (svar-fix (car x))))
  ///
  (defretd svarlist-override-okp-iff-badguy
    (iff (svarlist-override-okp x)
         (or (not (member-equal badguy (svarlist-fix x)))
             (svar-override-okp badguy)))
    :hints(("Goal" :in-theory (enable svarlist-override-okp svarlist-fix))))

  (defretd svarlist-override-okp-by-badguy
    (implies (or (not (member-equal badguy (svarlist-fix x)))
                 (svar-override-okp badguy))
             (svarlist-override-okp x))
    :hints(("Goal" :in-theory (enable svarlist-override-okp-iff-badguy)))))





(defcong svex-envlists-equivalent equal (svex-envlist-<<= x y) 1
  :hints(("Goal" :in-theory (enable svex-envlist-<<= svex-envlists-equivalent-redef))))

(defcong svex-envlists-equivalent equal (svex-envlist-<<= x y) 2
  :hints(("Goal" :in-theory (enable svex-envlist-<<= svex-envlists-equivalent-redef))))


