; ABNF (Augmented Backus-Naur Form) Library
;
; Copyright (C) 2022 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ABNF")

(include-book "../grammar-parser/executable")
(include-book "../notation/syntax-abstraction")
(include-book "../operations/well-formedness")
(include-book "../operations/closure")

(include-book "kestrel/error-checking/ensure-symbol-is-fresh-event-name" :dir :system)
(include-book "kestrel/error-checking/ensure-value-is-boolean" :dir :system)
(include-book "kestrel/error-checking/ensure-value-is-string" :dir :system)
(include-book "kestrel/error-checking/ensure-value-is-symbol" :dir :system)
(include-book "kestrel/event-macros/xdoc-constructors" :dir :system)
(include-book "kestrel/std/system/table-alist-plus" :dir :system)
(include-book "kestrel/std/util/tuple" :dir :system)
(include-book "kestrel/utilities/untranslate-preprocessing" :dir :system)

(local (include-book "kestrel/std/system/partition-rest-and-keyword-args" :dir :system))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrulel true-listp-of-split-///
  (b* (((mv pre-/// post-///) (std::split-/// ctx x)))
    (implies (true-listp x)
             (and (true-listp pre-///)
                  (true-listp post-///)))))

(in-theory (disable std::split-///))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrulel alistp-when-symbol-alistp
  (implies (symbol-alistp x)
           (alistp x)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrulel consp-of-cdr-iff-cdr-when-true-listp
  (implies (true-listp x)
           (iff (consp (cdr x))
                (cdr x))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define defgrammar-anyp (x)
  :returns (yes/no booleanp)
  (declare (ignore x))
  t
  ///
  (defrule defgrammar-anyp-holds
    (defgrammar-anyp x)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(xdoc::evmac-topic-implementation

 defgrammar

 :items

 (xdoc::*evmac-topic-implementation-item-state*

  xdoc::*evmac-topic-implementation-item-wrld*

  xdoc::*evmac-topic-implementation-item-ctx*

  (xdoc::evmac-topic-implementation-item-input "name")

  (xdoc::evmac-topic-implementation-item-input "file")

  (xdoc::evmac-topic-implementation-item-input "untranslate")

  (xdoc::evmac-topic-implementation-item-input "well-formed")

  (xdoc::evmac-topic-implementation-item-input "closed")

  (xdoc::evmac-topic-implementation-item-input "matchers")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ defgrammar-table
  :short "Table of @(tsee defgrammar) calls."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is for detecting redundant calls."))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection defgrammar-table-definition
  :short "Definition of the table of @(tsee defgrammar) calls."
  :long
  (xdoc::topstring
   (xdoc::p
    "We use the calls themselves as keys,
     and nothing (i.e. @('nil')) as values.
     We only need to check if
     a call has already been successfully made or not;
     the table is like a set of calls."))

  (table defgrammar-table nil nil
    :guard (and (pseudo-event-formp acl2::key)
                (null acl2::val))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define defgrammar-table-lookup ((call pseudo-event-formp) (wrld plist-worldp))
  :returns (yes/no booleanp)
  :short "Look up a @(tsee defgrammar) call in the table."
  :long
  (xdoc::topstring
   (xdoc::p
    "Returns a boolean, saying whether the call is in the table or not."))
  (consp (assoc-equal call (table-alist+ 'defgrammar-table wrld))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define defgrammar-table-add ((call pseudo-event-formp))
  :returns (event pseudo-event-formp)
  :short "Event to record a @(tsee defgrammar) call in the table."
  `(table defgrammar-table ',call nil))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(xdoc::evmac-topic-input-processing defgrammar)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define defgrammar-process-name (name (ctx ctxp) state)
  :returns (mv erp nothing state)
  :short "Process the @('*name*') input."
  (b* (((unless (legal-constantp name))
        (er-soft+ ctx t nil
                  "The first input must be a legal constant name, ~
                   but ~x0 is not a legal constant name."
                  name))
       ((er &) (ensure-symbol-is-fresh-event-name$
                name
                (msg "The constant name ~x0 specified as first input" name)
                'acl2::const
                nil
                t
                nil)))
    (value nil))
  ///

  (defret defgrammar-process-name-symbol-when-not-error
    (implies (not erp)
             (acl2::symbolp name)))

  (in-theory (disable defgrammar-process-name-symbol-when-not-error)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *defgrammar-allowed-options*
  :short "Keyword options accepted by @(tsee defgrammar)."
  (list :file
        :untranslate
        :well-formed
        :closed
        :matchers
        :parents
        :short
        :long)
  ///
  (assert-event (keyword-listp *defgrammar-allowed-options*))
  (assert-event (no-duplicatesp-eq *defgrammar-allowed-options*)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define defgrammar-process-inputs ((args true-listp) (ctx ctxp) state)
  :returns (mv erp
               (val (std::tuple (name acl2::symbolp)
                                (file acl2::stringp)
                                (untranslate booleanp)
                                (well-formed booleanp)
                                (closed booleanp)
                                (matchers acl2::symbolp)
                                (parents defgrammar-anyp)
                                (short defgrammar-anyp)
                                (long defgrammar-anyp)
                                (other-events true-listp)
                                val)
                    :hyp (true-listp args))
               state)
  :short "Process all the inputs."
  (b* (((fun (irr)) (list nil "" nil nil nil nil nil nil nil nil))
       ((mv args other-events) (std::split-/// ctx args))
       ((mv erp name options)
        (partition-rest-and-keyword-args args *defgrammar-allowed-options*))
       ((when (or erp
                  (not (consp name))
                  (not (endp (cdr name)))))
        (er-soft+ ctx t (irr)
                  "The inputs must be the constant name ~
                   followed by the options ~&0 ~
                   and possibly /// followed by other events."
                  *defgrammar-allowed-options*))
       (name (car name))
       ((er & :iferr (irr)) (defgrammar-process-name name ctx state))
       (file-option (assoc-eq :file options))
       ((unless (consp file-option))
        (er-soft+ ctx t (irr) "The :FILE input must be supplied."))
       (file (cdr file-option))
       ((er &) (ensure-value-is-string$ file
                                        "The :FILE input"
                                        t
                                        (irr)))
       (untranslate-option (assoc-eq :untranslate options))
       (untranslate (if (consp untranslate-option)
                        (cdr untranslate-option)
                      nil))
       ((er &) (ensure-value-is-boolean$ untranslate
                                         "The :UNTRANSLATE input"
                                         t
                                         (irr)))
       (well-formed-option (assoc-eq :well-formed options))
       (well-formed (if (consp well-formed-option)
                        (cdr well-formed-option)
                      nil))
       ((er &) (ensure-value-is-boolean$ well-formed
                                         "The :WELL-FORMED input"
                                         t
                                         (irr)))
       (closed-option (assoc-eq :closed options))
       (closed (if (consp closed-option)
                   (cdr closed-option)
                 nil))
       ((er &) (ensure-value-is-boolean$ closed
                                         "The :CLOSED input"
                                         t
                                         (irr)))
       (matchers-option (assoc-eq :matchers options))
       (matchers (if (consp matchers-option)
                     (cdr matchers-option)
                   nil))
       ((er &) (ensure-value-is-symbol$ matchers
                                        "The :MATCHERS input"
                                        t
                                        (irr)))
       (parents-option (assoc-eq :parents options))
       (parents (if (consp parents-option)
                    (cdr parents-option)
                  :absent))
       (short-option (assoc-eq :short options))
       (short (if (consp short-option)
                  (cdr short-option)
                :absent))
       (long-option (assoc-eq :long options))
       (long (if (consp long-option)
                 (cdr long-option)
               :absent)))
    (value (list name
                 file
                 untranslate
                 well-formed
                 closed
                 matchers
                 parents
                 short
                 long
                 other-events)))
  :prepwork
  ((local (in-theory (enable defgrammar-process-name-symbol-when-not-error
                             acl2::ensure-value-is-string
                             acl2::ensure-value-is-boolean
                             acl2::ensure-value-is-symbol))))

  ///

  (more-returns
   (val true-listp :rule-classes :type-prescription)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(xdoc::evmac-topic-event-generation defgrammar)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define defgrammar-gen-cst-match ((matchers acl2::symbolp)
                                  (name acl2::symbolp))
  :returns (events pseudo-event-form-listp)
  :short "Generate the first of the specialized matching predicates."
  (b* ((cst-matchp (add-suffix-to-fn matchers "-MATCHP"))
       (cst-matchp$ (add-suffix-to-fn cst-matchp "$")))
    `((define ,cst-matchp$ ((tree treep) (elem elementp))
        :returns (yes/no booleanp)
        (and (tree-terminatedp tree)
             (tree-match-element-p tree elem ,name))
        :hooks (:fix))
      (defmacro ,cst-matchp (tree elem)
        (declare (xargs :guard (acl2::stringp elem)))
        (b* (((mv err elem rest)
              (parse-element (string=>nats elem)))
             ((when err) (er hard ',cst-matchp "~@0" err))
             ((when (consp rest))
              (er hard ',cst-matchp
                  "Extra: ~s0" (nats=>string rest)))
             (elem (abstract-element elem)))
          `(,',cst-matchp$ ,tree ',elem)))
      (table acl2::macro-aliases-table
        ',cst-matchp
        ',cst-matchp$))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define defgrammar-gen-cst-list-elem-match ((matchers acl2::symbolp)
                                            (name acl2::symbolp))
  :returns (events pseudo-event-form-listp)
  :short "Generate the second of the specialized matching predicates."
  (b* ((cst-list-elem-matchp (add-suffix-to-fn matchers "-LIST-ELEM-MATCHP"))
       (cst-list-elem-matchp$ (add-suffix-to-fn cst-list-elem-matchp "$")))
    `((define ,cst-list-elem-matchp$ ((trees tree-listp) (elem elementp))
        :returns (yes/no booleanp)
        (and (tree-list-terminatedp trees)
             (tree-list-match-element-p trees elem ,name))
        :hooks (:fix))
      (defmacro ,cst-list-elem-matchp (trees elem)
        (declare (xargs :guard (acl2::stringp elem)))
        (b* (((mv err elem rest)
              (parse-element (string=>nats elem)))
             ((when err) (er hard ',cst-list-elem-matchp "~@0" err))
             ((when (consp rest))
              (er hard ',cst-list-elem-matchp
                  "Extra: ~s0" (nats=>string rest)))
             (elem (abstract-element elem)))
          `(,',cst-list-elem-matchp$ ,trees ',elem)))
      (table acl2::macro-aliases-table
        ',cst-list-elem-matchp
        ',cst-list-elem-matchp$))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define defgrammar-gen-cst-list-rep-match ((matchers acl2::symbolp)
                                           (name acl2::symbolp))
  :returns (events pseudo-event-form-listp)
  :short "Generate the third of the specialized matching predicates."
  (b* ((cst-list-rep-matchp (add-suffix-to-fn matchers "-LIST-REP-MATCHP"))
       (cst-list-rep-matchp$ (add-suffix-to-fn cst-list-rep-matchp "$")))
    `((define ,cst-list-rep-matchp$ ((trees tree-listp) (rep repetitionp))
        :returns (yes/no booleanp)
        (and (tree-list-terminatedp trees)
             (tree-list-match-repetition-p trees rep ,name))
        :hooks (:fix))
      (defmacro ,cst-list-rep-matchp (trees rep)
        (declare (xargs :guard (acl2::stringp rep)))
        (b* (((mv err rep rest)
              (parse-repetition (string=>nats rep)))
             ((when err) (er hard ',cst-list-rep-matchp "~@0" err))
             ((when (consp rest))
              (er hard ',cst-list-rep-matchp
                  "Extra: ~s0" (nats=>string rest)))
             (rep (abstract-repetition rep)))
          `(,',cst-list-rep-matchp$ ,trees ',rep)))
      (table acl2::macro-aliases-table
        ',cst-list-rep-matchp
        ',cst-list-rep-matchp$))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define defgrammar-gen-cst-list-list-conc-match ((matchers acl2::symbolp)
                                                 (name acl2::symbolp))
  :returns (events pseudo-event-form-listp)
  :short "Generate the fourth of the specialized matching predicates."
  (b* ((cst-list-list-conc-matchp
        (add-suffix-to-fn matchers "-LIST-LIST-CONC-MATCHP"))
       (cst-list-list-conc-matchp$
        (add-suffix-to-fn cst-list-list-conc-matchp "$")))
    `((define ,cst-list-list-conc-matchp$ ((treess tree-list-listp)
                                           (conc concatenationp))
        :returns (yes/no booleanp)
        (and (tree-list-list-terminatedp treess)
             (tree-list-list-match-concatenation-p treess conc ,name))
        :hooks (:fix))
      (defmacro ,cst-list-list-conc-matchp (treess conc)
        (declare (xargs :guard (acl2::stringp conc)))
        (b* (((mv err conc rest)
              (parse-concatenation (string=>nats conc)))
             ((when err) (er hard ',cst-list-list-conc-matchp "~@0" err))
             ((when (consp rest))
              (er hard ',cst-list-list-conc-matchp
                  "Extra: ~s0" (nats=>string rest)))
             (conc (abstract-concatenation conc)))
          `(,',cst-list-list-conc-matchp$ ,treess ',conc)))
      (table acl2::macro-aliases-table
        ',cst-list-list-conc-matchp
        ',cst-list-list-conc-matchp$))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define defgrammar-gen-cst-list-list-alt-match ((matchers acl2::symbolp)
                                                (name acl2::symbolp))
  :returns (events pseudo-event-form-listp)
  :short "Generate the fifth of the specialized matching predicates."
  (b* ((cst-list-list-alt-matchp
        (add-suffix-to-fn matchers "-LIST-LIST-ALT-MATCHP"))
       (cst-list-list-alt-matchp$
        (add-suffix-to-fn cst-list-list-alt-matchp "$")))
    `((define ,cst-list-list-alt-matchp$ ((treess tree-list-listp)
                                          (alt alternationp))
        :returns (yes/no booleanp)
        (and (tree-list-list-terminatedp treess)
             (tree-list-list-match-alternation-p treess alt ,name))
        :hooks (:fix))
      (defmacro ,cst-list-list-alt-matchp (treess alt)
        (declare (xargs :guard (acl2::stringp alt)))
        (b* (((mv err alt rest)
              (parse-alternation (string=>nats alt)))
             ((when err) (er hard ',cst-list-list-alt-matchp "~@0" err))
             ((when (consp rest))
              (er hard ',cst-list-list-alt-matchp
                  "Extra: ~s0" (nats=>string rest)))
             (alt (abstract-alternation alt)))
          `(,',cst-list-list-alt-matchp$ ,treess ',alt)))
      (table acl2::macro-aliases-table
        ',cst-list-list-alt-matchp
        ',cst-list-list-alt-matchp$))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define defgrammar-gen-matchers ((matchers acl2::symbolp)
                                 (name acl2::symbolp))
  :returns (events pseudo-event-form-listp)
  :short "Generate the specialized matching predicates."
  (append (defgrammar-gen-cst-match matchers name)
          (defgrammar-gen-cst-list-elem-match matchers name)
          (defgrammar-gen-cst-list-rep-match matchers name)
          (defgrammar-gen-cst-list-list-conc-match matchers name)
          (defgrammar-gen-cst-list-list-alt-match matchers name)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define defgrammar-gen-everything ((name acl2::symbolp)
                                   (file acl2::stringp)
                                   (untranslate booleanp)
                                   (well-formed booleanp)
                                   (closed booleanp)
                                   (matchers acl2::symbolp)
                                   parents
                                   short
                                   long
                                   (other-events true-listp)
                                   (call pseudo-event-formp)
                                   state)
  :returns (mv erp
               (event pseudo-event-formp :hyp (true-listp other-events))
               state)
  :short "Generate all the events."
  (b* (((mv cstree state) (parse-grammar-from-file file state))
       ((unless (treep cstree))
        (value (prog2$ (raise "Internal error: no concrete syntax tree.")
                       '(_))))
       (astree (abstract-rulelist cstree))
       (defconst-event
         `(defconst ,name ',astree))
       (untranslate-event?
        (and untranslate
             (list `(add-const-to-untranslate-preprocess ,name))))
       (well-formed-event?
        (and well-formed
             (list `(defthm ,(packn-pos (list 'rulelist-wfp-of- name) name)
                      (rulelist-wfp ,name)
                      :hints (("Goal" :in-theory '((:e rulelist-wfp))))))))
       (closed-event?
        (and closed
             (list `(defthm ,(packn-pos (list 'rulelist-closedp-of- name) name)
                      (rulelist-closedp ,name)
                      :hints (("Goal" :in-theory '((:e rulelist-closedp))))))))
       (matcher-events
        (and matchers
             (defgrammar-gen-matchers matchers name)))
       (table-event (defgrammar-table-add call))
       (event
        `(progn
           (defsection ,name
             ,@(and (not (eq parents :absent))
                    (list :parents parents))
             ,@(and (not (eq short :absent))
                    (list :short short))
             ,@(and (not (eq long :absent))
                    (list :long long))
             ,defconst-event
             ,@untranslate-event?
             ,@well-formed-event?
             ,@closed-event?
             ,@matcher-events
             ,@other-events)
           ,table-event)))
    (value event)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define defgrammar-fn ((args true-listp)
                       (call pseudo-event-formp)
                       (ctx ctxp)
                       state)
  :returns (mv erp
               (event pseudo-event-formp :hyp (true-listp args))
               state)
  :parents (defgrammar-implementation)
  :short "Process the inputs and generate the events."
  (b* (((when (defgrammar-table-lookup call (w state)))
        (value '(value-triple :redundant)))
       ((er (list name
                  file
                  untranslate
                  well-formed
                  closed
                  matchers
                  parents
                  short
                  long
                  other-events)
            :iferr '(_))
        (defgrammar-process-inputs args ctx state)))
    (defgrammar-gen-everything
      name
      file
      untranslate
      well-formed
      closed
      matchers
      parents
      short
      long
      other-events
      call
      state)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection defgrammar-macro-definition
  :parents (defgrammar-implementation)
  :short "Definition of the @(tsee defgrammar) macro."
  (defmacro defgrammar (&whole call &rest args)
    `(make-event (defgrammar-fn ',args ',call 'defgrammar state))))
