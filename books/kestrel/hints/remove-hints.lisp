; Utilities for removing hints and parts of hints
;
; Copyright (C) 2022-2023 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; See tests in remove-hints-tests.lisp.

(include-book "kestrel/hints/combine-hints" :dir :system)
(include-book "kestrel/hints/goal-specs" :dir :system)
(include-book "kestrel/utilities/forms" :dir :system) ; for call-of
(include-book "kestrel/lists-light/remove-nth" :dir :system)

;; Removes all hints from HINTS that have the given GOAL-SPEC.
(defund remove-hints-for-goal-spec (goal-spec hints)
  (declare (xargs :guard (and (stringp goal-spec)
                              (standard-string-p goal-spec)
                              (true-listp hints))))
  (if (endp hints)
      nil
    (let ((hint (first hints)))
      (if (hint-has-goal-specp hint goal-spec)
          ;; Keep going, as there may be more matches:
          (remove-hints-for-goal-spec goal-spec (rest hints))
        (cons hint (remove-hints-for-goal-spec goal-spec (rest hints)))))))

;; TODO: Replace "break" in these names with "remove"?
;; WARNING: Keep this in sync with break-hint-setting-in-nth-way.
(defun num-ways-to-break-hint-setting (keyword val)
  (declare (xargs :guard (keywordp keyword)))
  (case keyword
    (:by 1) ; can only remove the whole thing
    (:cases 1) ; can only remove the whole thing (todo: well, we could remove one case?)
    (:induct 1) ; can only remove the whole thing
    (:nonlinearp 1) ; can only remove the whole thing
    (:do-not (if (and (quotep val)
                      (consp (cdr val)))
                 ;; can remove each thing in the list:
                 (len (unquote val))
               1 ; can only remove the whole thing
               ))
    (:expand (len (acl2::desugar-expand-hint val)))
    (:use (len (acl2::desugar-use-hint val)))
    (:in-theory (if (or (call-of 'acl2::enable val)
                        (call-of 'acl2::disable val))
                    (len (fargs val))
                  (if (call-of 'acl2::e/d val)
                      (let ((lists (fargs val)))
                        ;; Only mess with the first 2:
                        (+ (if (< 0 (len lists)) (len (first lists)) 0)
                           (if (< 1 (len lists)) (len (second lists)) 0)))
                    ;; TODO: Handle enable*, disable*, and e/d*:
                    1 ; can only remove the whole thing
                    )))
    (otherwise 0)))

;; TODO: Pull out.
;; Drops trailing nils, leading pairs of nils, and internal nils whose 2 neighbors can be combined.
(defun remove-unneeded-nils-in-e/d-args (args)
  (declare (xargs :guard (true-list-listp args)))
  (if (endp args)
      nil
    (let* ((arg (first args))
           (new-rest (remove-unneeded-nils-in-e/d-args (rest args))))
      (if (endp new-rest)
          ;; only 1 arg:
          (if (null arg)
              nil ; drop a lone nil
            (list arg))
        ;; at least 2 args:
        (if (and (null arg)
                 (null (first new-rest)))
            ;; Drop unnecessary pair of leading nils:
            (rest new-rest)
          (if (consp (rest new-rest))
              ;; at least 3 args:
              (if (null (first new-rest)) ; drop a nil by combining the items before and after it
                  (cons (append arg (second new-rest)) ; combine the items
                        (rest (rest new-rest)))
                (cons arg new-rest))
            ;; 2 args:
            (cons arg new-rest)))))))

(defthm true-listp-of-remove-unneeded-nils-in-e/d-args
  (implies (true-listp args)
           (true-listp (remove-unneeded-nils-in-e/d-args args)))
  :rule-classes (:rewrite :type-prescription))

;; TODO: Pull out
(defun simplify-e/d (form)
  (declare (xargs :guard (and (consp form)
                              (true-list-listp (cdr form)))))
  (let* ((args (cdr form))
         (args (remove-unneeded-nils-in-e/d-args args)))
    (if (= 1 (len args))
        `(enable ,@(first args))
      (if (and (= 2 (len args))
               (null (first args)))
          `(disable ,@(second args))
        `(e/d ,@args)))))

;; n is 0-based and is known to be less than the number of ways to break the hint-setting.
;; Returns (mv breakage-type result), where RESULT is a list (possibly nil) to be spliced into the hint settings, replacing the KEYWORD and VAL.
;; WARNING: Keep this in sync with num-ways-to-break-hint-setting.
;; WANRING: Keep this in sync with decode-breakage-type.
(defun break-hint-setting-in-nth-way (n keyword val)
  (declare (xargs :guard (and (natp n)
                              (keywordp keyword)
                              (< n (num-ways-to-break-hint-setting keyword val)))
                  :guard-hints (("Goal" :in-theory (enable natp)))))
  (case keyword
    (:by (mv `(:remove-by ,val) nil))                 ; can only remove the whole thing
    (:cases (mv `(:remove-cases ,val) nil))           ; can only remove the whole thing
    (:induct (mv `(:remove-induct ,val) nil))         ; can only remove the whole thing
    (:nonlinearp (mv `(:remove-nonlinearp ,val) nil)) ; can only remove the whole thing
    (:do-not (if (and (quotep val)
                      (consp (cdr val))
                      (true-listp (unquote val))
                      )
                 ;; remove one thing in the list:
                 (mv `(:remove-do-not-item ,(nth n (unquote val)))
                     (let ((remaining-items (remove-nth n (unquote val))))
                       (if (consp remaining-items)
                           (list :do-not (kwote remaining-items))
                         ;; Hides the fact that we removed a :do-not item:
                         nil)))
               (mv `(:remove-do-not ,val) nil) ; can only remove the whole thing
               ))
    (:expand (let ((desugared-val (acl2::desugar-expand-hint val)))
               (mv `(:remove-expand-item ,(nth n desugared-val))
                   (let ((remaining-items (remove-nth n desugared-val)))
                     (if (consp remaining-items)
                         (list :expand remaining-items)
                       ;; Hides the fact that we removed an :expand item:
                       nil)))))
    (:use (let ((desugared-val (acl2::desugar-use-hint val)))
            (mv `(:remove-use-item ,(nth n desugared-val))
                (let ((remaining-items (remove-nth n desugared-val)))
                  (if (consp remaining-items)
                      (list :use remaining-items)
                    ;; Hides the fact that we removed a :use item:
                    ;; TODO: Also remove the disable of the relevant rule, if it is present, and if there are no other :use
                    ;; hints for that rule.
                    nil)))))
    (:in-theory (if (and (call-of 'acl2::enable val)
                         (true-listp (cdr val)))
                    (mv `(:remove-enable-item ,(nth n (fargs val)))
                        (let ((remaining-items (remove-nth n (fargs val))))
                          (if (consp remaining-items)
                              (list :in-theory `(,(ffn-symb val) ,@remaining-items))
                            ;; Hides the fact that we removed an enable item:
                            nil)))
                  (if (and (call-of 'acl2::disable val)
                           (true-listp (cdr val)))
                      (mv `(:remove-disable-item ,(nth n (fargs val)))
                          (let ((remaining-items (remove-nth n (fargs val))))
                            (if (consp remaining-items)
                                (list :in-theory `(,(ffn-symb val) ,@remaining-items))
                              ;; Hides the fact that we removed a disable item:
                              nil)))
                    (if (and (call-of 'acl2::e/d val)
                             (true-list-listp (cdr val)))
                        (let ((lists (fargs val)))
                          (if (< n (len (first lists)))
                              ;; We are removing an item in the first argument to the e/d:
                              (mv `(:remove-enable-item ,(nth n (first lists))) ; or we could indicate it was in an e/d
                                  (list :in-theory (simplify-e/d `(e/d ,(remove-nth n (first lists))
                                                                       ,@(rest lists)))))
                            ;; Only mess with the first 2, so it must be in the second one:
                            (mv `(:remove-disable-item ,(nth (- n (len (first lists))) (second lists))) ; or we could indicate it was in an e/d
                                (list :in-theory (simplify-e/d `(e/d ,(first lists)
                                                                     ,(remove-nth (- n (len (first lists))) (second lists))
                                                                     ,@(rest (rest lists))))))))
                      ;; TODO: Handle enable*, disable*, and e/d*:
                      (mv `(:remove-in-theory ,val)
                          nil) ; can only remove the whole thing
                      ))))
    (otherwise (mv :error (er hard 'break-hint-setting-in-nth-way "Unhandled case")))))

(defun num-ways-to-break-hint-keyword-value-list (hint-keyword-value-list)
  (declare (xargs :guard (keyword-value-listp hint-keyword-value-list)))
  (if (endp hint-keyword-value-list)
      0
    (let ((keyword (car hint-keyword-value-list))
          (val (cadr hint-keyword-value-list)))
      (+ (num-ways-to-break-hint-setting keyword val) ;; todo: generalize num-ways-to-break-hint-setting but filter here for hints the models know about.
         (num-ways-to-break-hint-keyword-value-list (cddr hint-keyword-value-list))))))

;; Returns (mv breakage-type hint-keyword-value-list).
; n is 0-based
(defun break-hint-keyword-value-list-in-nth-way (n hint-keyword-value-list)
  (declare (xargs :guard (and (natp n)
                              (keyword-value-listp hint-keyword-value-list)
                              (< n (num-ways-to-break-hint-keyword-value-list hint-keyword-value-list)))
                  :measure (len hint-keyword-value-list)))
  (if (endp hint-keyword-value-list)
      (mv :error (er hard? 'break-hint-keyword-value-list-in-nth-way "Ran out of hint settings!"))
    (let ((keyword (car hint-keyword-value-list))
          (val (cadr hint-keyword-value-list)))
      (let ((ways (num-ways-to-break-hint-setting keyword val)))
        (if (< n ways)
            (mv-let (breakage-type result)
              (break-hint-setting-in-nth-way n keyword val)
              (mv breakage-type
                  ;; replace the old keyword and val with result (which may be empty):
                  (append result (cddr hint-keyword-value-list))))
          (mv-let (breakage-type new-cddr)
            (break-hint-keyword-value-list-in-nth-way (- n ways) (cddr hint-keyword-value-list))
            (mv breakage-type
                (cons keyword (cons val new-cddr)))))))))
