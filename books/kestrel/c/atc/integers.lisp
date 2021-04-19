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

(include-book "integer-formats")
(include-book "pack")

(include-book "kestrel/fty/defbyte" :dir :system)

(local (include-book "arithmetic-3/top" :dir :system))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ atc-integers
  :parents (atc-dynamic-semantics)
  :short "A model of C integers for ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "We define a model of the C standard signed and unsigned integer values,
     except @('_Bool') for now,
     based on their "
    (xdoc::seetopic "atc-integer-formats" "format definitions")
    ". As mentioned there, the definitions of values we give here
     should still work if the format definitions are changed.")
   (xdoc::p
    "For each C integer type covered by our model,
     we define ACL2 signed or unsigned integers corresponding to them
     (via @(tsee fty::defbyte)), and
     we define the C values by wrapping those signed or unsigned integers.
     We also define maximum and (for signed) minimum integers,
     prove some linear rules about them,
     and prove rules that provide alternative definitions
     of the signed and unsigned ACL2 integers in terms of minima and maxima.
     This way we have the ability to view the integer ranges
     as ACL2's @(tsee signed-byte-p) and @(tsee unsigned-byte-p) values,
     which is useful for bitwise operations,
     but also as plain integers in certain ranges,
     which should lead to simpler reasoning about ranges.")
   (xdoc::p
    "For the unsigned types,
     we also introduce ACL2 functions
     to turn ACL2 integers into values of those types
     by reducing them modulo one plus the maximum value of the type.
     These functions are used
     to define certain integer conversions and operations,
     which are modular for unsigned types."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *atc-integer-types*
  :short "Fixtype names of the C integer types supported by ATC."
  '(schar
    uchar
    sshort
    ushort
    sint
    uint
    slong
    ulong
    sllong
    ullong))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-integer-type-string (type)
  :guard (member-eq type *atc-integer-types*)
  :returns (string stringp)
  :short "String that describes an integer type."
  (b* ((core (case type
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
               (t (prog2$ (raise "Internal error: unknown type ~x0." type)
                          "")))))
    (str::cat "type @('" core "')")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-integer-type-signedp (type)
  :guard (member-eq type *atc-integer-types*)
  :returns (yes/no booleanp)
  :short "Check if an integer type is signed."
  (eql (char (symbol-name type) 0) #\S))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmacro+ atc-def-integer-values (type)
  (declare (xargs :guard (member-eq type '(char short int long llong))))
  :short "Macro to generate the models of the C integer values."

  (b* ((type-string (acl2::string-downcase
                     (if (eq type 'llong) "LONG LONG" (symbol-name type))))
       (type-bits (pack type '-bits))
       (type-bits-bound (case type
                          (char 8)
                          (short 16)
                          (int 16)
                          (long 32)
                          (llong 64)))
       (utype (pack 'u type))
       (stype (pack 's type))
       (utypep (pack utype 'p))
       (stypep (pack stype 'p))
       (utype-list (pack utype '-list))
       (stype-list (pack stype '-list))
       (utype-listp (pack utype-list 'p))
       (stype-listp (pack stype-list 'p))
       (utype-integer (pack utype '-integer))
       (stype-integer (pack stype '-integer))
       (utype-integerp (pack utype-integer 'p))
       (stype-integerp (pack stype-integer 'p))
       (utype-integer-fix (pack utype-integer '-fix))
       (stype-integer-fix (pack stype-integer '-fix))
       (utype-integerp-alt-def (pack utype-integerp '-alt-def))
       (stype-integerp-alt-def (pack stype-integerp '-alt-def))
       (utype-max (pack utype '-max))
       (utype-max-bound (1- (expt 2 type-bits-bound)))
       (stype-min (pack stype '-min))
       (stype-min-bound (- (expt 2 (1- type-bits-bound))))
       (stype-max (pack stype '-max))
       (stype-max-bound (1- (expt 2 (1- type-bits-bound))))
       (utype->get (pack utype '->get))
       (stype->get (pack stype '->get))
       (utype->get-upper-bound (pack utype->get '-upper-bound))
       (stype->get-upper-bound (pack stype->get '-upper-bound))
       (stype->get-lower-bound (pack stype->get '-lower-bound))
       (utype-mod (pack utype '-mod)))

    `(encapsulate ()

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (fty::defbyte ,utype-integer
         :short ,(concatenate
                  'string
                  "Fixtype of ACL2 integers in the range of @('unsigned "
                  type-string
                  "')s.")
         :size (,type-bits)
         :signed nil
         :pred ,utype-integerp)

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (fty::defbyte ,stype-integer
         :short ,(concatenate
                  'string
                  "Fixtype of ACL2 integers in the range of @('signed "
                  type-string
                  "')s.")
         :size (,type-bits)
         :signed t
         :pred ,stype-integerp)

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,utype-max ()
         :returns (,utype-max integerp :rule-classes :type-prescription)
         :short ,(concatenate 'string
                              "Maximum integer value of C @('unsigned "
                              type-string
                              "')s.")
         (1- (expt 2 (,type-bits)))
         ///

         (in-theory (disable (:e ,utype-max)))

         (defrule ,(add-suffix utype-max "-BOUND")
           (>= (,utype-max) ,utype-max-bound)
           :rule-classes :linear
           :enable ,utype-max
           :use (:instance acl2::expt-is-weakly-increasing-for-base->-1
                 (m ,type-bits-bound) (n (,type-bits)) (x 2))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,stype-min ()
         :returns (,stype-min integerp :rule-classes :type-prescription)
         :short ,(concatenate 'string
                              "Minimum integer value of C @('signed "
                              type-string
                              "')s.")
         (- (expt 2 (1- (,type-bits))))
         ///

         (in-theory (disable (:e ,stype-min)))

         (defrule ,(add-suffix stype-min "-BOUND")
           (<= (,stype-min) ,stype-min-bound)
           :rule-classes :linear
           :enable ,stype-min
           :use (:instance acl2::expt-is-weakly-increasing-for-base->-1
                 (m ,(1- type-bits-bound)) (n (1- (,type-bits))) (x 2))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,stype-max ()
         :returns (,stype-max integerp :rule-classes :type-prescription)
         :short ,(concatenate 'string
                              "Maximumm integer value of C @('signed "
                              type-string
                              "')s.")
         (1- (expt 2 (1- (,type-bits))))
         ///

         (in-theory (disable (:e ,stype-max)))

         (defrule ,(add-suffix stype-max "-BOUND")
           (>= (,stype-max) ,stype-max-bound)
           :rule-classes :linear
           :enable ,stype-max
           :use (:instance acl2::expt-is-weakly-increasing-for-base->-1
                 (m ,(1- type-bits-bound)) (n (1- (,type-bits))) (x 2))))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (defruled ,utype-integerp-alt-def
         :short ,(concatenate 'string
                              "Alternative definition of @(tsee "
                              (acl2::string-downcase
                               (symbol-name utype-integerp))
                              ") as integer range.")
         (equal (,utype-integerp x)
                (and (integerp x)
                     (<= 0 x)
                     (<= x (,utype-max))))
         :enable (,utype-integerp ,utype-max))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (defruled ,stype-integerp-alt-def
         :short ,(concatenate 'string
                              "Alternative definition of @(tsee "
                              (acl2::string-downcase
                               (symbol-name stype-integerp))
                              ") as integer range.")
         (equal (,stype-integerp x)
                (and (integerp x)
                     (<= (,stype-min) x)
                     (<= x (,stype-max))))
         :enable (,stype-integerp ,stype-min ,stype-max))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (fty::defprod ,utype
         :short ,(concatenate 'string
                              "Fixtype of C @('unsigned "
                              type-string
                              "') values.")
         ((get ,utype-integer))
         :tag ,(intern (symbol-name utype) "KEYWORD")
         :layout :list
         :pred ,utypep
         ///

         (defrule ,utype->get-upper-bound
           (<= (,utype->get x) (,utype-max))
           :rule-classes :linear
           :enable (,utype->get
                    ,utype-integer-fix
                    ,utype-integerp-alt-def)))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (fty::deflist ,utype-list
         :short ,(concatenate 'string
                              "Fixtype of lists of C @('unsigned "
                              type-string
                              "') values.")
         :elt-type ,utype
         :true-listp t
         :elementp-of-nil nil
         :pred ,utype-listp)

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (fty::defprod ,stype
         :short ,(concatenate 'string
                              "Fixtype of C @('signed "
                              type-string
                              "') values.")
         ((get ,stype-integer))
         :tag ,(intern (symbol-name stype) "KEYWORD")
         :layout :list
         :pred ,stypep)

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (fty::deflist ,stype-list
         :short ,(concatenate 'string
                              "Fixtype of lists of C @('signed "
                              type-string
                              "') values.")
         :elt-type ,stype
         :true-listp t
         :elementp-of-nil nil
         :pred ,stype-listp
         ///

         (defrule ,stype->get-lower-bound
           (<= (,stype-min) (,stype->get x))
           :rule-classes :linear
           :enable (,stype->get
                    ,stype-integer-fix
                    ,stype-integerp-alt-def))

         (defrule ,stype->get-upper-bound
           (<= (,stype->get x) (,stype-max))
           :rule-classes :linear
           :enable (,stype->get
                    ,stype-integer-fix
                    ,stype-integerp-alt-def)))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       (define ,utype-mod ((x integerp))
         :returns (result ,utypep)
         (,utype (mod (ifix x) (1+ (,utype-max))))
         :guard-hints (("Goal" :in-theory (enable ,utype-integerp-alt-def)))
         :hooks (:fix))

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

       )))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(atc-def-integer-values char)

(atc-def-integer-values short)

(atc-def-integer-values int)

(atc-def-integer-values long)

(atc-def-integer-values llong)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule uchar-max-vs-ushort-max
    :parents (uchar-max ushort-max)
    :short "Relation between
            @('unsigned char') and @('unsigned short') maxima."
    ,(if (= (char-bits) (short-bits))
         '(= (uchar-max) (ushort-max))
       '(< (uchar-max) (ushort-max)))
    :rule-classes :linear
    :enable (uchar-max ushort-max)
    ,@(if (= (char-bits) (short-bits))
          '(:disable char-bits-vs-short-bits
            :use char-bits-vs-short-bits)
        '(:use (:instance
                acl2::expt-is-weakly-increasing-for-base->-1
                (m (char-bits)) (n (short-bits)) (x 2))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule ushort-max-vs-uint-max
    :parents (ushort-max uint-max)
    :short "Relation between
            @('unsigned short') and @('unsigned int') maxima."
    ,(if (= (short-bits) (int-bits))
         '(= (ushort-max) (uint-max))
       '(< (ushort-max) (uint-max)))
    :rule-classes :linear
    :enable (ushort-max uint-max)
    ,@(if (= (short-bits) (int-bits))
          '(:disable short-bits-vs-int-bits
            :use short-bits-vs-int-bits)
        '(:use (:instance
                acl2::expt-is-weakly-increasing-for-base->-1
                (m (short-bits)) (n (int-bits)) (x 2))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule uint-max-vs-ulong-max
    :parents (uint-max ulong-max)
    :short "Relation between
            @('unsigned int') and @('unsigned long') maxima."
    ,(if (= (int-bits) (long-bits))
         '(= (uint-max) (ulong-max))
       '(< (uint-max) (ulong-max)))
    :rule-classes :linear
    :enable (uint-max ulong-max)
    ,@(if (= (int-bits) (long-bits))
          '(:disable int-bits-vs-long-bits
            :use int-bits-vs-long-bits)
        '(:use (:instance
                acl2::expt-is-weakly-increasing-for-base->-1
                (m (int-bits)) (n (long-bits)) (x 2))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule ulong-max-vs-ullong-max
    :parents (ulong-max ullong-max)
    :short "Relation between
            @('unsigned long') and @('unsigned long long') maxima."
    ,(if (= (long-bits) (llong-bits))
         '(= (ulong-max) (ullong-max))
       '(< (ulong-max) (ullong-max)))
    :rule-classes :linear
    :enable (ulong-max ullong-max)
    ,@(if (= (long-bits) (llong-bits))
          '(:disable long-bits-vs-llong-bits
            :use long-bits-vs-llong-bits)
        '(:use (:instance
                acl2::expt-is-weakly-increasing-for-base->-1
                (m (long-bits)) (n (llong-bits)) (x 2))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule schar-min-vs-sshort-min
    :parents (schar-min schar-min)
    :short "Relation between
            @('signed char') and @('signed short') minima."
    ,(if (= (char-bits) (short-bits))
         '(= (schar-min) (sshort-min))
       '(>= (schar-min) (sshort-min)))
    :rule-classes :linear
    :enable (schar-min sshort-min)
    ,@(if (= (char-bits) (short-bits))
          '(:disable char-bits-vs-short-bits
            :use char-bits-vs-short-bits)
        '(:use (:instance
                acl2::expt-is-weakly-increasing-for-base->-1
                (m (char-bits)) (n (short-bits)) (x 2))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule sshort-min-vs-sint-min
    :parents (sshort-min sint-min)
    :short "Relation between
            @('signed short') and @('signed int') minima."
    ,(if (= (short-bits) (int-bits))
         '(= (sshort-min) (sint-min))
       '(> (sshort-min) (sint-min)))
    :rule-classes :linear
    :enable (sshort-min sint-min)
    ,@(if (= (char-bits) (short-bits))
          '(:disable short-bits-vs-int-bits
            :use short-bits-vs-int-bits)
        '(:use (:instance
                acl2::expt-is-weakly-increasing-for-base->-1
                (m (short-bits)) (n (int-bits)) (x 2))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule sint-min-vs-slong-min
    :parents (sint-min slong-min)
    :short "Relation between
            @('signed int') and @('signed long') minima."
    ,(if (= (int-bits) (long-bits))
         '(= (sint-min) (slong-min))
       '(> (sint-min) (slong-min)))
    :rule-classes :linear
    :enable (sint-min slong-min)
    ,@(if (= (int-bits) (long-bits))
          '(:disable int-bits-vs-long-bits
            :use int-bits-vs-long-bits)
        '(:use (:instance
                acl2::expt-is-weakly-increasing-for-base->-1
                (m (int-bits)) (n (long-bits)) (x 2))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule slong-min-vs-sllong-min
    :parents (slong-min sllong-min)
    :short "Relation between
            @('signed long') and @('signed long long') minima."
    ,(if (= (long-bits) (llong-bits))
         '(= (slong-min) (sllong-min))
       '(> (slong-min) (sllong-min)))
    :rule-classes :linear
    :enable (slong-min sllong-min)
    ,@(if (= (long-bits) (llong-bits))
          '(:disable long-bits-vs-llong-bits
            :use long-bits-vs-llong-bits)
        '(:use (:instance
                acl2::expt-is-weakly-increasing-for-base->-1
                (m (long-bits)) (n (llong-bits)) (x 2))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule schar-max-vs-sshort-max
    :parents (schar-max sshort-max)
    :short "Relation between
            @('signed char') and @('signed short') maxima."
    ,(if (= (char-bits) (short-bits))
         '(= (schar-max) (sshort-max))
       '(< (schar-max) (sshort-max)))
    :rule-classes :linear
    :enable (schar-max sshort-max)
    ,@(if (= (char-bits) (short-bits))
          '(:disable char-bits-vs-short-bits
            :use char-bits-vs-short-bits)
        '(:use (:instance
                acl2::expt-is-weakly-increasing-for-base->-1
                (m (char-bits)) (n (short-bits)) (x 2))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule sshort-max-vs-sint-max
    :parents (sshort-max sint-max)
    :short "Relation between
            @('signed short') and @('signed int') maxima."
    ,(if (= (short-bits) (int-bits))
         '(= (sshort-max) (sint-max))
       '(< (sshort-max) (sint-max)))
    :rule-classes :linear
    :enable (sshort-max sint-max)
    ,@(if (= (char-bits) (short-bits))
          '(:disable short-bits-vs-int-bits
            :use short-bits-vs-int-bits)
        '(:use (:instance
                acl2::expt-is-weakly-increasing-for-base->-1
                (m (short-bits)) (n (int-bits)) (x 2))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule sint-max-vs-slong-max
    :parents (sint-max slong-max)
    :short "Relation between
            @('signed int') and @('signed long') maxima."
    ,(if (= (int-bits) (long-bits))
         '(= (sint-max) (slong-max))
       '(< (sint-max) (slong-max)))
    :rule-classes :linear
    :enable (sint-max slong-max)
    ,@(if (= (int-bits) (long-bits))
          '(:disable int-bits-vs-long-bits
            :use int-bits-vs-long-bits)
        '(:use (:instance
                acl2::expt-is-weakly-increasing-for-base->-1
                (m (int-bits)) (n (long-bits)) (x 2))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule slong-max-vs-sllong-max
    :parents (slong-max sllong-max)
    :short "Relation between
            @('signed long') and @('signed long long') maxima."
    ,(if (= (long-bits) (llong-bits))
         '(= (slong-max) (sllong-max))
       '(< (slong-max) (sllong-max)))
    :rule-classes :linear
    :enable (slong-max sllong-max)
    ,@(if (= (long-bits) (llong-bits))
          '(:disable long-bits-vs-llong-bits
            :use long-bits-vs-llong-bits)
        '(:use (:instance
                acl2::expt-is-weakly-increasing-for-base->-1
                (m (long-bits)) (n (llong-bits)) (x 2))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule uchar-max-vs-sint-max
    :parents (uchar-max sint-max)
    :short "Relation between
            @('unsigned char') and @('signed int') maxima."
    ,(if (<= (uchar-max) (sint-max))
         '(<= (uchar-max) (sint-max))
       '(> (uchar-max) (sint-max)))
    :rule-classes ((:linear :trigger-terms ((uchar-max) (sint-max))))
    :enable (uchar-max sint-max)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule ushort-max-vs-sint-max
    :parents (ushort-max sint-max)
    :short "Relation between
            @('unsigned short') and @('signed int') maxima."
    ,(if (<= (ushort-max) (sint-max))
         '(<= (ushort-max) (sint-max))
       '(> (ushort-max) (sint-max)))
    :rule-classes ((:linear :trigger-terms ((ushort-max) (sint-max))))
    :enable (ushort-max sint-max)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule uchar-max-vs-slong-max
    :parents (uchar-max slong-max)
    :short "Relation between
            @('unsigned char') and @('signed int') maxima."
    ,(if (<= (uchar-max) (slong-max))
         '(<= (uchar-max) (slong-max))
       '(> (uchar-max) (slong-max)))
    :rule-classes ((:linear :trigger-terms ((uchar-max) (slong-max))))
    :enable (uchar-max slong-max)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule ushort-max-vs-slong-max
    :parents (ushort-max slong-max)
    :short "Relation between
            @('unsigned char') and @('signed int') maxima."
    ,(if (<= (ushort-max) (slong-max))
         '(<= (ushort-max) (slong-max))
       '(> (ushort-max) (slong-max)))
    :rule-classes ((:linear :trigger-terms ((ushort-max) (slong-max))))
    :enable (ushort-max slong-max)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule uint-max-vs-slong-max
    :parents (uint-max slong-max)
    :short "Relation between
            @('unsigned int') and @('signed long') maxima."
    ,(if (<= (uint-max) (slong-max))
         '(<= (uint-max) (slong-max))
       '(> (uint-max) (slong-max)))
    :rule-classes ((:linear :trigger-terms ((uint-max) (slong-max))))
    :enable (uint-max slong-max)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule uchar-max-vs-sllong-max
    :parents (uchar-max sllong-max)
    :short "Relation between
            @('unsigned int') and @('signed long long') maxima."
    ,(if (<= (uchar-max) (sllong-max))
         '(<= (uchar-max) (sllong-max))
       '(> (uchar-max) (sllong-max)))
    :rule-classes ((:linear :trigger-terms ((uchar-max) (sllong-max))))
    :enable (uchar-max sllong-max)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule ushort-max-vs-sllong-max
    :parents (ushort-max sllong-max)
    :short "Relation between
            @('unsigned int') and @('signed long long') maxima."
    ,(if (<= (ushort-max) (sllong-max))
         '(<= (ushort-max) (sllong-max))
       '(> (ushort-max) (sllong-max)))
    :rule-classes ((:linear :trigger-terms ((ushort-max) (sllong-max))))
    :enable (ushort-max sllong-max)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule uint-max-vs-sllong-max
    :parents (uint-max sllong-max)
    :short "Relation between
            @('unsigned int') and @('signed long long') maxima."
    ,(if (<= (uint-max) (sllong-max))
         '(<= (uint-max) (sllong-max))
       '(> (uint-max) (sllong-max)))
    :rule-classes ((:linear :trigger-terms ((uint-max) (sllong-max))))
    :enable (uint-max sllong-max)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(make-event
 `(defrule ulong-max-vs-sllong-max
    :parents (ulong-max sllong-max)
    :short "Relation between
            @('unsigned long') and @('signed long long') maxima."
    ,(if (<= (ulong-max) (sllong-max))
         '(<= (ulong-max) (sllong-max))
       '(> (ulong-max) (sllong-max)))
    :rule-classes ((:linear :trigger-terms ((ulong-max) (sllong-max))))
    :enable (ulong-max sllong-max)))
