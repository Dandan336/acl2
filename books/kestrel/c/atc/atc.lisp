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

(include-book "input-processing")
(include-book "table")
(include-book "generation")

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

  "@('fn-appconds') is an alist
   from the recursive functions among @('fn1'), ..., @('fnp')
   to the names (keywords) of the corresponding applicability conditions."

  "@('prog-const') is the symbol specified by @('const-name').
   This is @('nil') if @('proofs') is @('nil')."

  "@('wf-thm') is the name of the generated program well-formedness theorem.
   This is @('nil') if @('proofs') is @('nil')."

  "@('fn-thms') is an alist from @('fn1'), ..., @('fnp')
   to the names of the generated respective correctness theorems.
   This is @('nil') if @('proofs') is @('nil')."

  "@('typed-formals') is an alist
   from the formal parameters of one of @('fn1'), ..., @('fnp')
   to their C types.
   The keys are unique and in the same order as the formal parameters."

  xdoc::*evmac-topic-implementation-item-names-to-avoid*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-fn ((args true-listp) (call pseudo-event-formp) (ctx ctxp) state)
  :returns (mv erp (event "A @('pseudo-event-formp').") state)
  :mode :program
  :parents (atc-implementation)
  :short "Process the inputs and
          generate the events and code."
  (b* (((when (atc-table-lookup call (w state)))
        (acl2::value '(value-triple :redundant)))
       ((er (list fn1...fnp
                  output-file
                  pretty-printing
                  proofs
                  prog-const
                  wf-thm
                  fn-thms
                  print))
        (atc-process-inputs args ctx state)))
    (atc-gen-everything fn1...fnp
                        output-file
                        pretty-printing
                        proofs
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
