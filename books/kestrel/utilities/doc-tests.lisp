; Tests of defmacrodoc
;
; Copyright (C) 2017-2021 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "doc")

;; A simple test. We define a macro called FOO and add xdoc to it, including
;; describing its inputs.
(defmacrodoc foo (&whole
                  whole
                  req1
                  req2
                  &key
                  key1 ;todo: is the default nil?
                  (key2 'nil)
                  )
  ;; the body (can be preceded by declares):
  `(foo-fn ,req1 ,req2 ,key1 ,key2 ,whole)
  ;; xdoc args:
  :parents (top)
  :short "Short text goes here."
  ;; TODO: Make an version of :long that puts in the P tags for you:
  :long "<p>The contents of the long section go here.  This text comes after the Usage and Inputs sections.</p>"
  ;; now an alternating list of param names and strings (or lists of strings):
  :inputs (req1
           "This is the first required param."
           req2
           "Second required param."
           :key1
           "First paragraph of text about key1."
           "Second paragraph of text about key1."
           :key2
           "Blah Blah."))
