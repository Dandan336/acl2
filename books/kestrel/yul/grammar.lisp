; Yul Library
;
; Copyright (C) 2021 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "YUL")

(include-book "kestrel/abnf/parser" :dir :system)
(include-book "kestrel/abnf/abstractor" :dir :system)

; (depends-on "abnf-grammar.txt")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ grammar
  :parents (concrete-syntax)
  :short "ABNF grammar of Yul."
  :long
  (xdoc::topstring
   (xdoc::p
    "We use our "
    (xdoc::seetopic "abnf::grammar-parser" "verified ABNF grammar parser")
    " to parse the ABNF grammar of Yul into a representation in ACL2."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection *grammar*
  :short "The parsed ABNF grammar of Yul."
  :long
  (xdoc::topstring
   (xdoc::p
    "We parse the grammar file to obtain an ABNF grammar value.")
   (xdoc::p
    "We prove that the grammar is "
    (xdoc::seetopic "abnf::well-formedness" "well-formed")
    ", is "
    (xdoc::seetopic "abnf::closure" "closed")
    ", and only "
    (xdoc::seetopic "abnf::in-terminal-set" "generates terminals")
    " in the Unicode character set."))

  (make-event
   (mv-let (tree state)
     (abnf::parse-grammar-from-file (str::cat (cbd) "abnf-grammar.txt")
                                    state)
     (acl2::value `(defconst *grammar*
                     (abnf::abstract-rulelist ',tree)))))

  (defruled rulelist-wfp-of-*grammar*
    (abnf::rulelist-wfp *grammar*))

  (defruled rulelist-closedp-of-*grammar*
    (abnf::rulelist-closedp *grammar*))

  (defruled unicode-only-*grammar*
    (abnf::rulelist-in-termset-p *grammar* (acl2::integers-from-to 0 #x10ffff))
    :enable (abnf::rule-in-termset-p
             abnf::repetition-in-termset-p
             abnf::element-in-termset-p
             abnf::num-val-in-termset-p
             abnf::char-val-in-termset-p
             abnf::char-insensitive-in-termset-p
             abnf::char-sensitive-in-termset-p)
    :disable ((:e acl2::integers-from-to))
    :prep-books
    ((local
      (include-book "kestrel/utilities/integers-from-to-as-set" :dir :system)))))
