; A recognizer for a well-formed DAG
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2020 Kestrel Institute
; Copyright (C) 2016-2020 Kestrel Technology, LLC
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "dag-parent-array")
(include-book "dag-constant-alist")
(include-book "dag-variable-alist")
(include-book "make-dag-variable-alist")
(include-book "make-dag-constant-alist")

;;;
;;; wf-dagp ("well-formed DAG")
;;;

;; TODO: Strengthen to say that the dag-parent-array, dag-constant-alist, and dag-variable-alist are actually correct.
(defund wf-dagp (dag-array-name dag-array dag-len dag-parent-array-name dag-parent-array dag-constant-alist dag-variable-alist)
  (declare (xargs :guard t))
  (and (pseudo-dag-arrayp dag-array-name dag-array dag-len)
       (bounded-dag-parent-arrayp dag-parent-array-name dag-parent-array dag-len)
       ;; Says that the dag-constant-alist is in sync with the dag:
       (equal dag-constant-alist (make-dag-constant-alist dag-array-name dag-array dag-len)) ;;(bounded-dag-constant-alistp dag-constant-alist dag-len)
       ;; Says that the dag-variable-alist is in sync with the dag:
       (equal dag-variable-alist (make-dag-variable-alist dag-array-name dag-array dag-len)) ;;(bounded-dag-variable-alistp dag-variable-alist dag-len)
       (equal (alen1 dag-array-name dag-array)
              (alen1 dag-parent-array-name dag-parent-array))))

;; TODO: For some reason, this is needed to prevent proof failures, even though wf-dagp is enabled.
(defthmd wf-dagp-expander
  (equal (wf-dagp dag-array-name dag-array dag-len dag-parent-array-name dag-parent-array dag-constant-alist dag-variable-alist)
         (and (pseudo-dag-arrayp dag-array-name dag-array dag-len)
              (bounded-dag-parent-arrayp dag-parent-array-name dag-parent-array dag-len)
              (equal dag-constant-alist (make-dag-constant-alist dag-array-name dag-array dag-len)) ;(bounded-dag-constant-alistp dag-variable-alist dag-len)
              (bounded-dag-constant-alistp dag-constant-alist dag-len)
              (equal dag-variable-alist (make-dag-variable-alist dag-array-name dag-array dag-len)) ;(bounded-dag-variable-alistp dag-variable-alist dag-len)
              (equal (alen1 dag-array-name dag-array)
                     (alen1 dag-parent-array-name dag-parent-array))))
  :hints (("Goal" :in-theory (enable wf-dagp))))

;disable?
(defthm wf-dagp-forward
  (implies (wf-dagp dag-array-name dag-array dag-len dag-parent-array-name dag-parent-array dag-constant-alist dag-variable-alist)
           (and (natp dag-len)
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (bounded-dag-parent-arrayp dag-parent-array-name dag-parent-array dag-len)
                (bounded-dag-constant-alistp dag-constant-alist dag-len)
                (equal dag-constant-alist (make-dag-constant-alist dag-array-name dag-array dag-len))
                (bounded-dag-variable-alistp dag-variable-alist dag-len)
                (equal dag-variable-alist (make-dag-variable-alist dag-array-name dag-array dag-len))
                (equal (alen1 dag-array-name dag-array)
                       (alen1 dag-parent-array-name dag-parent-array))))
  :rule-classes :forward-chaining
  :hints (("Goal" :in-theory (enable wf-dagp))))

(defthm wf-dagp-forward-to-<=-of-len
  (implies (wf-dagp dag-array-name dag-array dag-len dag-parent-array-name dag-parent-array dag-constant-alist dag-variable-alist)
           (and (<= dag-len 2147483646)))
  :rule-classes :forward-chaining
  :hints (("Goal" :in-theory (enable wf-dagp))))

(defthm wf-dagp-of-make-empty-array
  (implies (and (symbolp dag-array-name)
                (symbolp dag-parent-array-name)
                (posp size)
                (<= size 2147483646))
           (wf-dagp dag-array-name
                    (make-empty-array dag-array-name size)
                    0
                    dag-parent-array-name
                    (make-empty-array dag-parent-array-name size)
                    nil nil))
  :hints (("Goal" :in-theory (enable wf-dagp))))
