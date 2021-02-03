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

(include-book "kestrel/event-macros/xdoc-constructors" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc atc

  :parents (c)

  :short "ATC (<b>A</b>CL2 <b>T</b>o <b>C</b>),
          a C code generator for ACL2."

  :long

  (xdoc::topstring

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::evmac-section-intro

    (xdoc::p
     "This manual page contains user-level reference documentation for ATC.
      If you are new to ATC, you should start with the "
     (xdoc::seetopic "atc-tutorial" "tutorial")
     ", which provides user-level pedagogical information
      on how ATC works and how to use ATC effectively.")

    (xdoc::p
     "In this manual page,
      we refer to the official C standard in the manner explained in "
     (xdoc::seetopic "c" "the top-level XDOC topic of our C library")
     "."))

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::evmac-section-form

    (xdoc::codeblock
     "(atc fn1 ... fn"
     "     :const-name  ...  ; default :auto"
     "     :output-file ...  ; no default"
     "     :print       ...  ; default :result"
     "  )"))

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::evmac-section-inputs

    (xdoc::desc
     "@('fn1'), ..., @('fnp')"
     (xdoc::p
      "Names of target ACL2 functions to translate to C.")
     (xdoc::p
      "Each @('fni') must be a symbol that names a function
       that satisfies the conditions discussed in the section
       `Representation of C Code in ACL2'."))

    (xdoc::desc
     "@(':const-name') &mdash; default @(':auto')"
     (xdoc::p
      "Name of the generated ACL2 named constant
       that holds the abstract syntax tree of the generated C program.")
     (xdoc::p
      "This must be one of the following:")
     (xdoc::ul
      (xdoc::li
       "@(':auto'), to use the symbol @('*program*')
        in the @('\"C\"') package.")
      (xdoc::li
       "Any other symbol, to use as the name of the constant."))
     (xdoc::p
      "In the rest of this documentation page,
       let @('*const*') be the symbol specified by this input."))

    (xdoc::desc
     "@(':output-file') &mdash; no default"
     (xdoc::p
      "Path of the file where the generated C code goes.")
     (xdoc::p
      "This must be an ACL2 string that is a file path.
       The path may be absolute,
       or relative to
       the " (xdoc::seetopic "cbd" "current working directory") ".")
     (xdoc::p
      "The directory must exist.
       The file may or may not exist:
       if it does not exist, it is created;
       if it exists, it is overwritten.
       The file must include a @('.c') extension."))

    (xdoc::evmac-input-print atc))

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::evmac-section
    "Representation of C Code in ACL2"

    (xdoc::p
     "For now ATC supports the ACL2 representation of
      a single C translation unit (which goes into the generated file).
      This translation unit consists of one or more C function definitions.")

    (xdoc::p
     "Each C function definition is represented by an ACL2 function definition.
      These are the target ACL2 functions @('fni') passed as inputs.
      The order of the C functions in the translation unit is the same as
      the order of the inputs @('fn1'), ..., @('fnp').")

    (xdoc::p
     "The name of the symbol @('fni')
      must be a portable ASCII C identifier
      as defined in Section `Portable ASCII C Identifiers' below.
      The name of the symbol is used as
      the name of the corresponding C function.
      Therefore, the target functions must have all distinct symbol names;
      even if they are in different packages,
      they must have distinct symbol names
      (the package names are ignored).")

    (xdoc::p
     "The name of each symbol that is a formal parameter of each @('fni')
      must be a portable ASCII C identifier
      as defined in Section `Portable ASCII C Identifiers' below.
      The names of these symbols are used as
      the names of the formal parameters of the corresponding C function,
      in the same order.
      Therefore, the formal parameters of each @('fni')
      must have must have all distinct symbol names;
      even if they are in different packages,
      they must have distinct symbol names
      (the package names are ignored).")

    (xdoc::p
     "The guard of each @('fni') must include conjuncts of the form
      @('(sintp x)') for every formal parameter @('x').
      The conjuncts may be at any level of nesting,
      but must be easily extractable by flattening
      the @(tsee and) structure of the (translated) guard term.
      Thus, all the formal parameters of the C function represented by @('fni')
      have type @('int');
      the rest of the guard (i.e. additional requirements)
      are not explicitly represented in the C code.
      The C function returns an @('int') result;
      that this is the correct return type
      is guaranteed by the restrictions given below.")

    (xdoc::p
     "Each function @('fni') must be in logic mode and guard-verified.
      Its "
     (xdoc::seetopic "acl2::function-definedness" "unnormalized body")
     " must be an allowed outer term;
      this notion is defined in the sequel, along with the notions of
      allowed non-boolean terms,
      allowed pure non-boolean terms,
      and allowed boolean terms.")

    (xdoc::p
     "An <i>allowed outer term</i> is
      inductively defined as one of the following:")
    (xdoc::ul
     (xdoc::li
      "An allowed non-boolean term.
       That is, an allowed non-boolean term is also an allowed outer term.
       This represents a C @('return') statement
       whose expression is represented by the same term,
       viewed as an allowed non-boolean term.")
     (xdoc::li
      "A call of @(tsee if) on
       (i) a test that is an allowed boolean term and
       (ii) branches that are allowed outer terms.
       This represents a C @('if') conditional statement
       whose test expression is represented by the test term
       and whose branch blocks are represented by the branch terms.")
     (xdoc::li
      "A call of @(tsee if) on
       (i) a test of the form @('(mbt ...)') or @('(mbt$ ...)'),
       (ii) a `then' branch that is an allowed outer term, and
       (iii) an `else' branch that may be any ACL2 term.
       This represents the same C code represented by the `then' branch.
       Both the test and the `else' branch are ignored;
       the reason is that ATC generates C code under guard assumptions.
       In translated terms,
       @('(mbt x)') is
       @('(return-last \'acl2::mbe1-raw \'t x)'), and
       @('(mbt$ x)') is
       @('(return-last \'acl2::mbe1-raw \'t (if x \'nil \'t))');
       these are the patterns that ATC looks for.")
     (xdoc::li
      "A term of the form @('(let ((var init)) body)'),
       where @('var') is a portable ASCII C identifier
       as defined in Section `Portable ASCII C Identifiers' below,
       @('init') is an allowed non-boolean term,
       and @('body') is an allowed outer term.
       This represents
       a declaration of a C local variable represented  by @('var'),
       initialized with the C expression represented by @('init'),
       and followed by the C code represented by @('body');
       the C type of the variable is determined from the initializer.
       The @(tsee let) must have exactly one variable,
       and its symbol name must be distinct from
       the symbol names of all the other variables in scope
       (both function parameters and variables bound in enclosing @(tsee let)s).
       In translated terms,
       @('(let ((var init)) body)') is @('((lambda (var) body) init)');
       this is the pattern that ATC looks for."))

    (xdoc::p
     "An <i>allowed non-boolean term</i> is
      inductively defined as one of the following:")
    (xdoc::ul
     (xdoc::li
      "An allowed pure non-boolean term.")
     (xdoc::li
      "A call of a target function @('fnj'), with @('j < i'),
       on allowed pure non-boolean terms.
       The restriction @('j < i') means that
       no (direct or indirect) recursion is allowed
       and the target functions must be specified
       in a topological order of their call graph.
       This represents a call of the corresponding C function."))

    (xdoc::p
     "An <i>allowed pure non-boolean term</i> is
      inductively defined as one of the following:")
    (xdoc::ul
     (xdoc::li
      "A formal parameter of the function.
       This represents the corresponding C formal parameter,
       as an expression.")
     (xdoc::li
      "A variable introduced by @(tsee let) (as described above).
       This represents the corresponding C local variable,
       as an expression.")
     (xdoc::li
      "A call of @(tsee sint-const) on a quoted integer.
       This represents a C integer constants of type @('int').
       The guard verification requirement ensures that
       the quoted integer is within the range of type @('int').")
     (xdoc::li
      "A call of one of the following functions
       on allowed pure non-boolean terms:"
      (xdoc::ul
       (xdoc::li "@(tsee sint-plus)")
       (xdoc::li "@(tsee sint-minus)")
       (xdoc::li "@(tsee sint-bitnot)")
       (xdoc::li "@(tsee sint-lognot)")
       (xdoc::li "@(tsee sint-add)")
       (xdoc::li "@(tsee sint-sub)")
       (xdoc::li "@(tsee sint-mul)")
       (xdoc::li "@(tsee sint-div)")
       (xdoc::li "@(tsee sint-rem)")
       (xdoc::li "@(tsee sint-shl-sint)")
       (xdoc::li "@(tsee sint-shr-sint)")
       (xdoc::li "@(tsee sint-lt)")
       (xdoc::li "@(tsee sint-gt)")
       (xdoc::li "@(tsee sint-le)")
       (xdoc::li "@(tsee sint-ge)")
       (xdoc::li "@(tsee sint-eq)")
       (xdoc::li "@(tsee sint-ne)")
       (xdoc::li "@(tsee sint-bitand)")
       (xdoc::li "@(tsee sint-bitxor)")
       (xdoc::li "@(tsee sint-bitior)")
       (xdoc::li "@(tsee sint-logand)")
       (xdoc::li "@(tsee sint-logor)"))
      "This represents
       the corresponding C operator applied to C @('int') values.
       The guard verification requirement ensures that
       the operators are always applied to values with a well-defined result,
       and that result is an @('int') value.
       If the operator is @('&&') or @('||'),
       this represents a strict (i.e. not non-strict) use of them;
       see below for how to represent non-strict uses of them,
       but the strict version is slightly simpler when usable.")
     (xdoc::li
      "A call of @(tsee sint01) on an allowed boolean term.
       This converts an allowed boolean term
       to an allowed pure non-boolean term.")
     (xdoc::li
      "A call of @(tsee if) on
       (i) a test that is an allowed boolean term and
       (ii) branches that are allowed pure non-boolean terms.
       This represents a C @('?:') conditional expression
       whose test expression is represented by the test term
       and whose branch expressions are represented by the branch terms.")
     (xdoc::li
      "A call of @(tsee if) on
       (i) a test of the form @('(mbt ...)') or @('(mbt$ ...)'),
       (ii) a `then' branch that is an allowed pure non-boolean term, and
       (iii) an `else' branch that may be any ACL2 term.
       This represents the same C code represented by the `then' branch.
       Both the test and the `else' branch are ignored;
       the reason is that ATC generates C code under guard assumptions.
       In translated terms,
       @('(mbt x)') is
       @('(return-last \'acl2::mbe1-raw \'t x)'), and
       @('(mbt$ x)') is
       @('(return-last \'acl2::mbe1-raw \'t (if x \'nil \'t))');
       these are the patterns that ATC looks for."))

    (xdoc::p
     "An <i>allowed boolean term</i> is
      inductively defined as one of the following:")
    (xdoc::ul
     (xdoc::li
      "A call of @(tsee sint-nonzerop) on an allowed pure non-boolean term.
       This converts an allowed pure non-boolean term
       to an allowed boolean term.")
     (xdoc::li
      "A call of one of the following functions and macros
       on allowed boolean terms:"
      (xdoc::ul
       (xdoc::li "@(tsee not)")
       (xdoc::li "@(tsee and)")
       (xdoc::li "@(tsee or)"))
      "The first one is a function, while the other two are macros.
       This represents the corresponding C logical operator
       (negation @('!'), conjunction @('&&'), disjunction @('||'));
       conjunction and disjunctions are represented non-strictly.
       In translated terms, @('(and x y)') and @('(or x y)') are
       @('(if x y \'nil)') and @('(or x x y)'):
       these are the patterns that ATC looks for."))

    (xdoc::p
     "Allowed outer terms represent C statements,
      while allowed non-boolean and boolean terms represent C expressions;
      the fact that expressions are ``inside'' statements
      motivates the term `outer'.
      The allowed boolean terms return ACL2 boolean values,
      while the allowed outer (including non-boolean) terms return
      ACL2 non-boolean values that represent C values:
      the distinction between these two kinds of allowed terms
      stems from the need to represent C's non-strictness in ACL2:
      C's non-strict constructs are
      @('if') statements,
      @('?:') expressions,
      @('&&') expressions, and
      @('||') expressions;
      C's only non-strict construct is @(tsee if)
      (which the macros @(tsee and) and @(tsee or) expand to, see above).
      Allowed pure non-boolean terms
      represent C expressions without side effects;
      C function calls may be side-effect-free,
      but in general we do not consider them pure,
      so they are represented by allowed non-boolean terms
      that are not allowed pure non-boolean terms.
      Allowed boolean terms are always pure;
      so they do not need the explicit designation `pure'
      because they are the only allowed boolean terms.")

    (xdoc::p
     "The above restrictions imply that @('fni') returns a single result,
      i.e. not an @(tsee mv) result.
      By construction, this result has C type @('int').")

    (xdoc::p
     "The body of the C function represented by each @('fni')
      is the compound statement consisting of
      the block items (i.e. statements and declarations)
      represented by the ACL2 function's body
      (which is an allowed outer term).")

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (xdoc::evmac-subsection
     "Portable ASCII C Identifiers"

     (xdoc::p
      "A portable ASCII C identifier is
       a non-empty sequence of ASCII characters that:")
     (xdoc::ul
      (xdoc::li
       "Consists of only
        the 26 uppercase Latin letters,
        the 26 lowercase Latin letters,
        the 10 numeric digits,
        and the underscore.")
      (xdoc::li
       "Starts with a letter or underscore.")
      (xdoc::li
       "Differs from all the C keywords, which are"
       (xdoc::codeblock
        "auto       extern     short      while"
        "break      float      signed     _Alignas"
        "case       for        sizeof     _Alignof"
        "char       goto       static     _Atomic"
        "const      if         struct     _Bool"
        "continue   inline     switch     _Complex"
        "default    int        typedef    _Generic"
        "do         long       union      _Imaginary"
        "double     register   unsigned   _Noreturn"
        "else       restrict   void       _Static_assert"
        "enum       return     volatile   _Thread_local")))

     (xdoc::p
      "[C:6.4.2] allows the following characters in identifiers:")
     (xdoc::ol
      (xdoc::li
       "The ten digits (but not in the starting position).
        Even though [C] does not prescribe the use of (a superset of) ASCII,
        these have obvious ASCII counterparts.")
      (xdoc::li
       "The 26 uppercase Latin letters,
        the 26 lowercase Latin letter,
        and the underscore.
        Even though [C] does not prescribe the use of (a superset of) ASCII,
        these have obvious ASCII counterparts.")
      (xdoc::li
       "Some ranges of universal characters
        (some of which cannot occur in the starting position),
        none of which are ASCII.")
      (xdoc::li
       "Other implementation-defined characters.
        These are not portable."))
     (xdoc::p
      "Thus, portable ASCII C identifiers consists of only 1 and 2 above,
       excluding 3 (non-ASCII) and 4 (non-portable).")))

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::evmac-section-generated

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (xdoc::evmac-subsection
     "Constant"

     (xdoc::p
      "ATC generates an event")
     (xdoc::codeblock
      "(defconst *const* ...)")
     (xdoc::p
      "where @('...') is the abstract syntax tree of
       the generated C translation unit,
       which ATC also pretty-prints and writes
       to the file specified by the @(':output-file') input."))

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (xdoc::evmac-subsection
     "Theorems"

     (xdoc::p
      "ATC generates an event")
     (xdoc::codeblock
      "(defthm *const*-well-formed ...)")
     (xdoc::p
      "where @('...') is a theorem about @('*const*') stating that
       the generated (abstract syntax tree of the) translation unit
       is statically well-formed,
       i.e. it compiles according to [C].")

     (xdoc::p
      "For each target function @('fn'), ATC generates an event")
     (xdoc::codeblock
      "(defthm *const*-fn-correct ...)")
     (xdoc::p
      "where @('...') is a theorem about @('fn') and @('*const*') stating that,
       under the guard of @('fn'),
       executing the C dynamic semantics on
       the C function generated from @('fn')
       yields the same result as the function @('fn').
       That is,
       the C function is functionally equivalent to the ACL2 function.")))

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::evmac-section
    "Generated C Code"

    (xdoc::p
     "ATC generates a single C file that contains
      a translation unit that contains
      a C function for each target ACL2 function @('fni'),
      as explained in Section `Representation of C Code in ACL2'.")

    (xdoc::p
     "The guard verification requirement stated earlier for each @('fni')
      implies that the generated C operations
      never exhibit undefined behavior,
      provided that they are called with values
      whose ACL2 counterparts satisfy the guard of @('fni').")

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (xdoc::evmac-subsection
     "Compiling and Running the C Code"

     (xdoc::p
      "The generated C code can be compiled and run as any other C code.
       For instance, one can use @('gcc') on macOS or Linux.")

     (xdoc::p
      "Just compiling the generated C file may result in an error
       due to the lack of a @('main') function in the file.
       The code generated by ATC is meant to be called by external C code,
       where presumably a @('main') function will exist.
       To test the generated code,
       one can write a separate C file with a @('main') function,
       and compile both files together.
       By default, an executable @('a.out') will be generated
       (if using @('gcc') on macOS or Linux).")

     (xdoc::p
      "The directory @('[books]/kestrel/c/atc/tests')
       contains some examples of C code generation
       and handwritten C code to test the generated code.")))

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::evmac-section
    "Redundancy"

    (xdoc::p
     "A call of @('atc') is redundant if an only if
      it is identical to a previous successful call of @('atc')."))))
