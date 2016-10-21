; Theorems about Lists
;
; Copyright (C) 2016 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; This file provides some theorems about lists.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "std/util/defrule" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection theorems-about-lists

  :parents (theorems-about-non-kestrel-books)

  :short "Theorems about lists."

  :long
  "<p>
   The theorems @('equal-len-const'), @('gteq-len-const'), and @('gt-len-const')
   are disabled by default.
   They can be enabled to turn
   assertions about lengths and constants
   into assertions about @(tsee consp) and @(tsee cdr):
   the expansion terminates because of the @(tsee syntaxp) restriction.
   </p>"

  (defruled equal-len-const
    (implies (syntaxp (quotep c))
             (equal (equal (len x) c)
                    (if (natp c)
                        (if (equal c 0)
                            (not (consp x))
                          (and (consp x)
                               (equal (len (cdr x))
                                      (1- c))))
                      nil))))

  (defruled gteq-len-const
    (implies (syntaxp (quotep c))
             (equal (>= (len x) c)
                    (or (<= (fix c) 0)
                        (and (consp x)
                             (>= (len (cdr x))
                                 (1- c)))))))

  (defruled gt-len-const
    (implies (syntaxp (quotep c))
             (equal (> (len x) c)
                    (or (< (fix c) 0)
                        (and (consp x)
                             (> (len (cdr x))
                                (1- c))))))
    :use lemma
    :prep-lemmas
    ((defruled lemma
       (implies (and (consp x)
                     (or (< (fix c) 0)
                         (> (len (cdr x))
                            (1- c))))
                (> (len x) c)))))

  (defrule last-of-cdr
    (equal (last (cdr x))
           (if (consp (cdr x))
               (last x)
             (cdr x)))))
