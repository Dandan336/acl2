; Replaying the events in a book (perhaps with changes).
;
; Copyright (C) 2022-2023 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;; STATUS: Working prototype

;; TODO: Support adding a hook to run on each kind of event.
;; TODO: Time the events and alert the user when improvements slow things down.
;; TODO: Call the linter?
;; TODO: Time each type of event and print a report
;; TODO: Start by making sure we can replay the book (and time it).
;; TODO: Special treatment for any books used to define this tool (will be redundant, don't recommend dropping their include-books, even withn local)
;; TODO: Add the ability to suppress slow stuff (like dropping a local event or an include-book and trying the entire file).
;; TODO: Improve hints for defuns
;; TODO: Detect :guard-debug
;; TOOD: Suppress suggestions to drop set-default-parents and things to disable built-in rules.
;; TODO: Handle verify-guards
;; TODO: Handle progn
;; TODO: Handle encapsulate
;; TOOD: Handle defsection
;; TODO: Handle define (prepwork, ///, etc.)
;; TODO: Handle defrule

(include-book "kestrel/file-io-light/read-objects-from-file" :dir :system)
(include-book "kestrel/utilities/submit-events" :dir :system) ; todo: use prove$ instead
(include-book "kestrel/utilities/strings" :dir :system)
(include-book "kestrel/utilities/widen-margins" :dir :system)
(include-book "kestrel/utilities/split-path" :dir :system)
(include-book "kestrel/utilities/linter" :dir :system)
(include-book "kestrel/utilities/translate" :dir :system)
(include-book "kestrel/lists-light/remove-nth" :dir :system)
(include-book "kestrel/hints/remove-hints" :dir :system)
(include-book "kestrel/strings-light/split-string-repeatedly" :dir :system)
(include-book "kestrel/strings-light/strip-suffix-from-strings" :dir :system)
(include-book "replay-book-helpers") ; todo: reduce, for load-port...
(include-book "speed-up")
(local (include-book "kestrel/typed-lists-light/string-listp" :dir :system))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defttag books-in-subtree) ; for sys-call+ below

;; Looks for .lisp files in the current subtree.
;; Returns (mv book-paths state) where the BOOK-PATHS have no .lisp extensions.
;move
(defun books-in-subtree (state)
  (declare (xargs :stobjs state))
  (mv-let (erp filename-lines state)
    (sys-call+ "find" '("." "-name" "*.lisp") state)
    (if erp
        (prog2$ (er hard? 'books-in-subtree "Failed to find books: ~x0." erp)
                (mv nil state))
      (mv (strip-suffix-from-strings ".lisp" (remove-equal "" (split-string-repeatedly filename-lines #\Newline)))
          state))))

;move
;; Looks for .lisp files in the current subtree.
;; Returns (mv book-paths state) where the BOOK-PATHS have no .lisp extensions.
(defun books-in-dir (state)
  (declare (xargs :stobjs state))
  (mv-let (erp filename-lines state)
    (sys-call+ "find" '("." "-maxdepth" "1" "-name" "*.lisp") state)
    (if erp
        (prog2$ (er hard? 'books-in-dir "Failed to find books: ~x0." erp)
                (mv nil state))
      (mv (strip-suffix-from-strings ".lisp" (remove-equal "" (split-string-repeatedly filename-lines #\Newline)))
          state))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; todo: make this lowercase?
(defun print-to-string (item)
  (declare (xargs :mode :program))
  (mv-let (col string)
    (fmt1-to-string "~X01" (acons #\0 item (acons #\1 nil nil)) 0
                    :fmt-control-alist
                    `((fmt-soft-right-margin . 10000)
                      (fmt-hard-right-margin . 10000)))
    (declare (ignore col))
    string))

(defun abbreviate-event (event)
  (declare (xargs :guard t))
  (if (not (and (consp event)
                (symbolp (car event))))
      ;; todo: can this happen?
      "..."
    (if (and (eq 'local (car event))
             (= 1 (len (cdr event))))
        (concatenate 'string "(local "
                     (abbreviate-event (cadr event)))
      (concatenate 'string
                   "("
                   (symbol-name (car event))
                   (if (not (consp (rest event)))
                       ")"
                     (if (symbolp (cadr event))
                         ;; example (defblah name ...)
                         (concatenate 'string " " (symbol-name (cadr event))
                                      (if (consp (rest (rest event)))
                                          " ...)"
                                        " )"))
                       ;; todo: do better in this case?
                       ;; example (progn (defun foo ...) ...)
                       (concatenate 'string " ...)")))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;move
;; Returns (mv erp nil state).
(defun submit-event-error-triple (event print state)
  (declare (xargs :guard (and (member-eq print '(nil :brief :verbose)))
                  :mode :program ; because this ultimately calls trans-eval-error-triple
                  :stobjs state))
  (mv-let (erp state)
    (submit-event event print nil state)
    (mv erp nil state)))

;; Submits the EVENTS.  If an error is encountered, it is returned and further events are ignored.
;; Returns (mv erp state).
(defun submit-and-check-events (events skip-proofsp skip-localsp print state)
  (declare (xargs :guard (and (true-listp events)
                              (booleanp skip-proofsp)
                              (booleanp skip-localsp)
                              (member-eq print '(nil :brief :verbose)))
                  :mode :program ; because this ultimately calls trans-eval-error-triple
                  :stobjs state))
  (if (endp events)
      (mv nil state)
    (let* ((event (first events))
           ;; TODO: How to skip all local things embedded in progns (including those generated by macros)?
           (localp (and (consp event)
                        (eq 'local (ffn-symb event))))
           (skipp (and localp skip-localsp)))
      (if skipp
          (submit-and-check-events (rest events) skip-proofsp skip-localsp print state)
        (mv-let (erp state)
          (submit-event (if skip-proofsp event `(skip-proofs ,event))
                        nil ;print
                        nil state)
          (if erp
              (mv erp state)
            (submit-and-check-events (rest events) skip-proofsp skip-localsp print state)))))))

;; Returns (mv erp nil state).  This version returns an error-triple, so it can
;; be used with revert-world.
;; TODO: use a prover-step-limit for these!  Maybe call get-event-data on the original events.
(defun submit-and-check-events-error-triple (events skip-proofsp skip-localsp print state)
  (declare (xargs :guard (and (true-listp events)
                              (booleanp skip-proofsp)
                              (booleanp skip-localsp)
                              (member-eq print '(nil :brief :verbose)))
                  :mode :program ; because this ultimately calls trans-eval-error-triple
                  :stobjs state))
  (mv-let (erp state)
    (submit-and-check-events events skip-proofsp skip-localsp print state)
    (mv erp nil state)))

;; Returns (mv successp state).  Doesn't change the world (because it reverts it after submitting the events).
;; TODO: Suppress error printing here.
(defun events-would-succeedp (events print state)
  (declare (xargs :guard (and (true-listp events)
                              (member-eq print '(nil :brief :verbose)))
                  :mode :program ; because this ultimately calls trans-eval-error-triple
                  :stobjs state))
  ;; First, quickly detect mentions of names that would fail in the second pass
  ;; of certify-book (local incompatibility check).  We skip local events here
  ;; to prevent a local event from making a bad name mention seem ok.  We skip
  ;; proofs to help this fail fast.
  (mv-let (erp res state)
    (revert-world (submit-and-check-events-error-triple events t t print state))
    (declare (ignore res))
    (if erp
        (mv nil state) ; some event gave an error
      ;; TODO: Can we do something else fast here, like checking all he hints but not doing the proofs?  May cause includes to be done again...
      ;; Try again for real (without skip-proofs):
      (mv-let (erp res state)
        (revert-world (submit-and-check-events-error-triple events nil nil print state))
        (declare (ignore res))
        (if erp
            (mv nil state) ; some event gave an error
          (mv t state)     ; all events succeeded
          )))))

;; Returns (mv erp state).
(defun submit-event-expect-no-error (event print state)
  (declare (xargs :guard (member-eq print '(nil :brief :verbose))
                  :mode :program ; because this ultimately calls trans-eval-error-triple
                  :stobjs state))
  (mv-let (erp state)
    (submit-event event print nil state)
    (if erp
        (prog2$ (cw "ERROR (~x0) submitting event ~X12.~%" erp event nil)
                (mv :error-submitting-event state))
      (mv nil state))))

;; ;; See if some events would be admitted, but undo them even if so.
;; ;; Returns (mv erp state) where ERP is non-nil if there was an error submitting the events.
;; (defun try-events-and-undo (events state)
;;   (declare (xargs :guard (true-listp events)
;;                   :mode :program
;;                   :stobjs state))
;;   (mv-let (erp state) ; make a deflabel to support undoing
;;     (submit-event '(deflabel improve-book-undo-label) nil nil state)
;;     (if erp ; shouldn't happen
;;         (mv erp state)
;;       (mv-let (erp state)
;;         ;; todo: inhibit even errors in this?:
;;         (submit-and-check-events events nil ;print
;;                                  state)
;;         ;; Try to undo whatever was submitted:
;;         (mv-let (erp2 res state)
;;           (ubt-ubu-fn :ubt 'improve-book-undo-label state)
;;           (declare (ignore res erp2)) ; ERP determines whether we throw an error
;;           (mv erp state))))))

;; Tries the EVENT and prints the MESSAGE if the event succeeds.
;; Returns (mv improvement-foundp state).
;; TODO: Make the limits customizable.
(defun try-improved-event (event message state)
  (declare (xargs :stobjs state
                  :mode :program))
  (mv-let (erp val state)
    (revert-world (submit-event-error-triple `(with-prover-time-limit 10 (with-prover-step-limit 100000 ,event)) nil state))
    (declare (ignore val))
    (if erp
        ;; failure (don't print the message):
        (mv nil state)
      ;; success:
      (prog2$ (cw "~s0" message)
              (mv t state)))))

;; Tries each event and, if it succeeds, prints the corresponding message.
;; Returns (mv improvement-foundp state).
;; Does not change the world.
(defun try-improved-events (event-message-alist improvement-foundp state)
  (declare (xargs :stobjs state
                  :mode :program))
  (if (endp event-message-alist)
      (mv improvement-foundp state)
    (let* ((pair (first event-message-alist))
           (event (car pair))
           (message (cdr pair)))
      (mv-let (improvedp state)
        (try-improved-event event message state)
        (try-improved-events (rest event-message-alist)
                             (or improvedp improvement-foundp)
                             state)))))

;; Returns an alist mapping reduced lists to string descriptions
(defun remove-and-label-nth-items (n lim items)
  (declare (xargs :guard (and (natp n)
                              (natp lim)
                              (true-listp items))
                  :mode :program))
  (if (or (not (mbt (natp n)))
          (not (mbt (natp lim)))
          (<= lim n))
      nil
    (let* ((remove-item (nth n items))
           (new-list (remove-nth n items)))
      (acons new-list
             (concatenate 'string (newline-string) "  Drop " (print-to-string remove-item))
             (remove-and-label-nth-items (+ 1 n) lim items)))))

;; Returns an alist mapping theorems to try to string descriptions
(defun theorems-with-new-hints (defthm-variant name term alist)
  (declare (xargs :mode :program))
  (if (endp alist)
      nil
    (let* ((pair (first alist))
           (new-hints (car pair))
           (description (cdr pair)))
      (acons `(,defthm-variant ,name ,term :hints ,new-hints)
             description
             (theorems-with-new-hints defthm-variant name term (rest alist))))))

;; Returns a string
(defun decode-breakage-type (bt)
  (declare (xargs :guard (consp bt)
                  :mode :program))
  (let ((type (car bt))
        (arg (cadr bt)))
    (case type
      (:remove-by (concatenate 'string "Drop :by " (print-to-string arg)))
      (:remove-cases (concatenate 'string "Drop :cases " (print-to-string arg)))
      (:remove-induct (concatenate 'string "Drop :induct " (print-to-string arg)))
      (:remove-nonlinearp (concatenate 'string "Drop :nonlinearp  " (print-to-string arg)))
      (:remove-do-not (concatenate 'string "Drop :do-not " (print-to-string arg)))
      (:remove-do-not-item (concatenate 'string "Drop :do-not item " (print-to-string arg)))
      (:remove-expand (concatenate 'string "Drop :expand " (print-to-string arg)))
      (:remove-expand-item (concatenate 'string "Drop :expand item " (print-to-string arg)))
      (:remove-use (concatenate 'string "Drop :use " (print-to-string arg)))
      (:remove-use-item (concatenate 'string "Drop :use item " (print-to-string arg)))
      (:remove-enable-item (concatenate 'string "Drop enable of " (print-to-string arg)))
      (:remove-disable-item (concatenate 'string "Drop disable of " (print-to-string arg)))
      (:remove-in-theory (concatenate 'string "Drop :in-theory " (print-to-string arg)))
      (otherwise (er hard? 'decode-breakage-type "Unknown breakage type: ~x0." bt)))))

;; Returns an alist from new keyword-value-lists to decsriptions
(defun remove-hint-parts-and-label-aux (n ways keyword-value-list goal-name)
  (declare (xargs :mode :program))
  (if (or (not (mbt (natp n)))
          (not (mbt (natp ways)))
          (<= ways n))
      nil
    (mv-let (breakage-type new-keyword-value-list)
      (break-hint-keyword-value-list-in-nth-way n keyword-value-list)
      (acons new-keyword-value-list
             ;; the breakage-type currently include the "remove":
             (concatenate 'string (newline-string) "  For \"" goal-name "\": " (decode-breakage-type breakage-type))
             (remove-hint-parts-and-label-aux (+ 1 n) ways keyword-value-list goal-name)))))

;; Returns an alist from new keyword-value-lists to decsriptions
(defun remove-hint-parts-and-label (keyword-value-list goal-name)
  (declare (xargs :mode :program))
  (let ((ways (num-ways-to-break-hint-keyword-value-list keyword-value-list)))
    (remove-hint-parts-and-label-aux 0 ways keyword-value-list goal-name)))

(defun replace-hints-for-goal-name (hints goal-name new-keyword-value-list)
  (declare (xargs :guard (and (true-listp hints)
                              (stringp goal-name)
                              (keyword-value-listp new-keyword-value-list))
                   :mode :program))
  (if (endp hints)
      nil
    (let ((hint (first hints)))
      (if (and (consp hint)
               (equal goal-name (car hint)) ; could allow case to differ, in general but not needed now
               )
          (cons (cons (car hint) new-keyword-value-list)
                (rest hints) ; i suppose we could replace later, if there are dups
                )
        (cons hint (replace-hints-for-goal-name (rest hints) goal-name new-keyword-value-list))))))

;; Returns an alist from new hint-lists to decsriptions
(defun replace-hint-with-each (alist-with-new-keyword-value-lists goal-name all-hints)
  (declare (xargs :mode :program))
  (if (endp alist-with-new-keyword-value-lists)
      nil
    (let* ((pair (first alist-with-new-keyword-value-lists))
           (new-keyword-value-list (car pair))
           (description (cdr pair))
           (new-hints (replace-hints-for-goal-name all-hints goal-name new-keyword-value-list)))
      (acons new-hints
             description
             (replace-hint-with-each (rest alist-with-new-keyword-value-lists) goal-name all-hints)))))

;; Goes through the HINTS. For each, may use many replacements for it.
;; Returns an alist mapping reduced hint-lists to string descriptions.
;; RES is an alist from hint-lists to descriptions
(defun remove-and-label-hint-parts (hints theorem-name all-hints res)
  (declare (xargs :guard (and (true-listp hints)
                              (symbolp theorem-name)
                              (true-listp all-hints)
                              (alistp res))
                  :mode :program))
  (if (endp hints)
      (reverse res)
    (let* ((hint (first hints)))
      (if (not (and (consp hint)
                    (stringp (car hint))))
          ;; not a regular hint, so nothing to do
          (remove-and-label-hint-parts (rest hints) theorem-name all-hints res)
        ;; regular hint:
        (let* ((goal-name (car hint))
               (keyword-value-list (cdr hint))
               (alist-with-new-keyword-value-lists (remove-hint-parts-and-label keyword-value-list goal-name))
               (alist-with-replacements-for-hint (replace-hint-with-each alist-with-new-keyword-value-lists goal-name all-hints)))
          (remove-and-label-hint-parts (rest hints) theorem-name all-hints (append alist-with-replacements-for-hint res)))))))

;; Returns an alist mapping theorems with reduced lists to string descriptions of what was removed.
(defun defthms-with-removed-hints (defthm-variant name term hints)
  (declare (xargs :mode :program))
  (let* ((len (len hints))
         (hint-lists-to-try (append (remove-and-label-nth-items 0 len hints) ;remove entire hints like ("goal ...)
                                    (remove-and-label-hint-parts hints name hints nil) ; remove parts of hints
                                    )))
    (theorems-with-new-hints defthm-variant name term hint-lists-to-try)))

;; Submits and improves the event.
;; Returns (mv erp state).
;; TODO: Use limits based on how many steps were needed for the original proof.
(defun improve-defthm-event (event rest-events print state)
  (declare (xargs :guard (and (member-eq print '(nil :brief :verbose)))
                  :mode :program ; because this ultimately calls trans-eval-error-triple
                  :stobjs state)
           (ignore rest-events) ; for now, todo: use these when trying to change the theorem statement
           )
  (prog2$
   (and print (cw "  (For ~x0: " (first (rest event))))
   (let* ((defthm-variant (first event))
          (defthm-args (rest event))
          (name (first defthm-args))
          (body (second defthm-args))
          (keyword-value-list (rest (rest defthm-args)))
          (hintsp (assoc-keyword :hints keyword-value-list))
          ;; TODO: Try deleting the :otf-flg
          ;; Try removing hints:
          (state (if (not hintsp)
                     state ; no hints to try dropping
                   (let ((event-without-hints `(,defthm-variant ,name ,body ,@(remove-keyword :hints keyword-value-list)))
                         (drop-hints-message (concatenate 'string (newline-string) "  Drop all :hints.")))
                     (mv-let (improvement-foundp state)
                       (try-improved-event event-without-hints drop-hints-message state)
                       (if improvement-foundp
                           state
                         ;; could not drop all hints, so try one by one:
                         (let* ((hints (cadr hintsp))
                                (alist (defthms-with-removed-hints defthm-variant name body hints)))
                           (mv-let (improvement-foundp state)
                             (try-improved-events alist nil state)
                             (declare (ignore improvement-foundp)) ;todo: don't bother to return this?
                             state)))))))
          ;; Apply the linter:
          (state (lint-defthm name (translate-term body 'improve-defthm-event (w state)) nil 100000 state)))
     ;; Try to speed up the proof:
     (mv-let (erp state)
       (speed-up-defthm event print state)
       (if erp
           (mv erp state)
         (prog2$ (and print (cw ")~%"))
                 ;; TODO: This means we may submit the event multiple times -- can we do something other than call revert-world above?
                 (submit-event event nil nil state)))))))

;; Returns (mv erp state).
(defun improve-defun-event (event rest-events print state)
  (declare (xargs :guard (and (member-eq print '(nil :brief :verbose)))
                  :mode :program ; because this ultimately calls trans-eval-error-triple
                  :stobjs state)
           (ignore rest-events) ; for now, todo: use these when trying to change the theorem statement
           )
  (progn$
   (and print (cw "  (For ~x0: " (first (rest event))))
   ;; todo: try to improve hints, etc.
   ;; Must submit it before we lint it:
   (mv-let (erp state)
     (submit-event event nil nil state)
     (if erp
         (mv erp state)
       (let* ((fn (cadr event))
              (state (lint-defun fn t   ;assume-guards
                                 nil    ; suppress
                                 100000 ;step-limit
                                 state)))

         (prog2$ (and print (cw ")~%"))
                 (mv nil state)))))))

;;TODO: Do more here, like we do for defthm!
;; Returns (mv erp state).
(defun improve-defrule-event (event rest-events print state)
  (declare (xargs :guard (and (member-eq print '(nil :brief :verbose)))
                  :mode :program ; because this ultimately calls trans-eval-error-triple
                  :stobjs state)
           (ignore rest-events) ; for now, todo: use these when trying to change the theorem statement
           )
  (prog2$
   (and print (cw "  (For ~x0: " (first (rest event))))
   (mv-let (erp state)
     (speed-up-defrule event state)
     (declare (ignore erp)) ; todo: why?
     (prog2$ (and print (cw ")~%"))
             (submit-event event nil nil state)))))

;; Currently, there is nothing to try for an in-package.
(defun improve-in-package-event (event rest-events print state)
  (declare (xargs :guard (and (member-eq print '(nil :brief :verbose)))
                  :mode :program ; because this ultimately calls trans-eval-error-triple
                  :stobjs state)
           (ignore rest-events) ; for now, todo: use these when trying to change the theorem statement
           )
  (prog2$ (and print (cw "  (For ~x0: )~%" event))
          (mv nil state)))

;; Submits EVENT and prints suggestions for improving it.
;; Returns (mv erp state).
(defun improve-event (event rest-events print state)
  (declare (xargs :guard (and (true-listp rest-events)
                              (member-eq print '(nil :brief :verbose)))
                  :mode :program ; because this ultimately calls trans-eval-error-triple
                  :stobjs state))
  (case (car event)
    (local
     ;; For a local event, try skipping it and see if the rest of the events
     ;; work.  If so, deleting the event should be safe, since the event is local.
     (prog2$
      (cw "  (For ~x0:" (abbreviate-event event)) ; todo: extract a name to print here, or eviscerate
      (mv-let (successp state)
        (events-would-succeedp rest-events nil state)
        (if successp
            ;; This event could be skipped:  TODO: Still, try improving it (it may be a defthm, etc.)?
            ;; TODO: What if this is redundant, given stuff already in the world?
            (prog2$ (cw "~%  Drop ~X01.)~%" event nil)
                    ;; We submit the event anyway, so as to not interfere with subsequent suggested improvements:
                    (submit-event-expect-no-error event nil state))
          ;;failed to submit the rest of the events, so we can't just skip this one:
          (progn$ ;(cw " Cannot be dropped.)~%" event)
           (cw ")~%" event)
           (submit-event-expect-no-error event nil state))))))
    (include-book
     ;; For an include-book, try skipping it and see if the rest of the events
     ;; work.
     (prog2$
      (cw "  (For ~x0:" event)
      (mv-let (successp state)
        (events-would-succeedp rest-events nil state)
        (if successp
            ;; This event could be skipped: (but that might break books that use
            ;; this book) TODO: Also try reducing what is included?  TODO: What
            ;; if this is redundant, given stuff already in the world?  TODO:
            ;; Somehow avoid suggesting to drop books that introduce names used
            ;; in macros (they will seem like they can be dropped, unless the
            ;; book contains an actual call of the macro).
            (prog2$ (cw "~%  Drop ~x0.)~%" event nil)
                    ;; We submit the event anyway, so as to not interfere with subsequent suggested improvements:
                    (submit-event-expect-no-error event nil state))
          ;;failed to submit the rest of the events, so we can't just skip this one:
          (progn$ ;; (cw " Cannot be dropped.)~%" event)
                  (cw ")~%" event)
                  (submit-event-expect-no-error event nil state))))))
    ((defthm defthmd) (improve-defthm-event event rest-events print state))
    ((defun defund) (improve-defun-event event rest-events print state))
    ((defrule defruled) (improve-defrule-event event rest-events print state))
    ((in-package) (improve-in-package-event event rest-events print state))
    ;; todo: for these, we should print the event before submitting it:
    ((deflabel) (submit-event event nil nil state) ; can't think of anything to do for labels
     )
    ((defstub) (submit-event event nil nil state) ; anything to do?
     )
    ((verify-guards) (submit-event event nil nil state) ; todo: check if redundant, improve hints
     )
    ((in-theory) (submit-event event nil nil state) ; todo: check if redundant, consider dropping (check the time difference)
     )
    ((defmacro) (submit-event event nil nil state) ; todo: check the body?
     )
    ((defconst) (submit-event event nil nil state) ; todo: check the body?
     )
    ((encapsulate) (submit-event event nil nil state) ; todo: handle!
     )
    ((theory-invariant) (submit-event event nil nil state) ; todo: handle!  could warn about a name that is not defined.
     )
    ((defxdoc defxdoc+) (submit-event event nil nil state) ; todo: anything to check?
     )
    ((defcong) (submit-event event nil nil state) ; todo: try to clean up hints
     )
    ;; Since it's just an assert, we can continue after an error, so we just warn:
    ((assert-event assert-equal)
     (let ((state (submit-event-handle-error event nil :warn state)))
       (mv nil state)))
    ;; TODO: Try dropping include-books.
    ;; TODO: Add more event types here.
    (t (prog2$ (cw " (Just submitting unhandled event ~x0)~%" (abbreviate-event event))
               (submit-event-expect-no-error event nil state)))))

;; Submits each event, after printing suggestions for improving it.
;; Returns (mv erp state).
(defun improve-events (events print state)
  (declare (xargs :guard (true-listp events)
                  :mode :program
                  :stobjs state))
  (if (endp events)
      (mv nil state)
    (mv-let (erp state)
      (improve-event (first events) (rest events) print state)
      (if erp
          (mv erp state)
        (improve-events (rest events) print state)))))

;; Returns state
;move
(defun set-cbd-simple (cbd state)
  (declare (xargs :guard (stringp cbd)
                  :stobjs state
                  :mode :program))
  (mv-let (erp val state)
    (set-cbd-fn cbd state)
    (declare (ignore val))
    (if erp
        (prog2$ (er hard? 'set-cbd-simple "Failed to set the cbd to ~x0." cbd)
                state)
      state)))

;; Drop-in replacement for extend-pathname that doesn't fail on stuff like
;; (extend-pathname "." "../foo" state).
;; Note: This can add a slash if the filename is a dir.
;move
(defund extend-pathname$ (dir filename state)
  (declare (xargs :stobjs state
                  :mode :program))
  (extend-pathname (canonical-pathname dir t state) filename state))

;; Returns (mv erp state).
;; TODO: Set induction depth limit to nil?
(defun improve-book-fn-aux (bookname ; no extension
                            dir
                            print
                            state)
  (declare (xargs :guard (and (stringp bookname)
                              (or (eq :cbd dir)
                                  (stringp dir))
                              (member-eq print '(nil :brief :verbose)))
                  :mode :program ; because this calls submit-events
                  :stobjs state))
  (let* ((file-name (if (string-ends-withp bookname ".lisp") ; tolerate existing .lisp extension
                        bookname
                      (concatenate 'string bookname ".lisp")))
         (full-book-path (extend-pathname$ (if (eq dir :cbd) "." dir) file-name state)))
    (mv-let (existsp state)
      (file-write-date$ full-book-path state)
      (if (not existsp)
          (prog2$ (er hard? 'improve-book-fn-aux "~s0 does not exist." full-book-path)
                  (mv :file-does-not-exist state))
        (let ((state (widen-margins state)))
          (prog2$
           (and print (cw "~%~%(IMPROVING ~x0.~%" full-book-path)) ; matches the close paren below
           (let* ((old-cbd (cbd-fn state))
                  (full-book-dir (dir-of-path full-book-path))
                  ;; We set the CBD so that the book is replayed in its own directory:
                  (state (set-cbd-simple full-book-dir state))
                  ;; Load the .port file, so that packages (especially) exist:
                  (state (load-port-file-if-exists (strip-suffix-from-string ".lisp" full-book-path) state)))
             (mv-let (erp events state)
               (read-objects-from-book full-book-path state)
               (if erp
                   (let* ((state (unwiden-margins state))
                          (state (set-cbd-simple old-cbd state)))
                     (mv erp state))
                 (progn$ (and (eq print :verbose) (cw "  Book contains ~x0 forms.~%~%" (len events)))
                         (mv-let (erp state)
                           (improve-events events print state)
                           (let* ((state (unwiden-margins state))
                                  (state (set-cbd-simple old-cbd state)))
                             (prog2$ (cw ")")
                                     (mv erp state))))))))))))))

;; Returns (mv erp nil state).
(defun improve-book-fn (bookname ; no extension
                        dir
                        print
                        state)
  (declare (xargs :guard (and (stringp bookname)
                              (or (eq :cbd dir)
                                  (stringp dir))
                              (member-eq print '(nil :brief :verbose)))
                  :mode :program ; because this calls submit-events
                  :stobjs state))
  (revert-world
   (mv-let (erp state)
     (improve-book-fn-aux bookname dir print state)
     (mv erp nil state))))

;; Example: (IMPROVE-BOOK "helper").  This makes no changes to the world, just
;; prints suggestions for improvement.
(defmacro improve-book (bookname ; no extension
                        &key
                        (dir ':cbd)
                        (print ':brief))
  `(improve-book-fn ,bookname ,dir ,print state))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Returns (mv erp nil state) where EVENT is usually (value-triple :invisible).
(defun improve-books-fn-aux (books dir print state)
  (declare (xargs :guard (and (string-listp books)
                              (or (eq :cbd dir)
                                  (stringp dir))
                              (member-eq print '(nil :brief :verbose)))
                  :stobjs state :mode :program))
  (if (endp books)
      (mv nil '(value-triple :invisible) state)
    (mv-let (erp val state)
      (improve-book-fn (first books) dir print state)
      (declare (ignore val))
      (if erp
          (prog2$ (er hard? 'improve-books-fn-aux "Error improving ~x0." (first books))
                  (mv erp nil state))
        (improve-books-fn-aux (rest books) dir print state)))))

;; Returns (mv erp nil state) where EVENT is usually (value-triple :invisible).
(defun improve-books-fn (print dir subdirsp state)
  (declare (xargs :guard (and (member-eq print '(nil :brief :verbose))
                              (or (eq :cbd dir)
                                  (stringp dir))
                              (booleanp subdirsp))
                  :stobjs state :mode :program))
  (let* ((dir (if (eq dir :cbd) "." dir))
         (full-dir (canonical-pathname dir t state))
         ;; (state (set-cbd-simple full-dir state))
         )
    (mv-let (books state)
      (if subdirsp
          (books-in-subtree state)
        (books-in-dir state))
      (prog2$ (if subdirsp
                  (cw "~%(Will try to improve ~x0 books in ~s1 and subdirs.)" (len books) full-dir)
                (cw "~%(Will try to improve ~x0 books in ~s1.)" (len books) full-dir))
              ;; pass full-dir here?:
              (improve-books-fn-aux books dir print state)))))

;; Tries to improve all books in DIR, not including books in subdirectories.
;; By default, uses the connected book directory for DIR.
(defmacro improve-books (&key
                         (print ':brief)
                         ;; (dir ':cbd) ; doesn't work since the sys-call to get the list of books runs in the current dir
                         )
  `(make-event (improve-books-fn ',print ':cbd ;;',dir
                                 nil state)))

;; Tries to improve all books in DIR, including books in subdirectories.
;; By default, uses the connected book directory for DIR.
(defmacro improve-books-in-subtree (&key
                                    (print ':brief)
                                    ;; (dir ':cbd) ; doesn't work since the sys-call to get the list of books runs in the current dir
                                    )
  `(make-event (improve-books-fn ',print ':cbd ;;',dir
                                 t state)))
