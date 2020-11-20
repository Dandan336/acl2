; More tools for crunching DAGs
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

;; A tool to remove irrelevant nodes from a dag-array.  Internally, this builds
;; a list and then re-creates the array.  That should ensure that no extra
;; nodes (e.g., beyond the relevant portion of the dag) remain in the array.

;; rename file to crunch-dag-array2

(include-book "supporting-nodes")
(include-book "kestrel/acl2-arrays/aref1-list" :dir :system)
(include-book "make-dag-indices")
(include-book "wf-dagp")
;(include-book "def-dag-builder-theorems")
(local (include-book "kestrel/arithmetic-light/plus" :dir :system))

;move
;make local to axe?
(defthm <=-of-array-len-with-slack
  (implies (and
                (natp slack-amount)
                (natp len))
           (equal (< (array-len-with-slack len slack-amount) len)
                  (< 2147483646 len)))
  :hints (("Goal" :in-theory (enable array-len-with-slack))))
;;move
(defthmd not-equal-header-when-natp
  (implies (natp x)
           (not (equal ':header x))))

(local (in-theory (enable not-equal-header-when-natp)))

(defthm not-<-of-maxelem-and-maxelem-of-cdr
  (implies (consp (cdr x))
           (not (< (maxelem x) (maxelem (cdr x)))))
  :hints (("Goal" :in-theory (enable maxelem))))

;dup
(local
 (defthm all-<-of-+-of-1-and-maxelem-alt
   (implies (and (all-natp nodenums)
                 (consp nodenums))
            (all-< nodenums (+ 1 (maxelem nodenums))))
   :hints (("Goal" :in-theory (enable all-natp)))))

;move
;returns (mv renamed-nodenums dag-lst)
(defund drop-non-supporters-array-node-list (dag-array-name dag-array nodenums)
  (declare (xargs :guard (and (true-listp nodenums)
                              (all-natp nodenums)
                              (consp nodenums) ; so we can call maxelem
                              (pseudo-dag-arrayp dag-array-name dag-array (+ 1 (maxelem nodenums))))))
  (let* ((max-nodenum (maxelem nodenums))
         (tag-array (tag-supporters-of-nodes nodenums dag-array-name dag-array 'tag-array (+ 1 max-nodenum)))
         (translation-array (make-empty-array 'translation-array (+ 1 max-nodenum))))
    (mv-let (dag-lst translation-array)
      (build-reduced-dag2 0 max-nodenum dag-array-name dag-array tag-array 0 translation-array nil)
      (mv (aref1-list 'translation-array translation-array nodenums)
          dag-lst))))


(defthm len-of-mv-nth-0-of-drop-non-supporters-array-node-list
  (equal (len (mv-nth 0 (drop-non-supporters-array-node-list dag-array-name dag-array nodenums)))
         (len nodenums))
  :hints (("Goal" :in-theory (enable drop-non-supporters-array-node-list))))

(defthm true-listp-of-mv-nth-0-of-drop-non-supporters-array-node-list
  (true-listp (mv-nth 0 (drop-non-supporters-array-node-list dag-array-name dag-array nodenums)))
  :hints (("Goal" :in-theory (enable drop-non-supporters-array-node-list))))

;; (defthm all-<-of-mv-nth-0-of-drop-non-supporters-array-node-list
;;   (implies (and (true-listp nodenums)
;;                 (all-natp nodenums)
;;                 (consp nodenums) ; so we can call maxelem
;;                 (pseudo-dag-arrayp dag-array-name dag-array (+ 1 (maxelem nodenums))))
;;            (all-< (mv-nth 0 (drop-non-supporters-array-node-list dag-array-name dag-array nodenums))
;;                   (len (mv-nth 1 (drop-non-supporters-array-node-list dag-array-name dag-array nodenums)))))
;;   :hints (("Goal" :in-theory (enable drop-non-supporters-array-node-list))))

(defthm pseudo-dagp-of-mv-nth-1-of-drop-non-supporters-array-node-list
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array (+ 1 (maxelem nodenums))))
           (pseudo-dagp (mv-nth 1 (drop-non-supporters-array-node-list dag-array-name dag-array nodenums))))
  :hints (("Goal" :in-theory (enable drop-non-supporters-array-node-list))))

(defthm car-of-car-of-mv-nth-1-of-drop-non-supporters-array-node-list
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array (+ 1 (maxelem nodenums))))
           (equal (car (car (mv-nth 1 (drop-non-supporters-array-node-list dag-array-name dag-array nodenums))))
                  (+ -1 (len (mv-nth 1 (drop-non-supporters-array-node-list dag-array-name dag-array nodenums))))))
  :hints (("Goal" :use (:instance CAR-OF-CAR-WHEN-PSEUDO-DAGP-CHEAP
                                  (dag-lst (mv-nth 1 (drop-non-supporters-array-node-list dag-array-name dag-array nodenums))))
           :in-theory (disable CAR-OF-CAR-WHEN-PSEUDO-DAGP-CHEAP))))

(defthm <=-of-len-of-mv-nth-1-of-drop-non-supporters-array-node-list
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array (+ 1 (maxelem nodenums))))
           (<= (len (mv-nth 1 (drop-non-supporters-array-node-list dag-array-name dag-array nodenums)))
               (+ 1 (maxelem nodenums))))
  :hints (("Goal" :in-theory (enable drop-non-supporters-array-node-list))))

(defthm <=-of-len-of-mv-nth-1-of-drop-non-supporters-array-node-list-gen
  (implies (and (<= (+ 1 (maxelem nodenums)) bound)
                (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array (+ 1 (maxelem nodenums))))
           (<= (len (mv-nth 1 (drop-non-supporters-array-node-list dag-array-name dag-array nodenums)))
               bound))
  :hints (("Goal" :use (:instance <=-of-len-of-mv-nth-1-of-drop-non-supporters-array-node-list)
           :in-theory (disable <=-of-len-of-mv-nth-1-of-drop-non-supporters-array-node-list))))

(defthm <-of-len-of-mv-nth-1-of-drop-non-supporters-array-node-list-gen
  (implies (and (< (+ 1 (maxelem nodenums)) bound)
                (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array (+ 1 (maxelem nodenums))))
           (< (len (mv-nth 1 (drop-non-supporters-array-node-list dag-array-name dag-array nodenums)))
              bound))
  :hints (("Goal" :use (:instance <=-of-len-of-mv-nth-1-of-drop-non-supporters-array-node-list)
           :in-theory (disable <=-of-len-of-mv-nth-1-of-drop-non-supporters-array-node-list
                               <=-OF-LEN-OF-MV-NTH-1-OF-DROP-NON-SUPPORTERS-ARRAY-NODE-LIST-GEN))))


;move
(defthm all-<=-of-maxelem-same
  (implies (consp x)
           (all-<= x (maxelem x)))
  :hints (("Goal" :in-theory (enable all-<= maxelem))))

(defthm all->-of--1-when-all-natp
  (implies (all-natp x)
           (all-> x -1))
  :hints (("Goal" :in-theory (enable all-> all-natp))))

(defthm nat-listp-of-mv-nth-0-of-drop-non-supporters-array-node-list
  (implies (and (all-natp nodenums)
                (consp nodenums)
                (pseudo-dag-arrayp dag-array-name dag-array (+ 1 (maxelem nodenums))))
           (nat-listp (mv-nth 0 (drop-non-supporters-array-node-list dag-array-name dag-array nodenums))))
  :hints (("Goal" :in-theory (enable drop-non-supporters-array-node-list))))

(defthm consp-of-mv-nth-1-of-drop-non-supporters-array-node-list
  (implies (and (all-natp nodenums)
                (consp nodenums)
                (pseudo-dag-arrayp dag-array-name dag-array (+ 1 (maxelem nodenums))))
           (consp (mv-nth 1 (drop-non-supporters-array-node-list dag-array-name dag-array nodenums))))
  :hints (("Goal" :in-theory (enable drop-non-supporters-array-node-list))))

(local
 (defthm maxelem-lemma
   (implies (and (all-natp nodes)
                 (all-< nodes len)
                 (consp nodes)
                 (integerp len))
            (not (< len (+ 1 (maxelem nodes)))))
   :hints (("Goal" :in-theory (enable maxelem all-<)))))

;; Returns (mv dag-array dag-len renamed-nodenums).  Can change all the node
;; numbers in the DAG, but the RENAMED-NODENUMS returned gives the new numbers
;; of the NODENUMS.
(defund crunch-dag-array2 (dag-array-name dag-array dag-len nodenums)
  (declare (xargs :guard (and (true-listp nodenums)
                              (all-natp nodenums)
                              (consp nodenums) ; so we can call maxelem
                              (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                              (all-< nodenums dag-len))
                  :guard-hints (("Goal"
                                 :use (:instance pseudo-dagp-of-mv-nth-1-of-drop-non-supporters-array-node-list)
                                 :in-theory (e/d (CAR-OF-CAR-WHEN-PSEUDO-DAGP-CHEAP)
                                                 (pseudo-dagp-of-mv-nth-1-of-drop-non-supporters-array-node-list)))))
           (ignore dag-len))
  (b* (((mv renamed-nodenums dag)
        (drop-non-supporters-array-node-list dag-array-name dag-array nodenums))
       (dag-len (+ 1 (top-nodenum dag)))
       (slack-amount dag-len)
       (dag-array (make-dag-into-array dag-array-name dag slack-amount)))
    (mv dag-array dag-len renamed-nodenums)))

(defthm alen1-of-mv-nth-0-of-crunch-dag-array2
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (all-< nodenums dag-len))
           (equal (alen1 dag-array-name (mv-nth 0 (crunch-dag-array2 dag-array-name dag-array dag-len nodenums)))
                  (array-len-with-slack (mv-nth 1 (crunch-dag-array2 dag-array-name dag-array dag-len nodenums))
                                        (mv-nth 1 (crunch-dag-array2 dag-array-name dag-array dag-len nodenums)))))
  :hints (("Goal" :in-theory (enable crunch-dag-array2))))

(defthm posp-of-mv-nth-1-of-crunch-dag-array2
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (all-< nodenums dag-len)
                (pseudo-dag-arrayp dag-array-name dag-array dag-len))
           (posp (mv-nth 1 (crunch-dag-array2 dag-array-name dag-array dag-len nodenums))))
  :rule-classes (:rewrite :type-prescription)
  :hints (("Goal"
           :use (:instance pseudo-dagp-of-mv-nth-1-of-drop-non-supporters-array-node-list)
           :in-theory (e/d (crunch-dag-array2) (pseudo-dagp-of-mv-nth-1-of-drop-non-supporters-array-node-list)))))

;; (defthm natp-of-mv-nth-1-of-crunch-dag-array2
;;   (implies (and (true-listp nodenums)
;;                 (all-natp nodenums)
;;                 (consp nodenums) ; so we can call maxelem
;;                 (all-< nodenums dag-len)
;;                 (pseudo-dag-arrayp dag-array-name dag-array dag-len)
;;                 )
;;            (natp (mv-nth 1 (crunch-dag-array2 dag-array-name dag-array dag-len nodenums))))
;;   :rule-classes (:rewrite :type-prescription)
;;   :hints (("Goal"
;;            :use (:instance pseudo-dagp-of-mv-nth-1-of-drop-non-supporters-array-node-list)
;;            :in-theory (e/d (crunch-dag-array2) (pseudo-dagp-of-mv-nth-1-of-drop-non-supporters-array-node-list)))))

(defthm <=-of-mv-nth-1-of-crunch-dag-array2
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (all-< nodenums dag-len)
                (pseudo-dag-arrayp dag-array-name dag-array dag-len))
           (<= (mv-nth 1 (crunch-dag-array2 dag-array-name dag-array dag-len nodenums))
               2147483646))
  :hints (("Goal" :in-theory (enable crunch-dag-array2))))

(defthm len-of-mv-nth-2-of-crunch-dag-array2
  (equal (len (mv-nth 2 (crunch-dag-array2 dag-array-name dag-array dag-len nodenums)))
         (len nodenums))
  :hints (("Goal" :in-theory (enable crunch-dag-array2))))

;; (defthm all-<-of-mv-nth-2-of-crunch-dag-array2
;;   (implies (and (true-listp nodenums)
;;                 (all-natp nodenums)
;;                 (consp nodenums) ; so we can call maxelem
;;                 (pseudo-dag-arrayp dag-array-name dag-array dag-len)
;;                 (all-< nodenums dag-len))
;;            (all-< (mv-nth 2 (crunch-dag-array2 dag-array-name dag-array dag-len nodenums))
;;                   (mv-nth 1 (crunch-dag-array2 dag-array-name dag-array dag-len nodenums))))
;;   :hints (("Goal" :in-theory (enable crunch-dag-array2))))

(defthm nat-listp-of-mv-nth-2-of-crunch-dag-array2
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array (+ 1 (maxelem nodenums))))
           (nat-listp (mv-nth 2 (crunch-dag-array2 dag-array-name dag-array dag-len nodenums))))
  :hints (("Goal" :in-theory (enable crunch-dag-array2))))

(defthm true-listp-of-mv-nth-2-of-crunch-dag-array2
  (true-listp (mv-nth 2 (crunch-dag-array2 dag-array-name dag-array dag-len nodenums)))
  :hints (("Goal" :in-theory (enable crunch-dag-array2))))

;; (defthm mv-nth-1-of-crunch-dag-array2
;;   (implies (and (true-listp nodenums)
;;                 (all-natp nodenums)
;;                 (consp nodenums) ; so we can call maxelem
;;                 (all-< nodenums dag-len)
;;                 (pseudo-dag-arrayp dag-array-name dag-array dag-len))
;;            (equal (mv-nth 1 (crunch-dag-array2 dag-array-name dag-array dag-len nodenums))
;;                   (+ xx (alen1 dag-array-name (mv-nth 1 (crunch-dag-array2 dag-array-name dag-array dag-len nodenums))))))
;;   :hints (("Goal"
;;            :use (:instance pseudo-dagp-of-mv-nth-1-of-drop-non-supporters-array-node-list)
;;            :in-theory (e/d (crunch-dag-array2) (pseudo-dagp-of-mv-nth-1-of-drop-non-supporters-array-node-list)))))

(defthm pseudo-dag-arrayp-of-crunch-dag-array2
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (all-< nodenums dag-len))
           (pseudo-dag-arrayp dag-array-name
                              (mv-nth 0
                                      (crunch-dag-array2 dag-array-name
                                                         dag-array dag-len nodenums))
                              (mv-nth 1
                                      (crunch-dag-array2 dag-array-name
                                                         dag-array dag-len nodenums))))
  :hints (("Goal" :in-theory (enable crunch-dag-array2))))

;; Returns (mv dag-array dag-len dag-parent-array dag-constant-alist dag-variable-alist literal-nodenums)
(defund crunch-dag-array2-with-indices (dag-array-name dag-array dag-len dag-parent-array-name nodenums)
  (declare (xargs :guard (and (true-listp nodenums)
                              (all-natp nodenums)
                              (consp nodenums) ; so we can call maxelem
                              (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                              (symbolp dag-parent-array-name)
                              (all-< nodenums dag-len))))
  (b* (((mv dag-array dag-len renamed-nodenums) (crunch-dag-array2 dag-array-name dag-array dag-len nodenums))
       ((mv dag-parent-array dag-constant-alist dag-variable-alist)
        (make-dag-indices-with-len dag-array-name dag-array dag-parent-array-name dag-len (array-len-with-slack dag-len dag-len))))
    (mv dag-array dag-len dag-parent-array dag-constant-alist dag-variable-alist renamed-nodenums)))

;gen?
(defthm natp-of-mv-nth-1-of-crunch-dag-array2-with-indices
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (symbolp dag-parent-array-name)
                (all-< nodenums dag-len))
           (natp (mv-nth 1 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))))
  :hints (("Goal" :in-theory (enable crunch-dag-array2-with-indices))))

(defthm dag-constant-alistp-of-mv-nth-3-of-crunch-dag-array2-with-indices
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (symbolp dag-parent-array-name)
                (all-< nodenums dag-len))
           (dag-constant-alistp (mv-nth 3 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))))
  :hints (("Goal" :in-theory (enable crunch-dag-array2-with-indices))))

(defthm dag-variable-alistp-of-mv-nth-4-of-crunch-dag-array2-with-indices
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (symbolp dag-parent-array-name)
                (all-< nodenums dag-len))
           (dag-variable-alistp (mv-nth 4 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))))
  :hints (("Goal" :in-theory (enable crunch-dag-array2-with-indices))))

(defthm pseudo-dag-arrayp-of-mv-nth-0-of-crunch-dag-array2-with-indices
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (symbolp dag-parent-array-name)
                (all-< nodenums dag-len))
           (pseudo-dag-arrayp dag-array-name
                              (mv-nth 0 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))
                              (mv-nth 1 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))))
  :hints (("Goal" :in-theory (enable crunch-dag-array2-with-indices))))

(defthm bounded-dag-parent-arrayp-of-mv-nth-2-of-crunch-dag-array2-with-indices
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (symbolp dag-parent-array-name)
                (all-< nodenums dag-len))
           (bounded-dag-parent-arrayp dag-parent-array-name
                               (mv-nth 2 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))
                               (mv-nth 1 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))))
  :hints (("Goal" :in-theory (enable crunch-dag-array2-with-indices))))

(defthm bounded-dag-constant-alistp-of-mv-nth-3-of-crunch-dag-array2-with-indices
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (symbolp dag-parent-array-name)
                (all-< nodenums dag-len))
           (bounded-dag-constant-alistp (mv-nth 3 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))
                                        (mv-nth 1 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))))
  :hints (("Goal" :in-theory (enable crunch-dag-array2-with-indices))))

(defthm bounded-dag-variable-alistp-of-mv-nth-4-of-crunch-dag-array2-with-indices
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (symbolp dag-parent-array-name)
                (all-< nodenums dag-len))
           (bounded-dag-variable-alistp (mv-nth 4 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))
                                        (mv-nth 1 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))))
  :hints (("Goal" :in-theory (enable crunch-dag-array2-with-indices))))

;; (defthm all-<-of-mv-nth-5-of-crunch-dag-array2-with-indices
;;   (implies (and (true-listp nodenums)
;;                 (all-natp nodenums)
;;                 (consp nodenums) ; so we can call maxelem
;;                 (pseudo-dag-arrayp dag-array-name dag-array dag-len)
;;                 (symbolp dag-parent-array-name)
;;                 (all-< nodenums dag-len))
;;            (all-< (mv-nth 5 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))
;;                   (mv-nth 1 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))))
;;   :hints (("Goal" :in-theory (enable crunch-dag-array2-with-indices))))

(defthm len-of-mv-nth-5-of-crunch-dag-array2-with-indices
  (equal (len (mv-nth 5 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums)))
         (len nodenums))
  :hints (("Goal" :in-theory (enable crunch-dag-array2-with-indices))))

(defthm true-listp-of-mv-nth-5-of-crunch-dag-array2-with-indices
  (true-listp (mv-nth 5 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums)))
  :hints (("Goal" :in-theory (enable crunch-dag-array2-with-indices))))

(local
 (defthm true-listp-when-nat-listp
   (implies (nat-listp x)
            (true-listp x))))

(defthm nat-listp-of-mv-nth-5-of-crunch-dag-array2-with-indices
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (symbolp dag-parent-array-name)
                (all-< nodenums dag-len))
           (nat-listp (mv-nth 5 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))))
  :hints (("Goal" :in-theory (enable crunch-dag-array2-with-indices))))

(defthm alen1-of-mv-nth-2-of-crunch-dag-array2-with-indices
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (symbolp dag-parent-array-name)
                (all-< nodenums dag-len))
           (equal (alen1 dag-parent-array-name (mv-nth 2 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums)))
                  (array-len-with-slack (mv-nth 1 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))
                                        (mv-nth 1 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums)))))
  :hints (("Goal" :in-theory (enable crunch-dag-array2-with-indices))))

(defthm alen1-of-mv-nth-0-of-crunch-dag-array2-with-indices
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (symbolp dag-parent-array-name)
                (all-< nodenums dag-len))
           (equal (alen1 dag-array-name (mv-nth 0 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums)))
                  (array-len-with-slack (mv-nth 1 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))
                                        (mv-nth 1 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums)))))
  :hints (("Goal" :in-theory (enable crunch-dag-array2-with-indices))))

(defthm wf-dagp-of-mv-nth-4-of-crunch-dag-array2-with-indices
  (implies (and (true-listp nodenums)
                (all-natp nodenums)
                (consp nodenums) ; so we can call maxelem
                (pseudo-dag-arrayp dag-array-name dag-array dag-len)
                (symbolp dag-parent-array-name)
                (all-< nodenums dag-len))
           (wf-dagp dag-array-name
                    (mv-nth 0 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))
                    (mv-nth 1 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))
                    dag-parent-array-name
                    (mv-nth 2 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))
                    (mv-nth 3 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))
                    (mv-nth 4 (crunch-dag-array2-with-indices dag-array-name dag-array dag-len dag-parent-array-name nodenums))))
  :hints (("Goal" :in-theory (enable wf-dagp))))
