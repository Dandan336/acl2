; Utilities about the LD-HISTORY
;
; Copyright (C) 2021-2022 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(local (in-theory (disable weak-ld-history-entry-p get-global
                           ;;boundp-global
                           )))

;; Recognize a true list of ld-history-entries.
(defun weak-ld-history-entry-list-p (entries)
  (declare (xargs :guard t))
  (if (atom entries)
      (null entries)
    (and (weak-ld-history-entry-p (first entries))
         (weak-ld-history-entry-list-p (rest entries)))))

;; (defund ld-history-entry-stobjs-out (entry)
;;   (declare (xargs :guard (weak-ld-history-entry-p entry)))
;;   (let ((stobjs-out/value (ld-history-entry-stobjs-out/value entry)))
;;     (car stobjs-out/value)))

;; Extract the results from an ld-history-entry
;; TODO: Use ld-history-event-value?
(defund ld-history-entry-results (entry)
  (declare (xargs :guard (weak-ld-history-entry-p entry)
                  :guard-hints (("Goal" :in-theory (enable weak-ld-history-entry-p)))))
  (let ((stobjs-out/value (ld-history-entry-stobjs-out/value entry)))
    (and (consp stobjs-out/value)
         (cdr stobjs-out/value))))

;; Returns the most recent THM or DEFTHM submitted by the user, or throws an error is there isn't one.
(defund most-recent-failed-command-aux (ld-history
                                        whole-ld-history ; just for the error message
                                        event-types)
  (declare (xargs :guard (and (weak-ld-history-entry-list-p ld-history)
                              (true-listp whole-ld-history)
                              (symbol-listp event-types))))
  (if (endp ld-history)
      (if (consp (rest whole-ld-history)) ; attempt to check whether we are keeping the whole history
          (er hard? 'most-recent-failed-command-aux "Can't find a failed theorem in the ld-history, which contains ~x0 commands." (len whole-ld-history))
        (er hard? 'most-recent-failed-command-aux "Can't find a failed theorem in the ld-history, which has length ~x0.  Consider doing (adjust-ld-history t state) to save full histories." (len whole-ld-history)))
    (let* ((entry (first ld-history)))
      (if (ld-history-entry-error-flg entry) ; checks whether there was a translation error
          ;; Keep looking:
          (most-recent-failed-command-aux (rest ld-history) whole-ld-history event-types)
        (let* ((entry-input (ld-history-entry-input entry))
               ;; Strip must-fail, if present (TODO: What else to strip?):
               (must-failp (and (consp entry-input)
                                (eq 'must-fail (car entry-input))
                                (= 1 (len (cdr entry-input)))))
               (entry-input (if must-failp
                                (cadr entry-input)
                              entry-input)))
          (if (and (consp entry-input)
                   (member-eq (car entry-input) event-types) ;todo: support rule? verify-termination? verify-guards? other things?
                   (let ((results (ld-history-entry-results entry)))
                     (and (consp results) ; should have length 3
                          (let ((failedp (first results)))
                            (if must-failp
                                (not failedp) ; ensure that the must-fail *didn't* fail, thus it contains a theorem that did fail
                              ;; usual case: non-nil error means the theorem failed:
                              failedp)))))
              entry-input
            ;; Keep looking:
            (most-recent-failed-command-aux (rest ld-history) whole-ld-history event-types)))))))

;; Returns the most recent THM or DEFTHM submitted by the user, or throws an error is there isn't one.
;; TODO: What if the most recent theorem is inside an encapsulate or some other compound event (see what redo-flat does?)?
(defund most-recent-failed-command (event-types state)
  (declare (xargs :stobjs state
                  :guard (and (symbol-listp event-types)
                              ;; is this implied by statep?:
                              (boundp-global 'ld-history state)
                              (weak-ld-history-entry-list-p (get-global 'ld-history state)))))
  (let ((ld-history (ld-history state)))
    (if (endp ld-history)
        (er hard? 'most-recent-failed-command "Can't find a theorem in the history, which is empty!")
      (most-recent-failed-command-aux ld-history ld-history event-types))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defconst *theorem-event-types*
  '(thm
    rule
    defthm defthmd
    defrule defruled defrulel defruledl))

(defund most-recent-failed-theorem-goal (state)
  (declare (xargs :stobjs state
                  ;; is this implied by statep?:
                  :guard (and (boundp-global 'ld-history state)
                              (weak-ld-history-entry-list-p (get-global 'ld-history state)))))
  (let ((form (most-recent-failed-command *theorem-event-types* state)))
    (if (not (true-listp form))
        (er hard? 'most-recent-failed-theorem-goal "Unexpected form for most-recent-failed-theorem: ~x0." form)
      (case (car form)
        ((thm rule) (cadr form))
        ((defthm defthmd defrule defruled defrulel defruledl) (caddr form))
        (t (er hard? 'most-recent-failed-theorem-goal "Can't get the body of the event ~x0 (not a recognized theorem form)." form))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; We are in multiple entry mode IFF the ld-history has length at least 2.
(defund multiple-ld-history-entry-modep (state)
  (declare (xargs :stobjs state
                  :guard-hints (("Goal" :in-theory (enable state-p1))) ; todo: Drop?
                  ))
  (< 1 (len (ld-history state))))
