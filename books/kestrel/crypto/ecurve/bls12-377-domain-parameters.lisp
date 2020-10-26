; Elliptic Curve Library
;
; Copyright (C) 2020 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Authors: Eric McCarthy (mccarthy@kestrel.edu)
;          Alessandro Coglio (coglio@kestrel.edu)
;          Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ECURVE")

(include-book "std/util/define" :dir :system)
(include-book "xdoc/defxdoc-plus" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ bls12-377-domain-parameters
  :parents (elliptic-curves)
  :short "Domain parameters of the BLS12-377 elliptic curve."
  :long
  (xdoc::topstring
   (xdoc::p
    "The BLS12-377 elliptic curve is called @($E_{BLS}$) in "
    (xdoc::a :href "https://eprint.iacr.org/2018/962.pdf"
             "Zexe: Enabling Decentralized Private Computation")
    ".")
   (xdoc::p
    "Here we introduce some of the parameters of this and of related
     elliptic curves, as described in Section 7 and in Figure 16 of that paper."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define bls12-377-parameter-x ()
  :short "The parameter @($x$) for constructing the curve @($E_{BLS}$)."
  :long
  (xdoc::topstring
   (xdoc::p
    "The parameter @($x$) is"
    (xdoc::@[] "3\\cdot{}2^{46}\\cdot(7\\cdot{}13\\cdot{}499)+1"))
   (xdoc::p
    "This ensures that both of these requirements are satisfied:"
    (xdoc::@[] "x\\equiv{}1\\ mod\\ 3\\cdot{}2^{46}")
    (xdoc::@[] "x\\equiv{}1\\ mod\\ 3"))
   (xdoc::p
    "In decimal: @($x = 9586122913090633729$).")
   (xdoc::p
    "@($x$) is used to calculate the base field prime @($p$) and
     and the
     <see topic='@(url bls12-377-scalar-field-prime)'>scalar field prime r</see>."))
   9586122913090633729
   :no-function t
   ///

   (assert-event (posp (bls12-377-parameter-x)))

   (assert-event (equal (bls12-377-parameter-x)
                        (+ (* 3 (expt 2 46) 7 13 499)
                           1))))

(define bls12-377-scalar-field-prime ()
  :short "The prime @($r$)."
  :long
  (xdoc::topstring
   (xdoc::p
    "The prime @($r$) is the scalar field size of
     the curve @($E_{BLS}$), and is also the base field size of
     the twisted Edwards curve @($E_{Ed/BLS}$).")
   (xdoc::p
    "@($r$) is computed from the <see topic='@(url bls12-377-parameter-x)'>parameter x</see>:
     @([
        r = x^4 - x^2 + 1
      ])")
   (xdoc::p
    "Figure 16 lists its value in hexadecimal:")
   (xdoc::codeblock
    "0x12ab655e9a2ca55660b44d1e5c37b00159aa76fed00000010a11800000000001"))
   #x12ab655e9a2ca55660b44d1e5c37b00159aa76fed00000010a11800000000001
   :no-function t
   ///

   (assert-event (posp (bls12-377-scalar-field-prime)))

   (assert-event (equal (integer-length (bls12-377-scalar-field-prime)) 253))

   ;; show the decimal version
   (assert-event
    (equal (bls12-377-scalar-field-prime)
           8444461749428370424248824938781546531375899335154063827935233455917409239041
           ))

   ;; show that r was computed from x as stated
   (assert-event
    (equal (bls12-377-scalar-field-prime)
           (let ((x (bls12-377-parameter-x)))
             (+ (- (expt x 4) (expt x 2)) 1))))

   ;; other checks on this prime's properties can go here

   (in-theory (disable (:e bls12-377-scalar-field-prime))))
