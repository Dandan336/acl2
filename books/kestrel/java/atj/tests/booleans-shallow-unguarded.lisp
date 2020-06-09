; Java Library
;
; Copyright (C) 2020 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "booleans")

(include-book "../implementation" :ttags (:open-input-channel :oslib :quicklisp :quicklisp.osicat))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Generate Java code for the functions on ACL2 booleans, with testing code.

(java::atj negation
           conjunction
           disjunction
           equality
           nonequality
           project1
           project2
           addition
           tosymbol
           fromsymbol
           tovalue
           fromvalue
           :deep nil
           :guards nil
           :java-class "BooleansShallowUnguarded"
           :tests *boolean-tests*)
