; Standard System Library
;
; Copyright (C) 2024 Kestrel Institute (http://www.kestrel.edu)
; Copyright (C) 2018, Regents of the University of Texas
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (www.alessandrocoglio.info)
; Author: Matt Kaufmann (kaufmann@cs.utexas.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "std/system/fresh-logical-name-with-dollars-suffix" :dir :system)
(include-book "misc/install-not-normalized" :dir :system)
(include-book "system/pseudo-event-form-listp" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define install-not-normalized-event
  ((fn symbolp "Function to install the non-normalized definition of.")
   (local booleanp "Make the event form local or not.")
   (names-to-avoid symbol-listp "Avoid these as theorem name.")
   (wrld plist-worldp))
  :returns (mv (event pseudo-event-formp)
               (name symbolp "The name of the theorem.")
               (updated-names-to-avoid symbol-listp
                                       :hyp (symbol-listp names-to-avoid)
                                       "The input list @('names-to-avoid')
                                        augmented with @('name')."))

  :parents (std/system install-not-normalized)
  :short "Create an event form to
          <see topic='@(url install-not-normalized)'>install
          the non-normalized definition</see>
          of a function,
          ensuring that the name of the theorem will not cause a conflict."
  :long
  (xdoc::topstring
   (xdoc::p
    "Ensure that the name of the theorem is not already in use
     and is not among a list of names to avoid.
     Start with the default name
     (i.e. the concatenation of
     the name of @('fn') with @('$not-normalized'))
     and ensure its uniqueness via @(tsee fresh-logical-name-with-$s-suffix)."))
  (b* ((name (install-not-normalized-name fn))
       ((mv name names-to-avoid)
        (fresh-logical-name-with-$s-suffix name nil names-to-avoid wrld))
       (event
        (if local
            `(local (install-not-normalized ,fn :defthm-name ',name :allp nil))
          `(install-not-normalized ,fn :defthm-name ',name :allp nil))))
    (mv event name names-to-avoid)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define install-not-normalized-event-lst
  ((fns symbol-listp "Functions to install the non-normalized definitions of.")
   (local booleanp "Make the event forms local or not.")
   (names-to-avoid symbol-listp "Avoid these as theorem names.")
   (wrld plist-worldp))
  :returns (mv (events pseudo-event-form-listp)
               (names symbol-listp "The names of the theorems.")
               (updated-names-to-avoid symbol-listp
                                       :hyp (symbol-listp names-to-avoid)
                                       "The input list @('names-to-avoid')
                                        augmented with @('names')."))
  :parents (std/system install-not-normalized)
  :short "Create a list of event forms to
          <see topic='@(url install-not-normalized)'>install
          the non-normalized definitions</see>
          of a list of functions,
          ensuring that the names of the theorems will not cause a conflict."
  :long
  (xdoc::topstring
   (xdoc::p
    "Ensure that the names of the theorems are not already in use
     and are not among a list of names to avoid.
     Start with the default names
     (i.e. the concatenation of
     the names of each function suffixed with @('$not-normalized'))
     and ensure their uniqueness
     via @(tsee fresh-logical-name-with-$s-suffix)."))
  (cond ((endp fns) (mv nil nil names-to-avoid))
        (t (mv-let (event name names-to-avoid)
             (install-not-normalized-event (car fns) local names-to-avoid wrld)
             (mv-let (rest-events rest-names names-to-avoid)
               (install-not-normalized-event-lst (cdr fns)
                                                 local
                                                 names-to-avoid
                                                 wrld)
               (mv (cons event rest-events)
                   (cons name rest-names)
                   names-to-avoid))))))
