; Standard Basic Library
;
; Copyright (C) 2024 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (www.alessandrocoglio.info)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "std/util/define" :dir :system)
(include-book "xdoc/constructors" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define symbol-package-name-lst ((syms symbol-listp))
  :returns (pkgs string-listp)
  :parents (std/basic)
  :short "Lift @(tsee symbol-package-name) to lists."
  :long
  (xdoc::topstring
   (xdoc::p
    "This function is named similarly to the built-in @('symbol-name-lst')."))
  (cond ((endp syms) nil)
        (t (cons (symbol-package-name (car syms))
                 (symbol-package-name-lst (cdr syms)))))
  ///

  (defret len-of-symbol-package-name-lst
    (equal (len pkgs)
           (len syms))))
