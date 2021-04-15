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

(include-book "integers")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ atc-integer-operations
  :parents (atc-dynamic-semantics)
  :short "C integer operations for ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "We define ACL2 functions that model C operations on integers.
     We only cover standard unsigned and signed integers, except @('_Bool').")
   (xdoc::p
    "We introduce functions @('<type>-const')
     to construct integer constants.
     Following [C:6.4.4.1], these have non-negative values
     and may have only certain integer types,
     namely those with the same rank as @('int') or higher.
     Thus we introduce a function for each integer type in those ranks.
     Each takes a natural number as argument,
     which the guard further constrains to be representable in the type.")
   (xdoc::p
    "We introduce functions @('<type>-nonzerop')
     to turn C integers into ACL2 booleans,
     i.e. to test whether the integers are not zero.
     These are used to represent shallowly embedded tests.
     We introduce a function for each integer type.")
   (xdoc::p
    "We introduce functions @('<type>-integer-value')
     to turn C integers into ACL2 integers.
     These are used as operands of certain C operations
     whose result does not depend on the C type of the operand,
     but rather just on its (mathematical) integer value.
     We define one function for each integer type.
     Even though these functions are essentially synonyms of
     the deconstructors of the fixtypes of the integer values,
     having a separate function provides more abstraction,
     should the fixtype representation be changed in the future.")
   (xdoc::p
    "We introduce a single function @(tsee sint01)
     to turn ACL2 booleans into the @('int') 0 or 1 (for false and true).
     This function is used in the ACL2 representation of
     non-strict C conjunctions @('&&') and disjunctions @('||'),
     which always return @('int') 0 or 1 [C:6.5.13/3] [C:6.5.14/3].
     We do not need similar functions for other types,
     because the 0 or 1 are always @('int')
     for operations like @('&&') and @('||').")
   (xdoc::p
    "We introduce functions for the unary and binary operators,
     as detailed below.")
   (xdoc::p
    "For each unary operator, we introduce a function for each integer type.
     The function takes an argument of that integer type,
     and returns a result of possibly different type.
     For all the unary integer operators except @('!'),
     C promotes the operands [C:6.3.1.1/2] to types
     whose rank is that of @('int') or higher:
     that is the result type of the operator.
     Our generated functions perform the promotion internally,
     for the type of rank lower than @('int'),
     and then call the function for the promoted type.
     C does not promote the operand of @('!'),
     so neither do our generated functions;
     these always return an @('int').")
   (xdoc::p
    "For all the binary integer operators
     except @('<<'), @('>>'), @('&&'), and @('||'),
     C subjects the operands to the usual arithmetic conversions [C:6.3.1.8],
     which involve promoting them [C:6.3.1.1/2]
     and turning them into a common type of rank @('int') or higher:
     thus, it suffices to define functions for operands
     of the same type of rank @('int') or higher.
     C also promotes, individually, the operands of @('<<') and @('>>'),
     but without turning them into a common type;
     while the type of the first operand affects the result,
     only the (mathematical) integer value of the second operand does,
     and thus we introduce functions
     that take an ACL2 integer as the second operand.
     We also have functions
     that take a C integer as the second operand,
     of the same type as the first operand;.
     Although C does not promote the operands of @('&&') and @('||'),
     note that performing explicit promotions does not affect the result:
     thus, we only define functions for these operators
     for operands of equal types of rank @('int') or higher;
     we may actually remove these functions altogether,
     and always require their non-strict representation in ACL2.")
   (xdoc::p
    "When the exact result of an aritmetic operation on signed integers
     is not representable in the signed integer type,
     the behavior is undefined [C:6.5/5]:
     our functions for signed integer operations
     have guards requiring the results to be representable.")
   (xdoc::p
    "Arithmetic on unsigned integers is modular [C:6.2.5/9].")
   (xdoc::p
    "The right operand of a signed shift operator
     must be non-negative and below the bit size of the left operand
     [C:6.5.7/3].
     The left operand, when signed, must be non-negative.")
   (xdoc::p
    "For division and remainder,
     the guard also requires the divisor to be non-zero.")
   (xdoc::p
    "Note that the relational and equality operators,
     as well as the logical negation, conjunction, and disjunction operations,
     always return @('int'), regardless of the types of the operands.")
   (xdoc::p
    "The logical conjunction and disjunction operators defined here
     are strict versions, because they take two values as inputs.
     Non-strict versions are represented differently in ACL2.")
   (xdoc::p
    "The bitwise operations assume a two's complement representation,
     which is consistent with "
    (xdoc::seetopic "atc-integers" "our model of integer values")
    "; these operations depend on the C representation of integers [C:6.5/4]."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-def-integer-type-to-string (type)
  :guard (member-eq type '(schar
                           uchar
                           sshort
                           ushort
                           sint
                           uint
                           slong
                           ulong
                           sllong
                           ullong))
  :returns (string stringp)
  :short "Turn an integer type symbol into a string describing it."
  (case type
    (schar "signed char")
    (uchar "unsigned char")
    (sshort "signed short")
    (ushort "unsigned short")
    (sint "signed int")
    (uint "unsigned int")
    (slong "signed long")
    (ulong "unsigned long")
    (sllong "signed long long")
    (ullong "unsigned long long")
    (t (prog2$ (raise "Internal error: unknown type ~x0." type) ""))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-def-integer-operations-1 (type)
  :guard (member-eq type '(schar
                           uchar
                           sshort
                           ushort
                           sint
                           uint
                           slong
                           ulong
                           sllong
                           ullong))
  :short "Event to generate the ACL2 models of
          the C integer operations that involve one integer type."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is a new improved macro that will replace
     the old @(tsee atc-def-integer-operations), which will be removed."))

  (b* ((type-string (atc-def-integer-type-to-string type))
       (typep (add-suffix type "P"))
       (type->get (add-suffix type "->GET"))
       (type-integerp (add-suffix type "-INTEGERP"))
       (type-const (add-suffix type "-CONST"))
       (type-nonzerop (add-suffix type "-NONZEROP"))
       (type-integer-value (add-suffix type "-INTEGER-VALUE"))
       (plus-type (acl2::packn-pos (list "PLUS-" type) 'atc))
       (promotype (case type
                    (schar 'sint)
                    (uchar (if (<= (uchar-max) (sint-max)) 'sint 'uint))
                    (sshort 'sint)
                    (ushort (if (<= (ushort-max) (sint-max)) 'sint 'uint))
                    (t type)))
       (promotypep (add-suffix promotype "P"))
       (promotype-integerp-alt-def (add-suffix promotype "-INTEGERP-ALT-DEF"))
       )

    `(progn

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       ,@(and
          (member-eq type '(sint uint slong ulong sllong ullong))
          `((define ,type-const ((x natp))
              :guard (,type-integerp x)
              :returns (result ,typep)
              :short ,(concatenate 'string
                                   "Integer constant of type @('"
                                   type-string
                                   "').")
              (,type x))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,type-nonzerop ((x ,typep))
         :returns (yes/no booleanp)
         :short ,(concatenate 'string
                              "Check if a value of type @('"
                              type-string
                              "') is not 0.")
         (/= (,type->get x) 0)
         :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,type-integer-value ((x ,typep))
         :returns (ival integerp)
         :short ,(concatenate 'string
                              "Turn a vaue of type @('"
                              type-string
                              "') into an ACL2 integer value.")
         (,type->get x)
         :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,plus-type ((x ,typep))
         :returns (result ,promotypep)
         :short ,(concatenate 'string
                              "Unary plus of a value of type @('"
                              type-string
                              "') [C:6.5.3].")
         (,promotype (,type->get x))
         :guard-hints (("Goal" :in-theory (enable ,promotype-integerp-alt-def)))
         :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       )))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(progn
  (make-event (atc-def-integer-operations-1 'schar))
  (make-event (atc-def-integer-operations-1 'uchar))
  (make-event (atc-def-integer-operations-1 'sshort))
  (make-event (atc-def-integer-operations-1 'ushort))
  (make-event (atc-def-integer-operations-1 'sint))
  (make-event (atc-def-integer-operations-1 'uint))
  (make-event (atc-def-integer-operations-1 'slong))
  (make-event (atc-def-integer-operations-1 'ulong))
  (make-event (atc-def-integer-operations-1 'sllong))
  (make-event (atc-def-integer-operations-1 'ullong))
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmacro+ atc-def-integer-operations (type)
  (declare (xargs :guard (member-eq type '(:char :short :int :long :llong))))
  :short "Macro to generate the models of the C integer operations."
  :long
  (xdoc::topstring
   (xdoc::p
    "The functions and theorems that form the model,
     for each of (@('unsigned') and @('signed'))
     @('char'), @('short'), @('int'), @('long'), and @('long long'),
     are quite similar in structure.
     Thus, we define and use this macro to introduce them.")
   (xdoc::p
    "For @('char') and @('short') we only generate a few operations.
     Due to the integer promotions and the usual arithmetic conversions,
     most operations are for the types of higher ranks."))

  (b* ((type-string (acl2::string-downcase
                     (if (eq type :llong) "LONG LONG" (symbol-name type))))
       (type-bits (acl2::packn-pos (list type "-BITS") 'atc))
       (stype (acl2::packn-pos (list "S" type) 'atc))
       (utype (acl2::packn-pos (list "U" type) 'atc))
       (stype-min (add-suffix stype "-MIN"))
       (stype-max (add-suffix stype "-MAX"))
       (utype-max (add-suffix utype "-MAX"))
       (stypep (add-suffix stype "P"))
       (utypep (add-suffix utype "P"))
       (stype->get (add-suffix stype "->GET"))
       (utype->get (add-suffix utype "->GET"))
       (stype-integerp (add-suffix stype "-INTEGERP"))
       (utype-integerp (add-suffix utype "-INTEGERP"))
       (stype-integerp-alt-def (add-suffix stype-integerp "-ALT-DEF"))
       (utype-integerp-alt-def (add-suffix utype-integerp "-ALT-DEF"))
       (stype-nonzerop (add-suffix stype "-NONZEROP"))
       (utype-nonzerop (add-suffix utype "-NONZEROP"))
       (stype-integer-value (add-suffix stype "-INTEGER-VALUE"))
       (utype-integer-value (add-suffix utype "-INTEGER-VALUE"))
       (minus-stype (acl2::packn-pos (list "MINUS-" stype) 'atc))
       (minus-utype (acl2::packn-pos (list "MINUS-" utype) 'atc))
       (minus-stype-okp (add-suffix minus-stype "-OKP"))
       (bitnot-stype (acl2::packn-pos (list "BITNOT-" stype) 'atc))
       (bitnot-utype (acl2::packn-pos (list "BITNOT-" utype) 'atc))
       (lognot-stype (acl2::packn-pos (list "LOGNOT-" stype) 'atc))
       (lognot-utype (acl2::packn-pos (list "LOGNOT-" utype) 'atc))
       (add-stype-stype (acl2::packn-pos (list "ADD-" stype "-" stype) 'atc))
       (add-utype-utype (acl2::packn-pos (list "ADD-" utype "-" utype) 'atc))
       (add-stype-stype-okp (add-suffix add-stype-stype "-OKP"))
       (sub-stype-stype (acl2::packn-pos (list "SUB-" stype "-" stype) 'atc))
       (sub-utype-utype (acl2::packn-pos (list "SUB-" utype "-" utype) 'atc))
       (sub-stype-stype-okp (add-suffix sub-stype-stype "-OKP"))
       (mul-stype-stype (acl2::packn-pos (list "MUL-" stype "-" stype) 'atc))
       (mul-utype-utype (acl2::packn-pos (list "MUL-" utype "-" utype) 'atc))
       (mul-stype-stype-okp (add-suffix mul-stype-stype "-OKP"))
       (div-stype-stype (acl2::packn-pos (list "DIV-" stype "-" stype) 'atc))
       (div-utype-utype (acl2::packn-pos (list "DIV-" utype "-" utype) 'atc))
       (div-stype-stype-okp (add-suffix div-stype-stype "-OKP"))
       (div-utype-utype-okp (add-suffix div-utype-utype "-OKP"))
       (rem-stype-stype (acl2::packn-pos (list "REM-" stype "-" stype) 'atc))
       (rem-utype-utype (acl2::packn-pos (list "REM-" utype "-" utype) 'atc))
       (rem-stype-stype-okp (add-suffix rem-stype-stype "-OKP"))
       (rem-utype-utype-okp (add-suffix rem-utype-utype "-OKP"))
       (shl-stype (acl2::packn-pos (list "SHL-" stype) 'atc))
       (shl-utype (acl2::packn-pos (list "SHL-" utype) 'atc))
       (shl-stype-okp (add-suffix shl-stype "-OKP"))
       (shl-utype-okp (add-suffix shl-utype "-OKP"))
       (shr-stype (acl2::packn-pos (list "SHR-" stype) 'atc))
       (shr-utype (acl2::packn-pos (list "SHR-" utype) 'atc))
       (shr-stype-okp (add-suffix shr-stype "-OKP"))
       (shr-utype-okp (add-suffix shr-utype "-OKP"))
       (shl-stype-stype (acl2::packn-pos (list "SHL-" stype "-" stype) 'atc))
       (shl-utype-utype (acl2::packn-pos (list "SHL-" utype "-" utype) 'atc))
       (shl-stype-stype-okp (add-suffix shl-stype-stype "-OKP"))
       (shl-utype-utype-okp (add-suffix shl-utype-utype "-OKP"))
       (shr-stype-stype (acl2::packn-pos (list "SHR-" stype "-" stype) 'atc))
       (shr-utype-utype (acl2::packn-pos (list "SHR-" utype "-" utype) 'atc))
       (shr-stype-stype-okp (add-suffix shr-stype-stype "-OKP"))
       (shr-utype-utype-okp (add-suffix shr-utype-utype "-OKP"))
       (lt-stype-stype (acl2::packn-pos (list "LT-" stype "-" stype) 'atc))
       (lt-utype-utype (acl2::packn-pos (list "LT-" utype "-" utype) 'atc))
       (gt-stype-stype (acl2::packn-pos (list "GT-" stype "-" stype) 'atc))
       (gt-utype-utype (acl2::packn-pos (list "GT-" utype "-" utype) 'atc))
       (le-stype-stype (acl2::packn-pos (list "LE-" stype "-" stype) 'atc))
       (le-utype-utype (acl2::packn-pos (list "LE-" utype "-" utype) 'atc))
       (ge-stype-stype (acl2::packn-pos (list "GE-" stype "-" stype) 'atc))
       (ge-utype-utype (acl2::packn-pos (list "GE-" utype "-" utype) 'atc))
       (eq-stype-stype (acl2::packn-pos (list "EQ-" stype "-" stype) 'atc))
       (eq-utype-utype (acl2::packn-pos (list "EQ-" utype "-" utype) 'atc))
       (ne-stype-stype (acl2::packn-pos (list "NE-" stype "-" stype) 'atc))
       (ne-utype-utype (acl2::packn-pos (list "NE-" utype "-" utype) 'atc))
       (bitand-stype-stype (acl2::packn-pos (list "BITAND-" stype "-" stype) 'atc))
       (bitand-utype-utype (acl2::packn-pos (list "BITAND-" utype "-" utype) 'atc))
       (bitxor-stype-stype (acl2::packn-pos (list "BITXOR-" stype "-" stype) 'atc))
       (bitxor-utype-utype (acl2::packn-pos (list "BITXOR-" utype "-" utype) 'atc))
       (bitior-stype-stype (acl2::packn-pos (list "BITIOR-" stype "-" stype) 'atc))
       (bitior-utype-utype (acl2::packn-pos (list "BITIOR-" utype "-" utype) 'atc))
       (logand-stype-stype (acl2::packn-pos (list "LOGAND-" stype "-" stype) 'atc))
       (logand-utype-utype (acl2::packn-pos (list "LOGAND-" utype "-" utype) 'atc))
       (logor-stype-stype (acl2::packn-pos (list "LOGOR-" stype "-" stype) 'atc))
       (logor-utype-utype (acl2::packn-pos (list "LOGOR-" utype "-" utype) 'atc)))

    `(progn

       ;; The following operations are defined for all the types.

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,lognot-stype ((x ,stypep))
         :returns (result sintp)
         :short ,(concatenate 'string
                              "Logical complement of @('signed "
                              type-string
                              "') values [C:6.5.3].")
         (if (= (,stype->get x) 0)
             (sint 1)
           (sint 0))
         :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,lognot-utype ((x ,utypep))
         :returns (result sintp)
         :short ,(concatenate 'string
                              "Logical complement of @('unsigned "
                              type-string
                              "') values [C:6.5.3].")
         (if (= (,utype->get x) 0)
             (sint 1)
           (sint 0))
         :hooks (:fix))

       ;; The following operations are defined only for the higher-rank types.

       ,@(and
          (member-eq type '(:int :long :llong))
          `(

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,minus-stype-okp ((x ,stypep))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if unary minus of @('signed "
                                   type-string
                                   "') values is well-defined.")
              (,stype-integerp (- (,stype->get x)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,minus-stype ((x ,stypep))
              :guard (,minus-stype-okp x)
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Unary minus of @('signed "
                                   type-string
                                   "') values [C:6.5.3].")
              (,stype (- (,stype->get x)))
              :guard-hints (("Goal" :in-theory (enable ,minus-stype-okp)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,minus-utype ((x ,utypep))
              :returns (result ,utypep)
              :short ,(concatenate 'string
                                   "Unary minus of @('unsigned "
                                   type-string
                                   "') values [C:6.5.3].")
              (,utype (mod (- (,utype->get x))
                           (1+ (,utype-max))))
              :guard-hints
              (("Goal" :in-theory (enable ,utype-integerp-alt-def)))
              :hooks (:fix)
              :prepwork
              ((local (include-book "arithmetic-3/top" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,bitnot-stype ((x ,stypep))
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Bitwise complement of @('signed "
                                   type-string
                                   "') values [C:6.5.3].")
              (,stype (lognot (,stype->get x)))
              :guard-hints (("Goal" :in-theory (enable ,stype-integerp-alt-def
                                                       ,stype->get
                                                       ,stypep
                                                       (:e ,stype-min)
                                                       (:e ,stype-max))))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,bitnot-utype ((x ,utypep))
              :returns (result ,utypep)
              :short ,(concatenate 'string
                                   "Bitwise complement of @('unsigned "
                                   type-string
                                   "') values [C:6.5.3].")
              (,utype (mod (lognot (,utype->get x))
                           (1+ (,utype-max))))
              :guard-hints
              (("Goal" :in-theory (enable ,utype-integerp-alt-def)))
              :hooks (:fix)
              :prepwork
              ((local (include-book "arithmetic-3/top" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,add-stype-stype-okp ((x ,stypep) (y ,stypep))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if addition of @('signed "
                                   type-string
                                   "') values is well-defined.")
              (,stype-integerp (+ (,stype->get x) (,stype->get y)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,add-stype-stype ((x ,stypep) (y ,stypep))
              :guard (,add-stype-stype-okp x y)
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Addition of @('signed "
                                   type-string
                                   "') values [C:6.5.6].")
              (,stype (+ (,stype->get x) (,stype->get y)))
              :guard-hints (("Goal" :in-theory (enable ,add-stype-stype-okp)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,add-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result ,utypep)
              :short ,(concatenate 'string
                                   "Addition of @('unsigned "
                                   type-string
                                   "') values [C:6.5.6].")
              (,utype (mod (+ (,utype->get x) (,utype->get y))
                           (1+ (,utype-max))))
              :guard-hints
              (("Goal" :in-theory (enable ,utype-integerp-alt-def)))
              :hooks (:fix)
              :prepwork
              ((local (include-book "arithmetic-3/top" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,sub-stype-stype-okp ((x ,stypep) (y ,stypep))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if subtraction of @('signed "
                                   type-string
                                   "') values is well-defined.")
              (,stype-integerp (- (,stype->get x) (,stype->get y)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,sub-stype-stype ((x ,stypep) (y ,stypep))
              :guard (,sub-stype-stype-okp x y)
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Subtraction of @('signed "
                                   type-string
                                   "') values [C:6.5.6].")
              (,stype (- (,stype->get x) (,stype->get y)))
              :guard-hints (("Goal" :in-theory (enable ,sub-stype-stype-okp)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,sub-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result ,utypep)
              :short ,(concatenate 'string
                                   "Subtraction of @('unsigned "
                                   type-string
                                   "') values [C:6.5.6].")
              (,utype (mod (- (,utype->get x) (,utype->get y))
                           (1+ (,utype-max))))
              :guard-hints
              (("Goal" :in-theory (enable ,utype-integerp-alt-def)))
              :hooks (:fix)
              :prepwork
              ((local (include-book "arithmetic-3/top" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,mul-stype-stype-okp ((x ,stypep) (y ,stypep))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if multiplication of @('signed "
                                   type-string
                                   "') values is well-defined.")
              (,stype-integerp (* (,stype->get x) (,stype->get y)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,mul-stype-stype ((x ,stypep) (y ,stypep))
              :guard (,mul-stype-stype-okp x y)
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Multiplication of @('signed "
                                   type-string
                                   "') values [C:6.5.5].")
              (,stype (* (,stype->get x) (,stype->get y)))
              :guard-hints (("Goal" :in-theory (enable ,mul-stype-stype-okp)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,mul-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result ,utypep)
              :short ,(concatenate 'string
                                   "Multiplication of @('unsigned "
                                   type-string
                                   "') values [C:6.5.5].")
              (,utype (mod (* (,utype->get x) (,utype->get y))
                           (1+ (,utype-max))))
              :guard-hints
              (("Goal" :in-theory (enable ,utype-integerp-alt-def)))
              :hooks (:fix)
              :prepwork
              ((local (include-book "arithmetic-3/top" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,div-stype-stype-okp ((x ,stypep) (y ,stypep))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if division of @('signed "
                                   type-string
                                   "') values is well-defined.")
              (and (not (equal (,stype->get y) 0))
                   (,stype-integerp (truncate (,stype->get x) (,stype->get y))))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,div-stype-stype ((x ,stypep) (y ,stypep))
              :guard (,div-stype-stype-okp x y)
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Division of @('signed "
                                   type-string
                                   "') values [C:6.5.5].")
              (,stype (truncate (,stype->get x) (,stype->get y)))
              :guard-hints (("Goal" :in-theory (enable ,div-stype-stype-okp)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,div-utype-utype-okp ((x ,utypep) (y ,utypep))
              :returns (yes/no booleanp)
              (declare (ignore x))
              :short ,(concatenate 'string
                                   "Check if division of @('unsigned "
                                   type-string
                                   "') values is well-defined.")
              (not (equal (,utype->get y) 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,div-utype-utype ((x ,utypep) (y ,utypep))
              :guard (,div-utype-utype-okp x y)
              :returns (result ,utypep)
              :short ,(concatenate 'string
                                   "Division of @('unsigned "
                                   type-string
                                   "') values [C:6.5.5].")
              (,utype (mod (truncate (,utype->get x) (,utype->get y))
                           (1+ (,utype-max))))
              :guard-hints
              (("Goal" :in-theory (enable ,div-utype-utype-okp
                                          ,utype-integerp-alt-def)))
              :hooks (:fix)
              :prepwork
              ((local (include-book "arithmetic-3/top" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,rem-stype-stype-okp ((x ,stypep) (y ,stypep))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if remainder of @('signed "
                                   type-string
                                   "') values is well-defined.")
              (and (not (equal (,stype->get y) 0))
                   (,stype-integerp (truncate (,stype->get x) (,stype->get y))))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,rem-stype-stype ((x ,stypep) (y ,stypep))
              :guard (,rem-stype-stype-okp x y)
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Remainder of @('signed "
                                   type-string
                                   "') values [C:6.5.5].")
              (,stype (rem (,stype->get x) (,stype->get y)))
              :guard-hints (("Goal" :in-theory (enable ,rem-stype-stype-okp
                                                       ,stype-integerp
                                                       ,stype->get
                                                       ,stypep)))
              :hooks (:fix)
              :prepwork
              ((local (include-book "arithmetic-3/top" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,rem-utype-utype-okp ((x ,utypep) (y ,utypep))
              (declare (ignore x))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if remainder of @('unsigned "
                                   type-string
                                   "') values is well-defined.")
              (not (equal (,utype->get y) 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,rem-utype-utype ((x ,utypep) (y ,utypep))
              :guard (,rem-utype-utype-okp x y)
              :returns (result ,utypep)
              :short ,(concatenate 'string
                                   "Remainder of @('unsigned "
                                   type-string
                                   "') values [C:6.5.5].")
              (,utype (mod (rem (,utype->get x) (,utype->get y))
                           (1+ (,utype-max))))
              :guard-hints
              (("Goal" :in-theory (enable ,rem-utype-utype-okp
                                          ,utype-integerp-alt-def)))
              :hooks (:fix)
              :prepwork
              ((local (include-book "arithmetic-3/top" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shl-stype-okp ((x ,stypep) (y integerp))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if left shift of @('signed "
                                   type-string
                                   "') values is well-defined.")
              (and (integer-range-p 0 (,type-bits) (ifix y))
                   (>= (,stype->get x) 0)
                   (,stype-integerp (* (,stype->get x)
                                       (expt 2 (ifix y)))))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shl-stype ((x ,stypep) (y integerp))
              :guard (,shl-stype-okp x y)
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Left shift of @('signed "
                                   type-string
                                   "') values [C:6.5.7].")
              (,stype (* (,stype->get x)
                         (expt 2 (ifix y))))
              :guard-hints (("Goal" :in-theory (enable ,shl-stype-okp)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shl-stype-stype-okp ((x ,stypep) (y ,stypep))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if left shift of @('signed "
                                   type-string
                                   "') values by @('signed "
                                   type-string
                                   "') values is well-defined.")
              (,shl-stype-okp x (,stype-integer-value y))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shl-stype-stype ((x ,stypep) (y ,stypep))
              :guard (,shl-stype-stype-okp x y)
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Left shift of @('signed "
                                   type-string
                                   "') values by @('signed "
                                   type-string
                                   "') values [C:6.5.7].")
              (,shl-stype x (,stype-integer-value y))
              :guard-hints (("Goal" :in-theory (enable ,shl-stype-stype-okp)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shl-utype-okp ((x ,utypep) (y integerp))
              (declare (ignore x))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if left shift of @('unsigned "
                                   type-string
                                   "') values is well-defined.")
              (integer-range-p 0 (,type-bits) (ifix y))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shl-utype ((x ,utypep) (y integerp))
              :guard (,shl-utype-okp x y)
              :returns (result ,utypep)
              :short ,(concatenate 'string
                                   "Left shift of @('unsigned "
                                   type-string
                                   "') values [C:6.5.7].")
              (,utype (mod (* (,utype->get x)
                              (expt 2 (ifix y)))
                           (1+ (,utype-max))))
              :guard-hints
              (("Goal" :in-theory (enable ,shl-utype-okp
                                          ,utype-integerp-alt-def)))
              :hooks (:fix)
              :prepwork
              ((local (include-book "arithmetic-3/top" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shl-utype-utype-okp ((x ,utypep) (y ,utypep))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if left shift of @('unsigned "
                                   type-string
                                   "') values by @('unsigned "
                                   type-string
                                   "') values is well-defined.")
              (,shl-utype-okp x (,utype-integer-value y))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shl-utype-utype ((x ,utypep) (y ,utypep))
              :guard (,shl-utype-utype-okp x y)
              :returns (result ,utypep)
              :short ,(concatenate 'string
                                   "Left shift of @('unsigned "
                                   type-string
                                   "') values by @('unsigned "
                                   type-string
                                   "') values [C:6.5.7].")
              (,shl-utype x (,utype-integer-value y))
              :guard-hints (("Goal" :in-theory (enable ,shl-utype-utype-okp)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shr-stype-okp ((x ,stypep) (y integerp))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if right shift of @('signed "
                                   type-string
                                   "') values is well-defined.")
              (and (integer-range-p 0 (,type-bits) (ifix y))
                   (>= (,stype->get x) 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shr-stype ((x ,stypep) (y integerp))
              :guard (,shr-stype-okp x y)
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Right shift of @('signed "
                                   type-string
                                   "') values [C:6.5.7].")
              (,stype (truncate (,stype->get x)
                                (expt 2 (ifix y))))
              :guard-hints (("Goal" :in-theory (enable ,shr-stype-okp
                                                       ,stype-integerp
                                                       ,stype->get
                                                       ,stypep)))
              :hooks (:fix)
              :prepwork
              ((local
                (include-book "kestrel/arithmetic-light/expt" :dir :system))
               (local
                (include-book "kestrel/arithmetic-light/truncate" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shr-stype-stype-okp ((x ,stypep) (y ,stypep))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if right shift of @('signed "
                                   type-string
                                   "') values by @('signed "
                                   type-string
                                   "') values is well-defined.")
              (,shr-stype-okp x (,stype-integer-value y))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shr-stype-stype ((x ,stypep) (y ,stypep))
              :guard (,shr-stype-stype-okp x y)
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Right shift of @('signed "
                                   type-string
                                   "') values by @('signed "
                                   type-string
                                   "') values [C:6.5.7].")
              (,shr-stype x (,stype-integer-value y))
              :guard-hints (("Goal" :in-theory (enable ,shr-stype-stype-okp)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shr-utype-okp ((x ,utypep) (y integerp))
              (declare (ignore x))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if right shift of @('unsigned "
                                   type-string
                                   "') values is well-defined.")
              (integer-range-p 0 (,type-bits) (ifix y))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shr-utype ((x ,utypep) (y integerp))
              :returns (result ,utypep)
              :short ,(concatenate 'string
                                   "Left shift of @('unsigned "
                                   type-string
                                   "') values [C:6.5.7].")
              (,utype (mod (truncate (,utype->get x)
                                     (expt 2 y))
                           (1+ (,utype-max))))
              :guard-hints
              (("Goal" :in-theory (enable ,shr-utype-okp
                                          ,utype-integerp-alt-def)))
              :hooks (:fix)
              :prepwork
              ((local (include-book "arithmetic-3/top" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shr-utype-utype-okp ((x ,utypep) (y ,utypep))
              :returns (yes/no booleanp)
              :short ,(concatenate 'string
                                   "Check if right shift of @('unsigned "
                                   type-string
                                   "') values by @('unsigned "
                                   type-string
                                   "') values is well-defined.")
              (,shr-utype-okp x (,utype-integer-value y))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,shr-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result ,utypep)
              :short ,(concatenate 'string
                                   "Left shift of @('unsigned "
                                   type-string
                                   "') values by @('unsigned "
                                   type-string
                                   "') values [C:6.5.7].")
              (,shr-utype x (,utype-integer-value y))
              :guard-hints (("Goal" :in-theory (enable ,shr-utype-utype-okp)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,lt-stype-stype ((x ,stypep) (y ,stypep))
              :returns (result sintp)
              :short ,(concatenate 'string
                                   "Less-than relation of @('signed "
                                   type-string
                                   "') values [C:6.5.8].")
              (if (< (,stype->get x) (,stype->get y))
                  (sint 1)
                (sint 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,lt-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result sintp)
              :short ,(concatenate 'string
                                   "Less-than relation of @('unsigned "
                                   type-string
                                   "') values [C:6.5.8].")
              (if (< (,utype->get x) (,utype->get y))
                  (sint 1)
                (sint 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,gt-stype-stype ((x ,stypep) (y ,stypep))
              :returns (result sintp)
              :short ,(concatenate 'string
                                   "Greater-than relation of @('signed "
                                   type-string
                                   "') values [C:6.5.8].")
              (if (> (,stype->get x) (,stype->get y))
                  (sint 1)
                (sint 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,gt-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result sintp)
              :short ,(concatenate 'string
                                   "Greater-than relation of @('unsigned "
                                   type-string
                                   "') values [C:6.5.8].")
              (if (> (,utype->get x) (,utype->get y))
                  (sint 1)
                (sint 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,le-stype-stype ((x ,stypep) (y ,stypep))
              :returns (result sintp)
              :short ,(concatenate
                       'string
                       "Less-than-or-equal-to relation of @('signed "
                       type-string
                       "') values [C:6.5.8].")
              (if (<= (,stype->get x) (,stype->get y))
                  (sint 1)
                (sint 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,le-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result sintp)
              :short ,(concatenate
                       'string
                       "Less-than-or-equal-to relation of @('unsigned "
                       type-string
                       "') values [C:6.5.8].")
              (if (<= (,utype->get x) (,utype->get y))
                  (sint 1)
                (sint 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,ge-stype-stype ((x ,stypep) (y ,stypep))
              :returns (result sintp)
              :short ,(concatenate
                       'string
                       "Greater-than-or-equal-to relation of @('signed "
                       type-string
                       "') values [C:6.5.8].")
              (if (>= (,stype->get x) (,stype->get y))
                  (sint 1)
                (sint 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,ge-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result sintp)
              :short ,(concatenate
                       'string
                       "Greater-than-or-equal-to relation of @('unsigned "
                       type-string
                       "') values [C:6.5.8].")
              (if (>= (,utype->get x) (,utype->get y))
                  (sint 1)
                (sint 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,eq-stype-stype ((x ,stypep) (y ,stypep))
              :returns (result sintp)
              :short ,(concatenate
                       'string
                       "Equality of @('signed "
                       type-string
                       "') values [C:6.5.9].")
              (if (= (,stype->get x) (,stype->get y))
                  (sint 1)
                (sint 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,eq-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result sintp)
              :short ,(concatenate 'string
                                   "Equality of @('unsigned "
                                   type-string
                                   "') values [C:6.5.9].")
              (if (= (,utype->get x) (,utype->get y))
                  (sint 1)
                (sint 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,ne-stype-stype ((x ,stypep) (y ,stypep))
              :returns (result sintp)
              :short ,(concatenate 'string
                                   "Non-equality of @('signed "
                                   type-string
                                   "') values [C:6.5.9].")
              (if (/= (,stype->get x) (,stype->get y))
                  (sint 1)
                (sint 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,ne-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result sintp)
              :short ,(concatenate 'string
                                   "Non-equality of @('unsigned "
                                   type-string
                                   "') values [C:6.5.9].")
              (if (/= (,utype->get x) (,utype->get y))
                  (sint 1)
                (sint 0))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,bitand-stype-stype ((x ,stypep) (y ,stypep))
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Bitwise conjunction of @('signed "
                                   type-string
                                   "') values [C:6.5.10].")
              (,stype (logand (,stype->get x) (,stype->get y)))
              :guard-hints (("Goal" :in-theory (enable ,stype-integerp
                                                       ,stypep
                                                       ,stype->get)))
              :hooks (:fix)
              :prepwork
              ((local (include-book "ihs/logops-lemmas" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,bitand-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result ,utypep)
              :short ,(concatenate 'string
                                   "Bitwise conjunction of @('unsigned "
                                   type-string
                                   "') values [C:6.5.10].")
              (,utype (logand (,utype->get x) (,utype->get y)))
              :guard-hints (("Goal" :in-theory (enable ,utype-integerp
                                                       ,utypep
                                                       ,utype->get)))
              :hooks (:fix)
              :prepwork
              ((local (include-book "ihs/logops-lemmas" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,bitxor-stype-stype ((x ,stypep) (y ,stypep))
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Bitwise exclusive disjunction of @('signed "
                                   type-string
                                   "') values [C:6.5.11].")
              (,stype (logxor (,stype->get x) (,stype->get y)))
              :guard-hints (("Goal" :in-theory (enable ,stype-integerp
                                                       ,stypep
                                                       ,stype->get)))
              :hooks (:fix)
              :prepwork
              ((local
                (include-book "centaur/bitops/ihs-extensions" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,bitxor-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result ,utypep)
              :short ,(concatenate
                       'string
                       "Bitwise exclusive disjunction of @('unsigned "
                       type-string
                       "') values [C:6.5.10].")
              (,utype (logxor (,utype->get x) (,utype->get y)))
              :guard-hints (("Goal" :in-theory (enable ,utype-integerp
                                                       ,utypep
                                                       ,utype->get)))
              :hooks (:fix)
              :prepwork
              ((local
                (include-book "centaur/bitops/ihs-extensions" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,bitior-stype-stype ((x ,stypep) (y ,stypep))
              :returns (result ,stypep)
              :short ,(concatenate 'string
                                   "Bitwise inclusive disjunction of @('signed "
                                   type-string
                                   "') values [C:6.5.12].")
              (,stype (logior (,stype->get x) (,stype->get y)))
              :hooks (:fix)
              :guard-hints (("Goal" :in-theory (enable ,stype-integerp
                                                       ,stypep
                                                       ,stype->get)))
              :prepwork
              ((local
                (include-book "centaur/bitops/ihs-extensions" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,bitior-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result ,utypep)
              :short ,(concatenate
                       'string
                       "Bitwise inclusive disjunction of @('unsigned "
                       type-string
                       "') values [C:6.5.12].")
              (,utype (logior (,utype->get x) (,utype->get y)))
              :hooks (:fix)
              :guard-hints (("Goal" :in-theory (enable ,utype-integerp
                                                       ,utypep
                                                       ,utype->get)))
              :prepwork
              ((local
                (include-book "centaur/bitops/ihs-extensions" :dir :system))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,logand-stype-stype ((x ,stypep) (y ,stypep))
              :returns (result sintp)
              :short ,(concatenate 'string
                                   "Logical conjunction of @('signed "
                                   type-string
                                   "') values [C:6.5.13].")
              (sint01 (and (,stype-nonzerop x) (,stype-nonzerop y)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,logand-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result sintp)
              :short ,(concatenate 'string
                                   "Logical conjunction of @('unsigned "
                                   type-string
                                   "') values [C:6.5.13].")
              (sint01 (and (,utype-nonzerop x) (,utype-nonzerop y)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,logor-stype-stype ((x ,stypep) (y ,stypep))
              :returns (result sintp)
              :short ,(concatenate 'string
                                   "Logical disjunction of @('signed "
                                   type-string
                                   "') values [C:6.5.14].")
              (sint01 (or (,stype-nonzerop x) (,stype-nonzerop y)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            (define ,logor-utype-utype ((x ,utypep) (y ,utypep))
              :returns (result sintp)
              :short ,(concatenate 'string
                                   "Logical disjunction of @('unsigned "
                                   type-string
                                   "') values [C:6.5.14].")
              (sint01 (or (,utype-nonzerop x) (,utype-nonzerop y)))
              :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            )))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define sint01 ((b booleanp))
  :returns (x sintp)
  :short "Turn an ACL2 boolean into an @('int') value 0 or 1."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is essentially (but not exactly) the inverse of @(tsee sint-nonzerop).
     Together with @(tsee sint-nonzerop),
     it can be used to represent in ACL2
     shallowly embedded C logical conjunctions and disjunctions,
     which must be integers in C,
     but must be booleans in ACL2 to represent their non-strictness."))
  (if b (sint 1) (sint 0))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(atc-def-integer-operations :char)

(atc-def-integer-operations :short)

(atc-def-integer-operations :int)

(atc-def-integer-operations :long)

(atc-def-integer-operations :llong)
