
; Note: The license below is based on the template at:
; http://opensource.org/licenses/BSD-3-Clause

; Copyright (C) 2020 Regents of the University of Texas
; All rights reserved.

; Redistribution and use in source and binary forms, with or without
; modification, are permitted provided that the following conditions are
; met:

; o Redistributions of source code must retain the above copyright
;   notice, this list of conditions and the following disclaimer.

; o Redistributions in binary form must reproduce the above copyright
;   notice, this list of conditions and the following disclaimer in the
;   documentation and/or other materials provided with the distribution.

; o Neither the name of the copyright holders nor the names of its
;   contributors may be used to endorse or promote products derived
;   from this software without specific prior written permission.

; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
; A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
; HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
; LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
; OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

; Original Author(s):
; Mertcan Temel         <mert@utexas.edu>

(in-package "RP")

(include-book "summation-tree-meta-fncs")

(local
 (include-book "projects/rp-rewriter/proofs/rp-equal-lemmas" :dir :system))

(local
 (include-book "lemmas"))

(local
 (include-book "projects/rp-rewriter/proofs/aux-function-lemmas" :dir :system))

(local
 (in-theory (disable +-IS-SUM)))

(local
 (in-theory (disable rp-termp)))

(local
 (in-theory (disable ex-from-rp
                     (:definition acl2::apply$-badgep)
                     (:linear acl2::apply$-badgep-properties . 1)
                     (:definition subsetp-equal)
                     (:definition member-equal)
                     (:rewrite
                      acl2::member-equal-newvar-components-1)
                     (:definition rp-term-listp)
                     include-fnc)))

(local
 (defthm rp-term-listp-of-cons
   (equal (rp-term-listp (cons a b))
          (and (rp-termp a)
               (rp-term-listp b)))
   :hints (("Goal"
            :in-theory (e/d (rp-term-listp) ())))))

(local
 (defthm rp-termp-of--
   (iff (rp-termp (list '-- a))
        (rp-termp a))
   :hints (("Goal"
            :expand (rp-termp (list '-- a))
            :in-theory (e/d () ())))))

(local
 (defthm rp-termp-of-list
   (iff (rp-termp (cons 'list rest))
        (rp-term-listp rest))
   :hints (("Goal"
            :expand (rp-termp (cons 'list rest))
            :in-theory (e/d () ())))))

(local
 (defthm rp-termp-of-s-and-c
   (and (iff (rp-termp (cons 's rest))
             (rp-term-listp rest))
        (iff (rp-termp (cons 'c rest))
             (rp-term-listp rest)))
   :hints (("Goal"
            :expand ((rp-termp (cons 's rest))
                     (rp-termp (cons 'c rest)))
            :in-theory (e/d () ())))))

(local
 (defthm rp-termp-car-cddddr
   (IMPLIES (AND (RP-TERMP TERM)
                 (CONSP TERM)
                 (NOT (QUOTEP TERM))
                 (CONSP (CDR TERM))
                 (CONSP (CDDR TERM))
                 (CONSP (CDDDR TERM))
                 (CONSP (CDDdDR TERM)))
            (RP-TERMP (CAr (cDdDDR TERM))))
   :hints (("Goal"
            :do-not-induct t
            :expand (RP-TERMP TERM)
            :in-theory (e/d (rp-termp
                             is-rp
                             rp-term-listp)
                            ())))))

(local
 (defthm rp-termp-of-consed
   (equal (rp-termp (cons sym rest))
          (let ((term  (cons sym rest)))
            (COND ((ATOM TERM) (AND (SYMBOLP TERM) TERM))
                  ((EQ (CAR TERM) 'QUOTE)
                   (AND (CONSP (CDR TERM))
                        (NULL (CDR (CDR TERM)))))
                  ((EQ (CAR TERM) 'RP)
                   (AND (IS-RP TERM)
                        (RP-TERMP (CADDR TERM))))
                  ((EQ (CAR TERM) 'FALIST)
                   (AND (FALIST-CONSISTENT TERM)
                        (RP-TERMP (CADDR TERM))))
                  (T (AND (SYMBOLP (CAR TERM))
                          (CAR TERM)
                          (RP-TERM-LISTP (CDR TERM)))))))
   :hints (("Goal"
            :expand (rp-termp (cons sym rest))
            :in-theory (e/d () ())))))

(define create-c-instance-medwc-filtered ((s-lst rp-term-listp)
                                          (pp-lst rp-term-listp)
                                          (c-lst rp-term-listp))
  :returns (res-c-lst rp-term-listp
                      :hyp (and (rp-term-listp s-lst)
                                (rp-term-listp pp-lst)
                                (rp-term-listp c-lst)))
  (b* (((mv res-s-lst res-pp-lst res-c-lst)
        (create-c-instance s-lst pp-lst c-lst))
       ((when (or res-s-lst
                  res-pp-lst))
        (progn$ (hard-error 'create-c-instance-medwc-filtered
                            "Unexpected create-c-instance output ~%
for s-lst = ~p0,~%pp-lst = ~p1,~%c-lst=~p2~%."
                            (list (cons #\0 s-lst)
                                  (cons #\0 pp-lst)
                                  (cons #\0 c-lst)))
                (list `(c '(0 . 0) ,(create-list-instance s-lst)
                    ,(create-list-instance pp-lst)
                    ,(create-list-instance c-lst))))))
    res-c-lst))

(define medw-compress-c-arg-lst-aux-aux ((c rp-termp)
                                         (c-is-signed booleanp)
                                         (cur-c-c-lst rp-term-listp)
                                         (sign-matters booleanp))
  ;; check if c matches one of the arguments of cur-c, which is stored in
  ;; cur-c-c-lst
  ;; if a match is found, compress and return the new c-lst for cur-c
  :returns (mv (new-cur-c-c-lst rp-term-listp :hyp (and (rp-term-listp cur-c-c-lst)
                                                        (rp-termp c)))
               (compressed booleanp))
  (if (atom cur-c-c-lst)
      (mv nil nil)
    (b* ((c2 (ex-from-rp$ (car cur-c-c-lst)))
         ((mv c2 c2-is-signed)
          (case-match c2 (('-- x) (mv x t)) (& (mv c2 nil))))
         (compress (and (rp-equal-cnt c c2 1)
                        (if sign-matters
                            (not (equal c-is-signed c2-is-signed))
                          
                          t)))
         ((when compress)
          (if c2-is-signed
              (mv (cons c2 (cdr cur-c-c-lst)) t)
            (mv (cons `(-- ,(car cur-c-c-lst)) (cdr cur-c-c-lst)) t)))
         ((mv res-cur-c-c-lst compressed)
          (medw-compress-c-arg-lst-aux-aux c c-is-signed (cdr cur-c-c-lst)
                                           sign-matters)))
      (if compressed
          (mv (cons (car cur-c-c-lst) res-cur-c-c-lst) t)
        (mv cur-c-c-lst nil)))))

(define medw-compress-c-arg-lst-aux ((c rp-termp)
                                     (c-is-signed booleanp)
                                     (c-lst rp-term-listp)
                                     (sign-matters booleanp))
  ;; check if "c" can be pushed into the arguments of one of the c's in "c-lst"
  :returns (mv (new-c-lst rp-term-listp :hyp (and (rp-term-listp c-lst)
                                                  (rp-termp c)))
               (compressed booleanp))
  (if (atom c-lst)
      (mv nil nil)
    (b* ((cur-c (ex-from-rp (car c-lst)))
         ((mv cur-c-s-lst cur-c-pp-lst cur-c-c-lst cur-c-is-signed valid)
          (case-match cur-c
            (('-- x)
             (b* ((x (ex-from-rp x)))
               (case-match x
                 (('c & s-list pp-list c-list)
                  (mv (list-to-lst s-list) (list-to-lst pp-list) (list-to-lst c-list) t t))
                 (& (mv nil nil nil t nil)))))
            (('c & s-list pp-list c-list)
             (mv (list-to-lst s-list) (list-to-lst pp-list) (list-to-lst c-list) nil t))
            (& (mv nil nil nil nil nil))))
         ((unless valid)
          (b* (((mv rest-new-c-lst compressed)
                (medw-compress-c-arg-lst-aux c c-is-signed (cdr c-lst)
                                             sign-matters)))
            (if compressed
                (mv (cons (car c-lst) rest-new-c-lst) t)
              (mv c-lst nil))))
         ((mv res-c-c-lst compressed)
          (medw-compress-c-arg-lst-aux-aux c
                                           (not (equal cur-c-is-signed c-is-signed))
                                           cur-c-c-lst
                                           sign-matters)))
      (if compressed
          (b* ((c-lst1
                (create-c-instance-medwc-filtered cur-c-s-lst
                                                  cur-c-pp-lst
                                                  res-c-c-lst)))
            (mv (s-sum-merge-aux (if cur-c-is-signed (negate-lst c-lst1) c-lst1)
                                 (cdr c-lst))
                t))
        (b* (((mv rest-new-c-lst compressed)
              (medw-compress-c-arg-lst-aux c c-is-signed (cdr c-lst)
                                           sign-matters)))
          (if compressed
              (mv (cons (car c-lst) rest-new-c-lst) t)
            (mv c-lst nil)))))))

(define medw-compress-c-arg-lst ((c-lst rp-term-listp)
                                 (sign-matters booleanp)
                                 (limit natp))
  :returns (mv (res-c-lst rp-term-listp :hyp (rp-term-listp c-lst))
               (compressed booleanp))
  :measure (nfix limit)
  (cond ((zp limit) (mv c-lst nil))
        ((atom c-lst)
         (mv c-lst nil))
        ((atom (cdr c-lst))
         (mv c-lst nil))
        (t (b* ((c (ex-from-rp (car c-lst)))
                ((mv c c-is-signed)
                 (case-match c
                   (('-- x) (mv x t))
                   (& (mv c nil))))
                (c (ex-from-rp c))
                ((mv new-c-lst compressed)
                 (medw-compress-c-arg-lst-aux c
                                              c-is-signed
                                              (cdr c-lst)
                                              sign-matters)))
             (if compressed
                 (b* (((mv res compressed2)
                       (medw-compress-c-arg-lst new-c-lst
                                                sign-matters
                                                (1- limit))))
                   (if compressed2
                       (mv res t)
                     (mv new-c-lst t)))
               (b* (((mv rest compressed)
                     (medw-compress-c-arg-lst (cdr c-lst)
                                              sign-matters
                                              (1- limit))))
                 (if compressed
                     (mv (cons (car c-lst) rest) t)
                   (mv c-lst nil))))))))





(progn
  (define medw-compress-pp-arg-lst-aux ((pp-lst rp-term-listp)
                                        (c-pp-arg-lst rp-term-listp)
                                        (c-is-signed booleanp)
                                        (sign-matters booleanp))
    ;; goes through pp-lst and c-pp-arg-lst to push the former to the latter
    :returns (mv (res-pp-lst rp-term-listp
                             :hyp (rp-term-listp pp-lst))
                 (res-c-pp-arg-lst rp-term-listp
                                   :hyp (and (rp-term-listp pp-lst)
                                             (rp-term-listp c-pp-arg-lst)))
                 (compressed booleanp))
    :measure (+ (acl2-count pp-lst)
                (acl2-count c-pp-arg-lst))
    :prepwork ((local
                (defthm lemma1
                  (implies (and (rp-term-listp x)
                                (consp x))
                           (rp-term-listp (cdr x)))
                  :hints (("goal"
                           :in-theory (e/d (rp-term-listp) ())))))

               (local
                (defthm lemma2
                  (implies (and (rp-term-listp x)
                                (consp x))
                           (rp-termp (ex-from-rp (car x))))
                  :hints (("goal"
                           :in-theory (e/d (rp-term-listp
                                            rp-termp)
                                           ())))))
               (local
                (in-theory (disable ;;rp-term-listp-of-cons
                            (:rewrite default-cdr)
                            (:rewrite rp-termp-implies-subterms)
                            (:rewrite rp-termp-implies-cdr-listp)
                            (:rewrite default-car)
                            (:type-prescription rp-term-listp)
                            (:type-prescription rp-termp)))))
    (cond ((or (atom pp-lst)
               (atom c-pp-arg-lst))
           (mv pp-lst c-pp-arg-lst nil))
          (t
           (b* ((cur1-orig (car pp-lst))
                (cur2-orig (car c-pp-arg-lst))
                (cur1 (ex-from-rp cur1-orig))
                (cur2 (ex-from-rp cur2-orig))
                ((mv cur1 cur1-is-signed)
                 (case-match cur1 (('-- x) (mv x t)) (& (mv cur1 nil))))
                ((mv cur2 cur2-is-signed)
                 (case-match cur2 (('-- x) (mv x t)) (& (mv cur2 nil))))
                ((mv order equals)
                 (pp-order cur1 cur2))
                (compress (and equals
                               (if sign-matters
                                   (if c-is-signed
                                       (equal cur1-is-signed cur2-is-signed)
                                     (not (equal cur1-is-signed cur2-is-signed)))
                                 t)))
                ((mv res-pp-lst res-c-pp-arg-lst res-compressed)
                 (medw-compress-pp-arg-lst-aux (if (or equals compress order)
                                                   (cdr pp-lst)
                                                 pp-lst)
                                               (if (or equals compress (not order))
                                                   (cdr c-pp-arg-lst)
                                                 c-pp-arg-lst)
                                               c-is-signed
                                               sign-matters))
                ((when compress)
                 (mv res-pp-lst
                     (cons (if cur2-is-signed
                               cur2 `(-- ,cur2-orig))
                           res-c-pp-arg-lst)
                     t))
                ((unless res-compressed)
                 (mv pp-lst c-pp-arg-lst nil)))
             (mv (if (or equals order) (cons cur1-orig res-pp-lst) res-pp-lst)
                 (if (or equals (not order)) (cons cur2-orig res-c-pp-arg-lst)
                   res-c-pp-arg-lst)
                 t)))))

  (define medw-compress-pp-arg-lst ((pp-lst rp-term-listp)
                                    (c-lst rp-term-listp)
                                    (sign-matters booleanp))
    :returns (mv (res-pp-lst rp-term-listp
                             :hyp (rp-term-listp pp-lst))
                 (res-c-lst rp-term-listp
                            :hyp (and (rp-term-listp c-lst)
                                      (rp-term-listp pp-lst)))
                 (compressed booleanp))
    :measure (acl2-count c-lst)
    :verify-guards :after-returns
    (cond ((atom c-lst)
           (mv pp-lst c-lst nil))
          (t (b* ((cur-c-orig (car c-lst))
                  (cur-c (ex-from-rp cur-c-orig))
                  ((mv cur-c cur-c-is-signed)
                   (case-match cur-c
                     (('-- x) (mv (ex-from-rp x) t))
                     (& (mv cur-c nil))))
                  ((mv s-arg-lst pp-arg-lst c-arg-lst valid)
                   (case-match cur-c
                     (('c & s-arg pp-arg c-arg)
                      (mv (list-to-lst s-arg)
                          (list-to-lst pp-arg)
                          (list-to-lst c-arg)
                          t))
                     (& (mv nil nil nil nil))))
                  ((unless valid)
                   (progn$ (hard-error 'medw-compress-pp-arg-lst
                                       "unexpected c instance ~p0 ~%"
                                       (list (cons #\0 (car c-lst))))
                           (mv pp-lst c-lst nil)))
                  ((mv pp-lst c-pp-arg-lst1 compressed1)
                   (medw-compress-pp-arg-lst-aux pp-lst pp-arg-lst
                                                 cur-c-is-signed sign-matters))
                  ((mv pp-lst rest-c-lst compressed2)
                   (medw-compress-pp-arg-lst pp-lst (cdr c-lst) sign-matters)))
               (cond (compressed1
                      (mv pp-lst
                          (s-sum-merge-aux rest-c-lst
                                           (b* ((cur-c-lst (create-c-instance-medwc-filtered
                                                            s-arg-lst
                                                            c-pp-arg-lst1
                                                            c-arg-lst)))
                                             (if (and cur-c-is-signed
                                                      sign-matters)
                                                 (negate-lst cur-c-lst)
                                               cur-c-lst)))
                          t))
                     (compressed2
                      (mv pp-lst
                          (s-sum-merge-aux rest-c-lst
                                           (list cur-c-orig))
                          t))
                     (t
                      (mv pp-lst c-lst nil))))))))

(acl2::defines
 medw-compress-c
 :verify-guards nil
 :flag-defthm-macro defthm-medw-compress-c
 :flag-local nil
 :prepwork
 ((local
   (defthm lemma1
     (implies (and (consp x)
                   (rp-term-listp x))
              (rp-termp (car x)))
     :hints (("Goal"
              :in-theory (e/d (rp-term-listp) ()))))))

 (define medw-compress-c ((c rp-termp)
                          (limit natp))
   :returns (mv (res-c-lst rp-term-listp :hyp (rp-termp c))
                (compressed booleanp))
   :measure (nfix limit)
   (b* (((when (zp limit)) (mv nil nil))
        (?c-orig c)
        (c (ex-from-rp c))
        ((mv c c-is-signed)
         (case-match c (('-- x) (mv x t)) (& (mv c nil))))
        ((mv s-arg-lst pp-arg-lst c-arg-lst valid)
         (case-match c
           (('c & s-arg pp-arg c-arg)
            (mv (list-to-lst s-arg)
                (list-to-lst pp-arg)
                (list-to-lst c-arg)
                t))
           (& (mv nil nil nil nil))))
        ((unless valid)
         (mv nil nil))
        ((mv c-arg-lst compressed1)
         (medw-compress-c-arg-lst c-arg-lst t (expt 2 30)))
        ((mv pp-arg-lst c-arg-lst compressed2)
         (medw-compress-pp-arg-lst pp-arg-lst c-arg-lst t))
        ((mv c-arg-lst compressed3)
         (medw-compress-c-lst c-arg-lst (1- limit)))
        (compressed (or compressed1 compressed2 compressed3)))
     (if compressed
         (b* ((c-lst1 (create-c-instance-medwc-filtered
                       s-arg-lst pp-arg-lst c-arg-lst)))
           (mv (if c-is-signed (negate-lst c-lst1) c-lst1)
               t))

       ;; (b* (((mv s-lst1 pp-lst1 c-lst1)
       ;;       (create-c-instance s-arg-lst pp-arg-lst c-arg-lst)))
       ;;   (if (and (not s-lst1)
       ;;            (not pp-lst1)
       ;;            (or (not c-lst1)
       ;;                (and (consp c-lst1)
       ;;                     (not (consp (cdr c-lst1))))))
       ;;       (if (not c-lst1)
       ;;           (mv ''0 t)
       ;;         (mv (if c-is-signed `(-- ,(car c-lst1)) (car c-lst1)) t))
       ;;     (progn$ (hard-error 'medw-compress-c
       ;;                         "unexpected create-c-instance output ~%"
       ;;                         nil)
       ;;             (mv c-orig nil))))
       (mv nil nil))))

 (define medw-compress-c-lst ((c-lst rp-term-listp)
                              (limit natp))
   :returns (mv (res-c-lst rp-term-listp :hyp (rp-term-listp c-lst))
                (compressed booleanp))
   :measure (nfix limit)

   (b* (((when (zp limit)) (mv c-lst nil))
        ((when (atom c-lst)) (mv c-lst nil))
        ((mv res-c compressed1)
         (medw-compress-c (car c-lst) (1- limit)))
        ((mv res-c-lst compressed2)
         (medw-compress-c-lst (cdr c-lst) (1- limit))))
     (if (or compressed1 compressed2)
         (mv (s-sum-merge-aux res-c res-c-lst) t)
       (mv c-lst nil))))
 ///
 (verify-guards medw-compress-c-lst))









#|(acl2::defines
 medw-compress-c-for-pp
 :verify-guards nil
 :prepwork
 ((local
   (defthm lemma1
     (implies (and (consp x)
                   (rp-term-listp x))
              (rp-termp (car x)))
     :hints (("Goal"
              :in-theory (e/d (rp-term-listp) ()))))))

 (define medw-compress-c-for-pp ((c rp-termp)
                                 (limit natp))
   :returns (mv (res-c rp-termp :hyp (rp-termp c))
                (compressed booleanp))
   :measure (nfix limit)
   (b* (((when (zp limit)) (mv c nil))
        (?c-orig c)
        (c (ex-from-rp c))
        ((mv c c-is-signed)
         (case-match c (('-- x) (mv x t)) (& (mv c nil))))
        ((mv s-arg-lst pp-arg-lst c-arg-lst valid)
         (case-match c
           (('c & s-arg pp-arg c-arg)
            (mv (list-to-lst s-arg)
                (list-to-lst pp-arg)
                (list-to-lst c-arg)
                t))
           (& (mv nil nil nil nil))))
        ((unless valid)
         (mv c nil))

        ((mv c-arg-lst compressed1)
         (medw-compress-c-arg-lst c-arg-lst t (expt 2 30)))

        ((mv c-arg-lst compressed2)
         (medw-compress-c-lst c-arg-lst (1- limit)))
        (compressed (or compressed1 compressed2)))
     (if compressed
         (b* (((mv s-lst1 pp-lst1 c-lst1)
               (create-c-instance s-arg-lst pp-arg-lst c-arg-lst)))
           (if (and (not s-lst1)
                    (not pp-lst1)
                    (or (not c-lst1)
                        (and (consp c-lst1)
                             (not (consp (cdr c-lst1))))))
               (if (not c-lst1)
                   (mv ''0 t)
                 (mv (if c-is-signed `(-- ,(car c-lst1)) (car c-lst1)) t))
             (progn$ (hard-error 'medw-compress-c
                                 "unexpected create-c-instance output ~%"
                                 nil)
                     (mv c-orig nil))))
       (mv c-orig nil))))

 (define medw-compress-c-lst-for-pp ((c-lst rp-term-listp)
                              (limit natp))
   :returns (mv (res-c-lst rp-term-listp :hyp (rp-term-listp c-lst))
                (compressed booleanp))
   :measure (nfix limit)

   (b* (((when (zp limit)) (mv c-lst nil))
        ((when (atom c-lst)) (mv c-lst nil))
        ((mv res-c compressed1)
         (medw-compress-c (car c-lst) (1- limit)))
        ((mv res-c-lst compressed2)
         (medw-compress-c-lst (cdr c-lst) (1- limit))))
     (if (or compressed1 compressed2)
         (mv (s-sum-merge-aux (list res-c) res-c-lst) t)
       (mv c-lst nil))))
 ///
 (verify-guards medw-compress-c-lst))||#


(define medw-compress-s ((s rp-termp))
  :returns (res-term rp-termp :hyp (rp-termp s))
  (b* ((s-orig s)
       (s (ex-from-rp s))
       ((mv pp-lst c-lst valid)
        (case-match s
          (('s & pp c)
           (mv (list-to-lst pp)
               (list-to-lst c)
               t))
          (& (mv nil nil nil))))
       ((unless valid)
        s-orig)
       ((mv c-lst &)
        (medw-compress-c-arg-lst c-lst nil (expt 2 30)))
       ((mv pp-lst c-lst &)
        (medw-compress-pp-arg-lst pp-lst c-lst nil))
       ((mv c-lst &)
        (medw-compress-c-lst c-lst (expt 2 30)))
       ((mv s-res-lst pp-res-lst c-res-lst)
        (create-s-instance (create-list-instance pp-lst)
                           (create-list-instance c-lst))))
    (create-s-c-res-instance s-res-lst pp-res-lst c-res-lst t)))
