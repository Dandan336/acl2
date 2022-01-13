; C Library
;
; Copyright (C) 2022 Kestrel Institute (http://www.kestrel.edu)
; Copyright (C) 2022 Kestrel Technology LLC (http://kestreltechnology.com)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "C")

(include-book "pretty-printing-options")

(include-book "kestrel/event-macros/xdoc-constructors" :dir :system)
(include-book "kestrel/error-checking/ensure-function-is-defined" :dir :system)
(include-book "kestrel/error-checking/ensure-function-is-guard-verified" :dir :system)
(include-book "kestrel/error-checking/ensure-function-is-logic-mode" :dir :system)
(include-book "kestrel/error-checking/ensure-symbol-is-fresh-event-name" :dir :system)
(include-book "kestrel/error-checking/ensure-value-is-boolean" :dir :system)
(include-book "kestrel/error-checking/ensure-value-is-function-name" :dir :system)
(include-book "kestrel/error-checking/ensure-value-is-string" :dir :system)
(include-book "kestrel/error-checking/ensure-value-is-symbol" :dir :system)
(include-book "kestrel/event-macros/input-processing" :dir :system)
(include-book "oslib/dirname" :dir :system :ttags ((:quicklisp) :oslib))
(include-book "oslib/file-types" :dir :system :ttags ((:quicklisp) (:quicklisp.osicat) :oslib))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(xdoc::evmac-topic-input-processing atc)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-remove-called-fns ((fns symbol-listp) (term pseudo-termp))
  :returns (new-fns symbol-listp :hyp (symbol-listp fns))
  :short "Remove from a list of function symbols
          all the functions called by a term."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is used by @(tsee atc-process-function);
     see that function's documentation for details."))
  (cond ((endp fns) nil)
        (t (if (ffnnamep (car fns) term)
               (atc-remove-called-fns (cdr fns) term)
             (cons (car fns)
                   (atc-remove-called-fns (cdr fns) term))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-process-function (fn
                              (uncalled-fns symbol-listp)
                              (ctx ctxp)
                              state)
  :returns (mv erp
               (new-uncalled-fns symbol-listp
                                 :hyp (and (symbolp fn)
                                           (symbol-listp uncalled-fns)))
               state)
  :short "Process a target function @('fni') among @('fn1'), ..., @('fnp')."
  :long
  (xdoc::topstring
   (xdoc::p
    "Here we perform some of the checks prescribed in @(tsee atc),
     namely the ones that are easy to perform
     without analyzing the body of the function in detail.
     The remaining checks are performed during code generation,
     where it is more natural to make them,
     as the functions' bodies are analyzed to translate them to C.")
   (xdoc::p
    "The @('uncalled-fns') parameter lists the symbols of
     all the recursive target functions
     that precede @('fn') in @('(fn1 ... fnp)')
     and that are not called by any of the functions
     that precede @('fn') in @('(fn1 ... fnp)').
     This list is used to ensure that all the recursive target functions,
     which represent C loops,
     are called by some other target functions (that follow them).
     The reason for checking this is that C loops
     may only occur in C functions;
     if this check were not satisfied,
     there would be some C loop, represented by a recursive target function,
     that does not appear in the generated C code.
     As we process @('fn'),
     we remove from @('uncalled-fns') all the functions called by @('fn').
     If @('fn') is recursive, we add it to @('uncalled-fns').
     We return the updated list of uncalled functions."))
  (b* ((desc (msg "The target function input ~x0" fn))
       ((er &) (ensure-value-is-function-name$ fn desc t nil))
       (desc (msg "The target function ~x0" fn))
       ((er &) (ensure-function-is-logic-mode$ fn desc t nil))
       ((er &) (ensure-function-is-guard-verified$ fn desc t nil))
       ((er &) (ensure-function-is-defined$ fn desc t nil))
       ((when (ffnnamep fn (uguard+ fn (w state))))
        (er-soft+ ctx t nil
                  "The target function ~x0 is used in its own guard. ~
                   This is currently not supported in ATC."
                  fn))
       (rec (irecursivep+ fn (w state)))
       ((when (and rec (> (len rec) 1)))
        (er-soft+ ctx t nil
                  "The recursive target function ~x0 ~
                   must be singly recursive, ~
                   but it is mutually recursive with ~x1 instead."
                  fn (remove-eq fn rec)))
       ((when (and rec
                   (not (equal (well-founded-relation+ fn (w state))
                               'o<))))
        (er-soft+ ctx t nil
                  "The well-founded relation ~
                   of the recursive target function ~x0 ~
                   must be O<, but it ~x1 instead. ~
                   Only recursive functions with well-founded relation O< ~
                   are currently supported by ATC."
                  fn (well-founded-relation+ fn (w state))))
       (uncalled-fns (atc-remove-called-fns uncalled-fns (ubody+ fn (w state))))
       (uncalled-fns (if rec
                         (cons fn uncalled-fns)
                       uncalled-fns)))
    (acl2::value uncalled-fns))
  :guard-hints (("Goal" :in-theory (enable
                                    acl2::ensure-value-is-function-name
                                    acl2::ensure-function-is-guard-verified
                                    acl2::ensure-function-is-logic-mode
                                    acl2::ensure-function-is-defined)))
  ///

  (defret null-of-atc-process-function-when-erp
    (implies erp
             (null new-uncalled-fns)))

  (defruled symbolp-of-fn-when-atc-process-function-not-erp
    (implies (not (mv-nth 0 (atc-process-function fn uncalled-fns ctx state)))
             (symbolp fn))
    :enable acl2::ensure-value-is-function-name))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-process-function-list ((fns true-listp)
                                   (uncalled-fns symbol-listp)
                                   (ctx ctxp)
                                   state)
  :returns (mv erp
               (new-uncalled-fns symbol-listp
                                 :hyp (and (symbol-listp fns)
                                           (symbol-listp uncalled-fns)))
               state)
  :short "Lift @(tsee atc-process-function) to lists."
  :long
  (xdoc::topstring
   (xdoc::p
    "We thread through the list of uncalled recursive functions."))
  (b* (((when (endp fns)) (acl2::value uncalled-fns))
       ((er uncalled-fns) (atc-process-function (car fns)
                                                uncalled-fns
                                                ctx
                                                state))
       ((er uncalled-fns) (atc-process-function-list (cdr fns)
                                                     uncalled-fns
                                                     ctx
                                                     state)))
    (acl2::value uncalled-fns))
  :prepwork ((local (in-theory (disable null))))
  :guard-hints
  (("Goal" :in-theory (enable symbolp-of-fn-when-atc-process-function-not-erp)))
  ///
  (defret null-of-atc-process-function-list-when-erp
    (implies erp
             (null new-uncalled-fns))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-process-fn1...fnp ((fn1...fnp true-listp) (ctx ctxp) state)
  :returns (mv erp (nothing null) state)
  :verify-guards nil
  :short "Process the target functions @('fn1'), ..., @('fnp')."
  :long
  (xdoc::topstring
   (xdoc::p
    "We initialize the list of uncalled recursive functions to be empty,
     and we ensure that the list is empty after processing all functions."))
  (b* (((er uncalled-fns) (atc-process-function-list fn1...fnp nil ctx state))
       ((unless (consp fn1...fnp))
        (er-soft+ ctx t nil
                  "At least one target function must be supplied."))
       ((er &) (ensure-list-has-no-duplicates$
                fn1...fnp
                (msg "The list of target functions ~x0" fn1...fnp)
                t
                nil))
       ((unless (endp uncalled-fns))
        (er-soft+ ctx t nil
                  "The recursive target functions ~x0 ~
                   are not called by any other target function."
                  uncalled-fns)))
    (acl2::value nil))
  :prepwork ((local (in-theory (disable null)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-process-output-file (output-file
                                 (output-file? booleanp)
                                 (ctx ctxp)
                                 state)
  :returns (mv erp (nothing "Always @('nil').") state)
  :mode :program
  :short "Process the @(':output-file') input."
  (b* (((unless output-file?)
        (er-soft+ ctx t nil
                  "The :OUTPUT-FILE input must be present, ~
                   but it is absent instead."))
       ((er &) (ensure-value-is-string$ output-file
                                        "The :OUTPUT-FILE input"
                                        t
                                        nil))
       ((mv msg? dirname state) (oslib::dirname output-file))
       ((when msg?) (er-soft+ ctx t nil
                              "No directory path can be obtained ~
                               from the output file path ~x0. ~@1"
                              output-file msg?))
       ((er &)
        (if (equal dirname "")
            (acl2::value nil)
          (b* (((mv msg? kind state) (oslib::file-kind dirname))
               ((when msg?) (er-soft+ ctx t nil
                                      "The kind of ~
                                       the output directory path ~x0 ~
                                       cannot be tested. ~@1"
                                      dirname msg?))
               ((unless (eq kind :directory))
                (er-soft+ ctx t nil
                          "The output directory path ~x0 ~
                           is not a directory; it has kind ~x1 instead."
                          dirname kind)))
            (acl2::value nil))))
       ((mv msg? basename state) (oslib::basename output-file))
       ((when msg?) (er-soft+ ctx t nil
                              "No file name can be obtained ~
                               from the output file path ~x0. ~@1"
                              output-file msg?))
       ((unless (and (>= (length basename) 2)
                     (equal (subseq basename
                                    (- (length basename) 2)
                                    (length basename))
                            ".c")))
        (er-soft+ ctx t nil
                  "The file name ~x0 of the output path ~x1 ~
                   must have extension '.c', but it does not."
                  basename output-file))
       ((mv msg? existsp state) (oslib::path-exists-p output-file))
       ((when msg?) (er-soft+ ctx t nil
                              "The existence of the output path ~x0 ~
                               cannot be tested. ~@1"
                              output-file msg?))
       ((when (not existsp)) (acl2::value nil))
       ((mv msg? kind state) (oslib::file-kind output-file))
       ((when msg?) (er-soft+ ctx t nil
                              "The kind of output file path ~x0 ~
                               cannot be tested. ~@1"
                              output-file msg?))
       ((unless (eq kind :regular-file))
        (er-soft+ ctx t nil
                  "The output file path ~x0 ~
                   is not a regular file; it has kind ~x1 instead."
                  output-file kind)))
    (acl2::value nil)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *atc-allowed-pretty-printing-options*
  :short "Keyword (sub)options accepted by @(tsee atc)
          for the @(':pretty-printing') option."
  (list :parenthesize-nested-conditionals)
  ///
  (assert-event (keyword-listp *atc-allowed-pretty-printing-options*))
  (assert-event (no-duplicatesp-eq *atc-allowed-pretty-printing-options*)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-process-pretty-printing (pretty-printing
                                     (ctx ctxp)
                                     state)
  :returns (mv erp (options pprint-options-p) state)
  :short "Process the @(':pretty-printing') input."
  (b* ((irrelevant (make-pprint-options))
       ((er &) (ensure-keyword-value-list$ pretty-printing
                                           "The :PRETTY-PRINTING input"
                                           t
                                           irrelevant))
       (alist (keyword-value-list-to-alist pretty-printing))
       (keywords (strip-cars alist))
       (desc (msg "The list of keywords in the :PRETTY-PRINTING input ~x0"
                  keywords))
       ((er &) (ensure-list-has-no-duplicates$ keywords
                                               desc
                                               t
                                               irrelevant))
       ((er &) (ensure-list-subset$ keywords
                                    *atc-allowed-pretty-printing-options*
                                    desc
                                    t
                                    irrelevant))
       (parenthesize-nested-conditionals
        (cdr (assoc-eq :parenthesize-nested-conditionals alist)))
       ((er &) (ensure-value-is-boolean$
                parenthesize-nested-conditionals
                (msg "The value ~x0 of the pretty-printing option ~
                      :PARENTHESIZE-NESTED-CONDITIONALS"
                     parenthesize-nested-conditionals)
                t
                irrelevant)))
    (acl2::value
     (make-pprint-options
      :parenthesize-nested-conditionals parenthesize-nested-conditionals)))
  :guard-hints (("Goal" :in-theory (enable acl2::ensure-keyword-value-list
                                           acl2::ensure-value-is-boolean)))
  :prepwork ((local (include-book "std/alists/top" :dir :system))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-process-const-name (const-name
                                (const-name? booleanp)
                                (fn1...fnp symbol-listp)
                                (proofs booleanp)
                                (ctx ctxp)
                                state)
  :returns (mv erp
               (val "A @('(tuple (prog-const symbolp)
                                 (wf-thm symbolp)
                                 (fn-thms symbol-symbol-alistp)
                                 val)').")
               state)
  :mode :program
  :short "Process the @(':const-name') input."
  :long
  (xdoc::topstring
   (xdoc::p
    "Since this input also determines, indirectly,
     the names of the theorems generated and exported by ATC,
     here we also
     calculate the names of those theorems,
     ensure they are fresh,
     and return them for use in event generation.
     More precisely, we return the name of the program well-formedness theorem
     and the names of the function correctness theorems;
     the latter are returned as an alist from @('fn1'), ..., @('fnp')
     to the respective theorem names.")
   (xdoc::p
    "The name of each theorem is obtained by
     appending something to the name of the constant.
     The thing appended differs across the theorems:
     thus, their names are all distinct by construction.")
   (xdoc::p
    "If the @(':proofs') input is @('nil'),
     the @(':const-name') input must be absent
     and we return @('nil') for this as well as for the theorem names.
     No constant and theorems are generated when @(':proofs') is @('nil')."))
  (b* (((when (not proofs))
        (if const-name?
            (er-soft+ ctx t nil
                      "Since the :PROOFS input is NIL, ~
                       the :CONST-NAME input must be absent, ~
                       but it is ~x0 instead."
                      const-name)
          (acl2::value (list nil nil nil))))
       ((er &) (ensure-value-is-symbol$ const-name
                                        "The :CONST-NAME input"
                                        t
                                        nil))
       (prog-const (if (eq const-name :auto)
                       'c::*program*
                     const-name))
       ((er &) (ensure-symbol-is-fresh-event-name$
                prog-const
                (msg "The constant name ~x0 ~
                      specified by the :CONST-NAME input"
                     prog-const)
                'const
                nil
                t
                nil))
       (wf-thm (add-suffix prog-const "-WELL-FORMED"))
       ((er &) (ensure-symbol-is-fresh-event-name$
                wf-thm
                (msg "The generated theorem name ~x0 ~
                      indirectly specified by the :CONST-NAME input"
                     wf-thm)
                nil
                nil
                t
                nil))
       ((er fn-thms)
        (atc-process-const-name-aux fn1...fnp prog-const ctx state)))
    (acl2::value (list prog-const
                       wf-thm
                       fn-thms)))

  :prepwork
  ((define atc-process-const-name-aux ((fni...fnp symbol-listp)
                                       (prog-const symbolp)
                                       (ctx ctxp)
                                       state)
     :returns (mv erp
                  (val "A @(tsee symbol-symbol-alistp).")
                  state)
     :mode :program
     (b* (((when (endp fni...fnp)) (acl2::value nil))
          (fn (car fni...fnp))
          (fn-thm (packn (list prog-const "-" (symbol-name fn) "-CORRECT")))
          ((er &) (ensure-symbol-is-fresh-event-name$
                   fn-thm
                   (msg "The generated theorem name ~x0 ~
                         indirectly specified by the :CONST-NAME input"
                        fn-thm)
                   nil
                   nil
                   t
                   nil))
          ((er fn-thms) (atc-process-const-name-aux
                         (cdr fni...fnp) prog-const ctx state)))
       (acl2::value (acons fn fn-thm fn-thms))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *atc-allowed-options*
  :short "Keyword options accepted by @(tsee atc)."
  (list :output-file
        :pretty-printing
        :proofs
        :const-name
        :print)
  ///
  (assert-event (keyword-listp *atc-allowed-options*))
  (assert-event (no-duplicatesp-eq *atc-allowed-options*)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-process-inputs ((args true-listp) (ctx ctxp) state)
  :returns (mv erp
               (val "A @('(tuple (fn1...fnp symbol-listp)
                                 (output-file stringp)
                                 (pretty-printing pprint-options-p)
                                 (proofs booleanp)
                                 (prog-const symbolp)
                                 (wf-thm symbolp)
                                 (fn-thms symbol-symbol-alistp)
                                 (print evmac-input-print-p)
                                 val)').")
               state)
  :mode :program
  :short "Process all the inputs."
  (b* (((mv erp fn1...fnp options)
        (partition-rest-and-keyword-args args *atc-allowed-options*))
       ((when erp) (er-soft+ ctx t nil
                             "The inputs must be the names of ~
                              one or more target functions ~
                              followed by the options ~&0."
                             *atc-allowed-options*))
       ((er &) (atc-process-fn1...fnp fn1...fnp ctx state))
       (output-file-option (assoc-eq :output-file options))
       ((mv output-file output-file?)
        (if output-file-option
            (mv (cdr output-file-option) t)
          (mv :irrelevant nil)))
       ((er &) (atc-process-output-file output-file
                                        output-file?
                                        ctx
                                        state))
       (pretty-printing-option (assoc-eq :pretty-printing options))
       (pretty-printing (if pretty-printing-option
                            (cdr pretty-printing-option)
                          nil))
       ((er pretty-printing) (atc-process-pretty-printing pretty-printing
                                                          ctx
                                                          state))
       (proofs-option (assoc-eq :proofs options))
       (proofs (if proofs-option
                   (cdr proofs-option)
                 t))
       ((er &) (ensure-value-is-boolean$ proofs
                                         "The :PROOFS input"
                                         t
                                         nil))
       (const-name-option (assoc-eq :const-name options))
       ((mv const-name const-name?)
        (if const-name-option
            (mv (cdr const-name-option) t)
          (mv :auto nil)))
       ((er (list prog-const wf-thm fn-thms))
        (atc-process-const-name const-name
                                const-name?
                                fn1...fnp
                                proofs
                                ctx
                                state))
       (print-option (assoc-eq :print options))
       (print (if print-option
                  (cdr print-option)
                :result))
       ((er &) (evmac-process-input-print print ctx state)))
    (acl2::value (list fn1...fnp
                       output-file
                       pretty-printing
                       proofs
                       prog-const
                       wf-thm
                       fn-thms
                       print))))
