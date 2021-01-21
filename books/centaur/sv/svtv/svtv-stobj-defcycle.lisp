; Centaur SV Hardware Verification Tutorial
; Copyright (C) 2016 Centaur Technology
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
; Original authors: Sol Swords <sswords@centtech.com>


(in-package "SV")
(include-book "svtv-stobj-cycle")
(include-book "svtv-stobj-rewrite")
(include-book "svtv-stobj-phase")
(include-book "svtv-stobj-util")
(include-book "process")
(include-book "centaur/misc/hons-remove-dups" :dir :System)


(define svtv-data-defcycle-core ((design design-p)
                                 (phases svtv-cyclephaselist-p)
                                 (names svtv-namemap-p)
                                 svtv-data
                                 &key
                                 ((rewrite-phases booleanp) 't)
                                 ((rewrite-cycle booleanp) 't))
  :guard (modalist-addr-p (design->modalist design))
  :returns (mv err new-svtv-data)
  (b* ((svtv-data (svtv-data-set-design design svtv-data))
       ((mv err svtv-data) (svtv-data-maybe-compute-flatten svtv-data))
       ((when err)
        (mv err svtv-data))
       (svtv-data (svtv-data-maybe-compute-flatnorm svtv-data))
       ((mv err svtv-data) (svtv-data-maybe-compute-namemap names svtv-data))
       ((when err) (mv err svtv-data))
       (svtv-data (svtv-data-maybe-compute-phase-fsm svtv-data))
       (svtv-data (svtv-data-maybe-rewrite-phase-fsm rewrite-phases svtv-data :verbosep t))
       (svtv-data (svtv-data-maybe-compute-cycle-fsm phases svtv-data))
       (svtv-data (svtv-data-maybe-rewrite-cycle-fsm rewrite-cycle svtv-data)))
    (mv nil svtv-data))
  ///
  (defret <fn>-correct
    (implies (not err)
             (and (equal (svtv-data$c->design new-svtv-data) (design-fix design))
                  (equal (svtv-data$c->cycle-phases new-svtv-data) (svtv-cyclephaselist-fix phases))
                  (equal (svtv-data$c->user-names new-svtv-data) (svtv-namemap-fix names))
                  (equal (svtv-data$c->flatten-validp new-svtv-data) t)
                  (equal (svtv-data$c->flatnorm-validp new-svtv-data) t)
                  (equal (svtv-data$c->namemap-validp new-svtv-data) t)
                  (equal (svtv-data$c->phase-fsm-validp new-svtv-data) t)
                  (equal (svtv-data$c->cycle-fsm-validp new-svtv-data) t)))))

(defun defcycle-fn (name design phases names rewrite-phases rewrite-cycle stobj)
  `(make-event
    (b* (((mv err ,stobj)
          (svtv-data-defcycle-core ,design ,phases ,names
                                   ,stobj
                                   :rewrite-phases ,rewrite-phases
                                   :rewrite-cycle ,rewrite-cycle))
         ((when err)
          (mv err nil state ,stobj))
         (fsm (make-svtv-fsm :base-fsm (svtv-data->cycle-fsm svtv-data)
                             :namemap (svtv-data->namemap svtv-data))))
      (mv nil
          `(with-output :off (event)
             (progn (defconst ,',(intern-in-package-of-symbol
                                (concatenate 'string "*" (symbol-name name) "*")
                                name)
                      ',fsm)
                    (defund ,',name ()
                      (declare (xargs :guard t))
                      ',fsm)
                    (in-theory (disable (,',name)))))
          state ,stobj))))


(defmacro defcycle (name &key
                         design
                         phases
                         names
                         (rewrite-phases 't)
                         (rewrite-cycle 't)
                         (stobj 'svtv-data))
  (defcycle-fn name design phases names rewrite-phases rewrite-cycle stobj))

