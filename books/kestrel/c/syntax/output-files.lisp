; C Library
;
; Copyright (C) 2024 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (www.alessandrocoglio.info)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "C$")

(include-book "files")
(include-book "printer")

(include-book "kestrel/file-io-light/write-bytes-to-file-bang" :dir :system)
(include-book "kestrel/std/system/constant-value" :dir :system)
(include-book "kestrel/utilities/er-soft-plus" :dir :system)
(include-book "kestrel/utilities/keyword-value-lists" :dir :system)
(include-book "std/util/error-value-tuples" :dir :system)
(include-book "system/pseudo-event-formp" :dir :system)

(local (include-book "kestrel/std/system/partition-rest-and-keyword-args" :dir :system))
(local (include-book "kestrel/std/system/w" :dir :system))
(local (include-book "std/alists/top" :dir :system))
(local (include-book "std/typed-alists/symbol-alistp" :dir :system))

(local (include-book "kestrel/built-ins/disable" :dir :system))
(local (acl2::disable-most-builtin-logic-defuns))
(local (acl2::disable-builtin-rewrite-rules-for-defaults))
(set-induction-depth-limit 0)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defruled symbol-listp-of-strip-cars-when-symbol-alistp
  (implies (symbol-alistp alist)
           (symbol-listp (strip-cars alist)))
  :induct t
  :enable symbol-alistp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrulel all-bytep-when-byte-listp
  (implies (byte-listp x)
           (acl2::all-bytep x))
  :induct t
  :enable (byte-listp bytep unsigned-byte-p))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ output-files-implementation
  :parents (output-files)
  :short "Implementation of @(tsee output-files)."
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *output-files-allowed-options*
  :short "Keyword options accepted by @(tsee output-files)."
  (list :const
        :process
        :const-files
        :printer-options)
  ///
  (assert-event (keyword-listp *output-files-allowed-options*))
  (assert-event (no-duplicatesp-eq *output-files-allowed-options*)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defval *output-files-printer-options*
  :short "Keyword options accepted in
          the @(':printer-options') of @(tsee output-files)."
  (list :indentation-size)
  ///
  (assert-event (keyword-listp *output-files-printer-options*))
  (assert-event (no-duplicatesp-eq *output-files-printer-options*)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define tunitens/fileset-p (x)
  :returns (yes/no booleanp)
  :short "Recognize a translation unit ensemble or a fileset."
  (or (transunit-ensemblep x)
      (filesetp x)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define output-files-process-inputp (x)
  :returns (yes/no booleanp)
  :short "Recognize valid values of the @(':process') input."
  (and (member-eq x '(:write :print)) t))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define output-files-process-inputs ((args true-listp)
                                     (wrld plist-worldp))
  :returns (mv erp
               (tunits/files tunitens/fileset-p
                             :hints
                             (("Goal"
                               :in-theory
                               (enable tunitens/fileset-p
                                       output-files-process-inputp))))
               (process output-files-process-inputp)
               (const-files symbolp)
               (indent-size posp)
               (paren-nested-conds booleanp))
  :short "Process the inputs."
  :long
  (xdoc::topstring
   (xdoc::p
    "The @('tunits/files') result of this function
     is the value of the constant specified by the @(':const') input.")
   (xdoc::p
    "The other results of this function are the homonymous inputs."))
  (b* (((reterr) (fileset nil) :write nil 1 nil)
       ;; Check and obtain options.
       ((mv erp extra options)
        (partition-rest-and-keyword-args
         args *output-files-allowed-options*))
       ((when erp)
        (reterr (msg "The inputs must be the options ~&0, ~
                      but instead they are ~x1."
                     *output-files-allowed-options*
                     args)))
       ((when extra)
        (reterr (msg "The only allowed inputs are the options ~&0, ~
                      but instead the extra inputs ~x1 were supplied."
                     *output-files-allowed-options*
                     extra)))
       ;; Process :PROCESS input.
       (process-option (assoc-eq :process options))
       (process (if process-option
                    (cdr process-option)
                  :print))
       ((unless (output-files-process-inputp process))
        (reterr (msg "The :PROCESS input must be :WRITE or :PRINT, ~
                      but it ~x0 instead."
                     process)))
       ;; Process :CONST input.
       (const-option (assoc-eq :const options))
       ((unless const-option)
        (reterr (msg "The :CONST input must be supplied, ~
                      but it was not supplied.")))
       (const (cdr const-option))
       ((unless (symbolp const))
        (reterr (msg "The :CONST input must be a symbol, ~
                      but it is ~x0 instead."
                     const)))
       (tunits/files (acl2::constant-value const wrld))
       ((when (and (eq process :write)
                   (not (filesetp tunits/files))))
        (reterr (msg "Since the :PROCESS input is :WRITE, ~
                      the value of the ~x0 named constant ~
                      specified by the :CONST input ~
                      must be a file set, ~
                      but instead its value is ~x1."
                     const
                     tunits/files)))
       ((when (and (eq process :print)
                   (not (transunit-ensemblep tunits/files))))
        (reterr (msg "Since the :PROCESS inpus is :PRINT, ~
                      the value of the ~x0 named constant ~
                      specified by the :CONST input ~
                      must be a translation unit ensemble, ~
                      but instead its value is ~x1."
                     const
                     tunits/files)))
       ((when (and (eq process :print)
                   (not (transunit-ensemble-unambp tunits/files))))
        (reterr (msg "The translation unit that is ~
                      the value of the ~x0 named constant ~
                      specified by the :CONST input ~
                      must be unambiguous, ~
                      but instead it is ~x1, ~
                      which contains ambiguities."
                     const
                     tunits/files)))
       ;; Process :CONST-FILES input.
       (const-files-option (assoc-eq :const-files options))
       (const-files (if const-files-option
                        (cdr const-files-option)
                      nil))
       ((unless (symbolp const-files))
        (reterr (msg "The :CONST-FILES input must be a symbol, ~
                      but it is ~x0 instead."
                     const-files)))
       ((when (and const-files
                   (not process)))
        (reterr (msg "The :CONST-FILES input must be NIL ~
                      if the :PROCESS input is NIL, ~
                      which is the case in this call of OUTPUT-FILES.")))
       ;; Process :PRINTER-OPTIONS input.
       (printer-options-option (assoc-eq :printer-options options))
       (printer-options (if printer-options-option
                            (cdr printer-options-option)
                          nil))
       ((unless (keyword-value-listp printer-options))
        (reterr (msg "The :PRINTER-OPTIONS input must be ~
                      a value-keyword list, ~
                      but it is ~x0 instead."
                     printer-options)))
       ((when (and (not (eq process :print))
                   (consp printer-options)))
        (reterr (msg "Since the :PROCESS input is not :PRINT, ~
                      the :PRINTER-OPTIONS input must be NIL, ~
                      but it is ~x0 instead."
                     printer-options)))
       (printer-options-alist (keyword-value-list-to-alist printer-options))
       (printer-options-keywords (strip-cars printer-options-alist))
       ((unless (no-duplicatesp-eq printer-options-keywords))
        (reterr (msg "The list of keywords in the :PRINTER-OPTIONS input ~
                      must have no duplicates, ~
                      but the supplied :PRINTER-OPTIONS input ~x0 ~
                      violates that requirement."
                     printer-options)))
       ((unless (subsetp-eq printer-options-keywords
                            *output-files-printer-options*))
        (reterr (msg "The list of keywords in the :PRINTER-OPTIONS input ~
                      must be among ~&0, ~
                      but the supplied :PRINTER-OPTIONS input ~x0 ~
                      violates that requirement."
                     *output-files-printer-options*
                     printer-options)))
       ;; Process :INDENTATION-SIZE sub-input.
       (indent-size-option (assoc-eq :indentation-size
                                     printer-options-alist))
       (indent-size (if indent-size-option
                        (cdr indent-size-option)
                      2))
       ((unless (posp indent-size))
        (reterr (msg "The :INDENTATION-LEVEL option ~
                      of the :PRINTER-OPTIONS input ~
                      must be a positive integer, ~
                      but it is ~x0 instead."
                     indent-size)))
       ;; Process :PARENTHESIZE-NESTED-CONDITIONALS input.
       (paren-nested-conds-option (assoc-eq :parenthesize-nested-conditional
                                            printer-options-alist))
       (paren-nested-conds (if paren-nested-conds-option
                               (cdr paren-nested-conds-option)
                             nil))
       ((unless (booleanp paren-nested-conds))
        (reterr (msg "The :PARENTHESIZE-NESTED-CONDITIONALS option ~
                      of the :PRINTER-OPTIONS input ~
                      must be a boolean, ~
                      but it is ~x0 instead."
                     paren-nested-conds))))
    (retok tunits/files
           process
           const-files
           indent-size
           paren-nested-conds))
  :guard-hints (("Goal" :in-theory (enable acl2::alistp-when-symbol-alistp)))

  ///

  (defret transunit-ensemblep-of-output-files-process-inputs
    (implies (equal process :print)
             (and (transunit-ensemblep tunits/files)
                  (transunit-ensemble-unambp tunits/files)))
    :hints (("Goal" :in-theory (enable tunitens/fileset-p))))

  (defret filesetp-of-output-files-process-inputs
    (implies (equal process :write)
             (filesetp tunits/files))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define output-files-gen-files+events ((tunits/files tunitens/fileset-p)
                                       (process output-files-process-inputp)
                                       (const-files symbolp)
                                       (indent-size posp)
                                       (paren-nested-conds booleanp)
                                       state)
  :guard (and (implies (equal process :write)
                       (filesetp tunits/files))
              (implies (equal process :print)
                       (and (transunit-ensemblep tunits/files)
                            (transunit-ensemble-unambp tunits/files))))
  :returns (mv erp (events pseudo-event-form-listp) state)
  :short "Generate the files and (if any) the events."
  :long
  (xdoc::topstring
   (xdoc::p
    "If required, we print the translation unit ensemble to a file set;
     if required, we also generate the constant for the file set.
     Then we go through the file set
     and write the data of each value in the map
     to the path of the associated key in the map."))
  (b* (((reterr) nil state)
       ;; Initialize list of generated events.
       (events nil)
       ;; Print the abstract syntax if required.
       (files (if (eq process :print)
                  (b* ((options (make-priopt
                                 :indent-size indent-size
                                 :paren-nested-conds paren-nested-conds)))
                    (print-fileset tunits/files options))
                tunits/files))
       ;; Generate :CONST-FILES if required.
       (events (if const-files
                   (cons `(defconst ,const-files ',files) events)
                 events))
       ;; Write the files to the file system.
       ((erp state) (output-files-gen-files (fileset->unwrap files) state)))
    (retok events state))
  :guard-hints (("Goal" :in-theory (enable output-files-process-inputp)))

  :prepwork
  ((define output-files-gen-files ((map filepath-filedata-mapp) state)
     :returns (mv erp state)
     :parents nil
     (b* (((reterr) state)
          ((when (omap::emptyp map)) (retok state))
          ((mv path data) (omap::head map))
          (path-string (filepath->unwrap path))
          ((unless (stringp path-string))
           (reterr (msg "File path must contain a string, ~
                         but it contains ~x0 instead."
                        path-string)))
          ((mv erp state) (acl2::write-bytes-to-file! (filedata->unwrap data)
                                                      path-string
                                                      'output-files
                                                      state))
          ((when erp)
           (reterr (msg "Writing ~x0 failed." path-string))))
       (output-files-gen-files (omap::tail map) state)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define output-files-process-inputs-and-gen-files+events ((args true-listp)
                                                          state)
  :returns (mv erp (event pseudo-event-formp) state)
  :short "Process the inputs and generate the constant event."
  (b* (((reterr) '(_) state)
       ((erp tunits/files
             process
             const-files
             indent-size
             paren-nested-conds)
        (output-files-process-inputs args (w state)))
       ((erp events state)
        (output-files-gen-files+events tunits/files
                                       process
                                       const-files
                                       indent-size
                                       paren-nested-conds
                                       state)))
    (retok `(progn ,@events) state)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define output-files-fn ((args true-listp) (ctx ctxp) state)
  :returns (mv erp (event pseudo-event-formp) state)
  :short "Event expansion of @(tsee output-files) from the inputs."
  :long
  (xdoc::topstring
   (xdoc::p
    "We do not really need an event, so we use @(tsee value-triple)
     with @(':invisible') to prevent any spurious printing."))
  (b* (((mv erp event state)
        (output-files-process-inputs-and-gen-files+events args state))
       ((when erp) (er-soft+ ctx t '(_) "~@0" erp)))
    (value event)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection output-files-definition
  :short "Definition of the @(tsee output-files) macro."
  (defmacro output-files (&rest args)
    `(make-event-terse
      (output-files-fn ',args 'output-files state))))
