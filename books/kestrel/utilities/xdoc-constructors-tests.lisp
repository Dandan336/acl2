; XDOC Constructors -- Tests
;
; Copyright (C) 2017 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "xdoc-constructors")
(include-book "testing")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defconst *newline* (coerce (list #\Newline) 'string))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (xdoc::tag "tag" "some text")
              "<tag>some text</tag>

")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (xdoc::h1 "some text")
              "<h1>some text</h1>

")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (xdoc::h2 "some text")
              "<h2>some text</h2>

")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (xdoc::h3 "some text")
              "<h3>some text</h3>

")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (xdoc::h4 "some text")
              "<h4>some text</h4>

")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (xdoc::h5 "some text")
              "<h5>some text</h5>

")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (xdoc::p "some text")
              "<p>some text</p>

")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (xdoc::li "some text")
              "<li>some text</li>

")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (xdoc::ul)
              "<ul></ul>

")

(assert-equal (xdoc::ul
               (xdoc::li "one")
               (xdoc::li "two")
               (xdoc::li "three"))
              "<ul><li>one</li>

<li>two</li>

<li>three</li>

</ul>

")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (xdoc::ol)
              "<ol></ol>

")

(assert-equal (xdoc::ol
               (xdoc::li "one")
               (xdoc::li "two")
               (xdoc::li "three"))
              "<ol><li>one</li>

<li>two</li>

<li>three</li>

</ol>

")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (xdoc::blockquote "some text")
              "<blockquote>some text</blockquote>

")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (xdoc::code)
              "@({
})

")

(assert-equal (xdoc::code "line 1"
                          "line 2"
                          "line 3")
              "@({
line 1
line 2
line 3
})

")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert-equal (xdoc::desc
               "name of the thing"
               (xdoc::p "description of the thing")
               (xdoc::p "more description of the thing"))
              "<p>name of the thing</p>

<blockquote><p>description of the thing</p>

<p>more description of the thing</p>

</blockquote>

")
