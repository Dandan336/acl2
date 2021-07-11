; C Library
;
; Copyright (C) 2021 Kestrel Institute (http://www.kestrel.edu)
; Copyright (C) 2021 Kestrel Technology LLC (http://kestreltechnology.com)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "C")

(include-book "abstract-syntax")
(include-book "pretty-printer" :ttags ((:open-output-channel!)))
(include-book "static-semantics")
(include-book "dynamic-semantics")
(include-book "arrays")
(include-book "conditional-expressions")
(include-book "let-designations")
(include-book "proof-support")

(include-book "kestrel/error-checking/ensure-function-is-defined" :dir :system)
(include-book "kestrel/error-checking/ensure-function-is-guard-verified" :dir :system)
(include-book "kestrel/error-checking/ensure-function-is-logic-mode" :dir :system)
(include-book "kestrel/error-checking/ensure-symbol-is-fresh-event-name" :dir :system)
(include-book "kestrel/error-checking/ensure-value-is-boolean" :dir :system)
(include-book "kestrel/error-checking/ensure-value-is-function-name" :dir :system)
(include-book "kestrel/error-checking/ensure-value-is-string" :dir :system)
(include-book "kestrel/error-checking/ensure-value-is-symbol" :dir :system)
(include-book "kestrel/event-macros/cw-event" :dir :system)
(include-book "kestrel/event-macros/event-generation" :dir :system)
(include-book "kestrel/event-macros/input-processing" :dir :system)
(include-book "kestrel/event-macros/make-event-terse" :dir :system)
(include-book "kestrel/event-macros/xdoc-constructors" :dir :system)
(include-book "kestrel/std/strings/strtok-bang" :dir :system)
(include-book "kestrel/std/system/check-if-call" :dir :system)
(include-book "kestrel/std/system/check-lambda-call" :dir :system)
(include-book "kestrel/std/system/check-list-call" :dir :system)
(include-book "kestrel/std/system/check-mbt-call" :dir :system)
(include-book "kestrel/std/system/check-mbt-dollar-call" :dir :system)
(include-book "kestrel/std/system/check-mv-let-call" :dir :system)
(include-book "kestrel/std/system/formals-plus" :dir :system)
(include-book "kestrel/std/system/fresh-logical-name-with-dollars-suffix" :dir :system)
(include-book "kestrel/std/system/maybe-pseudo-event-formp" :dir :system)
(include-book "kestrel/std/system/table-alist-plus" :dir :system)
(include-book "kestrel/std/system/ubody-plus" :dir :system)
(include-book "kestrel/std/system/uguard-plus" :dir :system)
(include-book "kestrel/std/system/well-founded-relation-plus" :dir :system)
(include-book "kestrel/std/util/tuple" :dir :system)
(include-book "oslib/dirname" :dir :system)
(include-book "oslib/file-types" :dir :system)
(include-book "tools/trivial-ancestors-check" :dir :system)

(local (include-book "kestrel/std/system/flatten-ands-in-lit" :dir :system))
(local (include-book "kestrel/std/system/pseudo-event-form-listp" :dir :system))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; to speed up the proofs in this file:

(defrulel tuplep-of-2-of-list
  (std::tuplep 2 (list x y)))

(defrulel tuplep-of-3-of-list
  (std::tuplep 3 (list x y z)))

(local (in-theory (disable std::tuplep)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(xdoc::evmac-topic-implementation

 atc

 :items

 (xdoc::*evmac-topic-implementation-item-state*

  xdoc::*evmac-topic-implementation-item-wrld*

  xdoc::*evmac-topic-implementation-item-ctx*

  "@('fn1...fnp') is the list @('(fn1 ... fnp)') of inputs to @(tsee atc)."

  "@('fn') is one of the symbols in @('fn1...fnp')."

  "@('fns') is @('fn1...fnp') or a suffix of it."

  "@('inscope') is a list of alists from ACL2 variable symbols to C types.
   These are the variables in scope
   for the ACL2 term whose code is being generated,
   organized in nested scopes from innermost to outermost.
   This is like a symbol table for ACL2's representation of the C code."

  "@('prec-fns') is an alist from ACL2 function symbols to function information.
   The function symbols are the ones in @('fn1...fnp') that precede,
   in the latter list,
   the symbol @('fn') in @('fn1...fnp') for which code is being generated;
   @('fn') is often also a parameter of
   the ATC function that has @('prec-fns') as parameter.
   According to the restrictions stated in the ATC user documentation,
   @('prec-fns') consists of (information about) the target function symbols
   that @('fn') is allowed to call."

  (xdoc::evmac-topic-implementation-item-input "output-file")

  (xdoc::evmac-topic-implementation-item-input "proofs")

  (xdoc::evmac-topic-implementation-item-input "const-name")

  (xdoc::evmac-topic-implementation-item-input "print")

  xdoc::*evmac-topic-implementation-item-call*

  "@('prog-const') is the symbol specified by @('const-name').
   This is @('nil') if @('proofs') is @('nil')."

  "@('wf-thm') is the name of the generated program well-formedness theorem.
   This is @('nil') if @('proofs') is @('nil')."

  "@('fn-thms') is an alist from @('fn1'), ..., @('fnp')
   to the names of the generated respective correctness theorems.
   This is @('nil') if @('proofs') is @('nil')."

  "@('recursionp') is a flag indicating whether
   any target function is recursive or not."

  xdoc::*evmac-topic-implementation-item-names-to-avoid*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(xdoc::evmac-topic-input-processing atc)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-process-function (fn (ctx ctxp) state)
  :returns (mv erp (recursionp booleanp) state)
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
    "If there is no error,
     we return a flag indicating whether the function is recursive or not."))
  (b* ((desc (msg "The target ~x0 input" fn))
       ((er &) (acl2::ensure-value-is-function-name$ fn desc t nil))
       (desc (msg "The target function ~x0" fn))
       ((er &) (acl2::ensure-function-is-logic-mode$ fn desc t nil))
       ((er &) (acl2::ensure-function-is-guard-verified$ fn desc t nil))
       ((er &) (acl2::ensure-function-is-defined$ fn desc t nil))
       (recp (and (acl2::irecursivep+ fn (w state)) t))
       ((when (and recp
                   (not (equal (acl2::well-founded-relation+ fn (w state))
                               'o<))))
        (er-soft+ ctx t nil
                  "The well-founded relation ~
                   of the recursive target function ~x0 ~
                   must be O<, but it ~x1 instead. ~
                   Only recursive functions with well-founded relation O< ~
                   are currently supported by ATC."
                  fn (acl2::well-founded-relation+ fn (w state)))))
    (acl2::value recp))
  :guard-hints (("Goal" :in-theory (enable
                                    acl2::ensure-value-is-function-name
                                    acl2::ensure-function-is-guard-verified
                                    acl2::ensure-function-is-logic-mode
                                    acl2::ensure-function-is-defined))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-process-function-list ((fns true-listp) (ctx ctxp) state)
  :returns (mv erp (recursionp booleanp) state)
  :short "Lift @(tsee atc-process-function) to lists."
  :long
  (xdoc::topstring-p
   "If there is no error,
    we return a flag indicating whether any function is recursive or not.")
  (b* (((when (endp fns)) (acl2::value nil))
       ((er recursionp1) (atc-process-function (car fns) ctx state))
       ((er recursionp2) (atc-process-function-list (cdr fns) ctx state)))
    (acl2::value (or recursionp1 recursionp2))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-process-fn1...fnp ((fn1...fnp true-listp) (ctx ctxp) state)
  :returns (mv erp (recursionp booleanp) state)
  :verify-guards nil
  :short "Process the target functions @('fn1'), ..., @('fnp')."
  :long
  (xdoc::topstring-p
   "If there is no error,
    we return a flag indicating whether any function is recursive or not.")
  (b* (((er recursionp) (atc-process-function-list fn1...fnp ctx state))
       ((unless (consp fn1...fnp))
        (er-soft+ ctx t nil
                  "At least one target function must be supplied."))
       ((er &) (acl2::ensure-list-has-no-duplicates$
                fn1...fnp
                (msg "The list of target functions ~x0" fn1...fnp)
                t
                nil)))
    (acl2::value recursionp)))

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
       ((er &) (acl2::ensure-value-is-string$ output-file
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
       ((er &) (acl2::ensure-value-is-symbol$ const-name
                                              "The :CONST-NAME input"
                                              t
                                              nil))
       (prog-const (if (eq const-name :auto)
                       'c::*program*
                     const-name))
       ((er &) (acl2::ensure-symbol-is-fresh-event-name$
                prog-const
                (msg "The constant name ~x0 ~
                      specified by the :CONST-NAME input"
                     prog-const)
                'const
                nil
                t
                nil))
       (wf-thm (add-suffix prog-const "-WELL-FORMED"))
       ((er &) (acl2::ensure-symbol-is-fresh-event-name$
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
          (fn-thm (acl2::packn
                   (list prog-const "-" (symbol-name fn) "-CORRECT")))
          ((er &) (acl2::ensure-symbol-is-fresh-event-name$
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
        :proofs
        :const-name
        :print)
  ///
  (assert-event (symbol-listp *atc-allowed-options*))
  (assert-event (no-duplicatesp-eq *atc-allowed-options*)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-process-inputs ((args true-listp) (ctx ctxp) state)
  :returns (mv erp
               (val "A @('(tuple (fn1...fnp symbol-listp)
                                 (recursionp booleanp)
                                 (output-file stringp)
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
       ((er recursionp) (atc-process-fn1...fnp fn1...fnp ctx state))
       (output-file-option (assoc-eq :output-file options))
       ((mv output-file output-file?)
        (if output-file-option
            (mv (cdr output-file-option) t)
          (mv :irrelevant nil)))
       ((er &) (atc-process-output-file output-file
                                        output-file?
                                        ctx
                                        state))
       (proofs-option (assoc-eq :proofs options))
       (proofs (if proofs-option
                   (cdr proofs-option)
                 t))
       ((er &) (acl2::ensure-value-is-boolean$ proofs
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
                       recursionp
                       output-file
                       proofs
                       prog-const
                       wf-thm
                       fn-thms
                       print))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ atc-table
  :parents (atc-implementation)
  :short "Table of @(tsee atc) calls."
  :long
  (xdoc::topstring
   (xdoc::p
    "Every successful call of @(tsee atc) is recorded in a table.
     This is used to support redundancy checking (see @(tsee atc-fn))."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *atc-table*
  :short "Name of the table of @(tsee atc) calls."
  'atc-table)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(std::defaggregate atc-call-info
  :short "Information associated to an @(tsee atc) call
          in the table of @(tsee atc) calls."
  :long
  (xdoc::topstring
   (xdoc::p
    "For now we only record the generated encapsulate.
     More information may be recorded in the future."))
  ((encapsulate pseudo-event-formp))
  :pred atc-call-infop)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-maybe-call-infop (x)
  :short "Optional information associated to an @(tsee atc) call
          in the table of @(tsee atc) calls."
  (or (atc-call-infop x)
      (eq x nil)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection atc-table-definition
  :short "Definition of the table of @(tsee atc) calls."
  :long
  (xdoc::topstring
   (xdoc::p
    "The keys of the table are calls of @(tsee atc).
     The values of the table are the associated information."))

  (make-event
   `(table ,*atc-table* nil nil
      :guard (and (pseudo-event-formp acl2::key)
                  (atc-call-infop acl2::val)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-table-lookup ((call pseudo-event-formp) (wrld plist-worldp))
  :returns (info? atc-maybe-call-infop)
  :short "Look up an @(tsee atc) call in the table."
  (b* ((table (acl2::table-alist+ *atc-table* wrld))
       (info? (cdr (assoc-equal call table))))
    (if (atc-maybe-call-infop info?)
        info?
      (raise "Internal error: value ~x0 of key ~x1 in the ATC table.")))
  :prepwork ((local (include-book "std/alists/top" :dir :system))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-table-record-event ((call pseudo-event-formp) (info atc-call-infop))
  :returns (event pseudo-event-formp)
  :short "Event to update the table of @(tsee atc) calls."
  `(table ,*atc-table* ',call ',info))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ atc-event-and-code-generation
  :parents (atc-implementation)
  :short "Event generation and code generation performed by @(tsee atc)."
  :long
  (xdoc::topstring
   (xdoc::p
    "We generate C abstract syntax,
     which we pretty-print to a file
     and also assign to a named constant.")
   (xdoc::p
    "Given the restrictions on the target functions,
     the translation is fairly straightforward -- intentionally so.")
   (xdoc::p
    "Some events are generated in two slightly different variants:
     one that is local to the generated @(tsee encapsulate),
     and one that is exported from the  @(tsee encapsulate).
     Proof hints are in the former but not in the latter,
     thus keeping the ACL2 history ``clean'';
     some proof hints may refer to events
     that are generated only locally to the @(tsee encapsulate)."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(std::defalist atc-symbol-type-alistp (x)
  :short "Recognize alists from symbols to types."
  :long
  (xdoc::topstring
   (xdoc::p
    "These represent scopes in the symbol tables for variables."))
  :key (symbolp x)
  :val (typep x)
  :true-listp t
  :keyp-of-nil t
  :valp-of-nil nil
  ///

  (defrule typep-of-cdr-of-assoc-equal
    (implies (and (atc-symbol-type-alistp x)
                  (assoc-equal k x))
             (typep (cdr (assoc-equal k x))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(std::deflist atc-symbol-type-alist-listp (x)
  :short "Recognize lists of alists from symbols to types."
  :long
  (xdoc::topstring
   (xdoc::p
    "These represent symbol tables for variables.
     The @(tsee car) is the innermost scope."))
  (atc-symbol-type-alistp x)
  :true-listp t
  :elementp-of-nil t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-get-var ((var symbolp) (inscope atc-symbol-type-alist-listp))
  :returns (type? type-optionp :hyp (atc-symbol-type-alist-listp inscope))
  :short "Obtain the type of a variable from the symbol table."
  :long
  (xdoc::topstring
   (xdoc::p
    "We look through the scopes, from innermost to outermost.
     Actually, currently it is an invariant that the scopes are disjoint,
     so any lookup order would give the same result.")
   (xdoc::p
    "Return @('nil') if the variable is not in scope."))
  (if (endp inscope)
      nil
    (or (cdr (assoc-eq var (car inscope)))
        (atc-get-var var (cdr inscope)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-get-var-check-innermost ((var symbolp)
                                     (inscope atc-symbol-type-alist-listp))
  :returns (mv (type? type-optionp :hyp (atc-symbol-type-alist-listp inscope))
               (innermostp booleanp))
  :short "Obtain the type of a variable from the symbol table,
          and indicate whether the variable is in the innermost scope."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is used to define @(tsee atc-get-vars-check-innermost).
     See that function's documentation for motivation."))
  (atc-get-var-check-innermost-aux var inscope t)

  :prepwork
  ((define atc-get-var-check-innermost-aux
     ((var symbolp)
      (inscope atc-symbol-type-alist-listp)
      (innermostp booleanp))
     :returns (mv (type? type-optionp
                         :hyp (atc-symbol-type-alist-listp inscope))
                  (innermostp booleanp :hyp (booleanp innermostp)))
     (b* (((when (endp inscope)) (mv nil nil))
          (scope (car inscope))
          (type? (cdr (assoc-eq var scope)))
          ((when (typep type?)) (mv type? innermostp)))
       (atc-get-var-check-innermost-aux var (cdr inscope) nil)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-get-vars-check-innermost ((vars symbol-listp)
                                      (inscope atc-symbol-type-alist-listp))
  :returns (mv (type?-list type-option-listp
                           :hyp (atc-symbol-type-alist-listp inscope))
               (innermostp-list boolean-listp))
  :short "Lift @(tsee atc-get-var-check-innermost) to lists."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is used when we encounter a @(tsee mv-let) in code generation.
     We need to ensure that all the variables are in scope,
     and we need to know which ones are in the innermost scope.
     This function returns that information."))
  (b* (((when (endp vars)) (mv nil nil))
       ((mv type? innermostp)
        (atc-get-var-check-innermost (car vars) inscope))
       ((mv type?-list innermostp-list)
        (atc-get-vars-check-innermost (cdr vars) inscope)))
    (mv (cons type? type?-list)
        (cons innermostp innermostp-list)))
  ///

  (defret len-of-atc-get-vars-check-innermost.type?-list
    (equal (len type?-list)
           (len vars)))

  (defret len-of-atc-get-vars-check-innermost.innermostp-list
    (equal (len innermostp-list)
           (len vars))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-add-var ((var symbolp)
                     (type typep)
                     (inscope atc-symbol-type-alist-listp))
  :returns (new-inscope atc-symbol-type-alist-listp :hyp :guard)
  :short "Add a variable with a type to the symbol table."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is added to the innermost scope.
     The symbol table has always at least one scope."))
  (cons (acons var type (car inscope))
        (cdr inscope)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-check-var ((var symbolp) (inscope atc-symbol-type-alist-listp))
  :returns (mv (type? type-optionp :hyp (atc-symbol-type-alist-listp inscope))
               (innermostp booleanp)
               (errorp booleanp))
  :short "Check a variable against a symbol table."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is used when we encounter a @(tsee let) in code generation.
     We need to decide how to treat the @(tsee let)
     based on whether the variable is new or not,
     and whether if not new it is in the innermost scope or not,
     and whether if new there is a different variable with the same symbol name.
     This function checks all of these conditions.")
   (xdoc::p
    "If the variable is in the symbol table, we return its type,
     along with a flag indicating whether
     the variable is in the innermost scope.
     If the symbol table contains
     a different variable with the same symbol name,
     we return an indication of error;
     this is because ACL2 variables represent C variables
     whose names are just the symbol names of the ACL2 variables,
     which therefore must be distinct for different ACL2 variables.")
   (xdoc::p
    "It is an invariant that
     all the variables in the symbol table have distinct symbol names."))
  (atc-check-var-aux var inscope t)

  :prepwork
  ((define atc-check-var-aux ((var symbolp)
                              (inscope atc-symbol-type-alist-listp)
                              (innermostp booleanp))
     :returns (mv (type? type-optionp
                         :hyp (atc-symbol-type-alist-listp inscope))
                  (innermostp booleanp :hyp (booleanp innermostp))
                  (errorp booleanp))
     :parents nil
     (b* (((when (endp inscope)) (mv nil nil nil))
          (scope (car inscope))
          (type? (cdr (assoc-eq var scope)))
          ((when (typep type?)) (mv type? innermostp nil))
          ((when (member-equal (symbol-name var)
                               (symbol-name-lst (strip-cars scope))))
           (mv nil nil t)))
       (atc-check-var-aux var (cdr inscope) nil)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(std::defaggregate atc-fn-info
  :short "Information associated to an ACL2 function translated to C."
  :long
  (xdoc::topstring
   (xdoc::p
    "This consists of:
     an optional C type that is present,
     and represents the function's output type,
     when the function is not recursive;
     an optional (loop) statement that is present,
     and is represented by the function,
     when the function is recursive;
     a list of variables transformed by the function,
     which is non-@('nil') when the function is recursive;
     the name of the locally generated theorem that asserts
     that the function returns a C value;
     the name of the locally generated theorem that asserts
     that the execution of the function is functionally correct;
     and a limit that suffices for @(tsee exec-fun)
     to execute the function completely on any arguments
     (currently 0 for recursive functions; this will be extended).
     The latter is calculated when C code is generated for the function.")
   (xdoc::p
    "Note that exactly one of the first two fields is @('nil').
     This is an invariant."))
  ((type? type-optionp)
   (loop? stmt-optionp)
   (xforming symbol-listp)
   (returns-value-thm symbolp)
   (correct-thm symbolp)
   (limit natp))
  :pred atc-fn-infop)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(std::defalist atc-symbol-fninfo-alistp (x)
  :short "Recognize alists from symbols to function information."
  :long
  (xdoc::topstring
   (xdoc::p
    "These represent symbol tables for functions."))
  :key (symbolp x)
  :val (atc-fn-infop x)
  :true-listp t
  :keyp-of-nil t
  :valp-of-nil nil
  ///

  (defrule atc-fn-infop-of-cdr-of-assoc-equal
    (implies (and (atc-symbol-fninfo-alistp x)
                  (assoc-equal k x))
             (atc-fn-infop (cdr (assoc-equal k x)))))

  (defruled symbol-listp-of-strip-cars-when-atc-symbol-fninfo-alistp
    (implies (atc-symbol-fninfo-alistp prec-fns)
             (symbol-listp (strip-cars prec-fns)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-symbol-fninfo-alist-to-returns-value-thms
  ((prec-fns atc-symbol-fninfo-alistp))
  :returns (thms symbol-listp :hyp :guard)
  :short "Project all the returns-value theorems
          out of a function information alist."
  :long
  (xdoc::topstring
   (xdoc::p
    "The proof of each of these theorems for a function @('fn')
     makes use of the same theorems for
     the preceding functions in @('prec-fns').
     This function serves to collect those theorem names from the alist.")
   (xdoc::p
    "The alist has no duplicate keys.
     So this function is correct."))
  (cond ((endp prec-fns) nil)
        (t (cons (atc-fn-info->returns-value-thm (cdr (car prec-fns)))
                 (atc-symbol-fninfo-alist-to-returns-value-thms
                  (cdr prec-fns))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-symbol-fninfo-alist-to-correct-thms
  ((prec-fns atc-symbol-fninfo-alistp))
  :returns (thms symbol-listp :hyp :guard)
  :short "Project all the execution correctness theorems
          out of a function information alist."
  :long
  (xdoc::topstring
   (xdoc::p
    "The proof of each of these theorems for a function @('fn')
     makes use of the same theorems for
     the preceding functions in @('prec-fns').
     This function serves to collect those theorem names from the alist.")
   (xdoc::p
    "The alist has no duplicate keys.
     So this function is correct."))
  (cond ((endp prec-fns) nil)
        (t (cons (atc-fn-info->correct-thm (cdr (car prec-fns)))
                 (atc-symbol-fninfo-alist-to-correct-thms
                  (cdr prec-fns))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-check-symbol-2part ((sym symbolp))
  :returns (mv (yes/no booleanp)
               (part1 symbolp)
               (part2 symbolp))
  :short "Check if a symbol consists of two parts separated by dash."
  :long
  (xdoc::topstring
   (xdoc::p
    "If the symbol has the form @('<part1>-<part2>'),
     with @('<part1>') and @('<part2>') non-empty and without dashes,
     we return an indication of success and the two parts.
     Otherwise, we return an indication of failure and @('nil') as the parts.
     The two returned symbols, when the function is successful,
     are interned in the same package as the input symbol."))
  (b* ((parts (str::strtok! (symbol-name sym) (list #\-)))
       ((unless (= (len parts) 2)) (mv nil nil nil))
       (part1 (intern-in-package-of-symbol (first parts) sym))
       (part2 (intern-in-package-of-symbol (second parts) sym)))
    (mv t part1 part2))
  :prepwork
  ((local (include-book "std/typed-lists/string-listp" :dir :system))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-check-symbol-3part ((sym symbolp))
  :returns (mv (yes/no booleanp)
               (part1 symbolp)
               (part2 symbolp)
               (part3 symbolp))
  :short "Check if a symbol consists of three parts separated by dash."
  :long
  (xdoc::topstring
   (xdoc::p
    "If the symbol has the form @('<part1>-<part2>-<part3>'),
     with @('<part1>') and @('<part2>') and @('<part3>')
     non-empty and without dashes,
     we return an indication of success and the three parts.
     Otherwise, we return an indication of failure and @('nil') as the parts.
     The three returned symbols, when the function is successful,
     are interned in the same package as the input symbol."))
  (b* ((parts (str::strtok! (symbol-name sym) (list #\-)))
       ((unless (= (len parts) 3)) (mv nil nil nil nil))
       (part1 (intern-in-package-of-symbol (first parts) sym))
       (part2 (intern-in-package-of-symbol (second parts) sym))
       (part3 (intern-in-package-of-symbol (third parts) sym)))
    (mv t part1 part2 part3))
  :prepwork
  ((local (include-book "std/typed-lists/string-listp" :dir :system))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-integer-fixtype-to-type ((fixtype symbolp))
  :returns (type type-optionp)
  :short "Integer type corresponding to a fixtype name, if any."
  (case fixtype
    (schar (type-schar))
    (uchar (type-uchar))
    (sshort (type-sshort))
    (ushort (type-ushort))
    (sint (type-sint))
    (uint (type-uint))
    (slong (type-slong))
    (ulong (type-ulong))
    (sllong (type-sllong))
    (ullong (type-ullong))
    (t nil))
  ///
  (defret type-arithmeticp-of-atc-integer-fixtype-to-type
    (implies type
             (type-arithmeticp type))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-check-iconst ((term pseudo-termp))
  :returns (mv (yes/no booleanp)
               (const iconstp)
               (type typep))
  :short "Check if a term represents an integer constant."
  :long
  (xdoc::topstring
   (xdoc::p
    "If the term is a call of a function @('<type>-<base>-const')
     on a quoted integer constant,
     we return the C integer constant represented by this call.
     We also return the C integer type of the constant."))
  (case-match term
    ((fn ('quote val))
     (b* (((when (not (symbolp fn)))
           (mv nil (irr-iconst) (irr-type)))
          ((mv okp type base const) (atc-check-symbol-3part fn))
          ((unless (and okp
                        (member-eq type '(sint uint slong ulong sllong ullong))
                        (member-eq base '(dec oct hex))
                        (eq const 'const)
                        (natp val)))
           (mv nil (irr-iconst) (irr-type)))
          (base (case base
                  (dec (iconst-base-dec))
                  (oct (iconst-base-oct))
                  (hex (iconst-base-hex))
                  (t (impossible))))
          ((mv const type)
           (case type
             (sint (mv (make-iconst :value val
                                    :base base
                                    :unsignedp nil
                                    :type (iconst-tysuffix-none))
                       (type-sint)))
             (uint (mv (make-iconst :value val
                                    :base base
                                    :unsignedp t
                                    :type (iconst-tysuffix-none))
                       (type-uint)))
             (slong (mv (make-iconst :value val
                                     :base base
                                     :unsignedp nil
                                     :type (iconst-tysuffix-long))
                        (type-slong)))
             (ulong (mv (make-iconst :value val
                                     :base base
                                     :unsignedp t
                                     :type (iconst-tysuffix-long))
                        (type-ulong)))
             (sllong (mv (make-iconst :value val
                                      :base base
                                      :unsignedp nil
                                      :type (iconst-tysuffix-llong))
                         (type-sllong)))
             (ullong (mv (make-iconst :value val
                                      :base base
                                      :unsignedp t
                                      :type (iconst-tysuffix-llong))
                         (type-ullong)))
             (t (mv (impossible) (impossible))))))
       (mv t const type)))
    (& (mv nil (irr-iconst) (irr-type)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-check-unop ((term pseudo-termp))
  :returns (mv (yes/no booleanp)
               (op unopp)
               (arg pseudo-termp :hyp :guard)
               (type typep))
  :short "Check if a term may represent a unary expression."
  :long
  (xdoc::topstring
   (xdoc::p
    "If the term is a call of one of the ACL2 functions
     that represent C unary operators,
     we return the operator and the argument term.")
   (xdoc::p
    "We also return the result C type of the operator.")
   (xdoc::p
    "If the term does not have that form, we return an indication of failure.
     The term may represent some other kind of C expression."))
  (case-match term
    ((fn arg)
     (b* (((when (not (symbolp fn))) (mv nil (irr-unop) nil (irr-type)))
          ((mv okp op fixtype) (atc-check-symbol-2part fn))
          ((when (not okp)) (mv nil (irr-unop) nil (irr-type)))
          (type (atc-integer-fixtype-to-type fixtype))
          ((when (not type)) (mv nil (irr-unop) nil (irr-type))))
       (case op
         (plus (mv t (unop-plus) arg (promote-type type)))
         (minus (mv t (unop-minus) arg (promote-type type)))
         (bitnot (mv t (unop-bitnot) arg (promote-type type)))
         (lognot (mv t (unop-lognot) arg (type-sint)))
         (t (mv nil (irr-unop) nil (irr-type))))))
    (& (mv nil (irr-unop) nil (irr-type))))
  ///

  (defret acl2-count-of-atc-check-unop-arg
    (implies yes/no
             (< (acl2-count arg)
                (acl2-count term)))
    :rule-classes :linear))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-check-binop ((term pseudo-termp))
  :returns (mv (yes/no booleanp)
               (op binopp)
               (arg1 pseudo-termp :hyp :guard)
               (arg2 pseudo-termp :hyp :guard)
               (type typep))
  :short "Check if a term may represent a strict pure binary expression."
  :long
  (xdoc::topstring
   (xdoc::p
    "If the term is a call of one of the ACL2 functions
     that represent C strict pure binary operators,
     we return the operator and the argument terms.")
   (xdoc::p
    "We also return the result C type of the operator.")
   (xdoc::p
    "If the term does not have that form, we return an indication of failure.
     The term may represent some other kind of C expression."))
  (case-match term
    ((fn arg1 arg2)
     (b* (((when (not (symbolp fn))) (mv nil (irr-binop) nil nil (irr-type)))
          ((mv okp op fixtype1 fixtype2) (atc-check-symbol-3part fn))
          ((when (not okp)) (mv nil (irr-binop) nil nil (irr-type)))
          (type1 (atc-integer-fixtype-to-type fixtype1))
          ((when (not type1)) (mv nil (irr-binop) nil nil (irr-type)))
          (type2 (atc-integer-fixtype-to-type fixtype2))
          ((when (not type2)) (mv nil (irr-binop) nil nil (irr-type))))
       (case op
         (add (mv t (binop-add) arg1 arg2 (uaconvert-types type1 type2)))
         (sub (mv t (binop-sub) arg1 arg2 (uaconvert-types type1 type2)))
         (mul (mv t (binop-mul) arg1 arg2 (uaconvert-types type1 type2)))
         (div (mv t (binop-div) arg1 arg2 (uaconvert-types type1 type2)))
         (rem (mv t (binop-rem) arg1 arg2 (uaconvert-types type1 type2)))
         (shl (mv t (binop-shl) arg1 arg2 (promote-type type1)))
         (shr (mv t (binop-shr) arg1 arg2 (promote-type type1)))
         (lt (mv t (binop-lt) arg1 arg2 (type-sint)))
         (le (mv t (binop-le) arg1 arg2 (type-sint)))
         (gt (mv t (binop-gt) arg1 arg2 (type-sint)))
         (ge (mv t (binop-ge) arg1 arg2 (type-sint)))
         (eq (mv t (binop-eq) arg1 arg2 (type-sint)))
         (ne (mv t (binop-ne) arg1 arg2 (type-sint)))
         (bitand (mv t (binop-bitand) arg1 arg2 (uaconvert-types type1 type2)))
         (bitxor (mv t (binop-bitxor) arg1 arg2 (uaconvert-types type1 type2)))
         (bitior (mv t (binop-bitior) arg1 arg2 (uaconvert-types type1 type2)))
         (t (mv nil (irr-binop) nil nil (irr-type))))))
    (& (mv nil (irr-binop) nil nil (irr-type))))
  ///

  (defret acl2-count-of-atc-check-binop-arg1
    (implies yes/no
             (< (acl2-count arg1)
                (acl2-count term)))
    :rule-classes :linear)

  (defret acl2-count-of-atc-check-binop-arg2
    (implies yes/no
             (< (acl2-count arg2)
                (acl2-count term)))
    :rule-classes :linear))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-check-conv ((term pseudo-termp))
  :returns (mv (yes/no booleanp)
               (tyname tynamep)
               (arg pseudo-termp :hyp :guard))
  :short "Check if a term may represent a conversion."
  :long
  (xdoc::topstring
   (xdoc::p
    "If the term is a call of one of the ACL2 functions
     that represents C integer conversions,
     we return the C type name for the destination type
     and the argument term.")
   (xdoc::p
    "The C type of the conversion can be determined from the returned type name,
     so there is no need to also return a C type here.")
   (xdoc::p
    "If the term does not have the form explained above,
     we return an indication of failure."))
  (case-match term
    ((fn arg)
     (b* (((when (not (symbolp fn))) (mv nil (irr-tyname) nil))
          ((mv okp dtype from stype) (atc-check-symbol-3part fn))
          ((when (not okp)) (mv nil (irr-tyname) nil))
          ((unless (eq from 'from)) (mv nil (irr-tyname) nil))
          ((unless (atc-integer-fixtype-to-type stype))
           (mv nil (irr-tyname) nil))
          (type (atc-integer-fixtype-to-type dtype))
          ((when (not type)) (mv nil (irr-tyname) nil))
          (tyname (case (type-kind type)
                    (:schar (make-tyname :specs (tyspecseq-schar)
                                         :pointerp nil))
                    (:uchar (make-tyname :specs (tyspecseq-uchar)
                                         :pointerp nil))
                    (:sshort (make-tyname :specs (tyspecseq-sshort)
                                          :pointerp nil))
                    (:ushort (make-tyname :specs (tyspecseq-ushort)
                                          :pointerp nil))
                    (:sint (make-tyname :specs (tyspecseq-sint)
                                        :pointerp nil))
                    (:uint (make-tyname :specs (tyspecseq-uint)
                                        :pointerp nil))
                    (:slong (make-tyname :specs (tyspecseq-slong)
                                         :pointerp nil))
                    (:ulong (make-tyname :specs (tyspecseq-ulong)
                                         :pointerp nil))
                    (:sllong (make-tyname :specs (tyspecseq-sllong)
                                          :pointerp nil))
                    (:ullong (make-tyname :specs (tyspecseq-ullong)
                                          :pointerp nil))
                    (t (prog2$ (raise "Internal error: type ~x0" type)
                               (irr-tyname))))))
       (mv t tyname arg)))
    (& (mv nil (irr-tyname) nil)))
  ///

  (defret acl2-count-of-atc-check-conv-arg
    (implies yes/no
             (< (acl2-count arg)
                (acl2-count term)))
    :rule-classes :linear))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-check-array-read ((term pseudo-termp))
  :returns (mv (yes/no booleanp)
               (arr pseudo-termp :hyp :guard)
               (sub pseudo-termp :hyp :guard)
               (type typep))
  :short "Check if a term may represent an array read."
  :long
  (xdoc::topstring
   (xdoc::p
    "If the term is a call of one of the ACL2 functions
     that represent C array read operations
     (currently just @(tsee uchar-array-read-sint)),
     we return the two argument terms.")
   (xdoc::p
    "We also return the result C type of the operator.")
   (xdoc::p
    "If the term does not have the form explained above,
     we return an indication of failure."))
  (case-match term
    ((fn arr sub)
     (case fn
       (uchar-array-read-sint (mv t arr sub (type-uchar)))
       (t (mv nil nil nil (irr-type)))))
    (& (mv nil nil nil (irr-type))))
  ///

  (defret acl2-count-of-atc-check-array-read-arr
    (implies yes/no
             (< (acl2-count arr)
                (acl2-count term)))
    :rule-classes :linear)

  (defret acl2-count-of-atc-check-array-read-sub
    (implies yes/no
             (< (acl2-count sub)
                (acl2-count term)))
    :rule-classes :linear))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-check-callable-fn ((term pseudo-termp)
                               (prec-fns atc-symbol-fninfo-alistp))
  :returns (mv (yes/no booleanp)
               (fn symbolp :hyp (atc-symbol-fninfo-alistp prec-fns))
               (args pseudo-term-listp :hyp (pseudo-termp term))
               (type typep :hyp (atc-symbol-fninfo-alistp prec-fns))
               (limit natp :rule-classes :type-prescription))
  :short "Check if a term may represent a call to a callable target function."
  :long
  (xdoc::topstring
   (xdoc::p
    "If the check is successful, we return
     the called function along with the arguments.
     We also return the result type of the function
     and the limit sufficient to execute the function.")
   (xdoc::p
    "This is used on C-valued terms,
     so the called function must be non-recursive,
     i.e. it must represent a C function, not a C loop."))
  (case-match term
    ((fn . args) (b* (((unless (symbolp fn))
                       (mv nil nil nil (irr-type) 0))
                      ((when (eq fn 'quote))
                       (mv nil nil nil (irr-type) 0))
                      (fn+info (assoc-eq fn prec-fns))
                      ((unless (consp fn+info))
                       (mv nil nil nil (irr-type) 0))
                      (info (cdr fn+info))
                      (type (atc-fn-info->type? info))
                      ((when (null type))
                       (mv nil nil nil (irr-type) 0))
                      (limit (lnfix (atc-fn-info->limit info))))
                   (mv t fn args type limit)))
    (& (mv nil nil nil (irr-type) 0)))
  ///

  (defret acl2-count-of-atc-check-callable-fn-args
    (implies yes/no
             (< (acl2-count args)
                (acl2-count term)))
    :rule-classes :linear))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-check-loop-fn ((term pseudo-termp)
                           (prec-fns atc-symbol-fninfo-alistp))
  :returns (mv (yes/no booleanp)
               (fn symbolp)
               (args pseudo-term-listp :hyp (pseudo-termp term))
               (xforming symbol-listp :hyp (atc-symbol-fninfo-alistp prec-fns))
               (loop stmtp))
  :short "Check if a term may represent a call of a loop function."
  :long
  (xdoc::topstring
   (xdoc::p
    "We check whether
     the function has been previously processed
     (i.e. it is in the @('prec-fns') alist)
     and it is recursive (indicated by
     the presence of the loop statement in its information).
     If the checks succeed, we return
     the function symbol,
     its arguments,
     the variables transformed by the loop,
     and the associated loop statement."))
  (case-match term
    ((fn . args) (b* (((unless (symbolp fn)) (mv nil nil nil nil (irr-stmt)))
                      ((when (eq fn 'quote)) (mv nil nil nil nil (irr-stmt)))
                      (fn+info (assoc-eq fn prec-fns))
                      ((unless (consp fn+info)) (mv nil nil nil nil (irr-stmt)))
                      (info (cdr fn+info))
                      (loop (atc-fn-info->loop? info))
                      ((unless (stmtp loop)) (mv nil nil nil nil (irr-stmt)))
                      (xforming (atc-fn-info->xforming info)))
                   (mv t fn args xforming loop)))
    (& (mv nil nil nil nil (irr-stmt)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-check-let ((term pseudo-termp))
  :returns (mv (yes/no booleanp)
               (var symbolp :hyp :guard)
               (val pseudo-termp :hyp :guard)
               (body pseudo-termp :hyp :guard)
               (wrapper? symbolp :hyp :guard))
  :short "Check if a term may represent
          a local variable declaration
          or a local variable assignment
          or a single-variable transformation,
          followed by more code."
  :long
  (xdoc::topstring
   (xdoc::p
    "Here we recognize and decompose statement terms that are @(tsee let)s.
     In translated form, @('(let ((var val)) body)')
     is @('((lambda (var) body) val)').
     However, if @('rest') has other free variables in addition to @('var'),
     those appear as both formal parameters and actual arguments, e.g.
     @('((lambda (var x y) rest<var,x,y>) val x y)'):
     this is because ACL2 translated terms have all closed lambda expressions,
     so ACL2 adds formal parameters and actual arguments to make that happen.
     Here, we must remove them in order to get the ``true'' @(tsee let).
     This is done via a system utility.")
   (xdoc::p
    "We also return the @(tsee declar) or @(tsee assign) wrapper,
     if present; @('nil') if absent."))
  (b* (((mv okp formals body actuals) (acl2::check-lambda-call term))
       ((when (not okp)) (mv nil nil nil nil nil))
       ((mv formals actuals) (acl2::remove-equal-formals-actuals formals
                                                                 actuals))
       ((unless (and (= (len formals) 1)
                     (= (len actuals) 1)))
        (mv nil nil nil nil nil))
       (var (car formals))
       (possibly-wrapper-val (car actuals))
       ((mv wrapper? val)
        (case-match possibly-wrapper-val
          (('declar val) (mv 'declar val))
          (('assign val) (mv 'assign val))
          (& (mv nil possibly-wrapper-val)))))
    (mv t var val body wrapper?))
  :guard-hints (("Goal"
                 :in-theory
                 (enable acl2::len-of-check-lambda-calls.args-is-formals)))
  :prepwork

  ((local (include-book "std/typed-lists/pseudo-term-listp" :dir :system))

   (defrulel pseudo-termp-of-atc-check-let.val-lemma
     (implies (and (pseudo-term-listp x)
                   (equal (len x) 1)
                   (not (equal (caar x) 'quote)))
              (pseudo-termp (cadr (car x))))))

  ///

  (defret acl2-count-of-atc-check-let-val
    (implies yes/no
             (< (acl2-count val)
                (acl2-count term)))
    :rule-classes :linear)

  (defret acl2-count-of-atc-check-let-body
    (implies yes/no
             (< (acl2-count body)
                (acl2-count term)))
    :rule-classes :linear))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defines atc-gen-expr-pure
  :short "Mutually recursive ACL2 functions to
          generate pure C expressions from ACL2 terms."
  :long
  (xdoc::topstring
   (xdoc::p
    "These are for pure C-valued terms
     and for boolean terms (which are always pure)."))

  (define atc-gen-expr-cval-pure ((term pseudo-termp)
                                  (inscope atc-symbol-type-alist-listp)
                                  (fn symbolp)
                                  (ctx ctxp)
                                  state)
    :returns (mv erp
                 (val (tuple (expr exprp)
                             (type typep)
                             val))
                 state)
    :parents (atc-event-and-code-generation atc-gen-expr-pure)
    :short "Generate a C expression from an ACL2 term
            that must be a pure C-valued term."
    :long
    (xdoc::topstring
     (xdoc::p
      "At the same time,
       we check that the term is a pure C-valued term,
       as described in the user documentation.")
     (xdoc::p
      "We also return the C type of the expression.")
     (xdoc::p
      "An ACL2 variable is translated to a C variable.
       Its type is looked up in the symbol table passed as input.")
     (xdoc::p
      "If the term fits the pattern of an integer constant
       we translate it to a C integer constant.")
     (xdoc::p
      "If the term fits the pattern of a unary or binary operation,
       we translate it to the application of the operator
       to the recursively generated expressions.
       The type is the result type of the operator.")
     (xdoc::p
      "If the term fits the pattern of a conversion,
       we translate it to a cast of
       the recursively generated subexpression.
       The type is the one of the cast.
       (Future versions of ATC will avoid the cast
       when the conversion happens automatically in C.)")
     (xdoc::p
      "If the terms fits the pattern of an array read,
       we translate it to an array subscripting expression
       on the recursively generated expressions.
       The type is the array's element type.")
     (xdoc::p
      "If the term is a call of @(tsee c::sint-from-boolean),
       we call the mutually recursive ACL2 function
       that translates the argument (which must be a boolean term)
       to an expression, which we return.
       The type of this expression is always @('int').")
     (xdoc::p
      "If the term is an @(tsee if) call,
       we call the mutually recursive ACL2 function on the test,
       we call this ACL2 function on the branches,
       and we construct a conditional expression.
       We ensure that the two branches have the same type.")
     (xdoc::p
      "In all other cases, we fail with an error.
       The term is not a pure C-valued term.
       We could extend this code to provide
       more information to the user at some point."))
    (b* (((when (acl2::variablep term))
          (b* ((type (atc-get-var term inscope))
               ((when (not type))
                (raise "Internal error: the variable ~x0 in function ~x1 ~
                        has no associated type." term fn)
                (acl2::value (list (irr-expr) (irr-type)))))
            (acl2::value
             (list (expr-ident (make-ident :name (symbol-name term)))
                   (type-fix type)))))
         ((mv okp const type) (atc-check-iconst term))
         ((when okp)
          (acl2::value
           (list (expr-const (const-int const))
                 type)))
         ((mv okp op arg type) (atc-check-unop term))
         ((when okp)
          (b* (((er (list arg-expr &)) (atc-gen-expr-cval-pure arg
                                                               inscope
                                                               fn
                                                               ctx
                                                               state)))
            (acl2::value (list (make-expr-unary :op op :arg arg-expr)
                               type))))
         ((mv okp op arg1 arg2 type) (atc-check-binop term))
         ((when okp)
          (b* (((er (list arg1-expr &)) (atc-gen-expr-cval-pure arg1
                                                                inscope
                                                                fn
                                                                ctx
                                                                state))
               ((er (list arg2-expr &)) (atc-gen-expr-cval-pure arg2
                                                                inscope
                                                                fn
                                                                ctx
                                                                state)))
            (acl2::value (list (make-expr-binary :op op
                                                 :arg1 arg1-expr
                                                 :arg2 arg2-expr)
                               type))))
         ((mv okp tyname arg) (atc-check-conv term))
         ((when okp)
          (b* (((er (list arg-expr &)) (atc-gen-expr-cval-pure arg
                                                               inscope
                                                               fn
                                                               ctx
                                                               state)))
            (acl2::value (list (make-expr-cast :type tyname
                                               :arg arg-expr)
                               (type-name-to-type tyname)))))
         ((mv okp arr sub type) (atc-check-array-read term))
         ((when okp)
          (b* (((er (list arr-expr &)) (atc-gen-expr-cval-pure arr
                                                               inscope
                                                               fn
                                                               ctx
                                                               state))
               ((er (list sub-expr &)) (atc-gen-expr-cval-pure sub
                                                               inscope
                                                               fn
                                                               ctx
                                                               state)))
            (acl2::value (list (make-expr-arrsub :arr arr-expr
                                                 :sub sub-expr)
                               type)))))
      (case-match term
        (('c::sint-from-boolean arg)
         (b* (((mv erp expr state)
               (atc-gen-expr-bool arg inscope fn ctx state))
              ((when erp) (mv erp (list (irr-expr) (irr-type)) state)))
           (mv nil (list expr (type-sint)) state)))
        (('condexpr ('if test then else))
         (b* (((mv erp test-expr state) (atc-gen-expr-bool test
                                                           inscope
                                                           fn
                                                           ctx
                                                           state))
              ((when erp) (mv erp (list (irr-expr) (irr-type)) state))
              ((er (list then-expr then-type)) (atc-gen-expr-cval-pure
                                                then
                                                inscope
                                                fn
                                                ctx
                                                state))
              ((er (list else-expr else-type)) (atc-gen-expr-cval-pure
                                                else
                                                inscope
                                                fn
                                                ctx
                                                state))
              ((unless (equal then-type else-type))
               (er-soft+ ctx t (list (irr-expr) (irr-type))
                         "When generating C code for the function ~x0, ~
                          two branches ~x1 and ~x2 of a conditional term ~
                          have different types ~x3 and ~x4; ~
                          use conversion operations, if needed, ~
                          to make the branches of the same type."
                         fn then else then-type else-type)))
           (acl2::value
            (list
             (make-expr-cond :test test-expr :then then-expr :else else-expr)
             then-type))))
        (& (er-soft+ ctx t (list (irr-expr) (irr-type))
                     "When generating C code for the function ~x0, ~
                      at a point where ~
                      a C-valued ACL2 term is expected, ~
                      the term ~x1 is encountered instead."
                     fn term)))))

  (define atc-gen-expr-bool ((term pseudo-termp)
                             (inscope atc-symbol-type-alist-listp)
                             (fn symbolp)
                             (ctx ctxp)
                             state)
    :returns (mv erp (expr exprp) state)
    :parents (atc-event-and-code-generation atc-gen-expr-pure)
    :short "Generate a C expression from an ACL2 term
            that must be a boolean term."
    :long
    (xdoc::topstring
     (xdoc::p
      "At the same time, we check that the term is a boolean term,
       as described in the user documentation.")
     (xdoc::p
      "If the term is a call of @(tsee not), @(tsee and), or @(tsee or),
       we recursively translate the arguments,
       which must be a boolean terms,
       and we construct a logical expression
       with the corresponding C operators.")
     (xdoc::p
      "If the term is a call of @('boolean-from-<type>'),
       we call the mutually recursive function
       that translates the argument, which must be a C-valued term,
       to an expression, which we return.")
     (xdoc::p
      "In all other cases, we fail with an error.
       The term is not a C-valued term.
       We could extend this code to provide
       more information to the user at some point."))
    (case-match term
      (('not arg)
       (b* (((er arg-expr) (atc-gen-expr-bool arg
                                              inscope
                                              fn
                                              ctx
                                              state)))
         (acl2::value (make-expr-unary :op (unop-lognot) :arg arg-expr))))
      (('if arg1 arg2 ''nil)
       (b* (((er arg1-expr) (atc-gen-expr-bool arg1
                                               inscope
                                               fn
                                               ctx
                                               state))
            ((er arg2-expr) (atc-gen-expr-bool arg2
                                               inscope
                                               fn
                                               ctx
                                               state)))
         (acl2::value (make-expr-binary :op (binop-logand)
                                        :arg1 arg1-expr
                                        :arg2 arg2-expr))))
      (('if arg1 arg1 arg2)
       (b* (((er arg1-expr) (atc-gen-expr-bool arg1
                                               inscope
                                               fn
                                               ctx
                                               state))
            ((er arg2-expr) (atc-gen-expr-bool arg2
                                               inscope
                                               fn
                                               ctx
                                               state)))
         (acl2::value (make-expr-binary :op (binop-logor)
                                        :arg1 arg1-expr
                                        :arg2 arg2-expr))))
      ((boolean-from-type arg)
       (b* (((when (not (symbolp boolean-from-type)))
             (er-soft+ ctx t (irr-expr)
                       "When generating C code for the function ~x0, ~
                        at a point where ~
                        a boolean ACL2 term is expected, ~
                        the term ~x1 is encountered instead."
                       fn term))
            ((mv okp boolean from type)
             (atc-check-symbol-3part boolean-from-type))
            ((unless (and okp
                          (eq boolean 'boolean)
                          (eq from 'from)
                          (atc-integer-fixtype-to-type type)))
             (er-soft+ ctx t (irr-expr)
                       "When generating C code for the function ~x0, ~
                        at a point where ~
                        a boolean ACL2 term is expected, ~
                        the term ~x1 is encountered instead."
                       fn term))
            ((mv erp (list expr &) state)
             (atc-gen-expr-cval-pure arg inscope fn ctx state)))
         (mv erp expr state)))
      (& (er-soft+ ctx t (irr-expr)
                   "When generating C code for the function ~x0, ~
                    at a point where ~
                    a boolean ACL2 term is expected, ~
                    the term ~x1 is encountered instead."
                   fn term))))

  :prepwork ((set-state-ok t))

  :verify-guards nil ; done below

  ///

  (defret-mutual consp-of-atc-gen-expr-pure
    (defret typeset-of-atc-gen-expr-cval-pure
      (and (consp val)
           (true-listp val))
      :rule-classes :type-prescription
      :fn atc-gen-expr-cval-pure)
    (defret true-of-atc-gen-expr-bool
      t
      :rule-classes nil
      :fn atc-gen-expr-bool))

  (verify-guards atc-gen-expr-cval-pure))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-expr-cval-pure-list ((terms pseudo-term-listp)
                                     (inscope atc-symbol-type-alist-listp)
                                     (fn symbolp)
                                     (ctx ctxp)
                                     state)
  :returns (mv erp (exprs expr-listp) state)
  :short "Generate a list of C expressions from a list of ACL2 terms
          that must be pure C-valued terms."
  :long
  (xdoc::topstring
   (xdoc::p
    "This lifts @(tsee atc-gen-expr-cval-pure) to lists.
     However, we do not return the C types of the expressions."))
  (b* (((when (endp terms)) (acl2::value nil))
       ((mv erp (list expr &) state) (atc-gen-expr-cval-pure (car terms)
                                                             inscope
                                                             fn
                                                             ctx
                                                             state))
       ((when erp) (mv erp nil state))
       ((er exprs) (atc-gen-expr-cval-pure-list (cdr terms)
                                                inscope
                                                fn
                                                ctx
                                                state)))
    (acl2::value (cons expr exprs))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-expr-cval ((term pseudo-termp)
                           (inscope atc-symbol-type-alist-listp)
                           (fn symbolp)
                           (prec-fns atc-symbol-fninfo-alistp)
                           (ctx ctxp)
                           state)
  :returns (mv erp
               (val (tuple (expr exprp)
                           (type typep)
                           (limit natp)
                           val)
                    :hyp (atc-symbol-fninfo-alistp prec-fns))
               state)
  :short "Generate a C expression from an ACL2 term
          that must be a C-valued term."
  :long
  (xdoc::topstring
   (xdoc::p
    "At the same time,
     we check that the term is a C-valued term,
     as described in the user documentation.")
   (xdoc::p
    "We also return the C type of the expression.")
   (xdoc::p
    "We also return a limit that suffices for @(tsee exec-expr-call-or-pure)
     to execute the expression completely.
     This is the limit (associated to the function)
     sufficient to run @(tsee exec-fun),
     plus 1 to get there from @(tsee exec-expr-call-or-pure).")
   (xdoc::p
    "If the term is a call of a function that precedes @('fn')
     in the list of target functions @('fn1'), ..., @('fnp'),
     we translate it to a C function call on the translated arguments.
     The type of the expression is the result type of the function,
     which is looked up in the function alist passed as input.
     A sufficient limit for @(tsee exec-fun) to execute the called function
     is retrieved from the called function's information;
     we add 1 to it, to take into account the decrementing of the limit
     done by @(tsee exec-expr-call-or-pure) when it calls @(tsee exec-fun).")
   (xdoc::p
    "Otherwise, we attempt to translate the term
     as a pure C-valued terms.
     The type is the one returned by that translation.
     As limit we return 1, which suffices for @(tsee exec-expr-call-or-pure)
     to not stop right away due to the limit being 0."))
  (b* (((mv okp called-fn args type limit)
        (atc-check-callable-fn term prec-fns))
       ((when okp)
        (b* (((mv erp arg-exprs state) (atc-gen-expr-cval-pure-list args
                                                                    inscope
                                                                    fn
                                                                    ctx
                                                                    state))
             ((when erp) (mv erp (list (irr-expr) (irr-type) 0) state)))
          (acl2::value (list
                        (make-expr-call :fun (make-ident
                                              :name (symbol-name called-fn))
                                        :args arg-exprs)
                        type
                        (1+ limit))))))
    (b* (((mv erp (list expr type) state)
          (atc-gen-expr-cval-pure term inscope fn ctx state))
         ((when erp) (mv erp (list (irr-expr) (irr-type) 0) state)))
      (acl2::value (list expr type 1))))
  ///
  (more-returns
   (val (and (consp val)
             (true-listp val))
        :name typeset-of-atc-gen-expr-cval
        :rule-classes :type-prescription))
  (defret natp-of-atc-gen-expr-cval.limit
    (natp (caddr val))
    :rule-classes :type-prescription))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-tyspecseq ((type typep))
  :guard (not (type-case type :pointer))
  :returns (tyspecseq tyspecseqp)
  :short "Generate a type specifier sequence for a type."
  :long
  (xdoc::topstring
   (xdoc::p
    "As discussed in @(see atc-types),
     now types and type specifier sequences are isomorphic in our model,
     but they are not in C.
     When generating C code,
     in some cases it is necessary to generate
     type specifier sequences for types.
     This ACL2 function does that."))
  (type-case type
             :char (tyspecseq-char)
             :schar (tyspecseq-schar)
             :sshort (tyspecseq-sshort)
             :sint (tyspecseq-sint)
             :slong (tyspecseq-slong)
             :sllong (tyspecseq-sllong)
             :uchar (tyspecseq-uchar)
             :ushort (tyspecseq-ushort)
             :uint (tyspecseq-uint)
             :ulong (tyspecseq-ulong)
             :ullong (tyspecseq-ullong)
             :pointer (prog2$ (impossible) (irr-tyspecseq)))
  :hooks (:fix)
  ///

  (defrule type-name-to-type-of-tyname-of-atc-gen-tyspecseq
    (implies (not (type-case type :pointer))
             (equal (type-name-to-type (tyname (atc-gen-tyspecseq type) nil))
                    (type-fix type)))
    :enable type-name-to-type))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-var-assignablep ((var symbolp)
                             (innermostp booleanp)
                             (xforming symbol-listp))
  :returns (yes/no booleanp :hyp (booleanp innermostp))
  :short "Check if a variable is assignable,
          based on whether it is in the innermost scope
          and based on the variables being currently transformed."
  :long
  (xdoc::topstring
   (xdoc::p
    "A variable may be destructively assigned to
     if any of the following conditions apply:
     (i) it is declared in the innermost scope,
     because in that case it cannot be accessed after exiting the scope;
     (ii) it is being transformed,
     because in that case its modified value is returned
     and used in subsequent code;
     (iii) no variable is being transformed,
     because in that case there is no subsequent code."))
  (or innermostp
      (and (member-eq var xforming) t)
      (null xforming)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-vars-assignablep ((var-list symbol-listp)
                              (innermostp-list boolean-listp)
                              (xforming symbol-listp))
  :guard (equal (len var-list) (len innermostp-list))
  :returns (yes/no booleanp :hyp (boolean-listp innermostp-list))
  :short "Lift @(tsee atc-var-assignablep) to lists."
  (or (endp var-list)
      (and
       (atc-var-assignablep (car var-list) (car innermostp-list) xforming)
       (atc-vars-assignablep (cdr var-list) (cdr innermostp-list) xforming))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-loop-fn-p ((fn symbolp) (prec-fns atc-symbol-fninfo-alistp))
  :returns (yes/no booleanp)
  :short "Check if an ACL2 function represents a C loop."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is the case when the function is in @('prec-fns'),
     i.e. it has already been translated to C
     as we go through the target functions,
     and the function is recursive,
     which is indicated by the presence of a C (loop) statement
     in the alist of function information."))
  (b* ((fn+info (assoc-eq fn prec-fns))
       ((unless (consp fn+info)) nil)
       (info (cdr fn+info))
       (loop? (atc-fn-info->loop? info)))
    (and loop? t)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-xforming-term-for-let ((term pseudo-termp)
                                   (prec-fns atc-symbol-fninfo-alistp))
  :returns (yes/no booleanp)
  :short "Check if a term @('term') has the basic structure
          required for being a transforming term in
          @('(let ((var term)) body)')
          or @('(mv-let (var1 ... varn) term body)')."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is explained in the user documentation.
     Here we perform a shallow check,
     because we will examine the term in full detail
     when recursively generating C code from it.
     In essence, here we check that the term is either
     (i) an @(tsee if) whose test is not @(tsee mbt) or @(tsee mbt$) or
     (ii) a call of a (preceding) recursive target function."))
  (case-match term
    (('if test . &) (and (case-match test
                           ((fn . &) (not (member-eq fn '(mbt mbt$))))
                           (& t))))
    ((fn . &) (and (symbolp fn)
                   (atc-loop-fn-p fn prec-fns)))
    (& nil)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-stmt ((term pseudo-termp)
                      (inscope atc-symbol-type-alist-listp)
                      (xforming symbol-listp)
                      (fn symbolp)
                      (prec-fns atc-symbol-fninfo-alistp)
                      (ctx ctxp)
                      state)
  :returns (mv erp
               (val (tuple (items block-item-listp)
                           (type type-optionp
                                 :hyp (atc-symbol-fninfo-alistp prec-fns))
                           (limit natp)
                           val))
               state)
  :short "Generate a C statement from an ACL2 term."
  :long
  (xdoc::topstring
   (xdoc::p
    "More precisely, we return a list of block items.
     These can be regarded as forming a compound statement,
     but lists of block items are compositional (via concatenation).")
   (xdoc::p
    "At the same time, we check that the term is a statement term,
     as described in the user documentation.")
   (xdoc::p
    "The @('xforming') parameter of this ACL2 function
     is the list of variables being transformed by this statement.
     This is denoted @('vars') in the user documentation at @(tsee atc).")
   (xdoc::p
    "Besides the generated block items,
     we also return an optional C type.
     This is non-@('nil') when @('xforming') is @('nil'):
     in this case, the list of block items is not just transforming variables
     but it is returning a value,
     and the type is the type of that value.
     When @('xforming') is non-@('nil'), no type is returned,
     because the block items is just transforming variables,
     and it is followed by more block items that eventually return a value.")
   (xdoc::p
    "We also return a limit that suffices for @(tsee exec-block-item-list)
     to execute the returned block items completely.")
   (xdoc::p
    "If the term is a conditional, there are two cases.
     If the test is @(tsee mbt) or @(tsee mbt$),
     we discard test and `else' branch
     and recursively translate the `then' branch;
     the limit is the same as the `then' branch.
     Otherwise, we generate an @('if') statement
     (as a singleton block item list),
     with recursively generated compound statements as branches;
     the test expression is generated from the test term;
     we ensure that the two branches have the same type
     (if @('xforming') is non-@('nil'), those types are both @('nil')).
     When we process the branches,
     we extend the symbol table with a new empty scope for each branch.
     The calculation of the limit result is a bit more complicated in this case:
     we need 1 to go from @(tsee exec-block-item-list)
     to @(tsee exec-block-item),
     another 1 to go from that to @(tsee exec-stmt),
     and another one to go to the @(':ifelse') case there;
     the test is pure and so it needs no addition to the limit;
     since either branch may be taken,
     we return the maximum of the limits for the two branches.
     More precisely, the limit recursively returned for each branch
     pertains to the block item list in the branch,
     but those are put into a compound statement;
     thus, we need to increase the recursively calculated limit
     by 1 to go from @(tsee exec-block-item-list) to @(tsee exec-block-item),
     and another 1 to go from there to @(tsee exec-stmt).")
   (xdoc::p
    "If the term is a @(tsee mv-let),
     we ensure that all its bound variables are in scope.
     We recursively treat the bound term as
     a statement term transforming the bound variables,
     generating block items for it;
     then we continue processing the body of the @(tsee mv-let)
     as a term transforming the variables in @('xforming').
     We just use the sum of the two limits as the overall limit.")
   (xdoc::p
    "If the term is a @(tsee let), there are three cases.
     If the term involves the @(tsee declar) wrapper,
     we ensure that a variable with the same symbol name is not already in scope
     (i.e. in the symbol table)
     and that the name is a portable ASCII identifier;
     we generate a declaration for the variable,
     initialized with the expression obtained
     from the term that the variable is bound to,
     which also determines the type of the variable;
     the type must not be a pointer type (code generation fails if it is).
     Otherwise, if the term involves the @(tsee assign) wrapper,
     we ensure that the variable is assignable,
     which implies that it must be in scope,
     and we also ensure that it has the same type as the one in scope;
     we generate an assignment whose right-hand side is
     obtained from the unwrapped term, which must be a C-valued term.
     Otherwise, if the term involves no wrapper,
     we also ensure that the variable is assignable,
     and that the non-wrapped term represents a conditional of loop in C;
     we generate code that transforms the variable from that term.
     In all cases, we recursively generate the block items for the body
     and we put those just after the preceding code.")
   (xdoc::p
    "In the @(tsee let) case whose translation is explained above,
     the limit is calculated as follows.
     For the case of the transforming term, we add up the two limits;
     this may need refinement.
     For the other cases, we have one block item followed by block items.
     First, we need 1 to go from @(tsee exec-block-item-list)
     to @(tsee exec-block-item).
     Then we take the maximum of the limit for the first block item
     and the limit for the remaining block items.
     The first block item is either a declaration or an assignment.
     If it is a declaration, we need 1 to go from @(tsee exec-block-item)
     to the @(':declon') case and to @(tsee exec-expr-call-or-pure).
     If it is an assignment, we need 1 to go from @(tsee exec-block-item)
     to the @(':stmt') case and to @(tsee exec-stmt),
     another 1 to go from there to the @(':expr') case
     and to @(tsee exec-expr-asg),
     and another 1 to go from there to @(tsee exec-expr-call-or-pure),
     for which we recursively get the limit.
     For the remaining block items, we need to add another 1
     to go from @(tsee exec-block-item-list) to its recursive call.")
   (xdoc::p
    "If the term is a call of a recursive target function on its formals,
     it represents a loop.
     We retrieve the associated loop statement,
     and we return it.
     For now we return 0 as limit;
     proof generation is currently not supported for loops.")
   (xdoc::p
    "If the term is a single variable
     and @('xforming') is a singleton list with that variable,
     then we return nothing.
     This is the end of a list of block items that transforms that variable.
     See the user documentation.")
   (xdoc::p
    "If the term is an @(tsee mv)
     and its arguments are the @('xforming') variables,
     the we return nothing.
     This is the end of a list of block items that transforms that variable.
     See the user documentation.")
   (xdoc::p
    "If the term does not have any of the forms above,
     we treat it as a C-valued term.
     But we must check that @('xforming') is @('nil'),
     because if we are transforming some variables,
     and the two cases described in the previous two paragraphs do not apply,
     then the term is illegal:
     any term transforming one or more variables must end with
     the one variable or with an @(tsee mv) of the two or more variables.
     If @('xforming') is @('nil'),
     we translate the term to an expression
     and we generate a @('return') statement with that expression.
     For the limit, we need 1 to go from @(tsee exec-block-item-list)
     to @(tsee exec-block-item),
     another 1 to go from there to the @(':stmt') case and @(tsee exec-stmt),
     another 1 to go from there to the @(':return') case
     and @(tsee exec-expr-call-or-pure),
     for which we use the recursively calculated limit."))
  (b* (((mv okp test then else) (acl2::check-if-call term))
       ((when okp)
        (b* (((mv mbtp &) (acl2::check-mbt-call test))
             ((when mbtp)
              (atc-gen-stmt then inscope xforming fn prec-fns ctx state))
             ((mv mbt$p &) (acl2::check-mbt$-call test))
             ((when mbt$p)
              (atc-gen-stmt then inscope xforming fn prec-fns ctx state))
             ((mv erp test-expr state) (atc-gen-expr-bool test
                                                          inscope
                                                          fn
                                                          ctx
                                                          state))
             ((when erp) (mv erp (list nil nil 0) state))
             ((er (list then-items then-type then-limit))
              (atc-gen-stmt then
                            (cons nil inscope)
                            xforming
                            fn
                            prec-fns
                            ctx
                            state))
             ((er (list else-items else-type else-limit))
              (atc-gen-stmt else
                            (cons nil inscope)
                            xforming
                            fn
                            prec-fns
                            ctx
                            state))
             ((unless (equal then-type else-type))
              (er-soft+ ctx t (list nil nil 0)
                        "When generating C code for the function ~x0, ~
                         two branches ~x1 and ~x2 of a conditional term ~
                         have different types ~x3 and ~x4; ~
                         use conversion operations, if needed, ~
                         to make the branches of the same type."
                        fn then else then-type else-type))
             (type then-type)
             (limit (+ 1 1 1 (max (+ 1 then-limit)
                                  (+ 1 else-limit)))))
          (acl2::value
           (list
            (list
             (block-item-stmt
              (make-stmt-ifelse :test test-expr
                                :then (make-stmt-compound :items then-items)
                                :else (make-stmt-compound :items else-items))))
            type
            limit))))
       ((mv okp & vars & & val body) (acl2::check-mv-let-call term))
       ((when okp)
        (b* (((unless (> (len vars) 1))
              (mv (raise "Internal error: MV-LET ~x0 has less than 2 variables."
                         term)
                  (list nil nil 0)
                  state))
             ((mv type?-list innermostp-list)
              (atc-get-vars-check-innermost vars inscope))
             ((when (member-eq nil type?-list))
              (er-soft+ ctx t (list nil nil 0)
                        "When generating C code for the function ~x0, ~
                         an attempt is made to modify the variables ~x1, ~
                         not all of which are in scope."))
             ((unless (atc-vars-assignablep vars innermostp-list xforming))
              (er-soft+ ctx t (list nil nil 0)
                        "When generating C code for the function ~x0, ~
                         an attempt is made to modify the variables ~x1, ~
                         not all of which are assignable."
                        fn vars))
             ((unless (atc-xforming-term-for-let val prec-fns))
              (er-soft+ ctx t (list nil nil 0)
                        "When generating C code for the function ~x0, ~
                         an MV-LET has been encountered ~
                         whose transforming term ~x1 ~
                         to which the variables are bound ~
                         does not have the required form."
                        fn val))
             ((er (list xform-items & xform-limit))
              (atc-gen-stmt val inscope vars fn prec-fns ctx state))
             ((er (list body-items body-type body-limit))
              (atc-gen-stmt body inscope xforming fn prec-fns ctx state))
             (items (append xform-items body-items))
             (type body-type)
             (limit (+ xform-limit body-limit)))
          (acl2::value (list items type limit))))
       ((mv okp var val body wrapper?) (atc-check-let term))
       ((when okp)
        (b* (((mv type? innermostp errorp) (atc-check-var var inscope))
             ((when errorp)
              (er-soft+ ctx t (list nil nil 0)
                        "When generating C code for the function ~x0, ~
                         a new variable ~x1 has been encountered ~
                         that has the same symbol name as, ~
                         but different package name from, ~
                         a variable already in scope. ~
                         This is disallowed."
                        fn var))
             ((when (eq wrapper? 'declar))
              (b* (((when type?)
                    (er-soft+ ctx t (list nil nil 0)
                              "The variable ~x0 in the function ~x1 ~
                               is already in scope and cannot be re-declared."
                              var fn))
                   ((unless (atc-ident-stringp (symbol-name var)))
                    (er-soft+ ctx t (list nil nil 0)
                              "The symbol name ~s0 of ~
                               the LET variable ~x1 of the function ~x2 ~
                               must be a portable ASCII C identifier, ~
                               but it is not."
                              (symbol-name var) var fn))
                   ((mv erp (list init-expr init-type init-limit) state)
                    (atc-gen-expr-cval val inscope fn prec-fns ctx state))
                   ((when erp) (mv erp (list nil nil 0) state))
                   ((when (type-case init-type :pointer))
                    (er-soft+ ctx t (list nil nil 0)
                              "The term ~x0 to which the variable ~x1 is bound ~
                               must not have a C pointer type, but it does."
                              val var))
                   (declon (make-declon :type (atc-gen-tyspecseq init-type)
                                        :declor (make-declor
                                                 :ident
                                                  (make-ident
                                                   :name (symbol-name var)))
                                        :init init-expr))
                   (item (block-item-declon declon))
                   (inscope (atc-add-var var init-type inscope))
                   ((er (list body-items body-type body-limit))
                    (atc-gen-stmt body inscope xforming fn prec-fns ctx state))
                   (type body-type)
                   (limit (+ 1 (max (+ 1 init-limit)
                                    (+ 1 body-limit)))))
                (acl2::value (list (cons item body-items)
                                   type
                                   limit))))
             ((unless (atc-var-assignablep var innermostp xforming))
              (er-soft+ ctx t (list nil nil 0)
                        "When generating C code for the function ~x0, ~
                         an attempt is being made ~
                         to modify a non-assignable variable ~x1."
                        fn var))
             ((when (eq wrapper? 'assign))
              (b* ((prev-type type?)
                   ((mv erp (list rhs-expr rhs-type rhs-limit) state)
                    (atc-gen-expr-cval val inscope fn prec-fns ctx state))
                   ((when erp) (mv erp (list nil nil 0) state))
                   ((unless (equal prev-type rhs-type))
                    (er-soft+ ctx t (list nil nil 0)
                              "The type ~x0 of the term ~x1 ~
                               assigned to the LET variable ~x2 ~
                               of the function ~x3 ~
                               differs from the type ~x4 ~
                               of a variable with the same symbol in scope."
                              rhs-type val var fn prev-type))
                   (asg (make-expr-binary
                         :op (binop-asg)
                         :arg1 (expr-ident (make-ident :name (symbol-name var)))
                         :arg2 rhs-expr))
                   (stmt (stmt-expr asg))
                   (item (block-item-stmt stmt))
                   ((er (list body-items body-type body-limit))
                    (atc-gen-stmt body inscope xforming fn prec-fns ctx state))
                   (type body-type)
                   (limit (+ 1 (max (+ 1 1 1 rhs-limit)
                                    body-limit))))
                (acl2::value (list (cons item body-items)
                                   type
                                   limit))))
             ((unless (eq wrapper? nil))
              (prog2$ (raise "Internal error: LET wrapper is ~x0." wrapper?)
                      (acl2::value (list nil nil 0))))
             ((unless (atc-xforming-term-for-let val prec-fns))
              (er-soft+ ctx t (list nil nil 0)
                        "When generating C code for the funcion ~x0, ~
                         we encountered an unwrapped term ~x1 ~
                         to which a LET variable is bound ~
                         that is neither an IF or a loop function call. ~
                         This is disallowed."
                        fn val))
             ((er (list xform-items & xform-limit))
              (atc-gen-stmt val inscope (list var) fn prec-fns ctx state))
             ((er (list body-items body-type body-limit))
              (atc-gen-stmt body inscope xforming fn prec-fns ctx state))
             (items (append xform-items body-items))
             (type body-type)
             (limit (+ xform-limit body-limit)))
          (acl2::value (list items type limit))))
       ((when (and (symbolp term)
                   (equal xforming (list term))))
        (acl2::value (list nil nil 0)))
       ((mv okp terms) (acl2::check-list-call term))
       ((when (and okp
                   (>= (len terms) 2)
                   (equal terms xforming)))
        (acl2::value (list nil nil 0)))
       ((mv okp loop-fn loop-args loop-xforming loop-stmt)
        (atc-check-loop-fn term prec-fns))
       ((when okp)
        (b* ((formals (acl2::formals+ loop-fn (w state)))
             ((unless (equal formals loop-args))
              (er-soft+ ctx t (list nil nil 0)
                        "When generating C code for the function ~x0, ~
                         a call of the recursive function ~x1 ~
                         has been encountered ~
                         that is not on its formals, ~
                         but instead on the arguments ~x2.
                         This is disallowed; see the ATC user documentation."
                        fn loop-fn loop-args))
             ((unless (equal xforming loop-xforming))
              (er-soft+ ctx t (list nil nil 0)
                        "When generating C code for the function ~x0, ~
                         a call of the recursive function ~x1 ~
                         has been encountered
                         that represents a loop transforming ~x2, ~
                         which differs from the variables ~x3 ~
                         being transformed here."
                        fn loop-fn loop-xforming xforming)))
          (acl2::value (list (list (block-item-stmt loop-stmt)) nil 0))))
       ((unless (null xforming))
        (er-soft+ ctx t (list nil nil 0)
                  "A statement term transforming ~x0 in the function ~x1 ~
                   does not end with the transformed variables, ~
                   but with the term ~x2 instead."
                  xforming fn term))
       ((mv erp (list expr type limit) state)
        (atc-gen-expr-cval term inscope fn prec-fns ctx state))
       ((when erp) (mv erp (list nil nil 0) state))
       (limit (+ 1 1 1 limit)))
    (acl2::value (list (list (block-item-stmt (make-stmt-return :value expr)))
                       type
                       limit)))

  :prepwork ((local (in-theory (disable natp)))) ; for speed

  :verify-guards nil ; done below

  ///

  (more-returns
   (val (and (consp val)
             (true-listp val))
        :name cons-true-listp-of-atc-gen-stmt-val
        :rule-classes :type-prescription))
  (defret true-listp-of-atc-gen-stmt.items
    (true-listp (car val))
    :rule-classes :type-prescription)
  (defret natp-of-atc-gen-stmt.limit
    (natp (caddr val))
    :rule-classes :type-prescription)

  (verify-guards atc-gen-stmt))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-loop-body-stmt ((term pseudo-termp)
                                (inscope atc-symbol-type-alist-listp)
                                (xforming symbol-listp)
                                (fn symbolp)
                                (prec-fns atc-symbol-fninfo-alistp)
                                (ctx ctxp)
                                state)
  :returns (mv erp
               (items block-item-listp)
               state)
  :short "Generate a C statement in a loop body from an ACL2 term."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is called on loop body terms (see user documentation).
     This is somewhat similar to @(tsee atc-gen-stmt);
     the code should be refactored to avoid this duplication.
     We only return a list of block items as result (when there is no error).
     We do not return an optional type
     because a loop body term always operates a transformation,
     and never returns a C value (unlike a statement term).
     We do not return a limit
     because for now we do not generate proofs for loops;
     this will change soon."))
  (b* (((mv okp test then else) (acl2::check-if-call term))
       ((when okp)
        (b* (((mv erp test-expr state) (atc-gen-expr-bool test
                                                          inscope
                                                          fn
                                                          ctx
                                                          state))
             ((when erp) (mv erp nil state))
             ((er then-items)
              (atc-gen-loop-body-stmt then
                                      (cons nil inscope)
                                      xforming
                                      fn
                                      prec-fns
                                      ctx
                                      state))
             ((er else-items)
              (atc-gen-loop-body-stmt else
                                      (cons nil inscope)
                                      xforming
                                      fn
                                      prec-fns
                                      ctx
                                      state)))
          (acl2::value
           (list
            (block-item-stmt
             (make-stmt-ifelse
              :test test-expr
              :then (make-stmt-compound :items then-items)
              :else (make-stmt-compound :items else-items)))))))
       ((mv okp & vars & & val body) (acl2::check-mv-let-call term))
       ((when okp)
        (b* (((unless (> (len vars) 1))
              (mv (raise "Internal error: MV-LET ~x0 has less than 2 variables."
                         term)
                  nil
                  state))
             ((mv type?-list innermostp-list)
              (atc-get-vars-check-innermost vars inscope))
             ((when (member-eq nil type?-list))
              (er-soft+ ctx t nil
                        "When generating C code for the function ~x0, ~
                         an attempt is made to modify the variables ~x1, ~
                         not all of which are in scope."))
             ((unless (atc-vars-assignablep vars innermostp-list xforming))
              (er-soft+ ctx t nil
                        "When generating C code for the function ~x0, ~
                         an attempt is made to modify the variables ~x1, ~
                         not all of which are assignable."
                        fn vars))
             ((unless (atc-xforming-term-for-let val prec-fns))
              (er-soft+ ctx t nil
                        "When generating C code for the function ~x0, ~
                         an MV-LET has been encountered ~
                         whose transforming term ~x1 ~
                         to which the variables are bound ~
                         does not have the required form."
                        fn val))
             ((mv erp (list xform-items & &) state)
              (atc-gen-stmt val inscope vars fn prec-fns ctx state))
             ((when erp) (mv erp nil state))
             ((er body-items)
              (atc-gen-loop-body-stmt body
                                      inscope
                                      xforming
                                      fn
                                      prec-fns
                                      ctx
                                      state))
             (items (append xform-items body-items)))
          (acl2::value items)))
       ((mv okp var val body wrapper?) (atc-check-let term))
       ((when okp)
        (b* (((mv type? innermostp errorp) (atc-check-var var inscope))
             ((when errorp)
              (er-soft+ ctx t nil
                        "When generating C code for the function ~x0, ~
                         a new variable ~x1 has been encountered ~
                         that has the same symbol name as, ~
                         but different package name from, ~
                         a variable already in scope. ~
                         This is disallowed."
                        fn var))
             ((when (eq wrapper? 'declar))
              (b* (((when type?)
                    (er-soft+ ctx t nil
                              "The variable ~x0 in the function ~x1 ~
                               is already in scope and cannot be re-declared."
                              var fn))
                   ((unless (atc-ident-stringp (symbol-name var)))
                    (er-soft+ ctx t nil
                              "The symbol name ~s0 of ~
                               the LET variable ~x1 of the function ~x2 ~
                               must be a portable ASCII C identifier, ~
                               but it is not."
                              (symbol-name var) var fn))
                   ((mv erp (list init-expr init-type &) state)
                    (atc-gen-expr-cval val inscope fn prec-fns ctx state))
                   ((when erp) (mv erp nil state))
                   ((when (type-case init-type :pointer))
                    (er-soft+ ctx t nil
                              "The term ~x0 to which the variable ~x1 is bound ~
                               must not have a C pointer type, but it does."
                              val var))
                   (declon (make-declon :type (atc-gen-tyspecseq init-type)
                                        :declor (make-declor
                                                 :ident
                                                  (make-ident
                                                   :name (symbol-name var)))
                                        :init init-expr))
                   (item (block-item-declon declon))
                   (inscope (atc-add-var var init-type inscope))
                   ((er body-items)
                    (atc-gen-loop-body-stmt body
                                            inscope
                                            xforming
                                            fn
                                            prec-fns
                                            ctx
                                            state)))
                (acl2::value (cons item body-items))))
             ((unless (atc-var-assignablep var innermostp xforming))
              (er-soft+ ctx t nil
                        "When generating C code for the function ~x0, ~
                         an attempt is being made ~
                         to modify a non-assignable variable ~x1."
                        fn var))
             ((when (eq wrapper? 'assign))
              (b* ((prev-type type?)
                   ((mv erp (list rhs-expr rhs-type &) state)
                    (atc-gen-expr-cval val inscope fn prec-fns ctx state))
                   ((when erp) (mv erp nil state))
                   ((unless (equal prev-type rhs-type))
                    (er-soft+ ctx t nil
                              "The type ~x0 of the term ~x1 ~
                               assigned to the LET variable ~x2 ~
                               of the function ~x3 ~
                               differs from the type ~x4 ~
                               of a variable with the same symbol in scope."
                              rhs-type val var fn prev-type))
                   (asg (make-expr-binary
                         :op (binop-asg)
                         :arg1 (expr-ident (make-ident :name (symbol-name var)))
                         :arg2 rhs-expr))
                   (stmt (stmt-expr asg))
                   (item (block-item-stmt stmt))
                   ((er body-items)
                    (atc-gen-loop-body-stmt body
                                            inscope
                                            xforming
                                            fn
                                            prec-fns
                                            ctx
                                            state)))
                (acl2::value (cons item body-items))))
             ((unless (eq wrapper? nil))
              (prog2$ (raise "Internal error: LET wrapper is ~x0." wrapper?)
                      (acl2::value nil)))
             ((unless (atc-xforming-term-for-let val prec-fns))
              (er-soft+ ctx t nil
                        "When generating C code for the funcion ~x0, ~
                         we encountered an unwrapped term ~x1 ~
                         to which a LET variable is bound ~
                         that is neither an IF or a loop function call. ~
                         This is disallowed."
                        fn val))
             ((mv erp (list xform-items & &) state)
              (atc-gen-stmt val inscope (list var) fn prec-fns ctx state))
             ((when erp) (mv erp nil state))
             ((er body-items)
              (atc-gen-loop-body-stmt body
                                      inscope
                                      xforming
                                      fn
                                      prec-fns
                                      ctx
                                      state))
             (items (append xform-items body-items)))
          (acl2::value items))))
    (case-match term
      ((fn1 . args)
       (b* (((unless (eq fn1 fn))
             (er-soft+ ctx t nil
                       "When generating C code for the recursive function ~x0, ~
                        a call of a different function ~x1 ~
                        has been encountered where it should not occur."
                       fn fn1))
            (formals (acl2::formals+ fn (w state)))
            ((unless (equal args  formals))
             (er-soft+ ctx t nil
                       "When generating C code for the recursive function ~x0, ~
                        a recursive call of ~x0 has been encountered ~
                        that is on the arguments ~x1 ~
                        instead of its formal parameters ~x2."
                       fn args formals)))
         (acl2::value nil)))
      (& (er-soft+ ctx t nil
                   "When generating C code for the recursive function ~x0, ~
                    a term ~x1 has been encountered ~
                    where a loop body term was expected ~
                    (see user documentation)."
                   fn term))))

  :verify-guards nil ; done below

  ///

  (verify-guards atc-gen-loop-body-stmt))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-loop-stmt ((term pseudo-termp)
                           (inscope atc-symbol-type-alist-listp)
                           (fn symbolp)
                           (prec-fns atc-symbol-fninfo-alistp)
                           (ctx ctxp)
                           state)
  :returns (mv erp
               (val (tuple (stmt stmtp)
                           (xforming symbol-listp)
                           val))
               state)
  :short "Generate a C loop statement from an ACL2 term."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is called on loop terms (see user documentation).")
   (xdoc::p
    "The term must be an @(tsee if).
     If the test is an @(tsee mbt) or @(tsee mbt$),
     test and `else' branch are ignored,
     while the `then' branch is recursively processed.
     Otherwise, the test must be a boolean term
     from which we generate the loop test;
     the `then' branch must be a loop body term,
     from which we generate the loop body;
     and the `else' branch must be either a single variable
     or an @(tsee mv) call on variables,
     which must be a subset of the function's formals,
     and from those variables we determine
     the variables transformed by the loop,
     which we return along with the loop statement.")
   (xdoc::p
    "Note that we push a new scope before processing the loop body.
     This is because the loop body is a block, which opens a new scope in C."))
  (b* (((mv okp test then else) (acl2::check-if-call term))
       ((unless okp)
        (er-soft+ ctx t (list (irr-stmt) nil)
                  "When generating C loop code for the recursive function ~x0, ~
                   a term ~x1 that is not an IF has been encountered."
                  fn term))
       ((mv mbtp &) (acl2::check-mbt-call test))
       ((when mbtp)
        (atc-gen-loop-stmt then inscope fn prec-fns ctx state))
       ((mv mbt$p &) (acl2::check-mbt$-call test))
       ((when mbt$p)
        (atc-gen-loop-stmt then inscope fn prec-fns ctx state))
       ((mv erp test-expr state) (atc-gen-expr-bool test
                                                    inscope
                                                    fn
                                                    ctx
                                                    state))
       ((when erp) (mv erp (list (irr-stmt) nil) state))
       (wrld (w state))
       ((unless (plist-worldp wrld))
        (prog2$ (raise "Internal error: world does not satisfy PLIST-WORLDP.")
                (acl2::value (list (irr-stmt) nil))))
       (formals (acl2::formals+ fn wrld))
       ((mv okp xforming)
        (b* (((when (member-equal else formals)) (mv t (list else)))
             ((mv okp terms) (acl2::check-list-call else))
             ((when (and okp
                         (subsetp-eq terms formals)))
              (mv t terms)))
          (mv nil nil)))
       ((unless okp)
        (er-soft+ ctx t (list (irr-stmt) nil)
                  "The non-recursive branch ~x0 of the function ~x1 ~
                   does not have the required form. ~
                   See the user documentation."
                  else fn))
       ((mv erp body-items state) (atc-gen-loop-body-stmt then
                                                          (cons nil inscope)
                                                          xforming
                                                          fn
                                                          prec-fns
                                                          ctx
                                                          state))
       ((when erp) (mv erp (list (irr-stmt) nil) state))
       (body-stmt (make-stmt-compound :items body-items))
       (stmt (make-stmt-while :test test-expr :body body-stmt))
       ((unless (symbol-listp xforming))
        (prog2$ (raise "Internal error: ~x0 is not a list of symbols.")
                (acl2::value (list (irr-stmt) nil)))))
    (acl2::value (list stmt xforming)))
  :prepwork
  ((local (include-book "std/typed-lists/symbol-listp" :dir :system)))

  ///

  (more-returns
   (val (and (consp val)
             (true-listp val))
        :name cons-true-listp-of-atc-gen-loop-stmt-val
        :rule-classes :type-prescription)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-find-param-type ((formal symbolp)
                             (fn symbolp)
                             (guard-conjuncts pseudo-term-listp)
                             (guard pseudo-termp)
                             (ctx ctxp)
                             state)
  :returns (mv erp (type typep) state)
  :short "Find the C type of a function's parameter from the guard."
  :long
  (xdoc::topstring
   (xdoc::p
    "We look for a term of the form @('(<type> <formal>)')
     among the conjuncts of the function's guard,
     where @('<type>') is a predicate corresponding to a C type
     and @('<formal>') is the formal argument in question.
     For now we only accept certain types,
     but this will be extended to more C types in the future."))
  (b* (((when (endp guard-conjuncts))
        (er-soft+ ctx t (irr-type)
                  "The guard ~x0 of the ~x1 function does not have ~
                   a recognizable conjunct that requires ~
                   the formal parameter ~x2 to be a C value ~
                   of some C type."
                  guard fn formal))
       (conjunct (car guard-conjuncts))
       ((unless (and (acl2::nvariablep conjunct)
                     (not (acl2::fquotep conjunct))
                     (not (acl2::flambda-applicationp conjunct))))
        (atc-find-param-type formal fn (cdr guard-conjuncts) guard ctx state))
       (type-fn (acl2::ffn-symb conjunct))
       (type (case type-fn
               (scharp (type-schar))
               (ucharp (type-uchar))
               (sshortp (type-sshort))
               (ushortp (type-ushort))
               (sintp (type-sint))
               (uintp (type-uint))
               (slongp (type-slong))
               (ulongp (type-ulong))
               (sllongp (type-sllong))
               (ullongp (type-ullong))
               (uchar-arrayp (type-pointer (type-uchar)))
               (t nil)))
       ((when (not type))
        (atc-find-param-type formal fn (cdr guard-conjuncts) guard ctx state))
       (arg (acl2::fargn conjunct 1))
       ((unless (eq formal arg))
        (atc-find-param-type formal fn (cdr guard-conjuncts) guard ctx state)))
    (acl2::value type))
  :guard-hints (("Goal" :in-theory (disable acl2::member-of-cons)))) ; for speed

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-param-declon ((formal symbolp)
                              (fn symbolp)
                              (guard-conjuncts pseudo-term-listp)
                              (guard pseudo-termp)
                              (ctx ctxp)
                              state)
  :returns (mv erp
               (val (tuple (param param-declonp)
                           (type typep)
                           (pointerp booleanp)
                           val))
               state)
  :short "Generate a C parameter declaration from an ACL2 formal parameter."
  :long
  (xdoc::topstring
   (xdoc::p
    "Besides checking that the name of the parameter is adequate,
     we also (try and) retrieve its C type from the guard.")
   (xdoc::p
    "If the type is a pointer type,
     we put the pointer indication into the declarator.
     Only pointers to non-pointer types are allowed
     (i.e. not pointers to pointers),
     so we stop with an internal error if we encounter a pointer to pointer.")
   (xdoc::p
    "If the type is a pointer type, we also return a flag indicating that.
     This is used, in @(tsee atc-gen-param-declon-list),
     to collect the function parameters that are pointers,
     because they get a special treatment
     in the formulation of the generated correctness theorems."))
  (b* ((name (symbol-name formal))
       ((unless (atc-ident-stringp name))
        (er-soft+ ctx t (list (irr-param-declon) (irr-type) nil)
                  "The symbol name ~s0 of ~
                   the formal parameter ~x1 of the function ~x2 ~
                   must be a portable ASCII C identifier, but it is not."
                  name formal fn))
       ((mv erp type state)
        (atc-find-param-type formal fn guard-conjuncts guard ctx state))
       ((when erp) (mv erp (list (irr-param-declon) (irr-type) nil) state))
       ((mv pointerp ref-type)
        (if (type-case type :pointer)
            (mv t (type-pointer->referenced type))
          (mv nil type)))
       ((when (type-case ref-type :pointer))
        (raise "Internal error: pointer type to pointer type ~x0." ref-type)
        (acl2::value (list (irr-param-declon) (irr-type) nil))))
    (acl2::value (list (make-param-declon
                        :declor (make-declor :ident (make-ident :name name)
                                             :pointerp pointerp)
                        :type (atc-gen-tyspecseq ref-type))
                       type
                       pointerp)))
  ///
  (more-returns
   (val true-listp :rule-classes :type-prescription)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-param-declon-list ((formals symbol-listp)
                                   (fn symbolp)
                                   (guard-conjuncts pseudo-term-listp)
                                   (guard pseudo-termp)
                                   (ctx ctxp)
                                   state)
  :returns (mv erp
               (val (tuple (params param-declon-listp)
                           (scope atc-symbol-type-alistp)
                           (pointers symbol-listp)
                           val))
               state)
  :short "Generate a list of C parameter declarations
          from a list of ACL2 formal parameters."
  :long
  (xdoc::topstring
   (xdoc::p
    "Also generate an initial scope
     that maps the formal parameters to their C types.")
   (xdoc::p
    "Also return a list of the formal parameters
     that are pointers in C.
     These get a special treatment
     in the formulation of the generated correctness theorems."))
  (b* (((when (endp formals)) (acl2::value (list nil nil nil)))
       (formal (mbe :logic (acl2::symbol-fix (car formals))
                    :exec (car formals)))
       ((when (member-equal (symbol-name formal)
                            (symbol-name-lst (cdr formals))))
        (er-soft+ ctx t (list nil nil nil)
                  "The formal parameter ~x0 of the function ~x1 ~
                   has the same symbol name as ~
                   another formal parameter among ~x2; ~
                   this is disallowed, even if the package names differ."
                  formal fn (cdr formals)))
       ((mv erp (list param type pointerp) state)
        (atc-gen-param-declon formal fn guard-conjuncts guard ctx state))
       ((when erp) (mv erp (list nil nil nil) state))
       ((er (list params scope pointers))
        (atc-gen-param-declon-list (cdr formals)
                                   fn guard-conjuncts guard
                                   ctx state)))
    (acl2::value (list (cons param params)
                       (acons formal type scope)
                       (if pointerp (cons formal pointers) pointers))))

  :verify-guards nil ; done below

  ///

  (more-returns
   (val true-listp :rule-classes :type-prescription)) ; speeds up guard proofs

  (verify-guards atc-gen-param-declon-list
    :hints
    (("Goal" :in-theory (enable alistp-when-atc-symbol-type-alistp-rewrite)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-fn-returns-value-thm ((fn symbolp)
                                      (type? type-optionp)
                                      (xforming symbol-listp)
                                      (scope atc-symbol-type-alistp)
                                      (prec-fns atc-symbol-fninfo-alistp)
                                      (proofs booleanp)
                                      (names-to-avoid symbol-listp)
                                      (ctx ctxp)
                                      state)
  :returns (mv erp
               (val "A @('(tuple (events pseudo-event-form-listp)
                                 (name symbolp)
                                 (updated-names-to-avoid symbol-listp)
                                 val)').")
               state)
  :mode :program
  :short "Generate the theorem saying that
          @('fn') returns one or more C values,
          under the guard."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is a local theorem for now.")
   (xdoc::p
    "The restrictions on the form of the functions that ATC translates to C
     ensures that, under the guard, these functions always return C values.
     This is fairly easy to see,
     thinking of the different allowed forms of these functions' bodies:")
   (xdoc::ul
    (xdoc::li
     "A formal parameter is constrained to be a value by the guard.")
    (xdoc::li
     "Calls of @(tsee sint-dec-const), @(tsee add-sint-sint), etc.
      are known to return values.")
    (xdoc::li
     "A @(tsee let) or @(tsee mv-let) variable is equal to a term that,
      recursively, always returns a value.")
    (xdoc::li
     "A call of a preceding function returns a value,
      as proved by the same theorems for the preceding functions.")
    (xdoc::li
     "An @(tsee if) return value reduces to the branches' return values.")
    (xdoc::li
     "An @(tsee mv) returns variables that have C types,
      because either they are parameters or bound variables."))
   (xdoc::p
    "This suggests a coarse but adequate proof strategy:
     We use the theory consisting of
     the definition of @('fn'),
     the return type theorems of @(tsee sint-dec-const) and related functions,
     and the theorems about the preceding functions;
     we also add a @(':use') hint for the guard theorem of @('fn').")
   (xdoc::p
    "If the function is not recursive,
     its body returns a single result,
     whose type is passed as the parameter @('type?').
     If the function is recursive, @('type?') is @('nil'),
     but the function returns as many results as the transformed variables
     (passed as the @('xforming') parameter),
     whose types are retrieved from the scope passed as the @('scope') parameter
     (this is the scope consisting of the parameters of @('fn')).")
   (xdoc::p
    "In anticipation for future situations in which
     also non-recursive target functions may return multiple results,
     namely the C return result plus other results representing side effects,
     the code below is already general.
     It concatenates zero or one type from @('type?')
     with zero or more types from @('xforming') and @('scope').
     Then we operate on the resulting list,
     which forms all the results of the function:
     the list is never empty (and ACL2 function must always return something);
     if the list is a singleton, we generate,
     as the conclusion of the theorem,
     a single type assertion for the whole function;
     if the list has multiple elements, we generate,
     as the conclusion of the theorem,
     a conjunction of type assertions
     for the @(tsee mv-nth)s of the function.")
   (xdoc::p
    "If @('fn') is recursive, we generate a hint to induct on the function.
     Since ACL2 disallows @(':use') and @(':induct') hints on the goal,
     we make the @(':use') hint a computed hint;
     we do that whether @('fn') is recursive or not, for simplicity.")
   (xdoc::p
    "When @('fn') returns multiple results or contains @(tsee mv-let)s,
     terms appear during the proof in which
     @(tsee mv-nth)s are applied to @(tsee list)s (i.e. @(tsee cons) nests).
     So we add the rule" (xdoc::@def "mv-nth-of-cons") " to the theory,
     in order to simplify those terms.
     We also enable the executable counterpart of @(tsee zp)
     to simplify the test in the right-hand side of that rule.")
   (xdoc::p
    "We also generate conjuncts saying that the results are not @('nil').
     Without this, some proofs fail with a subgoal saying that
     a function result is @('nil'), which is false.
     This seems to happen only with functions returning multiple results,
     where the results in question have the form @('(mv-nth ...)');
     perhaps single results are taken care by ACL2's tau system.
     So we generate these non-@('nil') theorems only for multiple results.
     These theorems have to be rewrite rules:
     with type prescription rules,
     the example theorems mentioned above still fail.
     To prove these non-@('nil') theorems,
     it seems sufficient to enable
     the executable counterparts of the integer value recognizers;
     the subgoals that arise without them have the form
     @('(<recognizer> nil)')."))
  (b* ((wrld (w state))
       ((when (not proofs))
        (acl2::value (list nil nil names-to-avoid)))
       (types1 (and type? (list type?)))
       (types2 (atc-gen-fn-returns-value-thm-aux1 xforming scope))
       (types (append types1 types2))
       ((unless (consp types))
        (prog2$
         (raise "Internal error: the function ~x0 has no return types." fn)
         (acl2::value (list nil nil names-to-avoid))))
       ((unless (type-integer-listp types))
        (er-soft+ ctx t (list nil nil names-to-avoid)
                  "The function ~x0 returns results of types ~x1, ~
                   not all of which are integer types. ~
                   This is currently disallowed."
                  fn types))
       (formals (acl2::formals+ fn wrld))
       (fn-call `(,fn ,@formals))
       (conclusion
        (if (consp (cdr types))
            `(and ,@(atc-gen-fn-returns-value-thm-aux2 types 0 fn-call))
          `(,(pack (atc-integer-type-fixtype (car types)) 'p) ,fn-call)))
       (name (add-suffix fn "-RETURNS-VALUE"))
       ((mv name names-to-avoid)
        (acl2::fresh-logical-name-with-$s-suffix name nil names-to-avoid wrld))
       (guard (untranslate (acl2::uguard fn wrld) t wrld))
       (formula `(implies ,guard ,conclusion))
       (hints `(("Goal"
                 ,@(and (acl2::irecursivep+ fn wrld)
                        `(:induct ,fn-call))
                 :in-theory
                 (append
                  *atc-integer-ops-1-return-rewrite-rules*
                  *atc-integer-ops-2-return-rewrite-rules*
                  *atc-integer-convs-return-rewrite-rules*
                  '(,fn
                    ,@(atc-symbol-fninfo-alist-to-returns-value-thms prec-fns)
                    sintp-of-sint-dec-const
                    sintp-of-sint-oct-const
                    sintp-of-sint-hex-const
                    uintp-of-uint-dec-const
                    uintp-of-uint-oct-const
                    uintp-of-uint-hex-const
                    slongp-of-slong-dec-const
                    slongp-of-slong-oct-const
                    slongp-of-slong-hex-const
                    ulongp-of-ulong-dec-const
                    ulongp-of-ulong-oct-const
                    ulongp-of-ulong-hex-const
                    sllongp-of-sllong-dec-const
                    sllongp-of-sllong-oct-const
                    sllongp-of-sllong-hex-const
                    ullongp-of-ullong-dec-const
                    ullongp-of-ullong-oct-const
                    ullongp-of-ullong-hex-const
                    sintp-of-sint-from-boolean
                    ucharp-of-uchar-array-read-sint
                    mv-nth-of-cons
                    (:e zp)
                    (:e ucharp)
                    (:e scharp)
                    (:e ushortp)
                    (:e sshortp)
                    (:e uintp)
                    (:e sintp)
                    (:e ulongp)
                    (:e slongp)
                    (:e ullongp)
                    (:e sllongp))))
                '(:use (:guard-theorem ,fn))))
       ((mv event &) (evmac-generate-defthm name
                                            :formula formula
                                            :hints hints
                                            :enable nil)))
    (acl2::value (list (list event) name names-to-avoid)))

  :prepwork

  ((define atc-gen-fn-returns-value-thm-aux1 ((xforming symbol-listp)
                                              (scope atc-symbol-type-alistp))
     :returns (types type-listp :hyp (atc-symbol-type-alistp scope))
     :parents nil
     (cond ((endp xforming) nil)
           (t (b* ((type (cdr (assoc-eq (car xforming) scope))))
                (if (typep type)
                    (cons type
                          (atc-gen-fn-returns-value-thm-aux1 (cdr xforming)
                                                             scope))
                  (raise "Internal error: variable ~x0 not found in ~x1."
                         (car xforming) scope))))))

   (define atc-gen-fn-returns-value-thm-aux2 ((types type-listp)
                                              (index natp)
                                              (fn-call pseudo-termp))
     :guard (type-integer-listp types)
     :returns conjuncts
     :parents nil
     (cond ((endp types) nil)
           (t (list* `(,(pack (atc-integer-type-fixtype (car types)) 'p)
                       (mv-nth ',index ,fn-call))
                     `(mv-nth ',index ,fn-call)
                     (atc-gen-fn-returns-value-thm-aux2 (cdr types)
                                                        (1+ index)
                                                        fn-call)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-fn-guard-deref-compustate ((guard pseudo-termp)
                                           (pointers symbol-listp)
                                           (compst-var symbolp))
  :returns (new-guard "A @(tsee pseudo-termp).")
  :verify-guards nil
  :short "Transform a target function's guard
          to replace pointer arguments with dereferenced arrays
          in the heap of a computation state."
  :long
  (xdoc::topstring
   (xdoc::p
    "An ACL2 target function may take arrays as parameters.
     However, the corresponding C function takes pointers
     as the corresponding parameters.
     Thus, the guard of the ACL2 function needs to be modified
     in order to be used as hypothesis of the generated correctness theorem(s).
     The guard of the ACL2 function says that those parameters are arrays,
     and may say other things about those arrays, e.g. about their lengths.
     In the generated theorem, the ACL2 variables for those parameters
     will be understood as C parameters instead, i.e. as pointers:
     therefore, we need to substitute, in the guard,
     each parameter @('x') with the array obtained by dereferencing it,
     namely @('(deref x ...)').
     We also need to extend the guard with conjuncts
     saying that each parameter @('x') is a pointer value of appropriate type;
     currently, this must always be the @('unsigned char') type,
     but this will be generalized eventually.")
   (xdoc::p
    "Here we compute the modified guard as just explained.
     The list of parameters that are pointers is passed as @('pointers'),
     which is calculated by @(tsee atc-gen-param-declon).
     The @('compst-var') input is the variable symbol
     to use for the computation state;
     this must be the same used
     in the formulation of the correctness theorems."))
  (b* ((derefs (loop$ for pointer in pointers
                      collect `(deref ,pointer (compustate->heap ,compst-var))))
       (guard-subst (acl2::fsubcor-var pointers derefs guard))
       (pointer-hyps (loop$ for pointer in pointers
                            append (list `(pointerp ,pointer)
                                         `(equal (pointer->reftype ,pointer)
                                                 (type-uchar))))))
    (acl2::conjoin (append pointer-hyps (list guard-subst)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-fn-args-deref-compustate ((args symbol-listp)
                                          (pointers symbol-listp)
                                          (compst-var symbolp))
  :returns (new-args pseudo-term-listp :hyp :guard)
  :short "Transform a target function's arguments
          to replace pointer arguments with dereferenced arrays
          in the heap of a computation state."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is related to @(tsee atc-gen-fn-guard-deref-compustate).
     It adjusts the pointer arguments in the call of the ACL2 function,
     replacing them with the dereferenced arrays."))
  (cond ((endp args) nil)
        (t (cons (if (member-eq (car args) pointers)
                     `(deref ,(car args) (compustate->heap ,compst-var))
                   (car args))
                 (atc-gen-fn-args-deref-compustate (cdr args)
                                                   pointers
                                                   compst-var)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-instantiation-deref-compustate ((pointers symbol-listp)
                                                (compst-var symbolp))
  :returns (instantiation "A @('acl2::doublet-listp').")
  :short "Calculate an instantiation for lemmas instances,
          where pointer arguments are replaced with dereferenced arrays."
  (loop$ for pointer in pointers
         collect (list pointer
                       `(deref ,pointer (compustate->heap ,compst-var)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-fn-correct-thm ((fn symbolp)
                                (pointers symbol-listp)
                                (prec-fns atc-symbol-fninfo-alistp)
                                (proofs booleanp)
                                (recursionp booleanp)
                                (prog-const symbolp)
                                (fn-thms symbol-symbol-alistp)
                                (limit natp)
                                (wrld plist-worldp))
  :returns (mv (local-events "A @(tsee pseudo-event-form-listp).")
               (exported-events "A @(tsee pseudo-event-form-listp).")
               (name "A @(tsee symbolp)."))
  :mode :program
  :short "Generate the dynamic correctness theorem for the function @('fn')."
  :long
  (xdoc::topstring
   (xdoc::p
    "In a computation state @('compst'),
     the execution of the C function is expressed by calling @(tsee exec-fun)
     on the name of @('fn'),
     the formals of @('fn'),
     the computation state @('compst'),
     the function environment for the translation unit,
     and a suitably large limit (more on this below).
     In this generated theorem,
     the first result of @(tsee exec-fun) is equated to
     a call of @('fn') on its formals,
     while the second result of @(tsee exec-fun) is equated to @('compst').
     Currently function calls have no persistent effect on the state
     in the C code generated by ATC:
     this is why the final state is the same as the initial one.
     This will change in the future,
     and this theorem will be suitably generalized.
     The guard of @('fn') is used as hypothesis,
     along with the fact that @('compst') is a computation state.")
   (xdoc::p
    "We use a variable for the function environment,
     which we equate to the translation unit's function environment
     in a hypothesis.
     Note that, when we execute the ACL2 code in this function,
     we do not have the function environment
     of the generated translation unit yet,
     because we generate these correctness theorems
     along with the function definitions that form the translation unit
     (currently we could generate these theorems after the translation unit,
     but we prefer to do them at the same time for easier future extensions,
     in which we may generate ``smaller'' theorems,
     possibly for subterms/subexpressions/substatements).
     Thus, we cannot use a quoted constant for the function environment here.
     The reason why we introduce a variable and equate it in the hypothesis,
     as opposed to using @('(init-fun-env <program>)')
     directly as argument of @(tsee exec-fun),
     is that we want to use this theorem as a rewrite rule
     in the theorem generated by @(tsee atc-gen-fn-correct-thm),
     and using a variable makes the rule easier to match with,
     in particular if @(tsee init-fun-env) needs to be enabled.")
   (xdoc::p
    "The limit passed to @(tsee exec-fun) is a variable,
     which is assumed (in a hypothesis of the generated theorem)
     to be no smaller than a value
     that is calculated by the code generation code
     as sufficient to run @(tsee exec-fun) to completion.")
   (xdoc::p
    "The proof is a symbolic execution of the generated translation unit,
     which is a constant: see @(see atc-proof-support).
     The proof is carried out in the theory that consists of
     exactly the general rules listed there,
     plus the definition of @('fn') (clearly),
     plus the theorems that the functions callable by @('fn') return values,
     plust the type prescriptions of the functions callable by @('fn'),
     plus the correctness theorems of the functions callable by @('fn').
     During symbolic execution, the initial limit for @('fn')
     is progressively decremented,
     so by the time we get to functions called by @('fn')
     it will have different symbolic values from the initial variable;
     thus, we need to match that to the variable @('limit')
     in the correctness theorems for the callees,
     which are used as rewrite rules to turn calls of @(tsee exec-fun)
     into calls of the corresponding ACL2 functions.
     These will thus match the calls in the definition of @('fn'),
     and the called functions can stay disabled in the proof.
     The theorems about the callable functions returning values
     are needed to exclude, in the proof, the case that
     these functions return errors.
     The type prescriptions of the callable functions
     are needed to discharge some proof subgoal that arise.")
   (xdoc::p
    "Furthermore, we generate a @(':use') hint
     to augment the theorem's formula with the guard theorem of @('fn'),
     with the pointer arguments replaced by the dereferenced arrays.
     This is critical to ensure that the symbolic execution of the C operators
     does not split on the error cases:
     the fact that @('fn') is guard-verified
     ensures that @(tsee add-sint-sint) and similar functions are always called
     on values such that the exact result fit into the type,
     which is the same condition under which the dynamic semantics
     does not error on the corresponding operators.")
   (xdoc::p
    "We also generate a hint to expand all lambdas (i.e. beta reduction).
     We found at least one instance in which ACL2's heuristics
     were preventing a lambda expansion that was preventing a proof.")
   (xdoc::p
    "Because @(tsee exec-fun) is disabled as explained above,
     but we still need to open its top-level call for @('fn'),
     we generate a hint to expand calls of @(tsee exec-fun) on @('fn')
     (more precisely, on the name of the C function generated from @('fn')).")
   (xdoc::p
    "This theorem is local for now.
     But we may want to export it at some point.")
   (xdoc::p
    "This theorem is not generated if @(':proofs') is @('nil')."))
  (b* (((when (or (not proofs)
                  recursionp))
        (mv nil nil nil))
       (name (cdr (assoc-eq fn fn-thms)))
       (formals (acl2::formals+ fn wrld))
       (compst-var (acl2::genvar 'atc "COMPST" nil formals))
       (fenv-var (acl2::genvar 'atc "FENV" nil formals))
       (limit-var (acl2::genvar 'atc "LIMIT" nil formals))
       (args (atc-gen-fn-args-deref-compustate formals pointers compst-var))
       (guard (acl2::uguard fn wrld))
       (hyps (atc-gen-fn-guard-deref-compustate guard pointers compst-var))
       (hyps (acl2::conjoin (list `(compustatep ,compst-var)
                                  hyps
                                  `(equal ,fenv-var (init-fun-env ,prog-const))
                                  `(integerp ,limit-var)
                                  `(>= ,limit-var ,limit))))
       (hyps (acl2::flatten-ands-in-lit hyps))
       (hyps `(and ,@(acl2::untranslate-lst hyps t wrld)))
       (concl `(equal
                (exec-fun (ident ,(symbol-name fn))
                          (list ,@formals)
                          ,compst-var
                          ,fenv-var
                          ,limit-var)
                (mv (,fn ,@args)
                    ,compst-var)))
       (returns-value-thms
        (atc-symbol-fninfo-alist-to-returns-value-thms prec-fns))
       (correct-thms
        (atc-symbol-fninfo-alist-to-correct-thms prec-fns))
       (type-prescriptions
        (loop$ for callable in (strip-cars prec-fns)
               collect `(:t ,callable)))
       (instantiation
        (atc-gen-instantiation-deref-compustate pointers compst-var))
       (hints `(("Goal"
                 :in-theory (append *atc-all-rules*
                                    '(,fn)
                                    ',type-prescriptions
                                    ',returns-value-thms
                                    ',correct-thms)
                 :use (:instance (:guard-theorem ,fn)
                       :extra-bindings-ok ,@instantiation)
                 :expand (:lambdas
                          (:free (args ,compst-var ,fenv-var limit)
                           (exec-fun (ident ,(symbol-name fn))
                                     args ,compst-var ,fenv-var limit))))))
       ((mv local-event exported-event)
        (evmac-generate-defthm name
                               :formula `(implies ,hyps ,concl)
                               :hints hints
                               :enable nil)))
    (mv (list local-event) (list exported-event) name)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-fn-thms ((fn symbolp)
                         (pointers symbol-listp)
                         (type? type-optionp)
                         (xforming symbol-listp)
                         (scope atc-symbol-type-alistp)
                         (prec-fns atc-symbol-fninfo-alistp)
                         (proofs booleanp)
                         (recursionp booleanp)
                         (prog-const symbolp)
                         (fn-thms symbol-symbol-alistp)
                         (print evmac-input-print-p)
                         (limit natp)
                         (names-to-avoid symbol-listp)
                         (ctx ctxp)
                         state)
  :returns (mv erp
               (val "A @('(tuple (local-events pseudo-event-form-listp)
                                 (exported-events pseudo-event-form-listp)
                                 (fn-returns-value-thm symbolp)
                                 (fn-correct-thm symbolp)
                                 (updated-names-to-avoid symbol-listp)
                                 val)').")
               state)
  :mode :program
  :short "Generate the theorems associated to the specified ACL2 function."
  (b* ((wrld (w state))
       ((mv erp
            (list fn-returns-value-events
                  fn-returns-value-thm
                  names-to-avoid)
            state)
        (atc-gen-fn-returns-value-thm fn type? xforming scope prec-fns
                                      proofs names-to-avoid ctx state))
       ((when erp) (mv erp (list nil nil nil nil nil) state))
       ((mv fn-correct-local-events
            fn-correct-exported-events
            fn-correct-thm)
        (atc-gen-fn-correct-thm fn pointers prec-fns proofs recursionp
                                prog-const fn-thms limit wrld))
       (progress-start?
        (and (evmac-input-print->= print :info)
             `((cw-event "~%Generating the theorem ~x0..."
                         ',fn-correct-thm))))
       (progress-end? (and (evmac-input-print->= print :info)
                           `((cw-event " done.~%"))))
       (local-events (append progress-start?
                             fn-returns-value-events
                             fn-correct-local-events
                             progress-end?))
       (exported-events fn-correct-exported-events))
    (acl2::value (list local-events
                       exported-events
                       fn-returns-value-thm
                       fn-correct-thm
                       names-to-avoid))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-check-new-function-name ((fn-name stringp)
                                     (prec-fns atc-symbol-fninfo-alistp))
  :returns (mv
            (okp booleanp)
            (conflicting-fn
             symbolp
             :hyp (atc-symbol-fninfo-alistp prec-fns)
             :hints
              (("Goal"
                :in-theory
                (enable
                 symbol-listp-of-strip-cars-when-atc-symbol-fninfo-alistp)))))
  :short "Check that a C function name is new."
  :long
  (xdoc::topstring
   (xdoc::p
    "That is, ensure that the symbol name of @('fn')
     differs from the ones in @('prec-fns').
     It is not enough that the symbols are different:
     the symbol names must be different,
     because package names are ignored when translating to C.
     We return a boolean saying whether the check succeeds or not.
     If it does not, we return the function that causes the conflict,
     i.e. that has the same symbol name as @('fn')."))
  (atc-check-new-function-name-aux fn-name (strip-cars prec-fns))

  :prepwork
  ((define atc-check-new-function-name-aux ((fn-name stringp)
                                            (fns symbol-listp))
     :returns (mv (okp booleanp)
                  (conflicting-fn symbolp :hyp (symbol-listp fns)))
     :parents nil
     (cond ((endp fns) (mv t nil))
           ((equal fn-name (symbol-name (car fns))) (mv nil (car fns)))
           (t (atc-check-new-function-name-aux fn-name (cdr fns)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-ext-declon ((fn symbolp)
                            (prec-fns atc-symbol-fninfo-alistp)
                            (proofs booleanp)
                            (recursionp booleanp)
                            (prog-const symbolp)
                            (fn-thms symbol-symbol-alistp)
                            (print evmac-input-print-p)
                            (names-to-avoid symbol-listp)
                            (ctx ctxp)
                            state)
  :returns (mv erp
               (val "A @('(tuple (ext ext-declonp)
                                 (local-events pseudo-event-form-listp)
                                 (exported-events pseudo-event-form-listp)
                                 (updated-prec-fns atc-symbol-fninfo-alistp)
                                 (updated-names-to-avoid symbol-listp)
                                 val)').")
               state)
  :mode :program
  :short "Generate a C external declaration (a function definition)
          from an ACL2 function, with accompanying theorems."
  :long
  (xdoc::topstring
   (xdoc::p
    "We also return local and exported events for the theorems about
     the correctness of the C function definition.")
   (xdoc::p
    "We extend the alist @('prec-fns') with information about the function.")
   (xdoc::p
    "We use the type of the value returned by the statement for the body
     as the result type of the C function.")
   (xdoc::p
    "For the limit, we need 1 to go from @(tsee exec-fun) to @(tsee exec-stmt),
     another 1 from there to @(tsee exec-block-item-list)
     in the @(':compound') case,
     and then we use the recursively calculated limit for the block."))
  (b* ((name (symbol-name fn))
       ((unless (atc-ident-stringp name))
        (er-soft+ ctx t nil
                  "The symbol name ~s0 of the function ~x1 ~
                   must be a portable ASCII C identifier, but it is not."
                  name fn))
       ((mv okp conflicting-fn) (atc-check-new-function-name name prec-fns))
       ((when (not okp))
        (er-soft+ ctx t nil
                  "The symbol name ~s0 of the function ~x1 ~
                   must be distinct from the symbol names of ~
                   the oher ACL2 functions translated to C functions, ~
                   but the function ~x2 has the same symbol name."
                  name fn conflicting-fn))
       (wrld (w state))
       (formals (acl2::formals+ fn wrld))
       (guard (acl2::uguard+ fn wrld))
       (guard-conjuncts (flatten-ands-in-lit guard))
       ((er (list params scope pointers))
        (atc-gen-param-declon-list formals fn guard-conjuncts guard ctx state))
       (body (acl2::ubody+ fn wrld))
       ((er (list items type limit)) (atc-gen-stmt body
                                                   (list scope)
                                                   nil
                                                   fn
                                                   prec-fns
                                                   ctx
                                                   state))
       ((unless (typep type))
        (acl2::value
         (raise "Internal error: the function ~x0 has no return type." fn)))
       ((when (type-case type :pointer))
        (acl2::value
         (raise "Internal error: ~
                 the return type ~x0 of function ~x1 cannot be a pointer."
                type fn)))
       (ext (ext-declon-fundef
             (make-fundef :result (atc-gen-tyspecseq type)
                          :name (make-ident :name name)
                          :params params
                          :body (stmt-compound items))))
       (limit (+ 1 1 limit))
       ((mv erp
            (list local-events
                  exported-events
                  fn-returns-value-thm
                  fn-correct-thm
                  names-to-avoid)
            state)
        (atc-gen-fn-thms fn pointers type nil scope prec-fns
                         proofs recursionp prog-const fn-thms print
                         limit names-to-avoid ctx state))
       ((when erp) (mv erp (list (irr-ext-declon) nil nil nil nil) state))
       (info (make-atc-fn-info
              :type? type
              :loop? nil
              :xforming nil
              :returns-value-thm fn-returns-value-thm
              :correct-thm fn-correct-thm
              :limit limit)))
    (acl2::value (list ext
                       local-events
                       exported-events
                       (acons fn info prec-fns)
                       names-to-avoid))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-loop-correct-thm ((fn symbolp)
                                  (loop-stmt stmtp)
                                  (prog-const symbolp)
                                  (names-to-avoid symbol-listp)
                                  state)
  :guard (acl2::irecursivep+ fn (w state))
  :returns (mv erp
               (val "A @('(tuple (events pseudo-event-form-listp)
                                 (updated-names-to-avoid symbol-listp)
                                 val)').")
               state)
  :mode :program
  :short "Generate the correctness theorem for a loop."
  :long
  (xdoc::topstring
   (xdoc::p
    "The correctness theorem for a loop says that
     the execution of the loop (via @(tsee exec-stmt-while))
     is suitably equivalent to the corresponding ACL2 recursive function @('fn').
     The theorem is proved by induction, unsurprisingly.
     However, due to the form in which the function appears in the theorem,
     namely that the function is not applied to ACL2 variables,
     we cannot use the function's induction scheme.
     But we cannot readily use
     the induction scheme of the execution functions,
     or at least it seeme it would be cumbersome to do so,
     because there are several of them, mutually recursive.
     What we really need is an induction scheme related to the loop.
     Thus we introduce a local function that is like @(tsee exec-stmt-while)
     but specialized to the loop generated from @('fn');
     this function is singly recursive, providing the needed induction scheme.
     The function does not need to be guard-verified,
     because it is only used for logic.
     We also generate a theorem saying that this new function
     is equivalent to @(tsee exec-stmt-while) applied to the loop;
     this is critical, because eventually the proof must be
     about the execution functions of the C dynamic semantics.
     For robustness, the termination proof for this new function,
     and the proof of the associated theorem,
     are carried out in exactly specified theories
     that should always work."))
  (b* ((wrld (w state))
       (loop-test (stmt-while->test loop-stmt))
       (loop-body (stmt-while->body loop-stmt))
       (exec-stmt-while-for-fn
        (acl2::packn-pos (list 'exec-stmt-while-for- fn) fn))
       ((mv exec-stmt-while-for-fn names-to-avoid)
        (acl2::fresh-logical-name-with-$s-suffix exec-stmt-while-for-fn
                                                 'function
                                                 names-to-avoid
                                                 wrld))
       (exec-stmt-while-for-fn-body
        `(b* ((fenv (init-fun-env ,prog-const))
              ((when (zp limit)) (mv (error :limit) (compustate-fix compst)))
              (continuep (exec-test (exec-expr-pure ',loop-test compst)))
              ((when (errorp continuep)) (mv continuep (compustate-fix compst)))
              ((when (not continuep)) (mv nil (compustate-fix compst)))
              ((mv val? compst) (exec-stmt ',loop-body compst fenv (1- limit)))
              ((when (errorp val?)) (mv val? compst))
              ((when (valuep val?)) (mv val? compst)))
           (,exec-stmt-while-for-fn compst (1- limit))))
       (exec-stmt-while-for-fn-hints
        '(("Goal" :in-theory '(acl2::zp-compound-recognizer
                               nfix
                               natp
                               o-p
                               o-finp
                               o<))))
       ((mv exec-stmt-while-for-fn-event &)
        (acl2::evmac-generate-defun
         exec-stmt-while-for-fn
         :formals (list 'compst 'limit)
         :body exec-stmt-while-for-fn-body
         :measure '(nfix limit)
         :well-founded-relation 'o<
         :hints exec-stmt-while-for-fn-hints
         :verify-guards nil
         :enable nil))
       (exec-stmt-while-for-fn-thm
        (add-suffix exec-stmt-while-for-fn "-TO-EXEC-STMT-WHILE"))
       ((mv exec-stmt-while-for-fn-thm names-to-avoid)
        (acl2::fresh-logical-name-with-$s-suffix exec-stmt-while-for-fn-thm
                                                 'function
                                                 names-to-avoid
                                                 wrld))
       ((mv exec-stmt-while-for-fn-thm-event &)
        (acl2::evmac-generate-defthm
         exec-stmt-while-for-fn-thm
         :formula `(equal (,exec-stmt-while-for-fn compst limit)
                          (exec-stmt-while ',loop-test
                                           ',loop-body
                                           compst
                                           (init-fun-env ,prog-const)
                                           limit))
         :rule-classes nil
         :hints `(("Goal" :in-theory '(,exec-stmt-while-for-fn
                                       exec-stmt-while)))))
       (events (list exec-stmt-while-for-fn-event
                     exec-stmt-while-for-fn-thm-event)))
    (acl2::value (list events names-to-avoid))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-loop ((fn symbolp)
                      (prec-fns atc-symbol-fninfo-alistp)
                      (proofs booleanp)
                      (recursionp booleanp)
                      (prog-const symbolp)
                      (fn-thms symbol-symbol-alistp)
                      (print evmac-input-print-p)
                      (names-to-avoid symbol-listp)
                      (ctx ctxp)
                      state)
  :guard (acl2::irecursivep+ fn (w state))
  :returns (mv erp
               (val "A @('(tuple (local-events pseudo-event-form-listp)
                                 (exported-events pseudo-event-form-listp)
                                 (updated-prec-fns atc-symbol-fninfo-alistp)
                                 (updated-names-to-avoid symbol-listp)
                                 val)').")
               state)
  :mode :program
  :short "Generate a loop for a recursive target function."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is called if @('fn') is a recursive target function.
     We initialize a scope consisting of the formal parameters,
     similarly to @(tsee atc-gen-ext-declon).
     We process the function body as a loop term,
     and update the @('prec-fns') alist with information about the function.")
   (xdoc::p
    "No C external declaration is generated for this function,
     because this function just represents a loop used in oher functions."))
  (b* ((wrld (w state))
       (formals (acl2::formals+ fn wrld))
       (guard (acl2::uguard+ fn wrld))
       (guard-conjuncts (flatten-ands-in-lit guard))
       ((mv erp (list & scope pointers) state)
        (atc-gen-param-declon-list formals fn guard-conjuncts guard ctx state))
       ((when erp) (mv erp nil state))
       (body (acl2::ubody+ fn wrld))
       ((mv erp (list loop-stmt loop-xforming) state)
        (atc-gen-loop-stmt body (list scope) fn prec-fns ctx state))
       ((when erp) (mv erp nil state))
       (type? nil)
       (limit 0)
       ((mv erp
            (list local-events
                  exported-events
                  fn-returns-value-thm
                  fn-correct-thm
                  names-to-avoid)
            state)
        (atc-gen-fn-thms fn pointers type? loop-xforming scope prec-fns
                         proofs recursionp prog-const fn-thms
                         print limit names-to-avoid ctx state))
       ((when erp) (mv erp (list nil nil nil nil) state))
       ((mv erp
            (list more-local-events
                  names-to-avoid)
            state)
        (atc-gen-loop-correct-thm fn loop-stmt prog-const names-to-avoid
                                  state))
       ((when erp) (mv erp (list nil nil nil nil) state))
       (local-events (append local-events more-local-events))
       (info (make-atc-fn-info :type? type?
                               :loop? loop-stmt
                               :xforming loop-xforming
                               :returns-value-thm fn-returns-value-thm
                               :correct-thm fn-correct-thm
                               :limit limit)))
    (acl2::value (list local-events
                       exported-events
                       (acons fn info prec-fns)
                       names-to-avoid))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-ext-declon-list ((fns symbol-listp)
                                 (prec-fns atc-symbol-fninfo-alistp)
                                 (proofs booleanp)
                                 (recursionp booleanp)
                                 (prog-const symbolp)
                                 (fn-thms symbol-symbol-alistp)
                                 (print evmac-input-print-p)
                                 (names-to-avoid symbol-listp)
                                 (ctx ctxp)
                                 state)
  :returns (mv erp
               (val "A @('(tuple (exts ext-declon-listp)
                                 (local-events pseudo-event-form-listp)
                                 (exported-events pseudo-event-form-listp)
                                 (updated-names-to-avoid symbol-listp)
                                 val)').")
               state)
  :mode :program
  :short "Lift @(tsee atc-gen-ext-declon) to lists."
  :long
  (xdoc::topstring
   (xdoc::p
    "After we process the first function @('fn') in @('fns'),
     we use the extended @('prec-fns') for the subsequent functions.")
   (xdoc::p
    "We treat recursive and non-recursive functions differently."))
  (b* (((when (endp fns)) (acl2::value (list nil nil nil names-to-avoid)))
       ((cons fn rest-fns) fns)
       ((er (list exts local-events exported-events prec-fns names-to-avoid))
        (if (acl2::irecursivep+ fn (w state))
            (b* (((mv erp
                      (list local-events
                            exported-events
                            prec-fns
                            names-to-avoid)
                      state)
                  (atc-gen-loop fn prec-fns proofs recursionp prog-const
                                fn-thms print names-to-avoid ctx state))
                 ((when erp) (mv erp (list nil nil nil nil) state)))
              (acl2::value (list nil
                                 local-events
                                 exported-events
                                 prec-fns
                                 names-to-avoid)))
          (b* (((mv erp
                    (list
                     ext local-events exported-events prec-fns names-to-avoid)
                    state)
                (atc-gen-ext-declon fn prec-fns proofs recursionp
                                    prog-const fn-thms
                                    print names-to-avoid ctx state))
               ((when erp) (mv erp (list nil nil nil nil) state)))
            (acl2::value (list (list ext)
                               local-events
                               exported-events
                               prec-fns
                               names-to-avoid)))))
       ((er
         (list more-exts more-local-events more-exported-events names-to-avoid))
        (atc-gen-ext-declon-list rest-fns prec-fns proofs recursionp
                                 prog-const fn-thms
                                 print names-to-avoid ctx state)))
    (acl2::value (list (append exts more-exts)
                       (append local-events more-local-events)
                       (append exported-events more-exported-events)
                       names-to-avoid))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-prog-const ((prog-const symbolp)
                            (tunit transunitp)
                            (print evmac-input-print-p))
  :returns (mv (local-event pseudo-event-formp)
               (exported-event pseudo-event-formp))
  :short "Generate the named constant for the abstract syntax tree
          of the generated C code (i.e. translation unit)."
  :long
  (xdoc::topstring
   (xdoc::p
    "This constant is not generated if @(':proofs') is @('nil')."))
  (b* ((progress-start?
        (and (evmac-input-print->= print :info)
             `((cw-event "~%Generating the named constant ~x0..." ',prog-const))))
       (progress-end? (and (evmac-input-print->= print :info)
                           `((cw-event " done.~%"))))
       (defconst-event `(defconst ,prog-const ',tunit))
       (local-event `(progn ,@progress-start?
                            (local ,defconst-event)
                            ,@progress-end?)))
    (mv local-event defconst-event)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-wf-thm ((proofs booleanp)
                        (prog-const symbolp)
                        (wf-thm symbolp)
                        (print evmac-input-print-p))
  :returns (mv (local-events "A @(tsee pseudo-event-form-listp).")
               (exported-events "A @(tsee pseudo-event-form-listp)."))
  :mode :program
  :short "Generate the theorem asserting
          the static well-formedness of the generated C code
          (referenced as the named constant)."
  :long
  (xdoc::topstring
   (xdoc::p
    "Since this is a ground theorem,
     we expect that it should be easily provable
     using just the executable counterpart of @(tsee check-transunit),
     which is an executable function.")
   (xdoc::p
    "We generate singleton lists of events if @(':proofs') is @('t'),
     empty lists otherwise."))
  (b* (((unless proofs) (mv nil nil))
       ((mv local-event exported-event)
        (evmac-generate-defthm
         wf-thm
         :formula `(equal (check-transunit ,prog-const) :wellformed)
         :hints '(("Goal" :in-theory '((:e check-transunit))))
         :enable nil))
       (progress-start?
        (and (evmac-input-print->= print :info)
             `((cw-event "~%Generating the theorem ~x0..." ',wf-thm))))
       (progress-end? (and (evmac-input-print->= print :info)
                           `((cw-event " done.~%"))))
       (local-event `(progn ,@progress-start?
                            ,local-event
                            ,@progress-end?)))
    (mv (list local-event)
        (list exported-event))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-transunit ((fn1...fnp symbol-listp)
                           (proofs booleanp)
                           (recursionp booleanp)
                           (prog-const symbolp)
                           (wf-thm symbolp)
                           (fn-thms symbol-symbol-alistp)
                           (print evmac-input-print-p)
                           (names-to-avoid symbol-listp)
                           (ctx ctxp)
                           state)
  :returns (mv erp
               (val "A @('(tuple (tunit transunitp)
                                 (local-events pseudo-event-form-listp)
                                 (exported-events pseudo-event-form-listp)
                                 (updated-names-to-avoid symbol-listp)
                                 val)').")
               state)
  :mode :program
  :short "Generate a C translation unit from the ACL2 target functions,
          and accompanying event."
  :long
  (xdoc::topstring
   (xdoc::p
    "We first generate the event for the named constant with the environment,
     because its name must be passed to the ACL2 functions
     that generate the external declarations that form the translation unit."))
  (b* (((mv wf-thm-local-events wf-thm-exported-events)
        (atc-gen-wf-thm proofs prog-const wf-thm print))
       ((er
         (list exts fn-thm-local-events fn-thm-exported-events names-to-avoid))
        (atc-gen-ext-declon-list fn1...fnp nil proofs recursionp
                                 prog-const fn-thms
                                 print names-to-avoid ctx state))
       (tunit (make-transunit :declons exts))
       ((mv local-const-event exported-const-event)
        (if proofs
            (atc-gen-prog-const prog-const tunit print)
          (mv nil nil)))
       (local-events (append (and proofs (list local-const-event))
                             wf-thm-local-events
                             fn-thm-local-events))
       (exported-events (append (and proofs (list exported-const-event))
                                wf-thm-exported-events
                                fn-thm-exported-events)))
    (acl2::value (list tunit
                       local-events
                       exported-events
                       names-to-avoid))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-file ((tunit transunitp) (output-file stringp) state)
  :returns (mv erp val state)
  :mode :program
  :short "Pretty-print the generated C code (i.e. translation unit)
          to the output file."
  (b* ((lines (pprint-transunit tunit)))
    (pprinted-lines-to-file lines output-file state)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-file-event ((tunit transunitp)
                            (output-file stringp)
                            (print evmac-input-print-p)
                            state)
  :returns (mv erp
               (event "A @(tsee pseudo-event-formp).")
               state)
  :mode :program
  :short "Event to pretty-print the generated C code to the output file."
  :long
  (xdoc::topstring
   (xdoc::p
    "This serves to run @(tsee atc-gen-file)
     after the constant and theorem events have been submitted.
     This function generates an event form
     that is put (by @(tsee atc-gen-everything))
     after the constant and theorem events.
     When the events are submitted to and processed by ACL2,
     we get to this file generation event
     only if the previous events are successful.
     This is a sort of safety/security constraint:
     do not even generate the file, unless it is correct.")
   (xdoc::p
    "If @(':print') is at @(':info') or @(':all'),
     we also generate events to print progress messages,
     as done with the constant and theorem events.")
   (xdoc::p
    "In order to generate an embedded event form for file generation,
     we generate a @(tsee make-event) whose argument generates the file.
     The argument must also return an embedded event form,
     so we use @(tsee value-triple) with @(':invisible'),
     so there is no extra screen output.
     This is a ``dummy'' event, it is not supposed to do anything:
     it is the execution of the @(tsee make-event) argument
     that matters, because it generates the file.
     In essence, we use @(tsee make-event) to turn a computation
     (the one that generates the file)
     into an event.
     But we cannot use just @(tsee value-triple)
     because our computation returns an error triple."))
  (b* ((progress-start?
        (and (evmac-input-print->= print :info)
             `((cw-event "~%Generating the file ~s0..." ',output-file))))
       (progress-end? (and (evmac-input-print->= print :info)
                           `((cw-event " done.~%"))))
       (file-gen-event
        `(make-event
          (b* (((er &) (atc-gen-file ',tunit ,output-file state)))
            (acl2::value '(value-triple :invisible))))))
    (acl2::value `(progn ,@progress-start?
                         ,file-gen-event
                         ,@progress-end?))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-print-result ((events pseudo-event-form-listp)
                              (output-file stringp))
  :returns (events pseudo-event-form-listp)
  :short "Generate the events to print the results of ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is used only if @(':print') is at least @(':result')."))
  (append (atc-gen-print-result-aux events)
          (list `(cw-event "~%File ~s0.~%" ,output-file)))
  :prepwork
  ((define atc-gen-print-result-aux ((events pseudo-event-form-listp))
     :returns (events pseudo-event-form-listp)
     (cond ((endp events) nil)
           (t (cons `(cw-event "~%~x0~|" ',(car events))
                    (atc-gen-print-result-aux (cdr events))))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-everything ((fn1...fnp symbol-listp)
                            (output-file stringp)
                            (proofs booleanp)
                            (recursionp booleanp)
                            (prog-const symbolp)
                            (wf-thm symbolp)
                            (fn-thms symbol-symbol-alistp)
                            (print evmac-input-print-p)
                            (call pseudo-event-formp)
                            (ctx ctxp)
                            state)
  :returns (mv erp (event "A @(tsee pseudo-event-formp).") state)
  :mode :program
  :short "Generate the file and the events."
  :long
  (xdoc::topstring
   (xdoc::p
    "We locally install the ``trivial ancestor check'' from the library.
     We found at least a case in which ACL2's default heuristic ancestor check
     prevented a valid functional correctness theorem from being proved.
     Since by construction the symbolic execution shoud always terminate,
     it does not seem like ACL2's heuristic ancestor check
     would ever be helpful (if this turns out to be wrong, we will re-evaluate).
     Thus, we locally install the simpler ancestor check."))
  (b* ((names-to-avoid (list* prog-const wf-thm (strip-cdrs fn-thms)))
       ((er (list tunit local-events exported-events &))
        (atc-gen-transunit fn1...fnp proofs recursionp prog-const wf-thm fn-thms
                           print names-to-avoid ctx state))
       ((er file-gen-event) (atc-gen-file-event tunit output-file print state))
       (print-events (and (evmac-input-print->= print :result)
                          (atc-gen-print-result exported-events output-file)))
       (encapsulate
         `(encapsulate ()
            (evmac-prepare-proofs)
            (local (acl2::use-trivial-ancestors-check))
            ,@local-events
            ,@exported-events
            ,file-gen-event))
       (encapsulate+ (acl2::restore-output? (eq print :all) encapsulate))
       (info (make-atc-call-info :encapsulate encapsulate))
       (table-event (atc-table-record-event call info)))
    (acl2::value `(progn ,encapsulate+
                         ,table-event
                         ,@print-events
                         (value-triple :invisible)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-fn ((args true-listp) (call pseudo-event-formp) (ctx ctxp) state)
  :returns (mv erp
               (result "Always @('(value-triple :invisible)').")
               state)
  :mode :program
  :parents (atc-implementation)
  :short "Process the inputs and
          generate the constant definition and the C file."
  (b* (((when (atc-table-lookup call (w state)))
        (acl2::value '(value-triple :redundant)))
       ((er (list fn1...fnp
                  recursionp
                  output-file
                  proofs
                  prog-const
                  wf-thm
                  fn-thms
                  print))
        (atc-process-inputs args ctx state)))
    (atc-gen-everything fn1...fnp
                        output-file
                        proofs
                        recursionp
                        prog-const
                        wf-thm
                        fn-thms
                        print
                        call
                        ctx
                        state)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection atc-macro-definition
  :parents (atc-implementation)
  :short "Definition of the @(tsee atc) macro."
  (defmacro atc (&whole call &rest args)
    (b* ((print-etc (member-eq :print args))
         (print-nil-p (and (consp print-etc)
                           (consp (cdr print-etc))
                           (eq (cadr print-etc) nil))))
      `(make-event-terse (atc-fn ',args ',call 'atc state)
                         :suppress-errors ,print-nil-p))))
