; Fresh Names -- Tests
;
; Copyright (C) 2015-2017 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; This file contains tests for the function in fresh-names.lisp.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "fresh-names")
(include-book "testing")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (fresh-name-in-world-with-$s 'abcdefg nil (w state))
              'abcdefg)

(assert-equal (fresh-name-in-world-with-$s 'abcdefg '(a b c) (w state))
              'abcdefg)

(assert-equal (fresh-name-in-world-with-$s 'abcdefg '(abcdefg nil) (w state))
              'abcdefg$)

(assert-equal (fresh-name-in-world-with-$s 'len '(len$ len$$) (w state))
              'len$$$)

(assert-equal (fresh-name-in-world-with-$s 'len '(len$ len$$$) (w state))
              'len$$)

(must-succeed*
 (defun f (x) x)
 (defun f$ (x) x)
 (defun f$$ (x) x)
 (defun f$$$ (x) x)
 (assert-equal (fresh-name-in-world-with-$s 'f nil (w state))
               'f$$$$))

(assert-equal (fresh-name-in-world-with-$s 'acl2-user::f nil (w state))
              'acl2-user::f)

(must-succeed*
 (defun acl2-user::f (x) x)
 (assert-equal (fresh-name-in-world-with-$s 'acl2-user::f nil (w state))
               'acl2-user::f$))

(assert-equal (fresh-name-in-world-with-$s 'cons nil (w state))
              'acl2::cons$)
