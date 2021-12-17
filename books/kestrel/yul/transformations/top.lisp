; Yul Library
;
; Copyright (C) 2021 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "YUL")

(include-book "dead-code-eliminator")
(include-book "dead-code-eliminator-nofun")
(include-book "dead-code-eliminator-noloopinit")
(include-book "dead-code-eliminator-safety")
(include-book "dead-code-eliminator-execution")

(include-book "for-loop-init-rewriter")

(include-book "no-function-definitions")
(include-book "no-function-definitions-dynamic")
(include-book "no-loop-initializers")
(include-book "unique-variables")
(include-book "unique-functions")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ transformations
  :parents (yul)
  :short "Yul transformations in ACL2."
  :long
  (xdoc::topstring
   (xdoc::p
    "We formalize and verify some of the Yul transformations
     used in the Solidity compiler,
     documented at [Yul: Yul Optimizer]."))
  :order-subtopics t)
