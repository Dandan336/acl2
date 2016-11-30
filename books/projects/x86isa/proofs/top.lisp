;; AUTHOR:
;; Shilpi Goel <shigoel@cs.utexas.edu>

(in-package "X86ISA")

;; ======================================================================

;; Proof utilities
(include-book "utilities/programmer-level-mode/top" :ttags :all)
(include-book "utilities/system-level-mode/top" :ttags :all)

;; Proofs of correctness of various x86 programs: We exclude these
;; from the x86isa documentation.

;; [Shilpi]: There are name clashes in these two factorial books.  The
;; empty encapsulates below avoid this name clash problem while
;; ensuring that the books get built as a part of the
;; regression. Another way to ensure that these books get built is to
;; rely on cert.pl's dependency scanner and put these include-books in
;; a multi-line comment or something.

;; ----------------------------------------------------------------------
;; Application Programs:

;; The factorial program has been proved correct using two methods:
;; inductive assertions and wormhole abstraction.
(local
 (encapsulate
   ()
   (local (include-book "factorial/fact-inductive-assertions" :ttags :all))))
(local
 (encapsulate
   ()
   (local (include-book "factorial/fact-wormhole-abstraction" :ttags :all))))

;; A pretty simple proof of correctness of an application program that
;; determines whether a given input is a power of 2 or not.
(local
 (encapsulate
   ()
   (local (include-book "powOfTwo/powOfTwo" :ttags :all))))

;; The proof of correctness of a population count program was done
;; using the GL bit-blasting framework.
(local
 (encapsulate
   ()
   (local (include-book "popcount/popcount" :ttags :all))))

;; Same popcount program as popcount/popcount, but here we use our
;; lemma libraries to perform symbolic simulation.
(local
 (encapsulate
   ()
   (local (include-book "popcount/popcount-general" :ttags :all))))

(local
 (encapsulate
   ()
   (local (include-book "wordCount/wc" :ttags :all))))

;; Proof of correctness of a simple array copy sub-routine:
(local
 (encapsulate
   ()
   (local (include-book "dataCopy/dataCopy" :ttags :all))))

;; ----------------------------------------------------------------------
;; System Program:

;; The zeroCopy program has been proved correct in both the marking
;; and non-marking mode of the x86 model.

(local
 (encapsulate
   ()
   (local (include-book "zeroCopy/non-marking-mode/zeroCopy" :ttags :all))))
(local
 (encapsulate
   ()
   (local (include-book "zeroCopy/marking-mode/zeroCopy" :ttags :all))))

;; ======================================================================

;; The following books present small examples that Shilpi presents in
;; her PhD dissertation to illustrate how symbolic simulation is
;; controlled in all modes of operation of the x86 model.

(local
 (encapsulate
   ()
   (local (include-book "dissertation-examples/clc-stc-programmer-mode" :ttags :all))))
(local
 (encapsulate
   ()
   (local (include-book "dissertation-examples/clc-stc-system-level-marking-mode" :ttags :all))))
(local
 (encapsulate
   ()
   (local (include-book "dissertation-examples/clc-stc-system-level-non-marking-mode" :ttags :all))))

;; ======================================================================
