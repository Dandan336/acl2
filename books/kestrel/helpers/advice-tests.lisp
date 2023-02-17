; Tests of the advice tool
;
; Copyright (C) 2022 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

; Matt K. mod to prevent stack overflow (in test2, from *1* function
; world-since-boot-strap, even after (comp t)) -- I think Allegro CL is failing
; to eliminate tail recursion inside the LABELS form generated for the
; executable-counterpart (*1*) function.

; cert_param: (non-allegro)

(include-book "advice") ; todo: or advice-code-only?
(include-book "kestrel/utilities/deftest" :dir :system)

;; A simple test, with extensive guard checking
(deftest
  (defthm-advice test (equal x x) :rule-classes nil
    :models '(:enable :history) ; don't contact the server (todo: allow :non-ml and :ml)
    )
  )

(deftest
  (in-theory (disable append)) ; prevent proof of test2 with no hints
  (defthm-advice test2
    (equal (len (append x y))
           (+ (len x) (len y)))
    :models '(:enable :history) ; don't contact the server
    )
  )

;; TODO: How can I test (advice) in a book, given that it requires a failed theorem in the command history?
;; ;; Check for issues like guard violations:
;; ;(deftest
;; (set-guard-checking :all)
;; (must-fail (defthm mod-test (implies (natp x) (< (mod x 8) 200))))
;; (advice :models nil ; don't contact the server
;;         )
;; ;)
