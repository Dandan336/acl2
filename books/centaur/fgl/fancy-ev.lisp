; GL - A Symbolic Simulation Framework for ACL2
; Copyright (C) 2019 Centaur Technology
;
; Contact:
;   Centaur Technology Formal Verification Group
;   7600-C N. Capital of Texas Highway, Suite 300, Austin, TX 78731, USA.
;   http://www.centtech.com/
;
; License: (An MIT/X11-style license)
;
;   Permission is hereby granted, free of charge, to any person obtaining a
;   copy of this software and associated documentation files (the "Software"),
;   to deal in the Software without restriction, including without limitation
;   the rights to use, copy, modify, merge, publish, distribute, sublicense,
;   and/or sell copies of the Software, and to permit persons to whom the
;   Software is furnished to do so, subject to the following conditions:
;
;   The above copyright notice and this permission notice shall be included in
;   all copies or substantial portions of the Software.
;
;   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;   DEALINGS IN THE SOFTWARE.
;
; Original author: Sol Swords <sswords@centtech.com>

(in-package "FGL")

(include-book "interp-st-bfrs-ok")
(include-book "std/strings/decimal" :dir :system)
(set-state-ok t)

(defconst *logically-relevant-interp-st-fields*
  '(:stack :logicman :bvar-db :pathcond :constraint :constraint-db
    :equiv-contexts :reclimit :errmsg))

(encapsulate
  (((fancy-ev-primitive * * interp-st state) => (mv * * interp-st)
    :formals (fn args interp-st state)
    :guard (and (pseudo-fnsym-p fn)
                (true-listp args)
                (interp-st-bfrs-ok interp-st))))
  (local (defun fancy-ev-primitive (fn args interp-st state)
           (declare (xargs :stobjs (interp-st state))
                    (ignore fn args state))
           (mv nil nil interp-st)))

  (defthm interp-st-get-of-fancy-ev-primitive
    (implies (member (interp-st-field-fix key)
                     *logically-relevant-interp-st-fields*)
             (equal (interp-st-get key (mv-nth 2 (fancy-ev-primitive fn args interp-st state)))
                    (interp-st-get key interp-st))))

  (defthm interp-st-bfrs-ok-of-fancy-ev-primitive
    (implies (interp-st-bfrs-ok interp-st)
             (interp-st-bfrs-ok (mv-nth 2 (fancy-ev-primitive fn args interp-st state))))))
   
(define fancy-ev-definition ((fn pseudo-fnsym-p) state)
  :returns (mv ok
               (formals symbol-listp)
               (body pseudo-termp))
  :prepwork ((local (in-theory (disable pseudo-termp symbol-listp pseudo-term-listp
                                        acl2::pseudo-termp-opener))))
  (b* ((tab (table-alist 'fancy-ev-definitions (w state)))
       (fn (pseudo-fnsym-fix fn))
       (look (cdr (hons-assoc-equal fn tab)))
       ((when (and (eql (len look) 2)
                   (symbol-listp (first look))
                   (pseudo-termp (second look))))
        (mv t (first look) (second look)))
       ((mv ok formals body) (acl2::fn-get-def fn state))
       ((unless (and ok (pseudo-termp body)))
        (mv nil nil nil)))
    (mv t formals body)))

(set-state-ok t)

(defines fancy-ev
  (define fancy-ev ((x pseudo-termp)
                    (alist symbol-alistp)
                    (reclimit natp)
                    (interp-st interp-st-bfrs-ok)
                    state
                    hard-errp
                    aokp)
    :well-founded-relation acl2::nat-list-<
    :measure (list reclimit (pseudo-term-count x))
    :returns (mv errmsg val new-interp-st)
    :verify-guards nil
    (pseudo-term-case x
      :const (mv nil x.val interp-st)
      :var (mv nil (cdr (hons-assoc-equal x.name alist)) interp-st)
      :lambda (b* (((mv err args interp-st)
                    (fancy-ev-list x.args alist reclimit interp-st state hard-errp aokp))
                   ((when err) (mv err nil interp-st)))
                (fancy-ev x.body
                          (pairlis$ x.formals args)
                          reclimit interp-st state hard-errp aokp))
      :fncall (b* (((when (and** (eq x.fn 'if) (eql (len x.args) 3)))
                    (b* (((mv err test interp-st) (fancy-ev (first x.args) alist reclimit interp-st state hard-errp aokp))
                         ((when err) (mv err nil interp-st)))
                      (if test
                          (fancy-ev (second x.args) alist reclimit interp-st state hard-errp aokp)
                        (fancy-ev (third x.args) alist reclimit interp-st state hard-errp aokp))))
                   ((when (and** (eq x.fn 'return-last) (eql (len x.args) 3)))
                    (b* ((arg1 (first x.args)))
                      (b* ((interp-st
                            (pseudo-term-case arg1
                              :const (if (eq arg1.val 'progn)
                                         (b* (((mv ?err ?arg1 interp-st)
                                               (fancy-ev (second x.args) alist reclimit interp-st state hard-errp aokp)))
                                           interp-st)
                                       interp-st)
                              :otherwise interp-st)))
                        (fancy-ev (third x.args) alist reclimit interp-st state hard-errp aokp))))
                   ((mv err args interp-st) (fancy-ev-list x.args alist reclimit interp-st state hard-errp aokp))
                   ((when err) (mv err nil interp-st)))
                (fancy-ev-fncall x.fn args reclimit interp-st state hard-errp aokp))))

  (define fancy-ev-fncall ((fn pseudo-fnsym-p)
                           (args true-listp)
                           (reclimit natp)
                           (interp-st interp-st-bfrs-ok)
                           state hard-errp aokp)
    :measure (list reclimit 0)
    :returns (mv errmsg val new-interp-st)
    (b* ((fn (pseudo-fnsym-fix fn))
         (args (mbe :logic (true-list-fix args)
                    :exec args))
         ((mv ev-ok val interp-st)
          (fancy-ev-primitive fn args interp-st state))
         ((when ev-ok) (mv nil val interp-st))
         ((mv ev-err val)
          (acl2::magic-ev-fncall fn
                                 args
                                 state hard-errp aokp))
         ((unless ev-err) (mv nil val interp-st))
         ((when (zp reclimit))
          (mv (msg "Recursion limit ran out calling ~x0" (pseudo-fnsym-fix fn)) nil interp-st))
         ((mv def-ok formals body) (fancy-ev-definition fn state))
         ((unless def-ok)
          (mv (msg "No definition for ~x0" (pseudo-fnsym-fix fn)) nil interp-st))
         ((unless (eql (len formals) (len args)))
          (mv (msg "Wrong arity for ~x0 call" (pseudo-fnsym-fix fn)) nil interp-st)))
      (fancy-ev body (pairlis$ formals args) (1- reclimit) interp-st state hard-errp aokp)))

  (define fancy-ev-list ((x pseudo-term-listp)
                         (alist symbol-alistp)
                         (reclimit natp)
                         (interp-st interp-st-bfrs-ok)
                         state hard-errp aokp)
    :measure (list reclimit (pseudo-term-list-count x))
    :returns (mv errmsg (vals true-listp) new-interp-st)
    (b* (((when (atom x))
          (mv nil nil interp-st))
         ((mv err first interp-st) (fancy-ev (car x) alist reclimit interp-st state hard-errp aokp))
         ((when err) (mv err nil interp-st))
         ((mv err rest interp-st) (fancy-ev-list (cdr x) alist reclimit interp-st state hard-errp aokp))
         ((when err) (mv err nil interp-st)))
      (mv nil (cons first rest) interp-st)))
  ///
  (local (in-theory (disable acl2::member-of-cons member (tau-system) pseudo-termp pseudo-term-listp
                             fancy-ev fancy-ev-fncall fancy-ev-list)))
  (defret-mutual interp-st-get-of-fancy-ev
    (defret interp-st-get-of-<fn>
      (implies (member (interp-st-field-fix key) *logically-relevant-interp-st-fields*)
               (equal (interp-st-get key new-interp-st)
                      (interp-st-get key interp-st)))
      :hints ('(:expand (<call>)))
      :fn fancy-ev)
    (defret interp-st-get-of-<fn>
      (implies (member (interp-st-field-fix key) *logically-relevant-interp-st-fields*)
               (equal (interp-st-get key new-interp-st)
                      (interp-st-get key interp-st)))
      :hints ('(:expand (<call>)))
      :fn fancy-ev-fncall)
    (defret interp-st-get-of-<fn>
      (implies (member (interp-st-field-fix key) *logically-relevant-interp-st-fields*)
               (equal (interp-st-get key new-interp-st)
                      (interp-st-get key interp-st)))
      :hints ('(:expand (<call>)))
      :fn fancy-ev-list))

  (defret-mutual interp-st-bfrs-ok-of-fancy-ev
    (defret interp-st-bfrs-ok-of-<fn>
      (implies (interp-st-bfrs-ok interp-st)
               (interp-st-bfrs-ok new-interp-st))
      :hints ('(:expand (<call>)))
      :fn fancy-ev)
    (defret interp-st-bfrs-ok-of-<fn>
      (implies (interp-st-bfrs-ok interp-st)
               (interp-st-bfrs-ok new-interp-st))
      :hints ('(:expand (<call>)))
      :fn fancy-ev-fncall)
    (defret interp-st-bfrs-ok-of-<fn>
      (implies (interp-st-bfrs-ok interp-st)
               (interp-st-bfrs-ok new-interp-st))
      :hints ('(:expand (<call>)))
      :fn fancy-ev-list))

  (local (defthm true-listp-when-symbol-listp
           (implies (symbol-listp x)
                    (true-listp x))))

  (verify-guards fancy-ev
    :hints(("Goal" :in-theory (enable acl2::member-of-cons))))

  (local (in-theory (disable fancy-ev fancy-ev-list fancy-ev-fncall
                             pseudo-term-listp pseudo-termp)))

  (fty::deffixequiv-mutual fancy-ev))



(program)

(defmacro fancy-ev-add-primitive (fn guard)
  `(table fancy-ev-primitives ',fn ',guard))

(defun fancy-ev-primitive-bindings (argsvar stobjs-in formals n)
  (if (atom stobjs-in)
      nil
    (if (car stobjs-in)
        (fancy-ev-primitive-bindings argsvar (cdr stobjs-in) (cdr formals) (+ 1 n))
      `((,(car formals) (nth ,n ,argsvar))
        . ,(fancy-ev-primitive-bindings argsvar (cdr stobjs-in) (cdr formals) (+ 1 n))))))

(defun fancy-ev-primitive-formals (stobjs-in formals)
  (if (atom stobjs-in)
      nil
    (cons (or (car stobjs-in) (car formals))
          (fancy-ev-primitive-formals (cdr stobjs-in) (cdr formals)))))

(defun fancy-ev-stobj-out-bindings (stobjs-out n)
  (if (atom stobjs-out)
      nil
    (cons (or (car stobjs-out)
              (intern-in-package-of-symbol (concatenate 'string "OUT" (str::natstr n)) 'fgl-fgl))
          (fancy-ev-stobj-out-bindings (cdr stobjs-out) (+ 1 n)))))

(defun fancy-ev-stobj-out-results (stobjs-out vars)
  (if (atom stobjs-out)
      nil
    (cons (if (car stobjs-out) nil (car vars))
          (fancy-ev-stobj-out-results (cdr stobjs-out) (cdr vars)))))

(defun fancy-ev-primitives-cases (argsvar table state)
  (b* (((when (atom table)) nil)
       ((cons fn guard) (car table))
       (wrld (w state))
       (formals (acl2::formals fn wrld))
       (stobjs-in (acl2::stobjs-in fn wrld))
       (diff (set-difference-eq stobjs-in '(nil interp-st state)))
       ((when diff)
        (er hard? 'def-fancy-ev-primitives "~x0 takes input stobjs ~x1 -- only interp-st and state are allowed"
            fn diff))
       (stobjs-out (stobjs-out fn wrld))
       (diff (set-difference-eq stobjs-out '(nil interp-st)))
       ((when diff)
        (er hard? 'def-fancy-ev-primitives "~x0 can modify stobjs ~x1 -- only interp-st may be modified"
            fn diff))
       (bindings (fancy-ev-primitive-bindings argsvar stobjs-in formals 0))
       (call-formals (fancy-ev-primitive-formals stobjs-in formals))
       ((unless (member 'interp-st stobjs-out))
        `((,fn (b* (,@bindings
                    (result (mbe :logic (non-exec (,fn . ,call-formals))
                                 :exec (if ,guard
                                           ,(if (consp (cdr stobjs-out))
                                                `(mv-list ,(len stobjs-out)
                                                          (,fn . ,call-formals))
                                              `(,fn . ,call-formals))
                                         (non-exec (ec-call (,fn . ,call-formals)))))))
                 (mv t result interp-st)))
          . ,(fancy-ev-primitives-cases argsvar (cdr table) state)))
       (out-bindings (fancy-ev-stobj-out-bindings stobjs-out 0))
       (results (fancy-ev-stobj-out-results stobjs-out out-bindings)))
    `((,fn (b* (,@bindings
                (,@(if (consp (cdr stobjs-out))
                       `((mv . ,out-bindings))
                     out-bindings)
                 (mbe :logic (,fn . ,call-formals)
                      :exec (if ,guard
                                (,fn . ,call-formals)
                              (ec-call (,fn . ,call-formals))))))
             (mv t (list . ,results) interp-st)))
      . ,(fancy-ev-primitives-cases argsvar (cdr table) state))))


(defun def-fancy-ev-primitives-fn (fnname state)
  (b* ((prims (table-alist 'fancy-ev-primitives (w state))))
    `(define ,fnname ((fn pseudo-fnsym-p)
                      (args true-listp)
                      (interp-st interp-st-bfrs-ok)
                      state)
       :ignore-ok t
       :irrelevant-formals-ok t
       (case (pseudo-fnsym-fix fn)
         ,@(fancy-ev-primitives-cases 'args prims state)
         (otherwise (mv nil nil interp-st)))
       ///
       (defattach fancy-ev-primitive ,fnname))))

(defmacro def-fancy-ev-primitives (fnname)
  `(make-event
    (def-fancy-ev-primitives-fn ',fnname state)))

;; (logic)

;; (fancy-ev-add-primitive update-interp-st->cgraph$inline (cgraph-p cgraph))

;; (def-fancy-ev-primitives foo-bar)