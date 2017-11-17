

(in-package "AIGNET")

(include-book "cuts4")
(include-book "rwlib")
(include-book "statsmgr")
(include-book "centaur/aignet/transform-utils" :dir :system)
(include-book "centaur/aignet/prune" :dir :system)
(include-book "centaur/aignet/refcounts" :dir :system)
(include-book "centaur/aignet/sweep" :dir :system)
(include-book "centaur/misc/nth-nat-equiv" :dir :system)

(local (include-book "std/lists/take" :dir :system))
(local (include-book "std/lists/resize-list" :dir :system))
(local (include-book "tools/trivial-ancestors-check" :dir :system))
(local (include-book "arithmetic/top-with-meta" :dir :system))
(local (include-book "centaur/bitops/ihsext-basics" :dir :system))
(local (include-book "std/lists/repeat" :dir :system))
(local (include-book "std/lists/update-nth" :dir :system))
(local (in-theory (disable acl2::update-nth-when-zp)))



(local (acl2::use-trivial-ancestors-check))
(local (std::add-default-post-define-hook :fix))
(local (in-theory (disable nth update-nth unsigned-byte-p)))


(fty::defprod rewrite-config
  ((cuts4-config cuts4-config-p)
   (zero-cost-replace booleanp :rule-classes :type-prescription))
  :tag :rewrite-config)

;; note: these are needed for fixequivs as long as the config is empty...
(local (in-theory (disable (rewrite-config)
                           rewrite-config-fix-when-rewrite-config)))

(local (defrefinement nat-equiv lit-equiv
         :hints(("Goal" :in-theory (enable lit-fix)))))

(local (defrefinement lit-equiv nat-equiv
         :hints(("Goal" :in-theory (enable lit-fix)))))

(defstatsmgr rewrite-stats
  (cuts-checked :desc "cuts checked" :abbrev "cuts")
  (tries :desc "candidates tried" :abbrev "tries")
  (repls :desc "replacements"     :abbrev "repls")
  (zero  :desc "zero cost"        :abbrev "zero")
  (savings :desc "savings computed" :abbrev "savings"))


(defstobj-clone strash2 strash :suffix "2")

;; bozo redundant with balance.lisp
(defstobj-clone refcounts u32arr :prefix "REFCOUNTS-")
(defstobj-clone refcounts2 u32arr :prefix "REFCOUNTS2-")
;; (defstobj-clone rwlib rwlib :prefix "RWLIB-")

(defstobj-clone copy2 copy :suffix "2")
;; (defstobj-clone smm acl2::smm :strsubst (("abcd" . "abcd")))
(defstobj-clone eba2 eba :suffix "2")



;; (local (defthm cutsdb-ok-implies-truth-p-of-truth
;;          (implies (and (cutsdb-ok cutsdb)
;;                        (cutp$ cut cutsdb)
;;                        (< cut (nodecut-indicesi (cut-nnodes cutsdb) cutsdb)))
;;                   (truth::truth4-p (cut-datai (+ 1 cut) cutsdb)))
;;          :hints (("goal" :use ((:instance cutsdb-ok-implies-cutsdb-cut-ok
;;                                 (n cut)))
;;                   :in-theory (e/d (cutsdb-cut-ok cut-next$ cut-next)
;;                                   (cutsdb-ok-implies-cutsdb-cut-ok))))))

(local (defthm bound-when-truth4-p
         (implies (truth::truth4-p x)
                  (< x #x10000))
         :hints(("Goal" :in-theory (enable truth::truth4-p unsigned-byte-p)))))

(define cut-initialize-copy ((cut natp)
                             (copy2 "mapping from dsd aig indices to aignet2 indices -- writing this here")
                             (cutsdb cutsdb-ok)
                             (rwlib rwlib-wfp))
  :returns (new-copy2)
  :guard (and (< cut (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
              (b* (((acl2::stobj-get ok)
                    ((aignet-tmp (rwlib->aigs rwlib)))
                    (< (max-fanin aignet-tmp) (lits-length copy2))))
                ok))
  :prepwork (;; (local (defthm cut-data-bounded-by-cut-nnodes
             ;;          (implies (and (cutsdb-ok cutsdb)
             ;;                        (natp cut)
             ;;                        (< cut (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
             ;;                        (natp idx)
             ;;                        (< idx (cutinfo->size (cut-infoi cut cutsdb))))
             ;;                   (< (cut-leavesi (+ (* 4 cut) idx) cutsdb) (cut-nnodes cutsdb)))
             ;;          :hints (("goal" :use ((:instance cutsdb-ok-implies-cuts-bounded-by-nnodes
             ;;                                 (bound (cut-nnodes cutsdb)) (cut cut)))
             ;;                   :in-theory (e/d (cut-leaves-bounded
             ;;                                    leaves-bounded-implies-compare)
             ;;                                   (cutsdb-ok-implies-cuts-bounded-by-nnodes))
             ;;                   :cases ((equal (cut-nnodes cutsdb) 0))))
             ;;          :rule-classes :linear))

             (local (defthm cut-leaf-lit-idp-by-cut-nnodes
                      (implies (and (cutsdb-lit-idsp aignet cutsdb)
                                    (natp cut)
                                    (< cut (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                                    (natp idx)
                                    (< idx (cutinfo->size (cut-infoi cut cutsdb))))
                               (aignet-litp (make-lit (cut-leavesi (+ (* 4 cut) idx) cutsdb) bit)
                                            aignet))
                      :hints (("goal" :use ((:instance cutsdb-lit-idsp-implies-cut-leaves-lit-idsp))
                               :in-theory (e/d (cut-leaves-lit-idsp
                                                leaves-lit-idsp-implies-aignet-litp)))))))
  (b* (((cutinfo cutinf) (cut-infoi cut cutsdb))
       ((acl2::stobj-get npn)
        ((truth::npn4arr (rwlib->npns rwlib)))
        (truth::get-npn4 cutinf.truth truth::npn4arr))
       ((truth::npn4 npn))
       ((acl2::fun (idx-lit idx perm polarity cutinf.size cut cutsdb))
        (b* ((perm-idx (truth::perm4-index idx perm))
             (node (if (< perm-idx cutinf.size) (cut-leavesi (+ perm-idx (* 4 (lnfix cut))) cutsdb) 0)))
          (make-lit node (logbit idx polarity))))
       ((acl2::stobj-get copy2)
        ((aignet-tmp (rwlib->aigs rwlib)))
        (b* ((copy2 (set-lit (innum->id 0 aignet-tmp)
                             (idx-lit 0 npn.perm npn.polarity cutinf.size cut cutsdb)
                             copy2))
             (copy2 (set-lit (innum->id 1 aignet-tmp)
                             (idx-lit 1 npn.perm npn.polarity cutinf.size cut cutsdb)
                             copy2))
             (copy2 (set-lit (innum->id 2 aignet-tmp)
                             (idx-lit 2 npn.perm npn.polarity cutinf.size cut cutsdb)
                             copy2))
             (copy2 (set-lit (innum->id 3 aignet-tmp)
                             (idx-lit 3 npn.perm npn.polarity cutinf.size cut cutsdb)
                             copy2)))
          copy2)))
    copy2)
  ///
  (defret lookup-of-cut-initialize-copy
    (implies (and (< (nfix n) 4)
                  (rwlib-wfp rwlib))
             (equal (nth-lit (node-count (lookup-stype n :pi (rwlib->aigs rwlib)))
                             new-copy2)
                    (b* (((cutinfo cutinf) (cut-infoi cut cutsdb))
                         ((truth::npn4 npn) (truth::get-npn4 cutinf.truth (rwlib->npns rwlib)))
                         (perm-idx (truth::index-perm
                                    0 (truth::perm4-index-list npn.perm) n 4))
                         (node (if (< perm-idx cutinf.size)
                                   (cut-leavesi (+ perm-idx (* 4 (nfix cut))) cutsdb)
                                 0)))
                      (make-lit node (logbit n npn.polarity)))))
    :hints (("Goal" :cases ((equal (nfix n) 0)
                            (equal (nfix n) 1)
                            (equal (nfix n) 2)
                            (equal (nfix n) 3)))))

  (defret aignet-copies-in-bounds-of-cut-initialize-copy
    (implies (and (aignet-copies-in-bounds copy2 aignet2)
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb)))
             (aignet-copies-in-bounds new-copy2 aignet2)))

  (defret length-of-cut-initialize-copy
    (implies (and (< (max-fanin (rwlib->aigs rwlib)) (len copy2))
                  (rwlib-wfp rwlib))
             (equal (len new-copy2) (len copy2)))))
       
(define cut-impl-index-ok ((cut natp)
                           (impl-idx natp)
                           (cutsdb cutsdb-ok)
                           (rwlib rwlib-wfp))
  :guard (< cut (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
  (b* (((cutinfo cutinf) (cut-infoi cut cutsdb))
       ((acl2::stobj-get ok)
        ((truth::npn4arr (rwlib->npns rwlib))
         (acl2::smm   (rwlib->cands rwlib)))
        (b* (((truth::npn4 npn) (truth::get-npn4 cutinf.truth truth::npn4arr)))
          (< (lnfix impl-idx) (acl2::smm-block-size npn.truth-idx acl2::smm)))))
    ok))
       
(define smm-read-lit ((block natp)
                      (idx natp)
                      (smm))
  :guard (and (< block (smm-nblocks smm))
              (< idx (smm-block-size block smm)))
  :enabled t
  :prepwork ((local (defthm nat-listp-when-u32-listp
                      (implies (acl2::u32-listp x)
                               (nat-listp x))))
             (local (defthm nat-listp-nth-of-u32-list-listp
                      (implies (and (Acl2::u32-list-listp x)
                                    (< (nfix n) (len x)))
                               (nat-listp (nth n x)))
                      :hints(("Goal" :in-theory (enable nth)))))
             (local (defthm litp-nth-of-nat-listp
                      (implies (and (nat-listp x)
                                    (< (nfix n) (len x)))
                               (litp (nth n x)))
                      :hints(("Goal" :in-theory (enable nth)))))
             (local (defthm natp-nth-of-nat-listp
                      (implies (and (nat-listp x)
                                    (< (nfix n) (len x)))
                               (natp (nth n x)))
                      :hints(("Goal" :in-theory (enable nth))))))
  (mbe :logic (lit-fix (smm-read block idx smm))
       :exec (smm-read block idx smm)))

(defthm aignet-litp-implies-less-than-max-fanin
  (implies (aignet-litp lit aignet)
           (and (< (lit->var lit) (+ 1 (node-count (find-max-fanin aignet))))
                (<= (lit->var lit) (node-count (find-max-fanin aignet))))))

(defthm impl-lit-bound-when-rwlib-wfp
  (implies (and (rwlib-wfp rwlib)
                (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                (cutsdb-ok cutsdb)
                (cut-impl-index-ok cut impl-idx cutsdb rwlib))
           (<= (lit->var (nth impl-idx
                              (nth (truth::npn4->truth-idx (nth (cutinfo->truth (cut-infoi cut cutsdb))
                                                                (rwlib->npns rwlib)))
                                   (rwlib->cands rwlib))))
               (node-count (find-max-fanin (rwlib->aigs rwlib)))))
  :hints(("Goal" :in-theory (enable cut-impl-index-ok)))
  :rule-classes (:rewrite :linear))


(defsection cutsdb-correct
  (defun-sk cutsdb-correct (cutsdb aignet)
    (forall (vals invals regvals)
            (cutsdb-consistent cutsdb (aignet-record-vals vals invals regvals aignet)))
    :rewrite :direct)

  (in-theory (disable cutsdb-correct))
  (defthm cutsdb-correct-of-aignet-derive-cuts
    (cutsdb-correct (mv-nth 1 (aignet-derive-cuts aignet config refcounts cutsdb)) aignet)
    :hints(("Goal" :in-theory (enable cutsdb-correct))))

  (defthm cutsdb-correct-of-aignet-derive-cuts-aux
    (implies (and (cutsdb-correct cutsdb aignet)
                  (cutsdb-ok cutsdb))
             (cutsdb-correct (mv-nth 1 (aignet-derive-cuts-aux aignet count config refcounts cutsdb)) aignet))
    :hints((and stable-under-simplificationp
                `(:expand (,(car (last clause))))))))

(defsection cutsdb-correct-of-aignet-extension
  ;; (local (defthm cut-data-bounded-by-cut-nnodes
  ;;          (implies (and (cutsdb-ok cutsdb)
  ;;                        (natp cut)
  ;;                        (< cut (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
  ;;                        (natp idx)
  ;;                        (< idx (cutinfo->size (cut-infoi cut cutsdb))))
  ;;                   (< (cut-leavesi (+ (* 4 cut) idx) cutsdb) (cut-nnodes cutsdb)))
  ;;          :hints (("goal" :use ((:instance cutsdb-ok-implies-cuts-bounded-by-nnodes
  ;;                                 (bound (cut-nnodes cutsdb)) (cut cut)))
  ;;                   :in-theory (e/d (cut-leaves-bounded
  ;;                                    leaves-bounded-implies-compare)
  ;;                                   (cutsdb-ok-implies-cuts-bounded-by-nnodes))
  ;;                   :cases ((equal (cut-nnodes cutsdb) 0))))
  ;;          :rule-classes :linear))

  (local (defthm leaves-bounded-when-cutsdb-ok
           (implies (and (cutsdb-ok cutsdb)
                         (natp cut)
                         (< cut (nodecut-indicesi (cut-nnodes cutsdb) cutsdb)))
                    (leaves-bounded (* 4 cut)
                                    (cutinfo->size (cut-infoi cut cutsdb))
                                    (cut-nnodes cutsdb)
                                    cutsdb))
           :hints (("goal" :use ((:instance cutsdb-ok-implies-cuts-bounded-by-nnodes
                                  (bound (cut-nnodes cutsdb)) (cut cut)))
                    :in-theory (e/d (cut-leaves-bounded)
                                    (cutsdb-ok-implies-cuts-bounded-by-nnodes))))))


  (local (defthm leaves-truthenv-of-record-vals-of-aignet-extension
           (implies (and (aignet-extension-binding)
                         (leaves-bounded data size (cut-nnodes cutsdb) cutsdb)
                         (<= (cut-nnodes cutsdb) (num-nodes orig)))
                    (equal (leaves-truthenv data size bit-idx cutsdb
                                            (aignet-record-vals vals invals regvals new))
                           (leaves-truthenv data size bit-idx cutsdb
                                            (aignet-record-vals vals invals regvals orig))))
           :hints(("Goal" :in-theory (enable leaves-truthenv leaves-bounded
                                             aignet-idp)))))

  (local (defthm cut-value-of-record-vals-of-aignet-extension
           (implies (and (aignet-extension-binding)
                         (cutsdb-ok cutsdb)
                         (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                         (<= (cut-nnodes cutsdb) (num-nodes orig)))
                    (equal (cut-value cut cutsdb (aignet-record-vals vals invals regvals new))
                           (cut-value cut cutsdb (aignet-record-vals vals invals regvals orig))))
           :hints(("Goal" :in-theory (e/d (cut-value cut-leaves-bounded)
                                          (cutsdb-ok-implies-cuts-bounded-by-nnodes))
                   :use ((:instance cutsdb-ok-implies-cuts-bounded-by-nnodes
                          (bound (Cut-nnodes cutsdb))))))))

  (local (defthm cuts-consistent-of-record-vals-of-aignet-extension
           (implies (and (aignet-extension-binding)
                         (cutsdb-ok cutsdb)
                         (<= (nfix max) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                         (<= (cut-nnodes cutsdb) (num-nodes orig)))
                    (equal (cuts-consistent cut max value cutsdb (aignet-record-vals vals invals regvals new))
                           (cuts-consistent cut max value cutsdb (aignet-record-vals vals invals regvals orig))))
           :hints(("Goal" :in-theory (enable cuts-consistent)))))

  (local (defthm node-cuts-consistent-of-record-vals-of-aignet-extension
           (implies (and (aignet-extension-binding)
                         (cutsdb-ok cutsdb)
                         (< (nfix node) (cut-nnodes cutsdb))
                         (<= (cut-nnodes cutsdb) (num-nodes orig)))
                    (equal (node-cuts-consistent node cutsdb (aignet-record-vals vals invals regvals new))
                           (node-cuts-consistent node cutsdb (aignet-record-vals vals invals regvals orig))))
           :hints(("Goal" :in-theory (enable node-cuts-consistent aignet-idp)))))

  (local (defthm cutsdb-consistent-of-record-vals-of-aignet-extension
           (implies (and (aignet-extension-binding)
                         (cutsdb-ok cutsdb)
                         (<= (cut-nnodes cutsdb) (num-nodes orig))
                         (cutsdb-consistent cutsdb (aignet-record-vals vals invals regvals orig)))
                    (cutsdb-consistent cutsdb (aignet-record-vals vals invals regvals new)))
           :hints ((and stable-under-simplificationp
                        `(:expand (,(car (last clause))))))))

  (defthm cutsdb-correct-of-aignet-extension
    (implies (and (aignet-extension-binding)
                  (cutsdb-correct cutsdb orig)
                  (cutsdb-ok cutsdb)
                  (<= (cut-nnodes cutsdb) (num-nodes orig)))
             (cutsdb-correct cutsdb new))
    :hints ((and stable-under-simplificationp
                 `(:expand (,(car (last clause))))))))



;; (defsection nth-of-input-copy-values-split
;;   (local (in-theory (enable input-copy-values)))
;;   (local (include-book "std/lists/nth" :dir :system))

;;   (local (defret nth-of-input-copy-values-split-lemma
;;            (implies (<= (nfix n) (nfix m))
;;                     (equal (nth (- (nfix m) (nfix n)) input-vals)
;;                            (and (< (nfix m) (num-ins aignet))
;;                                 (lit-eval (nth-lit (innum->id m aignet) copy)
;;                                           invals regvals aignet2))))
;;            :hints(("Goal" :in-theory (enable* acl2::arith-equiv-forwarding)
;;                    :induct <call>
;;                    :expand ((:free (cons m a b) (nth m (cons a b))))))
;;            :fn input-copy-values))

;;   (defret nth-of-input-copy-values-split
;;     (equal (nth m input-vals)
;;            (and (< (+ (nfix m) (nfix n)) (num-ins aignet))
;;                 (lit-eval (nth-lit (innum->id (+ (nfix m) (nfix n)) aignet) copy)
;;                           invals regvals aignet2)))
;;     :hints(("Goal" :use ((:instance nth-of-input-copy-values-split-lemma
;;                           (m (+ (nfix m) (nfix n)))))
;;             :in-theory (disable nth-of-input-copy-values-split-lemma
;;                                 input-copy-values)))
;;     :fn input-copy-values))


(local (defthmd cut-leaves-bounded-implies-compare
         (implies (and (cut-leaves-bounded cut bound cutsdb)
                       (natp cut) (natp idx) (natp bound)
                       (< idx (cutinfo->size (cut-infoi cut cutsdb))))
                  (< (cut-leavesi (+ idx (* 4 cut)) cutsdb) bound))
         :hints(("Goal" :in-theory (enable cut-leaves-bounded
                                           leaves-bounded-implies-compare)))
         :rule-classes (:rewrite :linear)))

;; (local
;;  (defthmd cut-leaves-lit-idsp-implies
;;    (implies (and (cut-leaves-lit-idsp cut aignet cutsdb)
;;                  (natp cut) (natp idx)
;;                  (< idx (cutinfo->size (cut-infoi cut cutsdb))))
;;             (b* ((leaf (cut-leavesi (+ idx (* 4 cut)) cutsdb)))
;;               (and (aignet-idp leaf aignet)
;;                    (not (equal (ctype (stype (car (lookup-id leaf aignet)))) :output))
;;                    (not (equal (stype (car (lookup-id leaf aignet))) :po))
;;                    (not (equal (stype (car (lookup-id leaf aignet))) :nxst)))))
;;    :hints(("Goal" :in-theory (enable cut-leaves-lit-idsp
;;                                      leaves-lit-idsp-implies)))))



(defthm input-copy-values-of-cut-initialize-copy
  (implies (and ;; (aignet-copy-is-comb-equivalent node aignet copy aignet2)
                ;; (aignet-copies-in-bounds copy aignet2)
                ;; (cutsdb-lit-idsp aignet2 cutsdb)
            ;; (posp node)
                ;; (cut-leaves-bounded cut node cutsdb)
            (< (nfix n) 4)
            (rwlib-wfp rwlib)
            ;; (cutsdb-ok cutsdb)
            ;; (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
            ;; (rwlib-correct rwlib)
            )
           (iff (truth::env-lookup n
                                   (permuted-env-from-aignet-invals
                                    (nth (cutinfo->truth (cut-infoi cut cutsdb))
                                         (rwlib->npns rwlib))
                                    (INPUT-COPY-VALUES 0 INVALS
                                                       REGVALS (RWLIB->AIGS RWLIB)
                                                       (CUT-INITIALIZE-COPY CUT COPY2 CUTSDB RWLIB)
                                                       AIGNET2)))
                (and (< (nfix n) (cutinfo->size (cut-infoi cut cutsdb)))
                     (acl2::bit->bool 
                      (id-eval (cut-leavesi (+ (* 4 (nfix cut)) (nfix n)) cutsdb)
                               invals regvals aignet2)))))
  :hints(("Goal" :in-theory (enable ;; cut-leaves-bounded-implies-compare
                                    ;; cut-leaves-lit-idsp-implies
                                    ;; cutsdb-lit-idsp-implies-cut-leaves-lit-idsp
                                    )
          :expand ((:free (id neg) (lit-eval (make-lit id neg) invals regvals aignet2)))
          ;; :use ((:instance cutsdb-cut-lit-idsp-implies-nodes-lit-idsp
          ;;        (n cut)
          ;;        (i (+ 2 cut (nfix n)))))
          )))

;; (local (defthmd cut-leaves-bounded-implies-compare-strong
;;          (implies (and (equal cut1 (double-rewrite cut))
;;                        (bind-free (case-match cut1
;;                                     (('nfix cut2) `((cut2 . ,cut2)))
;;                                     (& `((cut2 . ,cut1))))
;;                                   (cut2))
;;                        (equal (nfix cut2) cut1)
;;                        (syntaxp (or (cw "cut2: ~x0~%" cut2) t))
;;                        (cut-leaves-bounded cut2 bound cutsdb)
;;                        (syntaxp (or (cw "bound: ~x0~%" bound) t))
;;                        (natp cut1) (natp idx) (natp bound)
;;                        (<= bound bound2)
;;                        (< idx (cutinfo->size (cut-infoi cut1 cutsdb))))
;;                   (< (cut-leavesi (+ idx (* 4 cut)) cutsdb) bound2))
;;          :hints(("Goal" :in-theory (enable cut-leaves-bounded
;;                                            leaves-bounded-implies-compare)))
;;          :rule-classes (:rewrite :linear)))

(defthm permuted-env-of-input-copy-values-is-truthenv
  (implies (and ;; (aignet-copy-is-comb-equivalent node aignet copy aignet2)
                ;; (aignet-copies-in-bounds copy aignet2)
            ;; (cutsdb-lit-idsp aignet2 cutsdb)
                ;; (posp node)
            (cut-leaves-bounded cut (num-nodes aignet2) cutsdb)
            (< (nfix n) 4)
            (rwlib-wfp rwlib)
            ;; (cutsdb-ok cutsdb)
            ;; (<= node (num-nodes aignet))
            ;; (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
            ;; (rwlib-correct rwlib)
            )
           (iff (truth::env-lookup n
                                   (permuted-env-from-aignet-invals
                                    (nth (cutinfo->truth (cut-infoi cut cutsdb))
                                         (rwlib->npns rwlib))
                                    (INPUT-COPY-VALUES 0 INVALS
                                                       REGVALS (RWLIB->AIGS RWLIB)
                                                       (CUT-INITIALIZE-COPY CUT COPY2 CUTSDB RWLIB)
                                                       AIGNET2)))
                (truth::env-lookup
                 n
                 (leaves-truthenv (* 4 (nfix cut)) (cutinfo->size (cut-infoi cut cutsdb))
                                  0 cutsdb
                                  (aignet-record-vals nil invals regvals aignet2)))))
  :hints(("Goal" :in-theory (e/d (aignet-idp
                                  ;; cut-leaves-lit-idsp-implies
                                  cut-leaves-bounded-implies-compare ;;-strong
                                  ;; cut-leaves-lit-idsp-implies
                                  ;; cutsdb-lit-idsp-implies-cut-leaves-lit-idsp
                                  )))))


(defsection eval-with-permuted-env-of-input-copy-values-is-truthenv
  (local #!truth
         (defret eval-match-when-no-env-mismatch
           (implies (and (natp numvars)
                         (case-split (implies (< var (nfix numvars))
                                              (iff (env-lookup var env1)
                                                   (env-lookup var env2)))))
                    (equal (equal (truth-eval truth env1 numvars)
                                  (truth-eval truth env2 numvars))
                           t))
           :hints (("goal" :use truth::env-mismatch-when-eval-mismatch))
           :fn truth::env-mismatch))
  (defthm eval-with-permuted-env-of-input-copy-values-is-truthenv
    (implies (and ;; (aignet-copy-is-comb-equivalent node aignet copy aignet2)
                  ;; (aignet-copies-in-bounds copy aignet2)
                  ;; (cutsdb-lit-idsp aignet cutsdb)
                  ;; (posp node)
                  (cut-leaves-bounded cut (num-nodes aignet2) cutsdb)
                  (rwlib-wfp rwlib)
                  ;; (cutsdb-ok cutsdb)
                  ;; (<= node (num-nodes aignet))
                  ;; (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  ;; (rwlib-correct rwlib)
                  )
             (equal (truth::truth-eval truth
                                       (permuted-env-from-aignet-invals
                                        (nth (cutinfo->truth (cut-infoi cut cutsdb))
                                             (rwlib->npns rwlib))
                                        (INPUT-COPY-VALUES 0 INVALS
                                                           REGVALS (RWLIB->AIGS RWLIB)
                                                           (CUT-INITIALIZE-COPY CUT COPY2 CUTSDB RWLIB)
                                                           AIGNET2))
                                       4)
                    (truth::truth-eval truth
                                       ;; (node-cut-truthenv (+ 2 cut) (cut-datai cut cutsdb)
                                       ;;                    0 cutsdb
                                       ;;                    (aignet-record-vals nil invals regvals aignet))
                                       (leaves-truthenv (* 4 (nfix cut)) (cutinfo->size (cut-infoi cut cutsdb))
                                                        0 cutsdb
                                                        (aignet-record-vals nil invals regvals aignet2))
                                       4)))))





(define aignet-build-cut ((cut natp)
                          (impl-idx natp)
                          (eba "mark for copied nodes")
                          (copy2 "mapping from dsd aig indices to aignet2 indices -- writing this here")
                          (cutsdb cutsdb-ok)
                          (rwlib rwlib-wfp)
                          (strash2)
                          (aignet2))
  :guard (and ;; (<= (cut-nnodes cutsdb) (lits-length copy))
              ;; (aignet-copies-in-bounds copy aignet2)
              (aignet-copies-in-bounds copy2 aignet2)
              (cutsdb-lit-idsp aignet2 cutsdb)
              (< cut (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
              (b* (((acl2::stobj-get ok)
                    ((aignet-tmp (rwlib->aigs rwlib)))
                    (and (< (max-fanin aignet-tmp) (lits-length copy2))
                         (< (max-fanin aignet-tmp) (eba-length eba)))))
                ok)
              (cut-impl-index-ok cut impl-idx cutsdb rwlib))
  :guard-hints (("goal" :in-theory (enable cut-impl-index-ok)))
  :returns (mv (lit litp :rule-classes :type-prescription)
               (new-copy2)
               (new-eba)
               (new-strash2)
               (new-aignet2))
  (b* ((copy2 (cut-initialize-copy cut copy2 cutsdb rwlib))
       ((cutinfo cutinf) (cut-infoi cut cutsdb))
       ((acl2::stobj-get lit copy2 eba strash2 aignet2)
        ((truth::npn4arr (rwlib->npns rwlib))
         (smm   (rwlib->cands rwlib))
         (aignet-tmp  (rwlib->aigs rwlib)))
        (b* (((truth::npn4 npn) (truth::get-npn4 cutinf.truth truth::npn4arr))
             (lit (smm-read-lit npn.truth-idx impl-idx smm))
             (eba (eba-clear eba))
             ((mv eba copy2 strash2 aignet2)
              (aignet-copy-dfs-eba-rec (lit-id lit) aignet-tmp eba copy2 strash2 9 aignet2))
             (new-lit (lit-negate-cond (lit-copy lit copy2) npn.negate)))
          (mv new-lit copy2 eba strash2 aignet2))))
    (mv lit copy2 eba strash2 aignet2))
  ///
  (def-aignet-preservation-thms aignet-build-cut :stobjname aignet2)

  (local (defun nth-of-repeat-ind (n m)
           (if (zp n)
               m
             (nth-of-repeat-ind (1- n) (1- m)))))
  (local (defthmd nth-of-repeat-split
           (equal (nth n (acl2::repeat m x))
                  (and (< (nfix n) (nfix m))
                       x) )
           :hints(("Goal" :in-theory (enable nth acl2::repeat)
                   :induct (nth-of-repeat-ind n m)))))

  (local (defthm dfs-copy-onto-invar-of-empty-marks
           (dfs-copy-onto-invar aignet (acl2::repeat n 0) copy aignet2)
           :hints(("Goal" :in-theory (enable dfs-copy-onto-invar
                                             nth-of-repeat-split)))))

  (local
   (defret eval-of-aignet-build-cut-lemma
     (implies (and ;; (aignet-copy-is-comb-equivalent node aignet copy aignet2)
                   (rwlib-correct rwlib)
                   ;; (cutsdb-ok cutsdb)
                   (cutsdb-lit-idsp aignet2 cutsdb)
                   (rwlib-wfp rwlib)
                   (aignet-copies-in-bounds copy2 aignet2)
                   ;; (aignet-copies-in-bounds copy aignet2)
                   ;; (posp node)
                   (cut-leaves-bounded cut (num-nodes aignet2) cutsdb)
                   ;; (<= node (num-nodes aignet))
                   ;; (< node (cut-nnodes cutsdb))
                   ;; (< node (cut-nnodes cutsdb))
                   ;; (<= (nodecut-indicesi node cutsdb) cut)
                   ;; (< cut (nodecut-indicesi (+ 1 node) cutsdb))
                   (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                   (cut-impl-index-ok cut impl-idx cutsdb rwlib))
              (equal (lit-eval lit invals regvals new-aignet2)
                     ;; (b-xor 
                     ;;  (truth::npn4->negate (nth (cut-datai (+ 1 cut) cutsdb)
                     ;;                            (rwlib->npns rwlib)))
                      ;; (id-eval node invals regvals aignet)
                      (acl2::bool->bit
                       (cut-value cut cutsdb 
                                  (aignet-record-vals nil invals regvals aignet2)))))
     :hints(("Goal" :in-theory (e/d (cut-impl-index-ok cut-value))
             :do-not-induct t))))

  (local (defthm cutsdb-ok-implies-cuts-bounded-by-greater
           (implies (and (cutsdb-ok cutsdb)
                         (<= (cut-nnodes cutsdb) (nfix bound))
                         (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb)))
                    (cut-leaves-bounded cut bound cutsdb))
           :hints (("goal" :use ((:instance cutsdb-ok-implies-cuts-bounded-by-nnodes
                                  (bound (cut-nnodes cutsdb))))
                    :in-theory (e/d (cut-leaves-bounded
                                     leaves-bounded-when-bounded-lesser)
                                    (cutsdb-ok-implies-cuts-bounded-by-nnodes))))))

  (defret eval-of-aignet-build-cut
    (implies (and ;; (aignet-copy-is-comb-equivalent node aignet copy aignet2)
                  (rwlib-correct rwlib)
                  (cutsdb-ok cutsdb)
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  (rwlib-wfp rwlib)
                  (aignet-copies-in-bounds copy2 aignet2)
                  ;; (aignet-copies-in-bounds copy aignet2)
                  (posp node)
                  ;; (cut-leaves-bounded cut node cutsdb)
                  (< node (cut-nnodes cutsdb))
                  (<= (cut-nnodes cutsdb) (num-nodes aignet2))
                  ;; (not (equal (ctype (stype (car (lookup-id node aignet2)))) :output))
                  (<= (nodecut-indicesi node cutsdb) (nfix cut))
                  (< (nfix cut) (nodecut-indicesi (+ 1 node) cutsdb))
                  (cut-impl-index-ok cut impl-idx cutsdb rwlib)
                  (cutsdb-correct cutsdb aignet2))
             (equal (lit-eval lit invals regvals new-aignet2)
                    (id-eval node invals regvals aignet2)
                     ;; (acl2::bool->bit
                     ;;  (cut-value cut cutsdb 
                     ;;             (aignet-record-vals nil invals regvals aignet)))
                     ))
    :hints(("Goal" :in-theory (e/d (aignet-idp)
                                   (aignet-build-cut))
            :use ((:instance cutsdb-consistent-implies-cut-value
                   (bitarr (aignet-record-vals nil invals regvals aignet2))
                   (node node))))))

  (defret aignet-litp-of-aignet-build-cut
    (implies (and (aignet-copies-in-bounds copy2 aignet2)
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  ;; (cutsdb-ok cutsdb)
                  (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (cut-impl-index-ok cut impl-idx cutsdb rwlib)
                  (rwlib-wfp rwlib))
             (aignet-litp lit new-aignet2))
    :hints(("Goal" :in-theory (enable cut-impl-index-ok)
            :do-not-induct t)))

  (defret lit-id-lte-max-fanin-of-aignet-build-cut
    (implies (and (aignet-copies-in-bounds copy2 aignet2)
                  ;; (aignet-copies-in-bounds copy aignet2)
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  ;; (cutsdb-ok cutsdb)
                  (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (cut-impl-index-ok cut impl-idx cutsdb rwlib)
                  (rwlib-wfp rwlib))
             (<= (lit-id lit) (node-count (find-max-fanin new-aignet2))))
    :hints(("Goal" :use aignet-litp-of-aignet-build-cut
            :in-theory (disable aignet-build-cut)))
    :rule-classes (:rewrite :linear))

  (defret aignet-copies-in-bounds-of-aignet-build-cut-copy2
    (implies (and (aignet-copies-in-bounds copy2 aignet2)
                  ;; (aignet-copies-in-bounds copy aignet2)
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  ;; (cutsdb-ok cutsdb)
                  (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (cut-impl-index-ok cut impl-idx cutsdb rwlib)
                  (rwlib-wfp rwlib))
             (aignet-copies-in-bounds new-copy2 new-aignet2))
    :hints(("Goal" :in-theory (enable cut-impl-index-ok))))

  (defret copy2-length-of-aignet-build-cut
    (implies (and (< (max-fanin (rwlib->aigs rwlib)) (len copy2))
                  (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (cut-impl-index-ok cut impl-idx cutsdb rwlib))
             (equal (len new-copy2) (len copy2)))
    :hints(("Goal" :in-theory (enable cut-impl-index-ok))))

  (defret eba-length-of-aignet-build-cut
    (implies (and (< (max-fanin (rwlib->aigs rwlib)) (len eba))
                  (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (cut-impl-index-ok cut impl-idx cutsdb rwlib))
             (equal (len new-eba) (len eba)))
    :hints(("Goal" :in-theory (enable cut-impl-index-ok))))

  (defret stype-counts-of-aignet-build-cut
    (implies (not (equal (stype-fix stype) :gate))
             (equal (stype-count stype new-aignet2)
                    (stype-count stype aignet2)))))




  


(define aignet-delete-mffc ((n natp)
                            (aignet)
                            (refcounts))
  ;; MFFC is Maximum Fanout Free Cone.  We traverse the AIG from node n,
  ;; decrementing the number of references at each node we traverse.  But we
  ;; only move on to a node's fanins if that node's reference count decreased
  ;; to 0.  Think of this as garbage collection: we are deleting a reference to
  ;; n, so if its reference count reaches 0 we also remove a reference from
  ;; each of its children.
  :measure (nfix n)
  :returns (mv (mffc-count natp :rule-classes :type-prescription
                           "Number of nodes deleted")
               (new-refcounts))
  :guard (and (id-existsp n aignet)
              (not (eql (id->type n aignet) (out-type)))
              (< (max-fanin aignet) (u32-length refcounts)))
  :verify-guards nil

  :prepwork ((local (in-theory (disable lookup-id-in-bounds-when-positive
                                        acl2::update-nth-of-nth-free
                                        bound-when-aignet-idp
                                        fanin-if-co-when-output
                                        lookup-id-implies-aignet-idp
                                        acl2::nfix-equal-to-nonzero
                                        acl2::nth-of-update-nth-diff
                                        acl2::update-nth-of-update-nth-diff
                                        default-car
                                        snode->fanin-of-co-slot
                                        lookup-id-out-of-bounds
                                        node-count-of-atom
                                        acl2::zp-open))))
  (b* ((slot0 (id->slot n 0 aignet))
       ((unless (eql (snode->type slot0) (gate-type)))
        (mv 0 refcounts))
       (refs (get-u32 n refcounts))
       ((when (eql refs 0))
        (cw "Programming error -- traversing ~x0 gate with reference count 0~%" n)
        (break$)
        (mv 0 refcounts))
       (new-refs (1- refs))
       (refcounts (set-u32 n new-refs refcounts))
       ((unless (eql new-refs 0))
        (mv 0 refcounts))
       (child0 (lit-id (snode->fanin slot0)))
       (child1 (lit-id (gate-id->fanin1 n aignet)))
       ((mv count0 refcounts) (aignet-delete-mffc child0 aignet refcounts))
       ((mv count1 refcounts) (aignet-delete-mffc child1 aignet refcounts)))
    (mv (+ 1 count0 count1) refcounts))
  ///
  (defret refcounts-length-of-aignet-delete-mffc
    (implies (< (nfix n) (len refcounts))
             (equal (len new-refcounts) (len refcounts))))

  (defret refcounts-length-nondecr-of-aignet-delete-mffc
    (>= (len new-refcounts) (len refcounts))
    :rule-classes :linear)

  (verify-guards aignet-delete-mffc
    :hints(("Goal" :in-theory (enable aignet-idp aignet-litp)
            :use ((:instance id-less-than-max-fanin-when-aignet-litp
                   (lit (mk-lit n 0)))))))

  (defret lookup-greater-of-aignet-delete-mffc
    (implies (< (nfix n) (nfix m))
             (equal (nth m new-refcounts)
                    (nth m refcounts))))

  (defret update-greater-of-aignet-delete-mffc
    (implies (< (nfix n) (nfix m))
             (equal (mv-nth 1 (aignet-delete-mffc n aignet (update-nth m val refcounts)))
                    (update-nth m val (mv-nth 1 (aignet-delete-mffc n aignet refcounts)))))
    :hints(("Goal" :in-theory (enable acl2::update-nth-of-update-nth-diff))))


  (defthm aignet-delete-mffc-nth-nat-equiv-congruence
    (implies (acl2::nth-nat-equiv refcounts refcounts1)
             (acl2::nth-nat-equiv (mv-nth 1 (aignet-delete-mffc n aignet refcounts))
                                  (mv-nth 1 (aignet-delete-mffc n aignet refcounts1))))
    :rule-classes :congruence))


(define aignet-refcounts-ok-rec ((n natp)
                                 (aignet)
                                 (refcounts))
  :measure (nfix n)
  :returns (ok)
  :guard (and (id-existsp n aignet)
              (not (eql (id->type n aignet) (out-type)))
              (< (max-fanin aignet) (u32-length refcounts)))
  :prepwork ((local (in-theory (disable lookup-id-in-bounds-when-positive
                                        default-car
                                        snode->fanin-of-co-slot
                                        lookup-id-out-of-bounds))))
  :guard-hints(("Goal" :in-theory (enable aignet-idp aignet-litp)
                :use ((:instance id-less-than-max-fanin-when-aignet-litp
                       (lit (mk-lit n 0))))))
  (non-exec
   (b* ((slot0 (id->slot n 0 aignet))
        ((unless (eql (snode->type slot0) (gate-type)))
         t)
        (refs (get-u32 n refcounts))
        ((when (eql refs 0))
         nil)
        (refcounts (set-u32 n (1- refs) refcounts))
        (child0 (lit-id (snode->fanin slot0)))
        (child1 (lit-id (gate-id->fanin1 n aignet))))
     (and (aignet-refcounts-ok-rec child0 aignet refcounts)
          (aignet-refcounts-ok-rec child1 aignet
                                    (mv-nth 1 (aignet-delete-mffc child0 aignet refcounts))))))
  ///
  (defcong acl2::nth-nat-equiv equal (aignet-refcounts-ok-rec n aignet refcounts) 3))

(define aignet-restore-mffc ((n natp)
                             (nrefs natp)
                             (aignet)
                             (refcounts))
  ;; Restore a deleted mffc by incrementing each node's refcount, traversing
  ;; its children if its refcount was 0 to start.
  :measure (nfix n)
  :returns (mv (mffc-count natp :rule-classes :type-prescription)
               (new-refcounts))
  :guard (and (id-existsp n aignet)
              (not (eql (id->type n aignet) (out-type)))
              (< (max-fanin aignet) (u32-length refcounts)))
  :verify-guards nil
  :prepwork ((local (in-theory (disable lookup-id-in-bounds-when-positive
                                        acl2::update-nth-of-nth-free
                                        bound-when-aignet-idp
                                        fanin-if-co-when-output
                                        lookup-id-implies-aignet-idp
                                        acl2::nfix-equal-to-nonzero
                                        acl2::nth-of-update-nth-diff
                                        acl2::update-nth-of-update-nth-diff
                                        default-car
                                        snode->fanin-of-co-slot
                                        lookup-id-out-of-bounds
                                        node-count-of-atom
                                        acl2::zp-open))))
  (b* ((slot0 (id->slot n 0 aignet))
       ((unless (eql (snode->type slot0) (gate-type)))
        (mv 1 refcounts))
       (refs (get-u32 n refcounts))
       (new-refs (+ (lnfix nrefs) refs))
       (refcounts (set-u32 n new-refs refcounts))
       ((unless (and (eql refs 0) (not (eql new-refs 0))))
        (mv 0 refcounts))
       (child0 (lit-id (snode->fanin slot0)))
       (child1 (lit-id (gate-id->fanin1 n aignet)))
       ((mv count1 refcounts) (aignet-restore-mffc child1 1 aignet refcounts))
       ((mv count0 refcounts) (aignet-restore-mffc child0 1 aignet refcounts)))
    (mv (+ 1 count1 count0) refcounts))
  ///
  (defret refcounts-length-of-aignet-restore-mffc
    (implies (< (nfix n) (len refcounts))
             (equal (len new-refcounts) (len refcounts))))

  (defret refcounts-length-nondecr-of-aignet-restore-mffc
    (>= (len new-refcounts) (len refcounts))
    :rule-classes :linear)

  (verify-guards aignet-restore-mffc
    :hints(("Goal" :in-theory (enable aignet-idp aignet-litp)
            :use ((:instance id-less-than-max-fanin-when-aignet-litp
                   (lit (mk-lit n 0)))))))

  (defthm aignet-restore-mffc-nth-equiv-congruence-refcounts
    (implies (acl2::nth-nat-equiv refcounts refcounts1)
             (acl2::nth-nat-equiv (mv-nth 1 (aignet-restore-mffc n nrefs aignet refcounts))
                                  (mv-nth 1 (aignet-restore-mffc n nrefs aignet refcounts1))))
    :rule-classes :congruence)

  (defret lookup-greater-of-aignet-restore-mffc
    (implies (< (nfix n) (nfix m))
             (equal (nth m new-refcounts)
                    (nth m refcounts))))

  (defret lookup-greater-of-aignet-restore-mffc
    (implies (< (nfix n) (nfix m))
             (equal (nth m new-refcounts)
                    (nth m refcounts))))

  ;; (defun-nx aignet-restore-of-delete-ind (n aignet refcounts)
  ;;   (declare (xargs :measure (nfix n)))
  ;;   (b* ((refs (get-u32 n refcounts))
  ;;        ((when (eql refs 0))
  ;;         (list n aignet refcounts))
  ;;        (new-refs (1- refs))
  ;;        (refcounts (set-u32 n new-refs refcounts))
  ;;        (slot0 (id->slot n 0 aignet))
  ;;        ((unless (and (eql new-refs 0)
  ;;                      (eql (snode->type slot0) (gate-type))))
  ;;         (list n aignet refcounts))
  ;;        (child0 (lit-id (snode->fanin slot0)))
  ;;        (child1 (lit-id (gate-id->fanin1 n aignet)))
  ;;        (?ign1 (aignet-restore-of-delete-ind child0 aignet refcounts))
  ;;        ((mv & refcounts) (aignet-delete-mffc child0 aignet refcounts))
  ;;        (refcounts (set-u32 n refs refcounts)))
  ;;     (aignet-restore-of-delete-ind child1 aignet refcounts)))

  (defret update-greater-of-aignet-restore-mffc
    (implies (< (nfix n) (nfix m))
             (equal (mv-nth 1 (aignet-restore-mffc n nrefs aignet (update-nth m val refcounts)))
                    (update-nth m val (mv-nth 1 (aignet-restore-mffc n nrefs aignet refcounts)))))
    :hints(("Goal" :in-theory (enable acl2::update-nth-of-update-nth-diff))))
    

  (defthm nth-nat-equiv-of-update-when-equiv
    (implies (nat-equiv (nth n x) (nth n y))
             (iff (acl2::nth-nat-equiv (update-nth n v x) (update-nth n v y))
                  (acl2::nth-nat-equiv x y)))
    :hints ((acl2::use-termhint
             (b* ((x1 (update-nth n v x))
                  (y1 (update-nth n v y)))
               (if (acl2::nth-nat-equiv x1 y1)
                   `'(:expand ((acl2::nth-nat-equiv x y))
                      :use ((:instance acl2::nth-nat-equiv-necc
                             (n (acl2::nth-nat-equiv-witness x y))
                             (x ,(hq x1))
                             (y ,(hq y1))))
                      :in-theory (e/d* (acl2::arith-equiv-forwarding)
                                       (acl2::nth-nat-equiv-necc
                                        acl2::nth-nat-equiv-implies-nat-equiv-nth-2)))
                 `'(:expand ((acl2::nth-nat-equiv ,(hq x1) ,(hq y1)))))))))
                  

  (defthm aignet-delete-mffc-of-aignet-restore-mffc
    (acl2::nth-nat-equiv (mv-nth 1 (aignet-delete-mffc n aignet (mv-nth 1 (aignet-restore-mffc n 1 aignet refcounts))))
                         refcounts)
    :hints(("Goal" :in-theory (e/d* ((:i aignet-restore-mffc)
                                     acl2::arith-equiv-forwarding)
                                    ((:d aignet-restore-mffc)))
            :induct (aignet-restore-mffc n 1 aignet refcounts)
            :expand ((aignet-restore-mffc n 1 aignet refcounts)
                     (:free (refcounts) (aignet-delete-mffc n aignet refcounts))))
           (and stable-under-simplificationp
                `(:expand (,(car (last clause)))))))

  (defthm aignet-restore-mffc-of-aignet-delete-mffc
    (implies (aignet-refcounts-ok-rec n aignet refcounts)
             (acl2::nth-nat-equiv (mv-nth 1 (aignet-restore-mffc n 1 aignet (mv-nth 1 (aignet-delete-mffc n aignet refcounts))))
                                  refcounts))
    :hints(("Goal" :in-theory (e/d* ((:i aignet-delete-mffc)
                                     acl2::arith-equiv-forwarding)
                                    (aignet-restore-mffc))
            :induct (aignet-delete-mffc n aignet refcounts)
            :expand ((aignet-delete-mffc n aignet refcounts)
                     (aignet-refcounts-ok-rec n aignet refcounts)
                     (:free (refcounts) (aignet-restore-mffc n 1 aignet refcounts))))
           (and stable-under-simplificationp
                `(:expand (,(car (last clause))))))))



;; (define my-aignet-delete-mffc ((n natp)
;;                                (aignet)
;;                                (refcounts))
;;   ;; MFFC is Maximum Fanout Free Cone.  We traverse the AIG from node n,
;;   ;; decrementing the number of references at each node we traverse.  But we
;;   ;; only move on to a node's fanins if that node's reference count decreased
;;   ;; to 0.  Think of this as garbage collection: we are deleting a reference to
;;   ;; n, so if its reference count reaches 0 we also remove a reference from
;;   ;; each of its children.
;;   :measure (nfix n)
;;   :guard (and (id-existsp n aignet)
;;               (not (eql (id->type n aignet) (out-type)))
;;               (< (max-fanin aignet) (u32-length refcounts)))
;;   :verify-guards nil
;;   (b* ((slot0 (id->slot n 0 aignet))
;;        ((unless (eql (snode->type slot0) (gate-type)))
;;         (mv 0 refcounts))
;;        (refs (get-u32 n refcounts))
;;        ((when (eql refs 0))
;;         (cw "Programming error -- traversing ~x0 gate with reference count 0~%" n)
;;         (break$)
;;         (mv 0 refcounts))
;;        (new-refs (1- refs))
;;        (refcounts (set-u32 n new-refs refcounts))
;;        ((unless (eql new-refs 0))
;;         (mv 0 refcounts))
;;        (child0 (lit-id (snode->fanin slot0)))
;;        (child1 (lit-id (gate-id->fanin1 n aignet)))
;;        ((mv count0 refcounts) (my-aignet-delete-mffc child0 aignet refcounts))
;;        ((mv count1 refcounts) (my-aignet-delete-mffc child1 aignet refcounts)))
;;     (mv (+ 1 count0 count1) refcounts))
;;   ///
;;   (skip-proofs
;;    (defthm my-aignet-delete-mffc-equals
;;      (equal (my-aignet-delete-mffc n aignet refcounts)
;;             (aignet-delete-mffc n aignet refcounts))
;;      :hints(("Goal" :in-theory (enable aignet-delete-mffc)))))

;;   (verify-guards my-aignet-delete-mffc
;;     :hints(("Goal" :in-theory (enable aignet-idp aignet-litp)
;;             :use ((:instance id-less-than-max-fanin-when-aignet-litp
;;                    (lit (mk-lit n 0))))))))

;; (define my-aignet-restore-mffc ((n natp)
;;                                 (nrefs natp)
;;                             (aignet)
;;                             (refcounts))
;;   ;; Restore a deleted mffc by incrementing each node's refcount, traversing
;;   ;; its children if its refcount was 0 to start.
;;   :measure (nfix n)
;;   :guard (and (id-existsp n aignet)
;;               (not (eql (id->type n aignet) (out-type)))
;;               (< (max-fanin aignet) (u32-length refcounts)))
;;   :verify-guards nil
;;   (b* ((slot0 (id->slot n 0 aignet))
;;        ((unless (eql (snode->type slot0) (gate-type)))
;;         (mv 1 refcounts))
;;        (refs (get-u32 n refcounts))
;;        (new-refs (+ (lnfix nrefs) refs))
;;        (refcounts (set-u32 n new-refs refcounts))
;;        ((unless (and (eql refs 0) (not (eql new-refs 0))))
;;         (mv 0 refcounts))
;;        (child0 (lit-id (snode->fanin slot0)))
;;        (child1 (lit-id (gate-id->fanin1 n aignet)))
;;        ((mv count1 refcounts) (my-aignet-restore-mffc child1 1 aignet refcounts))
;;        ((mv count0 refcounts) (my-aignet-restore-mffc child0 1 aignet refcounts)))
;;     (mv (+ 1 count1 count0) refcounts))
;;   ///
;;   (skip-proofs
;;    (defthm my-aignet-restore-mffc-equals
;;      (equal (my-aignet-restore-mffc n nrefs aignet refcounts)
;;             (aignet-restore-mffc n nrefs aignet refcounts))
;;      :hints(("Goal" :in-theory (enable aignet-restore-mffc)))))

;;   (verify-guards my-aignet-restore-mffc
;;     :hints(("Goal" :in-theory (enable aignet-idp aignet-litp)
;;             :use ((:instance id-less-than-max-fanin-when-aignet-litp
;;                    (lit (mk-lit n 0))))))))






(define strash-delete-nodes-above ((n natp) (strash) (aignet))
  :guard (<= n (num-nodes aignet))
  :measure (nfix (- (num-nodes aignet) (nfix n)))
  :returns (new-strash)
  :guard-hints (("goal" :in-theory (enable aignet-idp)))
  (b* (((when (mbe :logic (zp (- (num-nodes aignet) (nfix n)))
                   :exec (eql (num-nodes aignet) n)))
        strash)
       (slot0 (id->slot n 0 aignet))
       (type (snode->type slot0))
       ((unless (eql type (gate-type)))
        (strash-delete-nodes-above (1+ (lnfix n)) strash aignet))
       (key (aignet-addr-combine (snode->fanin slot0)
                                 (gate-id->fanin1 n aignet)))
       (strash (strashtab-rem key strash)))
    (strash-delete-nodes-above (1+ (lnfix n)) strash aignet)))






(defsection aignet-in/marked-copies-in-bounds
  (defun-sk aignet-in/marked-copies-in-bounds (copy mark aignet aignet2)
    (forall n
            (implies (or (equal (id->type n aignet) (in-type))
                         (equal (id->type n aignet) (const-type))
                         (bit->bool (nth n mark)))
                     (aignet-litp (nth-lit n copy) aignet2)))
    :rewrite :direct)

  (in-theory (disable aignet-in/marked-copies-in-bounds))

  (defthm aignet-in/marked-copies-in-bounds-of-extension
    (implies (and (aignet-extension-binding)
                  (aignet-in/marked-copies-in-bounds copy mark aignet orig))
             (aignet-in/marked-copies-in-bounds copy mark aignet new))
    :hints ((and stable-under-simplificationp
                 `(:expand (,(car (last clause)))))))

  (defthm aignet-in/marked-copies-in-bounds-of-update-copy
    (implies (and (aignet-in/marked-copies-in-bounds copy mark aignet aignet2)
                  (aignet-litp lit aignet2))
             (aignet-in/marked-copies-in-bounds (update-nth-lit n lit copy) mark aignet aignet2))
    :hints ((and stable-under-simplificationp
                 `(:expand (,(car (last clause)))))))

  (defthm aignet-in/marked-copies-in-bounds-of-update-mark
    (implies (and (aignet-in/marked-copies-in-bounds copy mark aignet aignet2)
                  (aignet-litp (nth-lit n copy) aignet2))
             (aignet-in/marked-copies-in-bounds copy
                                                (update-nth n 1 mark)
                                                aignet aignet2))
    :hints ((and stable-under-simplificationp
                 `(:expand (,(car (last clause)))
                   :in-theory (enable* acl2::arith-equiv-forwarding))))))

;; (define eval-cut-implementation-copy-rec ((lit litp "node to copy from the rwlib aignet")
;;                                           (aignet "rwlib aignet -- source of the copy")
;;                                           (eba "mark already visited nodes")
;;                                           (copy2 "mapping from aignet to aignet2")
;;                                           (strash2 "strash for aignet2")
;;                                           (aignet2 "destination")
;;                                           (refcounts2 "refcounts for aignet2"))
;;   :guard (and (fanin-litp lit aignet)
;;               (ec-call (aignet-in/marked-copies-in-bounds copy2 eba aignet aignet2))
;;               (< (max-fanin aignet) (lits-length copy2))
;;               (< (max-fanin aignet) (eba-length eba)))
;;   :returns (mv (count natp :rule-classes :type-prescription)
;;                (new-eba)
;;                (new-copy2)
;;                (new-strash2)
;;                (new-aignet2))
;;   :measure (lit-id lit)
;;   :verify-guards nil
;;   :prepwork ((local (in-theory (disable lookup-id-in-bounds-when-positive
;;                                         default-car
;;                                         snode->fanin-of-co-slot
;;                                         lookup-id-out-of-bounds
;;                                         acl2::natp-posp
;;                                         node-count-of-atom
;;                                         fanin-if-co-when-output))))
;;   (b* ((id (lit-id lit))
;;        (slot0 (id->slot id 0 aignet))
;;        (gatep (eql (snode->type slot0) (gate-type)))
;;        ((when (eql 1 (eba-get-bit id eba)))
;;         (mv 0 eba copy2 strash2 aignet2))
;;        ((unless gatep)
;;         (b* ((eba (eba-set-bit id eba)))
;;           ;; Inputs and const0 are copied
;;           (mv 0 ;; don't count inputs/consts
;;               eba copy2 strash2 aignet2)))
;;        (fanin0 (snode->fanin slot0))
;;        (fanin1 (gate-id->fanin1 id aignet))
;;        ((mv count0 eba copy2 strash2 aignet2)
;;         (eval-cut-implementation-copy-rec fanin0 aignet eba copy2 strash2 aignet2 refcounts2))
;;        ((mv count1 eba copy2 strash2 aignet2)
;;         (eval-cut-implementation-copy-rec fanin1 aignet eba copy2 strash2 aignet2 refcounts2))
;;        (eba (eba-set-bit id eba))
;;        (fanin-copy0 (lit-copy fanin0 copy2))
;;        (fanin-copy1 (lit-copy fanin1 copy2))
;;        ((mv existing key lit1 lit2) (aignet-and-gate-simp/strash fanin-copy0 fanin-copy1 9 strash2 aignet2))
;;        ((unless existing)
;;         (b* (((mv copy-lit strash2 aignet2) (aignet-install-and existing key lit1 lit2 strash2 aignet2))
;;              (copy2 (set-lit id copy-lit copy2)))
;;           (mv (+ 1 count0 count1) eba copy2 strash2 aignet2)))
;;        (copy2 (set-lit id existing copy2))
;;        (refs (b* ((ex-id (lit-id existing)))
;;                (if (< ex-id (u32-length refcounts2))
;;                    (get-u32 (lit-id existing) refcounts2)
;;                  0))))
;;     (mv (+ (if (eql refs 0) 1 0) count0 count1)
;;         eba copy2 strash2 aignet2))
;;   ///
;;   (local (in-theory (disable (:d eval-cut-implementation-copy-rec))))

;;   (def-aignet-preservation-thms eval-cut-implementation-copy-rec :stobjname aignet2)

;;   (defret eval-cut-implementation-copy-rec-preserves-eba-marks
;;     (implies (equal 1 (nth n eba))
;;              (equal (nth n new-eba) 1))
;;     :hints (("goal" :induct <call> :expand (<call>))))

;;   (defret eval-cut-implementation-copy-rec-sets-eba-marks
;;     (equal (nth (lit->var lit) new-eba) 1)
;;     :hints (("goal" :expand (<call>))))

;;   (defret eval-cut-implementation-copy-rec-preserves-marked-lits
;;     (implies (equal 1 (nth n eba))
;;              (equal (nth-lit n new-copy2)
;;                     (nth-lit n copy2)))
;;     :hints (("goal" :induct <call> :expand (<call>))))

;;   (defret stype-counts-of-eval-cut-implementation-copy-rec
;;     (implies (not (equal (stype-fix stype) :gate))
;;              (equal (stype-count stype new-aignet2)
;;                     (stype-count stype aignet2)))
;;     :hints (("goal" :induct <call> :expand (<call>))))

;;   (defret eval-cut-implementation-copy-rec-preserves-input-lits
;;     (implies (equal (id->type n aignet) (in-type))
;;              (equal (nth-lit n new-copy2)
;;                     (nth-lit n copy2)))
;;     :hints (("goal" :induct <call> :expand (<call>))))

;;   (defret aignet-in/marked-copies-in-bounds-of-eval-cut-implementation-copy-rec
;;     (implies (and (aignet-in/marked-copies-in-bounds copy2 eba aignet aignet2)
;;                   (aignet-litp lit aignet))
;;              (aignet-in/marked-copies-in-bounds new-copy2 new-eba aignet new-aignet2))
;;     :hints (("goal" :induct <call>
;;              :expand (<call>))
;;             (and stable-under-simplificationp
;;                  '(:expand ((aignet-litp lit aignet))
;;                    :in-theory (enable ctype)))))

;;   (defret aignet-litp-of-copy-lit-of-eval-cut-implementation-copy-rec
;;     (implies (and (aignet-in/marked-copies-in-bounds copy2 eba aignet aignet2)
;;                   (aignet-litp lit aignet)
;;                   (equal 1 (nth n new-eba)))
;;              (aignet-litp (nth-lit n new-copy2) new-aignet2))
;;     :hints (("goal" :use aignet-in/marked-copies-in-bounds-of-eval-cut-implementation-copy-rec
;;              :in-theory (disable aignet-in/marked-copies-in-bounds-of-eval-cut-implementation-copy-rec))))

;;   (defret copy2-length-of-eval-cut-implementation-copy-rec
;;     (implies (and (aignet-litp lit aignet)
;;                   (< (max-fanin aignet) (len copy2)))
;;              (equal (len new-copy2) (len copy2)))
;;     :hints (("goal" :induct <call>
;;              :expand (<call>))))

;;   (defret eba-length-of-eval-cut-implementation-copy-rec
;;     (implies (and (aignet-litp lit aignet)
;;                   (< (max-fanin aignet) (len eba)))
;;              (equal (len new-eba) (len eba)))
;;     :hints (("goal" :induct <call>
;;              :expand (<call>))))

;;   ;; (defret eba2-length-of-eval-cut-implementation-copy-rec
;;   ;;   (implies (and (aignet-litp lit aignet)
;;   ;;                 (< (max-fanin aignet) (len eba2)))
;;   ;;            (equal (len new-eba2) (len eba2)))
;;   ;;   :hints (("goal" :induct <call>
;;   ;;            :expand (<call>))))

;;   ;; (local (defthm len-of-update-nth-incr
;;   ;;          (<= (len x) (len (update-nth n val x)))
;;   ;;          :rule-classes :linear))

;;   (local (in-theory (disable len-update-nth
;;                              acl2::len-of-update-nth)))

;;   (local (defthm lit->var-of-aignet-and-gate-simp/strash-upper-bound
;;            (b* (((mv existing & & &) (aignet-and-gate-simp/strash lit0 lit1 gatesimp strash aignet)))
;;              (implies (aignet-litp existing aignet)
;;                       (<= (lit->var existing) (node-count (find-max-fanin aignet)))))
;;            :rule-classes :linear))
;;   ;; (local (defthm lit->var-upper-bound-by-aignet-litp
;;   ;;          (implies (aignet-litp lit aignet2)
;;   ;;                   (<= (lit->var lit) (node-count (find-max-fanin aignet2))))
;;   ;;          :rule-classes :linear))

;;   (verify-guards eval-cut-implementation-copy-rec
;;     :guard-debug t))




(define eval-cut-implementation-rec ((lit litp "node to copy from the rwlib aignet")
                                     (aignet "rwlib aignet -- source of the copy")
                                     (eba "mark already visited nodes")
                                     (eba2 "mark nodes whose copy entries are valid")
                                     (copy2 "mapping from aignet to aignet2")
                                     (strash2 "strash for aignet2")
                                     (aignet2 "destination")
                                     (refcounts2 "refcounts for aignet2"))
  :guard (and (fanin-litp lit aignet)
              (aignet-copies-in-bounds copy2 aignet2)
              (< (max-fanin aignet) (lits-length copy2))
              (< (max-fanin aignet2) (u32-length refcounts2))
              (< (max-fanin aignet) (eba-length eba))
              (< (max-fanin aignet) (eba-length eba2)))
  :returns (mv (copy-lit (or (litp copy-lit) (not copy-lit)) :rule-classes :type-prescription)
               (count natp :rule-classes :type-prescription)
               (new-eba)
               (new-eba2)
               (new-copy2))
  :measure (lit-id lit)
  :verify-guards nil
  :prepwork ((local (in-theory (disable lookup-id-in-bounds-when-positive
                                        default-car
                                        snode->fanin-of-co-slot
                                        lookup-id-out-of-bounds
                                        acl2::natp-posp
                                        node-count-of-atom
                                        fanin-if-co-when-output))))
  (b* ((id (lit-id lit))
       (slot0 (id->slot id 0 aignet))
       (gatep (eql (snode->type slot0) (gate-type)))
       ((when (eql 1 (eba-get-bit id eba)))
        (b* ((copiedp (or
                        ;; inputs and const are copied regardless of eba2 setting
                       (not gatep)
                       (eql 1 (eba-get-bit id eba2))))
             (lit (and copiedp (lit-negate-cond (get-lit id copy2) (lit-neg lit)))))
          (mv lit 0 eba eba2 copy2)))
       (eba (eba-set-bit id eba))
       ((unless gatep)
        ;; Inputs and const0 are copied
        (mv (lit-negate-cond (get-lit id copy2) (lit-neg lit))
            0 ;; don't count inputs/consts
            eba eba2 copy2))
       (fanin0 (snode->fanin slot0))
       (fanin1 (gate-id->fanin1 id aignet))
       ((mv fanin-copy0 count0 eba eba2 copy2)
        (eval-cut-implementation-rec fanin0 aignet eba eba2 copy2 strash2 aignet2 refcounts2))
       ((mv fanin-copy1 count1 eba eba2 copy2)
        (eval-cut-implementation-rec fanin1 aignet eba eba2 copy2 strash2 aignet2 refcounts2))
       ((unless (and fanin-copy0 fanin-copy1))
        (mv nil
            (+ 1 count0 count1)
            eba eba2 copy2))
       ((mv existing ?key ?lit1 ?lit2) (aignet-and-gate-simp/strash fanin-copy0 fanin-copy1 9 strash2 aignet2))
       ((unless existing)
        (mv nil (+ 1 count0 count1) eba eba2 copy2))
       (eba2 (eba-set-bit id eba2))
       (copy2 (set-lit id existing copy2))
       (refs (get-u32 (lit-id existing) refcounts2)))
    (mv (lit-negate-cond existing (lit-neg lit))
        (+ (if (eql refs 0) 1 0) count0 count1)
        eba eba2 copy2))
  ///
  (local (in-theory (disable (:d eval-cut-implementation-rec))))
  (defret aignet-litp-of-eval-cut-implementation-rec
    (implies (aignet-copies-in-bounds copy2 aignet2)
             (and (aignet-copies-in-bounds new-copy2 aignet2)
                  (implies copy-lit
                           (aignet-litp copy-lit aignet2))))
    :hints (("goal" :induct <call>
             :expand (<call>))))

  (defret copy2-length-of-eval-cut-implementation-rec
    (implies (and (aignet-litp lit aignet)
                  (< (max-fanin aignet) (len copy2)))
             (equal (len new-copy2) (len copy2)))
    :hints (("goal" :induct <call>
             :expand (<call>))))

  (defret eba-length-of-eval-cut-implementation-rec
    (implies (and (aignet-litp lit aignet)
                  (< (max-fanin aignet) (len eba)))
             (equal (len new-eba) (len eba)))
    :hints (("goal" :induct <call>
             :expand (<call>))))

  (defret eba2-length-of-eval-cut-implementation-rec
    (implies (and (aignet-litp lit aignet)
                  (< (max-fanin aignet) (len eba2)))
             (equal (len new-eba2) (len eba2)))
    :hints (("goal" :induct <call>
             :expand (<call>))))

  ;; (local (defthm len-of-update-nth-incr
  ;;          (<= (len x) (len (update-nth n val x)))
  ;;          :rule-classes :linear))

  (local (in-theory (disable len-update-nth
                             acl2::len-of-update-nth)))

  (local (defthm lit->var-of-aignet-and-gate-simp/strash-upper-bound
           (b* (((mv existing & & &) (aignet-and-gate-simp/strash lit0 lit1 gatesimp strash aignet)))
             (implies (aignet-litp existing aignet)
                      (<= (lit->var existing) (node-count (find-max-fanin aignet)))))
           :rule-classes :linear))
  ;; (local (defthm lit->var-upper-bound-by-aignet-litp
  ;;          (implies (aignet-litp lit aignet2)
  ;;                   (<= (lit->var lit) (node-count (find-max-fanin aignet2))))
  ;;          :rule-classes :linear))

  (verify-guards eval-cut-implementation-rec
    :guard-debug t))
  
(define eval-implementations ((n natp "impl index")
                              (block natp "smm block")
                              (smm "implementation pointer array")
                              (aignet "rwlib aignet -- source of the copy")
                              (eba "mark already visited nodes")
                              (eba2 "mark nodes whose copy entries are valid")
                              (copy2 "mapping from aignet to aignet2")
                              (strash2 "strash for aignet2")
                              (aignet2 "destination")
                              (refcounts2 "refcounts for aignet2")
                              (rewrite-stats))
  :guard (and (< block (acl2::smm-nblocks smm))
              (< n (acl2::smm-block-size block smm))
              (ec-call (smm-contains-aignet-lits smm aignet))
              (aignet-copies-in-bounds copy2 aignet2)
              (< (max-fanin aignet) (lits-length copy2))
              (< (max-fanin aignet2) (u32-length refcounts2))
              (< (max-fanin aignet) (eba-length eba))
              (< (max-fanin aignet) (eba-length eba2)))
  :measure (nfix (- (acl2::smm-block-size block smm) (nfix n)))
  :returns (mv (best-index natp :rule-classes :type-prescription)
               (best-cost natp :rule-classes :type-prescription)
               (new-eba)
               (new-eba2)
               (new-copy2)
               (new-rewrite-stats))
  :prepwork ((local (defthm nat-listp-when-u32-listp
                      (implies (acl2::u32-listp x)
                               (nat-listp x))))
             (local (defthm nat-listp-nth-of-u32-list-listp
                      (implies (and (Acl2::u32-list-listp x)
                                    (< (nfix n) (len x)))
                               (nat-listp (nth n x)))
                      :hints(("Goal" :in-theory (enable nth)))))
             (local (defthm litp-nth-of-nat-listp
                      (implies (and (nat-listp x)
                                    (< (nfix n) (len x)))
                               (litp (nth n x)))
                      :hints(("Goal" :in-theory (enable nth))))))
  :verify-guards nil
  (b* ((impl-lit (acl2::smm-read block n smm))
       (eba (eba-clear eba))
       (eba2 (eba-clear eba2))
       (rewrite-stats (incr-rewrite-stats-tries rewrite-stats))
       ((mv ?lit cost eba eba2 copy2)
        (eval-cut-implementation-rec impl-lit aignet eba eba2 copy2 strash2 aignet2 refcounts2))
       (next (+ 1 (lnfix n)))
       ((when (mbe :logic (zp (- (acl2::smm-block-size block smm) next))
                   :exec (eql next (acl2::smm-block-size block smm))))
        (mv (lnfix n) cost eba eba2 copy2 rewrite-stats))
       ((mv best-n best-cost eba eba2 copy2 rewrite-stats)
        (eval-implementations next block smm aignet eba eba2 copy2 strash2 aignet2 refcounts2 rewrite-stats)))
    (if (< cost best-cost)
        (mv (lnfix n) cost eba eba2 copy2 rewrite-stats)
      (mv best-n best-cost eba eba2 copy2 rewrite-stats)))
  ///
  (verify-guards eval-implementations)

  (defret copy2-in-bounds-of-eval-implementations
    (implies (aignet-copies-in-bounds copy2 aignet2)
             (aignet-copies-in-bounds new-copy2 aignet2)))

  (defret copy2-length-of-eval-implementations
    (implies (and (smm-contains-aignet-lits smm aignet)
                  (< (nfix block) (len smm))
                  (< (nfix n) (len (nth block smm)))
                  (< (max-fanin aignet) (len copy2)))
             (equal (len new-copy2) (len copy2)))
    :hints (("goal" :induct <call>
             :expand (<call>))))

  (defret eba-length-of-eval-implementations
    (implies (and (smm-contains-aignet-lits smm aignet)
                  (< (nfix block) (len smm))
                  (< (nfix n) (len (nth block smm)))
                  (< (max-fanin aignet) (len eba)))
             (equal (len new-eba) (len eba)))
    :hints (("goal" :induct <call>
             :expand (<call>))))

  (defret eba2-length-of-eval-implementations
    (implies (and (smm-contains-aignet-lits smm aignet)
                  (< (nfix block) (len smm))
                  (< (nfix n) (len (nth block smm)))
                  (< (max-fanin aignet) (len eba2)))
             (equal (len new-eba2) (len eba2)))
    :hints (("goal" :induct <call>
             :expand (<call>))))

  (defret impl-index-ok-of-eval-implementations
    (implies (< (nfix n) (len (nth block smm)))
             (< best-index (len (nth block smm))))
    :rule-classes (:rewrite :linear)))



(define cut-restore-mffcs ((n natp)
                           (size natp)
                           (cutsdb cutsdb-ok)
                           ;; (copy "mapping from cutsdb nodes (aka original aignet nodes) to aignet nodes")
                           (aignet)
                           (refcounts))
  :returns (mv (mffc-count natp :rule-classes :type-prescription)
               (new-refcounts))
  :guard (and (<= (+ n size) (cut-leaves-length cutsdb))
              (leaves-lit-idsp n size aignet cutsdb)
              ;; (aignet-copies-in-bounds copy aignet)
              ;; (<= (cut-nnodes cutsdb) (lits-length copy))
              (< (max-fanin aignet) (u32-length refcounts)))
  :verify-guards nil
  (b* (((when (zp size))
        (mv 0 refcounts))
       (id (cut-leavesi n cutsdb))
       ;; (lit (get-lit id copy))
       ((mv size1 refcounts) (aignet-restore-mffc id 1 aignet refcounts))
       ((mv rest-size refcounts) (cut-restore-mffcs (1+ (lnfix n)) (1- size) cutsdb aignet refcounts)))
    (mv (+ size1 rest-size) refcounts))
  ///
  (verify-guards cut-restore-mffcs
    :hints (("goal" :expand ((leaves-lit-idsp n size aignet cutsdb))
             :in-theory (enable aignet-idp))))

  (local (defthm lit->var-upper-bound-by-aignet-litp
           (implies (aignet-litp lit aignet)
                    (<= (lit->var lit) (node-count (find-max-fanin aignet))))
           :rule-classes nil))

  ;; (local (defthm lit->var-of-copy-upper-bound-when-aignet-copies-in-bounds
  ;;          (implies (aignet-copies-in-bounds copy aignet)
  ;;                   (<= (lit->var (nth-lit n copy)) (node-count (find-max-fanin aignet))))
  ;;          :hints (("goal" :use ((:instance lit->var-upper-bound-by-aignet-litp
  ;;                                 (lit (nth-lit n copy))))))
  ;;          :rule-classes :linear))


  (defret refcounts-length-of-cut-restore-mffcs
    (implies (and (leaves-lit-idsp n size aignet cutsdb)
                  (< (max-fanin aignet) (len refcounts)))
             (equal (len new-refcounts) (len refcounts)))
    :hints (("goal" :induct <call> :expand (<call>)
             :in-theory (enable leaves-lit-idsp aignet-litp aignet-idp))
            (and stable-under-simplificationp
                 '(:use ((:instance lit->var-upper-bound-by-aignet-litp
                          (lit (make-lit (cut-leavesi n cutsdb) 0))))))))

  (defret refcounts-length-nondecr-of-cut-restore-mffcs
    (>= (len new-refcounts) (len refcounts))
    :rule-classes :linear)

  (defthm cut-restore-mffcs-nth-equiv-congruence-refcounts
    (implies (acl2::nth-nat-equiv refcounts refcounts1)
             (acl2::nth-nat-equiv (mv-nth 1 (cut-restore-mffcs n size cutsdb aignet refcounts))
                                  (mv-nth 1 (cut-restore-mffcs n size cutsdb aignet refcounts1))))
    :rule-classes :congruence))

(define cut-delete-mffcs ((n natp)
                           (size natp)
                           (cutsdb cutsdb-ok)
                           (aignet)
                           (refcounts))
  :returns (mv (mffc-count natp :rule-classes :type-prescription)
               (new-refcounts))
  :guard (and (<= (+ n size) (cut-leaves-length cutsdb))
              (leaves-lit-idsp n size aignet cutsdb)
              ;; (aignet-copies-in-bounds copy aignet)
              ;; (<= (cut-nnodes cutsdb) (lits-length copy))
              (< (max-fanin aignet) (u32-length refcounts)))
  :verify-guards nil
  (b* (((when (zp size))
        (mv 0 refcounts))
       (id (cut-leavesi n cutsdb))
       ((mv rest-size refcounts) (cut-delete-mffcs (1+ (lnfix n)) (1- size) cutsdb aignet refcounts))
       ((mv size1 refcounts) (aignet-delete-mffc id aignet refcounts)))
    (mv (+ size1 rest-size) refcounts))
  ///
  (local (defthm lit->var-upper-bound-by-aignet-litp
           (implies (aignet-litp lit aignet)
                    (<= (lit->var lit) (node-count (find-max-fanin aignet))))
           :rule-classes nil))

  ;; (local (defthm lit->var-of-copy-upper-bound-when-aignet-copies-in-bounds
  ;;          (implies (aignet-copies-in-bounds copy aignet)
  ;;                   (<= (lit->var (nth-lit n copy)) (node-count (find-max-fanin aignet))))
  ;;          :hints (("goal" :use ((:instance lit->var-upper-bound-by-aignet-litp
  ;;                                 (lit (nth-lit n copy))))))
  ;;          :rule-classes :linear))


  (defret refcounts-length-of-cut-delete-mffcs
    (implies (and (leaves-lit-idsp n size aignet cutsdb)
                  (< (max-fanin aignet) (len refcounts)))
             (equal (len new-refcounts) (len refcounts)))
    :hints (("goal" :induct <call> :expand (<call>)
             :in-theory (enable leaves-lit-idsp aignet-litp aignet-idp))
            (and stable-under-simplificationp
                 '(:use ((:instance lit->var-upper-bound-by-aignet-litp
                          (lit (make-lit (cut-leavesi n cutsdb) 0))))))))


  (defret refcounts-length-nondecr-of-cut-delete-mffcs
    (>= (len new-refcounts) (len refcounts))
    :rule-classes :linear)

  (verify-guards cut-delete-mffcs
    :hints (("goal" :expand ((leaves-lit-idsp n size aignet cutsdb)))))

  (defthm cut-delete-mffcs-nth-equiv-congruence-refcounts
    (implies (acl2::nth-nat-equiv refcounts refcounts1)
             (acl2::nth-nat-equiv (mv-nth 1 (cut-delete-mffcs n size cutsdb aignet refcounts))
                                  (mv-nth 1 (cut-delete-mffcs n size cutsdb aignet refcounts1))))
    :rule-classes :congruence)

  (defthm cut-delete-mffcs-of-cut-restore-mffcs
    (acl2::nth-nat-equiv (mv-nth 1 (cut-delete-mffcs
                                    n size cutsdb aignet
                                    (mv-nth 1 (cut-restore-mffcs
                                               n size cutsdb aignet refcounts))))
                         refcounts)
    :hints(("Goal" :in-theory (enable cut-restore-mffcs)))))

(define eval-cut ((cut natp)
                  (node natp)
                  (cutsdb cutsdb-ok)
                  (rwlib rwlib-wfp)
                  (eba)
                  (eba2)
                  (copy2)
                  (strash2 "strash for aignet2")
                  (aignet2 "destination")
                  (refcounts2 "refcounts for aignet2")
                  (rewrite-stats))
  :guard (and (aignet-copies-in-bounds copy2 aignet2)
              (cutsdb-lit-idsp aignet2 cutsdb)
              ;; (<= (cut-nnodes cutsdb) (lits-length copy))
              (< cut (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
              (< (max-fanin aignet2) (u32-length refcounts2))
              (stobj-let ((aignet (rwlib->aigs rwlib)))
                         (ok)
                         (and (< (max-fanin aignet) (lits-length copy2))
                              (< (max-fanin aignet) (eba-length eba))
                              (< (max-fanin aignet) (eba-length eba2)))
                         ok))
  :returns (mv (ok "if nil, disqualify this cut")
               (score natp :rule-classes :type-prescription)
               (impl-idx natp :rule-classes :type-prescription)
               (new-refcounts2 (acl2::nth-nat-equiv new-refcounts2 refcounts2))
               (new-eba)
               (new-eba2)
               (new-copy2)
               (new-rewrite-stats))
  :prepwork (;; (local (defthm cutsdb-data-nodes-bounded-when-bounded-lesser-special
             ;;          (implies (and (cutsdb-data-nodes-bounded n size (cut-nnodes cutsdb) cutsdb)
             ;;                        (<= (cut-nnodes cutsdb) (nfix bound)))
             ;;                   (cutsdb-data-nodes-bounded n size bound cutsdb))
             ;;          :hints(("Goal" :in-theory (enable cutsdb-data-nodes-bounded-when-bounded-lesser)))))
             (local (defthm leaves-bounded-when-cut-leaves-bounded
                      (implies (and (cut-leaves-bounded cut (cut-nnodes cutsdb) cutsdb)
                                    (<= (cut-nnodes cutsdb) (nfix bound))
                                    (equal cut1 (nfix cut)))
                               (leaves-bounded (* 4 cut1) (cutinfo->size (cut-infoi cut cutsdb)) bound cutsdb))
                      :hints(("Goal" :in-theory (enable cut-leaves-bounded
                                                        leaves-bounded-when-bounded-lesser)))))
             (local (defthm leaves-lit-idsp-when-cut-leaves-lit-idsp
                      (implies (and (cut-leaves-lit-idsp cut aignet cutsdb)
                                    (equal cut1 (nfix cut)))
                               (leaves-lit-idsp (* 4 cut1) (cutinfo->size (cut-infoi cut cutsdb)) aignet cutsdb))
                      :hints(("Goal" :in-theory (enable cut-leaves-lit-idsp)))))
             (local (defthm cutsdb-ok-implies-cut-data-less-than-length
                      (implies (and (cutsdb-ok cutsdb)
                                    (natp cut1)
                                    (< cut1 (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                                    (natp offset))
                               (and (implies (<= offset (cutinfo->size (cut-infoi cut1 cutsdb)))
                                             (<= (+ (* 4 cut1) offset) (cut-leaves-length cutsdb)))
                                    (implies (< offset (cutinfo->size (cut-infoi cut1 cutsdb)))
                                             (< (+ (* 4 cut1) offset) (cut-leaves-length cutsdb)))))
                      ;; :hints (("goal" :use ((:instance cutsdb-ok-implies-cutsdb-cut-ok
                      ;;                        (n cut)))
                      ;;          :in-theory (e/d (cutsdb-cut-ok cut-next$ cut-next)
                      ;;                          (cutsdb-ok-implies-cutsdb-cut-ok))))
                      )))
  :guard-hints (("goal" :in-theory (enable cut-impl-index-ok
                                           cutsdb-lit-idsp-implies-cut-leaves-lit-idsp)))

  (b* (((cutinfo cutinf) (cut-infoi cut cutsdb))
       ((when (and (eql cutinf.size 0)
                   (cut-impl-index-ok cut 0 cutsdb rwlib)))
        ;; shortcut for const0 node
        (mv t 0 0 refcounts2 eba eba2 copy2 rewrite-stats))
       ((unless (and (cut-leaves-bounded cut node cutsdb)
                     (cut-impl-index-ok cut 0 cutsdb rwlib)))
        (mv nil 0 0 refcounts2 eba eba2 copy2 rewrite-stats))
       ((mv base-cost refcounts2) (cut-restore-mffcs (* 4 (lnfix cut)) cutinf.size cutsdb aignet2 refcounts2))
       (copy2 (cut-initialize-copy cut copy2 cutsdb rwlib))
       ((acl2::stobj-get impl-index impl-cost eba eba2 copy2 rewrite-stats)
        ((aignet (rwlib->aigs rwlib))
         (smm    (rwlib->cands rwlib))
         (truth::npn4arr (rwlib->npns rwlib)))
        (b* (((truth::npn4 npn) (truth::get-npn4 cutinf.truth truth::npn4arr)))
          (eval-implementations 0 npn.truth-idx smm aignet eba eba2 copy2 strash2 aignet2 refcounts2 rewrite-stats)))
       ((mv & refcounts2) (cut-delete-mffcs (* 4 (lnfix cut)) cutinf.size cutsdb aignet2 refcounts2)))
    (mv t (+ base-cost impl-cost) impl-index refcounts2 eba eba2 copy2 rewrite-stats))
  ///
  (defret eval-cut-impl-index-ok
    (implies ok
             (cut-impl-index-ok cut impl-idx cutsdb rwlib))
    :hints(("Goal" :in-theory (enable cut-impl-index-ok))))

  (defret refcounts-length-of-eval-cut
    (implies (and (cutsdb-lit-idsp aignet2 cutsdb)
                  (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (< (max-fanin aignet2) (len refcounts2)))
             (equal (len new-refcounts2) (len refcounts2)))
    :hints(("Goal" :in-theory (enable cutsdb-lit-idsp-implies-cut-leaves-lit-idsp))))

  (defret copy2-length-of-eval-cut
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (< (max-fanin (rwlib->aigs rwlib)) (len copy2)))
             (equal (len new-copy2) (len copy2)))
    :hints(("Goal" :in-theory (e/d (cut-impl-index-ok)
                                   (len)))))

  (defret copy2-in-bounds-of-eval-cut
    (implies (and (cutsdb-lit-idsp aignet2 cutsdb)
                  (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (aignet-copies-in-bounds copy2 aignet2))
             (aignet-copies-in-bounds new-copy2 aignet2))
    :hints(("Goal" :in-theory (enable cutsdb-lit-idsp-implies-cut-leaves-lit-idsp))))
    

  (defret eba-length-of-eval-cut
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (< (max-fanin (rwlib->aigs rwlib)) (len eba)))
             (equal (len new-eba) (len eba)))
    :hints(("Goal" :in-theory (e/d (cut-impl-index-ok)
                                   (len)))))

  (defret eba2-length-of-eval-cut
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (nfix cut) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (< (max-fanin (rwlib->aigs rwlib)) (len eba2)))
             (equal (len new-eba2) (len eba2)))
    :hints(("Goal" :in-theory (e/d (cut-impl-index-ok)
                                   (len)))))

  (defretd eval-cut-ok-implies-cut-bounded
    (implies ok
             (cut-leaves-bounded cut node cutsdb))
    :hints ((acl2::use-termhint
             (and (equal (cutinfo->size (cut-infoi cut cutsdb)) 0)
                  ''(:expand ((cut-leaves-bounded cut node cutsdb)
                              (:free (n) (leaves-bounded n 0 node cutsdb)))))))))

       

                 
(define choose-implementation-cuts ((cuts-start natp)
                                    (cuts-end natp)
                                    (node natp)
                                    (cutsdb cutsdb-ok)
                                    (rwlib rwlib-wfp)
                                    (eba)
                                    (eba2)
                                    (copy2)
                                    (strash2 "strash for aignet2")
                                    (aignet2 "destination")
                                    (refcounts2 "refcounts for aignet2")
                                    (rewrite-stats))
  :guard (and (<= cuts-start cuts-end)
              (<= cuts-end (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
              (aignet-copies-in-bounds copy2 aignet2)
              (cutsdb-lit-idsp aignet2 cutsdb)
              (< (max-fanin aignet2) (u32-length refcounts2))
              (stobj-let ((aignet (rwlib->aigs rwlib)))
                         (ok)
                         (and (< (max-fanin aignet) (lits-length copy2))
                              (< (max-fanin aignet) (eba-length eba))
                              (< (max-fanin aignet) (eba-length eba2)))
                         ok))
  :verify-guards nil
  :returns (mv (ok "if nil, no qualifiying cuts")
               (score natp :rule-classes :type-prescription)
               (cut-index natp :rule-classes :type-prescription)
               (impl-index natp :rule-classes :type-prescription)
               (new-refcounts2 (acl2::nth-nat-equiv new-refcounts2 refcounts2))
               (new-eba)
               (new-eba2)
               (new-copy2)
               (new-rewrite-stats))
  :measure (nfix (- (nfix cuts-end) (nfix cuts-start)))
  (b* (((when (mbe :logic (zp (- (lnfix cuts-end) (nfix cuts-start)))
                   :exec (eql cuts-start cuts-end)))
        (mv nil 0 0 0 refcounts2 eba eba2 copy2 rewrite-stats))
       ((mv ok1 score1 impl-idx1 refcounts2 eba eba2 copy2 rewrite-stats)
        (eval-cut cuts-start node cutsdb rwlib eba eba2 copy2 strash2 aignet2 refcounts2 rewrite-stats))
       ((when (and ok1 (eql score1 0)))
        ;; early out for 0-cost
        (mv t 0 (lnfix cuts-start) impl-idx1 refcounts2 eba eba2 copy2 rewrite-stats))
       ((unless ok1)
        (choose-implementation-cuts (1+ (lnfix cuts-start)) cuts-end node cutsdb rwlib
                                    eba eba2 copy2 strash2 aignet2 refcounts2 rewrite-stats))
       ((mv ok-rest best-score best-cut-idx best-impl-idx
            refcounts2 eba eba2 copy2 rewrite-stats)
        (choose-implementation-cuts (1+ (lnfix cuts-start)) cuts-end node cutsdb rwlib
                                    eba eba2 copy2 strash2 aignet2 refcounts2 rewrite-stats))
       ((when (or (not ok-rest)
                  (< score1 best-score)))
        (mv ok1 score1 (lnfix cuts-start) impl-idx1 refcounts2 eba eba2 copy2 rewrite-stats)))
    (mv t best-score best-cut-idx best-impl-idx refcounts2 eba eba2 copy2 rewrite-stats))
  ///
  (verify-guards choose-implementation-cuts)

  (defret cut-impl-index-ok-of-choose-implementation-cuts
    (implies ok
             (and (cut-impl-index-ok cut-index impl-index cutsdb rwlib)
                  (cut-leaves-bounded cut-index node cutsdb)))
    :hints(("Goal" :induct t)
           (and stable-under-simplificationp
                '(:use ((:instance eval-cut-ok-implies-cut-bounded
                         (cut (nfix cuts-start))))))))

  ;; (defret cutp-of-choose-implemenation-cuts
  ;;   (implies (cutsdb-ok cutsdb)
  ;;            (cutp cut-index cutsdb)))

  (defret cut-bound-of-choose-implemenation-cuts
    (implies ok
             (< cut-index (nfix cuts-end)))
    :rule-classes :linear)

  (defret cut-lower-bound-of-choose-implementation-cuts
    (implies ok
             (<= (nfix cuts-start) cut-index))
    :rule-classes :linear)

  
  (defret refcounts-length-of-choose-implementation-cut
    (implies (and (cutsdb-lit-idsp aignet2 cutsdb)
                  (<= (nfix cuts-end) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (< (max-fanin aignet2) (len refcounts2)))
             (equal (len new-refcounts2) (len refcounts2))))

  (defret copy2-length-of-choose-implementation-cuts
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (<= (nfix cuts-end) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (< (max-fanin (rwlib->aigs rwlib)) (len copy2)))
             (equal (len new-copy2) (len copy2)))
    :hints(("Goal" :in-theory (e/d (cut-impl-index-ok)
                                   (len)))))

  (defret copy2-in-bounds-of-choose-implementation-cuts
    (implies (and (cutsdb-lit-idsp aignet2 cutsdb)
                  (<= (nfix cuts-end) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (aignet-copies-in-bounds copy2 aignet2))
             (aignet-copies-in-bounds new-copy2 aignet2)))

  (defret eba-length-of-choose-implementation-cuts
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (<= (nfix cuts-end) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (< (max-fanin (rwlib->aigs rwlib)) (len eba)))
             (equal (len new-eba) (len eba)))
    :hints(("Goal" :in-theory (e/d (cut-impl-index-ok)
                                   (len)))))

  (defret eba2-length-of-choose-implementation-cuts
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (<= (nfix cuts-end) (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
                  (< (max-fanin (rwlib->aigs rwlib)) (len eba2)))
             (equal (len new-eba2) (len eba2)))
    :hints(("Goal" :in-theory (e/d (cut-impl-index-ok)
                                   (len)))))) 
       








;; (define rewrite-choose-implementation ((n natp)
;;                                        (cutsdb cutsdb-ok)
;;                                        (rwlib rwlib-wfp)
;;                                        (aignet2)
;;                                        (copy)
;;                                        (strash2)
;;                                        (refcounts)
;;                                        (rewrite-stats)
;;                                        (config rewrite-config-p))
;;   :guard (and (<= n (max-fanin aignet))
;;               (<= cuts-start cuts-end)
;;               (<= cuts-end (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
;;               (< (max-fanin aignet) (cut-nnodes cutsdb))
;;               (< (max-fanin aignet) (lits-length copy))
;;               (aignet-copies-in-bounds copy aignet2)
;;               (equal (num-ins aignet) (num-ins aignet2))
;;               (equal (num-regs aignet) (num-regs aignet2))
;;               (< (max-fanin aignet) (u32s-length refcounts)))
;;   :ignore-ok t
;;   :irrelevant-formals-ok t
;;   :returns (mv replacep
;;                (cut-index natp :rule-classes :type-prescription)
;;                (impl-index natp :rule-classes :type-prescription))
;;   (dumb-choose-implementation-cuts
  
;;   ///
;;   (defret rewrite-choose-implementation-in-bounds
;;     (implies (and replacep
;;                   (cutsdb-ok cutsdb)
;;                   (rwlib-wfp rwlib))
;;              (and (cutp cut-index cutsdb)
;;                   (< cut-index (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
;;                   (b* ((truth (cut-datai (+ 1 cut-index) cutsdb))
;;                        ((npn4 npn) (nth truth (rwlib->npns rwlib))))
;;                     (< impl-index (len (nth npn.truth-idx (rwlib->cands rwlib))))))))

;;   (defret rewrite-choose-implementation-correct
;;     (implies (and replacep
;;                   (cutsdb-ok cutsdb)
;;                   (rwlib-wfp rwlib)
;;                   (rwlib-correct rwlib))
;;              (b* ((truth (cut-datai (+ 1 cut-index) cutsdb))
;;                   ((npn4 npn) (nth truth (rwlib->npns rwlib)))
;;                   (impl-lit (nth impl-index (nth npn.truth-idx (rwlib->cands rwlib)))))
;;                (equal (lit-eval impl-lit invals regvals (rwlib->aigs rwlib))
;;                       (bool->bit (truth-eval (nth npn.truth-idx truth4arr)
;;                                              (truth4-env-from-aignet-invals invals)
;;                                              4))
;;                       (bool->bit (truth::truth-eval truth
;;                                                     (permuted-env-from-aignet-invals npn invals))))))))

(defsection aignet-count-refs-step

  (defthm aignet-update-refs-step-preserves-length
    (implies (and (< (max-fanin aignet) (len refcounts))
                  (natp n))
             (let ((new-refcounts (aignet-count-refs-step n refcounts aignet)))
               (equal (len new-refcounts) (len refcounts))))
    :hints(("Goal" :in-theory (enable aignet-count-refs-step)))))

(local (in-theory (disable aignet-count-refs-step)))
                                  
(define aignet-update-gate-refs ((n natp)
                                 (refcounts)
                                 (aignet))
  :guard (and (< n (num-nodes aignet))
              (< (max-fanin aignet) (u32-length refcounts)))
  :guard-hints (("goal" :in-theory (enable aignet-idp)))
  :returns (new-refcounts)
  (b* ((refcounts (if (<= (lnfix n) (max-fanin aignet))
                      (set-u32 n 0 refcounts)
                    refcounts))
       (slot0 (id->slot n 0 aignet))
       ((unless (eql (snode->type slot0) (gate-type)))
        refcounts)
       (child0 (lit->var (snode->fanin slot0)))
       (child1 (lit->var (gate-id->fanin1 n aignet)))
       ((mv & refcounts)
        (aignet-restore-mffc child0 1 aignet refcounts))
       ((mv & refcounts)
        (aignet-restore-mffc child1 1 aignet refcounts)))
    refcounts)
  ///
  (defret refcounts-len-of-aignet-update-gate-refs
    (implies (< (max-fanin aignet) (len refcounts))
             (equal (len new-refcounts) (len refcounts)))))
       

                
(define aignet-update-refs-aux ((n natp)
                                (refcounts)
                                (aignet))
  :guard (and (<= n (num-nodes aignet))
              (< (max-fanin aignet) (u32-length refcounts)))
  :measure (nfix (- (num-nodes aignet) (nfix n)))
  :returns (new-refcounts)
  :prepwork ((local (in-theory (disable node-count-of-atom
                                        acl2::update-nth-of-nth-free
                                        true-listp-update-nth
                                        lookup-id-out-of-bounds
                                        default-car))))
  
  (b* (((when (mbe :logic (zp (- (num-nodes aignet) (nfix n)))
                   :exec (eql (num-nodes aignet) n)))
        refcounts)
       (refcounts (aignet-update-gate-refs n refcounts aignet)))
    (aignet-update-refs-aux (+ 1 (lnfix n)) refcounts aignet))
  ///
  ;; (local (defthm bound-when-output
  ;;          (implies (and (equal (ctype (stype (car (lookup-id n aignet)))) :output)
  ;;                        (natp n))
  ;;                   (< (node-count (find-max-fanin aignet)) n))
  ;;          :hints (("goal" :use ((:instance aignet-litp-implies-id-lte-max-fanin
  ;;                                 (lit (mk-lit n 0))))
  ;;                   :in-theory (disable aignet-litp-implies-id-lte-max-fanin)))))

  (defret aignet-update-refs-aux-preserves-length
    (implies (< (max-fanin aignet) (len refcounts))
             (equal (len new-refcounts) (len refcounts)))))

(define aignet-update-refs ((n natp)
                            (refcounts)
                            (aignet))
  :guard (<= n (num-nodes aignet))
  :returns (new-refcounts)
  (b* ((refcounts (if (<= (u32-length refcounts) (max-fanin aignet))
                      (resize-u32 (max 16 (* 2 (max-fanin aignet))) refcounts)
                    refcounts)))
    (aignet-update-refs-aux n refcounts aignet))
  ///
  (defret length-of-aignet-update-refs
    (< (node-count (find-max-fanin aignet)) (len new-refcounts))
    :rule-classes :linear))



(define maybe-grow-refcounts ((n natp) refcounts)
  :returns (new-refcounts)
  (if (< (u32-length refcounts) (lnfix n))
      (resize-u32 (max 16 (* 2 (lnfix n))) refcounts)
    refcounts)
  ///
  (defret length-of-maybe-grow-refcounts
    (<= (nfix n) (len new-refcounts))
    :rule-classes :linear))

;; (define my-aignet-and-gate-simp/strash ((lit1 litp)
;;                                        (lit2 litp)
;;                                        (gatesimp natp)
;;                                        (strash)
;;                                        (aignet))
;;   :enabled t
;;   :guard (and (fanin-litp lit1 aignet)
;;               (fanin-litp lit2 aignet))
;;   (aignet-and-gate-simp/strash lit1 lit2 gatesimp strash aignet))



(define rewrite-default-copy-deref-and-cost ((flit1 litp)
                                             (flit2 litp)
                                             (existing (or (litp existing) (not existing)))
                                             (lit1 litp)
                                             (lit2 litp)
                                             (aignet2)
                                             (refcounts2))
  :returns (mv (cost natp :rule-classes :type-prescription)
               (new-refcounts2))
  :guard (and (< (max-fanin aignet2) (u32-length refcounts2))
              (fanin-litp flit1 aignet2)
              (fanin-litp flit2 aignet2)
              (fanin-litp lit1 aignet2)
              (fanin-litp lit2 aignet2)
              (or (not existing)
                  (fanin-litp existing aignet2)))
  (b* (((mv cost0 refcounts2) (aignet-delete-mffc (lit-id flit1) aignet2 refcounts2))
       ((mv cost1 refcounts2) (aignet-delete-mffc (lit-id flit2) aignet2 refcounts2))
       ((when (and (not existing)
                   (or (and (lit-equiv lit1 flit1) (lit-equiv lit2 flit2))
                       (and (lit-equiv lit1 flit2) (lit-equiv lit2 flit1)))))
        (mv (+ 1 cost0 cost1) refcounts2))
       ((when existing)
        (b* (((mv cost refcounts2) (aignet-restore-mffc (lit-id existing) 1 aignet2 refcounts2))
             ((mv & refcounts2) (aignet-delete-mffc (lit-id existing) aignet2 refcounts2)))
          (mv cost refcounts2)))
       ((mv cost1 refcounts2) (aignet-restore-mffc (lit-id lit2) 1 aignet2 refcounts2))
       ((mv cost0 refcounts2) (aignet-restore-mffc (lit-id lit1) 1 aignet2 refcounts2))
       ((mv & refcounts2) (aignet-delete-mffc (lit-id lit1) aignet2 refcounts2))
       ((mv & refcounts2) (aignet-delete-mffc (lit-id lit2) aignet2 refcounts2)))
    (mv (+ 1 cost0 cost1) refcounts2))
  ///
  (defret refcounts-length-of-rewrite-default-copy-deref-and-cost
    (implies (and (< (max-fanin aignet2) (len refcounts2))
                  (aignet-litp flit1 aignet2)
                  (aignet-litp flit2 aignet2)
                  (aignet-litp lit1 aignet2)
                  (aignet-litp lit2 aignet2)
                  (or (not existing)
                      (aignet-litp existing aignet2)))
             (equal (len new-refcounts2) (len refcounts2)))))
                  

(define rewrite-copy-node ((n natp "index in original aig")
                           (aignet "original aig")
                           (aignet2 "new aig being constructed")
                           (copy "mapping from original to new aig nodes")
                           (strash2 "strash table for aignet2")
                           (refcounts2 "refcounts for aignet2, including replacements"))
  :guard (and (<= n (max-fanin aignet))
              (eql (id->type n aignet) (gate-type))
              (< (max-fanin aignet) (lits-length copy))
              (aignet-copies-in-bounds copy aignet2)
              (equal (num-ins aignet) (num-ins aignet2))
              (equal (num-regs aignet) (num-regs aignet2))
              (< (max-fanin aignet2) (u32-length refcounts2)))

  :returns (mv (lit litp :rule-classes :type-prescription)
               (build-cost natp :rule-classes :type-prescription)
               new-aignet2
               new-strash2
               new-refcounts2)
  :guard-hints (("goal" :in-theory (enable aignet-idp)))
  (b* ((n (lnfix n))
       (lit0 (gate-id->fanin0 n aignet))
       (lit1 (gate-id->fanin1 n aignet))
       
       (flit0-copy (lit-copy lit0 copy))
       (flit1-copy (lit-copy lit1 copy))
       ((mv existing key lit0-copy lit1-copy)
        (aignet-and-gate-simp/strash flit0-copy flit1-copy 9 strash2 aignet2))
       ((mv build-cost refcounts2)
        (rewrite-default-copy-deref-and-cost
         flit0-copy flit1-copy existing lit0-copy lit1-copy aignet2 refcounts2))

       ((mv lit strash2 aignet2)
        (aignet-install-and existing key lit0-copy lit1-copy strash2 aignet2))
       (refcounts2 (maybe-grow-refcounts (+ 1 (max-fanin aignet2)) refcounts2)))

    (mv lit build-cost aignet2 strash2 refcounts2))

  ///
  
  (def-aignet-preservation-thms rewrite-copy-node :stobjname aignet2)

  (defret stype-counts-of-rewrite-copy-node
    (implies (not (equal (stype-fix stype) :gate))
             (equal (stype-count stype new-aignet2)
                    (stype-count stype aignet2))))

  (defret rewrite-copy-node-refcounts2-len-greater
    (< (node-count (find-max-fanin new-aignet2)) (len new-refcounts2))
    :rule-classes :linear)

  (defret aignet-litp-lit-of-rewrite-copy-node
    (implies (aignet-copies-in-bounds copy aignet2)
             (aignet-litp lit new-aignet2)))

  (defret eval-of-rewrite-copy-node
    (implies (and (aignet-copy-is-comb-equivalent n aignet copy aignet2)
                  (equal (id->type n aignet) (gate-type)))
             (equal (lit-eval lit invals regvals new-aignet2)
                    (id-eval n invals regvals aignet)))
    :hints (("goal" :expand ((id-eval n invals regvals aignet))
             :in-theory (enable eval-and-of-lits lit-eval)))))

(define rewrite-reimplement-node ((lit litp "lit to replicate")
                                  (build-cost natp)
                                  (cutsdb cutsdb-ok)
                                  (rwlib rwlib-wfp)
                                  aignet2
                                  eba
                                  eba2
                                  copy2
                                  strash2
                                  refcounts2
                                  rewrite-stats
                                  (config rewrite-config-p))
  :guard (and (fanin-litp lit aignet2)
              (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
              (aignet-copies-in-bounds copy2 aignet2)
              (cutsdb-lit-idsp aignet2 cutsdb)
              (< (max-fanin aignet2) (u32-length refcounts2))
              (stobj-let
               ((aignet-tmp (rwlib->aigs rwlib)))
               (ok)
               (and (< (max-fanin aignet-tmp) (lits-length copy2))
                    (< (max-fanin aignet-tmp) (eba-length eba))
                    (< (max-fanin aignet-tmp) (eba-length eba2)))
               ok))
  :returns (mv (new-lit litp :rule-classes :type-prescription)
               new-aignet2
               new-cutsdb
               new-eba
               new-eba2
               new-copy2
               new-strash2
               new-refcounts2
               new-rewrite-stats)

  :prepwork ((local (in-theory (disable nodecut-indicesi-updater-independence
                                        fanin-if-co-when-output
                                        stype-by-ctype
                                        node-count-of-atom))))
               
  (b* (((rewrite-config config))
       (build-cost (lnfix build-cost))
       ((when (or (and (not config.zero-cost-replace)
                       (eql 0 build-cost))
                  (eql (lit-id lit) 0)))
        (b* ((rewrite-stats (incr-rewrite-stats-zero rewrite-stats)))
          (mv (lit-fix lit) aignet2 cutsdb eba eba2 copy2 strash2 refcounts2 rewrite-stats)))

       ((mv cuts-checked cutsdb) (aignet-derive-cuts-aux aignet2 0 config.cuts4-config refcounts2 cutsdb))
       (rewrite-stats (incr-rewrite-stats-cuts-checked rewrite-stats cuts-checked))

       ((mv replacep cut-cost cut-index impl-index refcounts2 eba eba2 copy2 rewrite-stats)
        (choose-implementation-cuts
         (nodecut-indicesi (lit-id lit) cutsdb)
         (nodecut-indicesi (+ 1 (lit-id lit)) cutsdb)
         (lit-id lit) cutsdb rwlib eba eba2 copy2 strash2 aignet2 refcounts2 rewrite-stats))

       ((when (and replacep (if config.zero-cost-replace (<= cut-cost build-cost) (< cut-cost build-cost))))
        (b* ((rewrite-stats (incr-rewrite-stats-repls rewrite-stats))
             (rewrite-stats (incr-rewrite-stats-zero-cond (eql cut-cost build-cost) rewrite-stats))
             (rewrite-stats (incr-rewrite-stats-savings rewrite-stats (- build-cost cut-cost)))
             ((mv new-lit copy2 eba strash2 aignet2)
              (aignet-build-cut cut-index impl-index eba copy2 cutsdb rwlib strash2 aignet2))

             (refcounts2 (maybe-grow-refcounts (+ 1 (max-fanin aignet2)) refcounts2)))
          (mv (lit-negate-cond new-lit (lit-neg lit))
              aignet2 cutsdb eba eba2 copy2 strash2 refcounts2 rewrite-stats))))
    (mv (lit-fix lit) aignet2 cutsdb eba eba2 copy2 strash2 refcounts2 rewrite-stats))
  ///
  (def-aignet-preservation-thms rewrite-reimplement-node :stobjname aignet2)

  (defret rewrite-reimplement-node-copies-in-bounds
    (implies (and (cutsdb-lit-idsp aignet2 cutsdb)
                  (cutsdb-ok cutsdb)
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (aignet-litp lit aignet2)
                  (aignet-copies-in-bounds copy2 aignet2)
                  (rwlib-wfp rwlib))
             (aignet-copies-in-bounds new-copy2 new-aignet2)))

  (defret aignet-litp-of-rewrite-reimplement-node
    (implies (and (cutsdb-lit-idsp aignet2 cutsdb)
                  (cutsdb-ok cutsdb)
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (aignet-litp lit aignet2)
                  (aignet-copies-in-bounds copy2 aignet2)
                  (rwlib-wfp rwlib))
             (aignet-litp new-lit new-aignet2)))

  (defret stype-counts-of-rewrite-reimplement-node
    (implies (not (equal (stype-fix stype) :gate))
             (equal (stype-count stype new-aignet2)
                    (stype-count stype aignet2))))

  (defret rewrite-reimplement-node-preserves-refcounts2-len-greater
    (implies (and (< (node-count (find-max-fanin aignet2)) (len refcounts2))
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  ;; (aignet-copies-in-bounds copy2 aignet2)
                  (cutsdb-ok cutsdb)
                  (aignet-litp lit aignet2)
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2))))
             (< (node-count (find-max-fanin new-aignet2)) (len new-refcounts2)))
    :rule-classes (:rewrite :linear))


  (defret copy2-length-of-rewrite-reimplement-node
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (max-fanin (rwlib->aigs rwlib)) (len copy2))
                  (aignet-litp lit aignet2)
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2))))
             (equal (len new-copy2) (len copy2))))

  (defret eba-length-of-rewrite-reimplement-node
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (max-fanin (rwlib->aigs rwlib)) (len eba))
                  (aignet-litp lit aignet2)
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2))))
             (equal (len new-eba) (len eba))))

  (defret eba2-length-of-rewrite-reimplement-node
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (max-fanin (rwlib->aigs rwlib)) (len eba2))
                  (aignet-litp lit aignet2)
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2))))
             (equal (len new-eba2) (len eba2))))

  (local (defret eval-of-aignet-build-cut-rw
           (implies (and ;; (aignet-copy-is-comb-equivalent node aignet copy aignet2)
                     (rwlib-correct rwlib)
                     (cutsdb-ok cutsdb)
                     (cutsdb-lit-idsp aignet2 cutsdb)
                     (rwlib-wfp rwlib)
                     (aignet-copies-in-bounds copy2 aignet2)
                     (bind-free '((node . (satlink::lit->var$inline lit))) (node))
                     ;; (aignet-copies-in-bounds copy aignet2)
                     (posp node)
                     ;; (cut-leaves-bounded cut node cutsdb)
                     (< node (cut-nnodes cutsdb))
                     (<= (cut-nnodes cutsdb) (num-nodes aignet2))
                     ;; (not (equal (ctype (stype (car (lookup-id node aignet2)))) :output))
                     (<= (nodecut-indicesi node cutsdb) (nfix cut))
                     (< (nfix cut) (nodecut-indicesi (+ 1 node) cutsdb))
                     (cut-impl-index-ok cut impl-idx cutsdb rwlib)
                     (cutsdb-correct cutsdb aignet2))
                    (equal (lit-eval lit invals regvals new-aignet2)
                           (id-eval node invals regvals aignet2)
                           ;; (acl2::bool->bit
                           ;;  (cut-value cut cutsdb 
                           ;;             (aignet-record-vals nil invals regvals aignet)))
                           ))
           :hints (("goal" :use eval-of-aignet-build-cut
                    :in-theory (disable eval-of-aignet-build-cut)))
           :fn aignet-build-cut))

  (defret eval-of-rewrite-reimplement-node
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (rwlib-correct rwlib)
                  (cutsdb-correct cutsdb aignet2)
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (aignet-litp lit aignet2)
                  (aignet-copies-in-bounds copy2 aignet2))
             (equal (lit-eval new-lit invals regvals new-aignet2)
                    (lit-eval lit invals regvals aignet2)))
    :hints ((and stable-under-simplificationp
                 '(:in-theory (enable lit-eval)))))

  (defret cutsdb-lit-idsp-of-rewrite-reimplement-node
    (implies (and (cutsdb-ok cutsdb)
                  (cutsdb-lit-idsp aignet2 cutsdb))
             (cutsdb-lit-idsp new-aignet2 new-cutsdb)))

  (defret cutsdb-ok-of-rewrite-reimplement-node
    (implies (cutsdb-ok cutsdb)
             (cutsdb-ok new-cutsdb)))

  
  (defret cut-nnodes-lte-max-fanin-of-rewrite-reimplement-node
    (implies (<= (cut-nnodes cutsdb) (+ 1 (node-count (find-max-fanin aignet2))))
             (<= (cut-nnodes new-cutsdb) (+ 1 (node-count (find-max-fanin new-aignet2))))))

  
  (defret cutsdb-correct-of-rewrite-reimplement-node
    (implies (and (cutsdb-correct cutsdb aignet2)
                  (cutsdb-ok cutsdb)
                  (<= (cut-nnodes cutsdb) (+ 1 (node-count (find-max-fanin aignet2)))))
             (cutsdb-correct new-cutsdb new-aignet2))))



(define rewrite-sweep-node ((n natp "index in original aig")
                            (aignet "original aig")
                            (cutsdb cutsdb-ok "cuts for original aig")
                            (rwlib rwlib-wfp "precomputed truth table mappings and implementations")
                            (aignet2 "new aig being constructed")
                            (eba "scratch bits sized to rwlib aignet")
                            (eba2 "scratch bits sized to rwlib aignet")
                            (copy "mapping from original to new aig nodes")
                            (copy2 "scratch mappings from rwlib aigs to new nodes")
                            (strash2 "strash table for aignet2")
                            (refcounts "refcounts for original aig")
                            (refcounts2 "refcounts for aignet2, including replacements")
                            (rewrite-stats)
                            (config rewrite-config-p))
  :returns (mv new-aignet2
               new-cutsdb
               new-eba
               new-eba2
               new-copy
               new-copy2
               new-strash2
               new-refcounts2
               new-rewrite-stats)
  :guard (and (<= n (max-fanin aignet))
              (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
              (< (max-fanin aignet) (lits-length copy))
              (aignet-copies-in-bounds copy aignet2)
              (aignet-copies-in-bounds copy2 aignet2)
              (cutsdb-lit-idsp aignet2 cutsdb)
              (equal (num-ins aignet) (num-ins aignet2))
              (equal (num-regs aignet) (num-regs aignet2))
              (< (max-fanin aignet) (u32-length refcounts))
              (< (max-fanin aignet2) (u32-length refcounts2))
              (stobj-let
               ((aignet-tmp (rwlib->aigs rwlib)))
               (ok)
               (and (< (max-fanin aignet-tmp) (lits-length copy2))
                    (< (max-fanin aignet-tmp) (eba-length eba))
                    (< (max-fanin aignet-tmp) (eba-length eba2)))
               ok))
  ;; :guard-debug t
  :ignore-ok t
  :verify-guards nil
  (b* ((n (lnfix n))
       ((unless (eql (id->type n aignet) (gate-type)))
        (mv aignet2 cutsdb eba eba2 copy copy2 strash2 refcounts2 rewrite-stats))
       ((mv lit build-cost aignet2 strash2 refcounts2)
        (rewrite-copy-node n aignet aignet2 copy strash2 refcounts2))
       ((rewrite-config config))
       
       ((mv new-lit aignet2 cutsdb eba eba2 copy2 strash2 refcounts2 rewrite-stats)
        (rewrite-reimplement-node
         lit build-cost cutsdb rwlib aignet2 eba eba2 copy2 strash2 refcounts2 rewrite-stats config))

       ((mv & refcounts2) (aignet-restore-mffc (lit-id new-lit) (get-u32 n refcounts) aignet2 refcounts2))

       (copy (set-lit n new-lit copy)))
    (mv aignet2 cutsdb eba eba2 copy copy2 strash2 refcounts2 rewrite-stats))

  ///
  (def-aignet-preservation-thms rewrite-sweep-node :stobjname aignet2)

  (local (defthm lit->var-lte-node-count-when-aignet-litp
           (implies (aignet-litp lit aignet)
                    (<= (lit-id lit) (node-count aignet)))
           :hints(("Goal" :in-theory (enable aignet-litp)))))

  (verify-guards rewrite-sweep-node
    :hints (("goal" :do-not-induct t
             :in-theory (enable aignet-idp))))

  (defret rewrite-sweep-node-copies-in-bounds
    (implies (and (aignet-copies-in-bounds copy2 aignet2)
                  (aignet-copies-in-bounds copy aignet2)
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  (cutsdb-ok cutsdb)
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (rwlib-wfp rwlib))
             (and (aignet-copies-in-bounds new-copy new-aignet2)
                  (aignet-copies-in-bounds new-copy2 new-aignet2)))
    :hints (("goal" :do-not-induct t)))

  (defret stype-counts-of-rewrite-sweep-node
    (implies (not (equal (stype-fix stype) :gate))
             (equal (stype-count stype new-aignet2)
                    (stype-count stype aignet2))))

  (defret rewrite-sweep-node-preserves-non-gate-copies
    (implies (not (equal (stype (car (lookup-id m aignet))) :gate))
             (equal (nth-lit m new-copy)
                    (nth-lit m copy)))) ;; for termhint below

  ;; (defret aignet-lits-comb-equivalent-of-extension

  (defret rewrite-sweep-node-preserves-comb-equiv-for-non-gates
    (implies (and (aignet-copy-is-comb-equivalent-for-non-gates m aignet copy aignet2)
                  (aignet-copies-in-bounds copy aignet2))
             (aignet-copy-is-comb-equivalent-for-non-gates m aignet new-copy new-aignet2))
    :hints(("Goal" :in-theory (e/d (aignet-copy-is-comb-equivalent-for-non-gates)
                                   (rewrite-sweep-node))
            :induct (aignet-copy-is-comb-equivalent-for-non-gates m aignet copy aignet2))))


  (defret rewrite-sweep-node-preserves-refcounts2-len-greater
    (implies (and (< (node-count (find-max-fanin aignet2)) (len refcounts2))
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  (aignet-copies-in-bounds copy aignet2)
                  (cutsdb-ok cutsdb)
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2))))
             (< (node-count (find-max-fanin new-aignet2)) (len new-refcounts2)))
    :rule-classes (:rewrite :linear))

  (defret copy-length-of-rewrite-sweep-node
    (implies (< (nfix n) (len copy))
             (equal (len new-copy) (len copy))))
  
  (defret copy2-length-of-rewrite-sweep-node
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (max-fanin (rwlib->aigs rwlib)) (len copy2))
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (aignet-copies-in-bounds copy aignet2))
             (equal (len new-copy2) (len copy2))))

  (defret eba-length-of-rewrite-sweep-node
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (max-fanin (rwlib->aigs rwlib)) (len eba))
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (aignet-copies-in-bounds copy aignet2))
             (equal (len new-eba) (len eba))))

  (defret eba2-length-of-rewrite-sweep-node
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (max-fanin (rwlib->aigs rwlib)) (len eba2))
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (aignet-copies-in-bounds copy aignet2))
             (equal (len new-eba2) (len eba2))))

  (set-ignore-ok t)

  (defret rewrite-sweep-node-correct
    (implies (and (equal (nfix nn) (+ 1 (nfix n)))
                  (aignet-copy-is-comb-equivalent n aignet copy aignet2)
                  (aignet-copy-is-comb-equivalent-for-non-gates (num-nodes aignet)
                                                                aignet copy aignet2)
                  (rwlib-correct rwlib)
                  (cutsdb-ok cutsdb)
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  (rwlib-wfp rwlib)
                  (aignet-copies-in-bounds copy2 aignet2)
                  (aignet-copies-in-bounds copy aignet2)
                  (< (nfix n) (num-nodes aignet))
                  ;; (< (nfix n) (cut-nnodes cutsdb))
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (cutsdb-correct cutsdb aignet2))
             (aignet-copy-is-comb-equivalent nn aignet new-copy new-aignet2))
    :hints (;; (and stable-under-simplificationp
            ;;      `(:expand (,(car (last clause))
            ;;                 (:free (lit invals regvals)
            ;;                  (lit-eval (make-lit lit 0) invals regvals aignet)))
            ;;        :in-theory (enable aignet-lits-comb-equivalent
            ;;                           aignet-idp)))
            (acl2::use-termhint
             (b* (((acl2::termhint-seq
                    '`(:expand (,(car (last clause))
                                (:free (lit invals regvals)
                                 (lit-eval (make-lit lit 0) invals regvals aignet)))
                       :in-theory (enable aignet-lits-comb-equivalent
                                          aignet-idp)))))
               nil))))

  (defret cutsdb-ok-of-rewrite-sweep-node
    (implies (cutsdb-ok cutsdb)
             (cutsdb-ok new-cutsdb)))

  (defret cutsdb-lit-idsp-of-rewrite-sweep-node
    (implies (and (cutsdb-lit-idsp aignet2 cutsdb)
                  (cutsdb-ok cutsdb))
             (cutsdb-lit-idsp new-aignet2 new-cutsdb)))

  (defret cut-nnodes-lte-max-fanin-of-rewrite-sweep-node
    (implies (<= (cut-nnodes cutsdb) (+ 1 (node-count (find-max-fanin aignet2))))
             (<= (cut-nnodes new-cutsdb) (+ 1 (node-count (find-max-fanin new-aignet2))))))

  (defret cutsdb-correct-of-rewrite-sweep-node
    (implies (and (cutsdb-correct cutsdb aignet2)
                  (cutsdb-ok cutsdb)
                  (<= (cut-nnodes cutsdb) (+ 1 (node-count (find-max-fanin aignet2)))))
             (cutsdb-correct new-cutsdb new-aignet2))))


               ;;    (n (lnfix n))
               ;;    (slot0 (id->slot n 0 aignet))
               ;;    (type (snode->type slot0))
               ;;    ((unless (eql type (gate-type)))
               ;;     nil)
               ;;    (lit0 (snode->fanin slot0))
               ;;    (slot1 (id->slot n 1 aignet))
               ;;    (lit1 (snode->fanin slot1))
               ;;    (flit0-copy (lit-copy lit0 copy))
               ;;    (flit1-copy (lit-copy lit1 copy))
               ;;    ((mv existing key lit0-copy lit1-copy)
               ;;     (aignet-and-gate-simp/strash flit0-copy flit1-copy 9 strash2 aignet2))
               ;;    ((mv build-cost refcounts2)
               ;;     (rewrite-default-copy-deref-and-cost
               ;;      flit0-copy flit1-copy existing lit0-copy lit1-copy aignet2 refcounts2))
               ;;    ((rewrite-config config))
               ;;    ((when (and (not config.zero-cost-replace)
               ;;                (eql 0 build-cost)))
               ;;     ''(:expand ((:free (invals regvals) (id-eval n invals regvals aignet)))
               ;;        :in-theory (enable eval-and-of-lits lit-eval)))
               ;;    ((mv replacep cut-cost cut-index impl-index refcounts2 eba eba2 copy2)
               ;;     (choose-implementation-cuts
               ;;      (nodecut-indicesi n cutsdb)
               ;;      (nodecut-indicesi (+ 1 n) cutsdb)
               ;;      n cutsdb rwlib eba eba2 copy copy2 strash2 aignet2 refcounts2 rewrite-stats))

               ;;    (nodes-before (num-nodes aignet2))
               ;;    ((when (and replacep (if config.zero-cost-replace (<= cut-cost build-cost) (< cut-cost build-cost))))
               ;;     nil))
               ;; ''(:expand ((:free (invals regvals) (id-eval n invals regvals aignet)))
               ;;    :in-theory (enable eval-and-of-lits lit-eval)))))))


(define rewrite-sweep ((n natp "index in original aig")
                       (aignet "original aig")
                       (cutsdb cutsdb-ok "cuts for original aig")
                       (rwlib rwlib-wfp "precomputed truth table mappings and implementations")
                       (aignet2 "new aig being constructed")
                       (eba "scratch bits sized to rwlib aignet")
                       (eba2 "scratch bits sized to rwlib aignet")
                       (copy "mapping from original to new aig nodes")
                       (copy2 "scratch mappings from rwlib aigs to new nodes")
                       (strash2 "strash table for aignet2")
                       (refcounts "refcounts for original aig")
                       (refcounts2 "refcounts for aignet2, including replacements")
                       (rewrite-stats)
                       (config rewrite-config-p))
  :returns (mv new-aignet2
               new-cutsdb
               new-eba
               new-eba2
               new-copy
               new-copy2
               new-strash2
               new-refcounts2
               new-rewrite-stats)
  :guard (and (<= n (+ 1 (max-fanin aignet)))
              (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
              (< (max-fanin aignet) (lits-length copy))
              (aignet-copies-in-bounds copy aignet2)
              (aignet-copies-in-bounds copy2 aignet2)
              (cutsdb-lit-idsp aignet2 cutsdb)
              (equal (num-ins aignet) (num-ins aignet2))
              (equal (num-regs aignet) (num-regs aignet2))
              (< (max-fanin aignet) (u32-length refcounts))
              (< (max-fanin aignet2) (u32-length refcounts2))
              (stobj-let
               ((aignet-tmp (rwlib->aigs rwlib)))
               (ok)
               (and (< (max-fanin aignet-tmp) (lits-length copy2))
                    (< (max-fanin aignet-tmp) (eba-length eba))
                    (< (max-fanin aignet-tmp) (eba-length eba2)))
               ok))
  :verify-guards nil
  :measure (nfix (- (+ 1 (max-fanin aignet)) (nfix n)))
  (b* (((when (mbe :logic (zp (- (+ 1 (max-fanin aignet)) (nfix n)))
                   :exec (eql n (+ 1 (max-fanin aignet)))))
        (mv aignet2 cutsdb eba eba2 copy copy2 strash2 refcounts2 rewrite-stats))
       ((mv aignet2 cutsdb eba eba2 copy copy2 strash2 refcounts2 rewrite-stats)
        (rewrite-sweep-node n aignet cutsdb rwlib aignet2 eba eba2 copy copy2 strash2 refcounts refcounts2 rewrite-stats config)))
    (rewrite-sweep (+ 1 (lnfix n)) aignet cutsdb rwlib aignet2 eba eba2 copy copy2 strash2 refcounts refcounts2 rewrite-stats config))
  ///
  
  (defret rewrite-sweep-copies-in-bounds
    (implies (and (aignet-copies-in-bounds copy2 aignet2)
                  (aignet-copies-in-bounds copy aignet2)
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  (cutsdb-ok cutsdb)
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (rwlib-wfp rwlib))
             (and (aignet-copies-in-bounds new-copy new-aignet2)
                  (aignet-copies-in-bounds new-copy2 new-aignet2))))

  (defret stype-counts-of-rewrite-sweep
    (implies (not (equal (stype-fix stype) :gate))
             (equal (stype-count stype new-aignet2)
                    (stype-count stype aignet2))))


  (defret rewrite-sweep-preserves-non-gate-copies
    (implies (not (equal (stype (car (lookup-id m aignet))) :gate))
             (equal (nth-lit m new-copy)
                    (nth-lit m copy))))

  (defret rewrite-sweep-preserves-comb-equiv-for-non-gates
    (implies (and (aignet-copy-is-comb-equivalent-for-non-gates m aignet copy aignet2)
                  (aignet-copies-in-bounds copy2 aignet2)
                  (aignet-copies-in-bounds copy aignet2)
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  (cutsdb-ok cutsdb)
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (rwlib-wfp rwlib))
             (aignet-copy-is-comb-equivalent-for-non-gates m aignet new-copy new-aignet2)))

  (defret rewrite-sweep-correct
    (implies (and (aignet-copy-is-comb-equivalent n aignet copy aignet2)
                  (aignet-copy-is-comb-equivalent-for-non-gates (num-nodes aignet)
                                                                aignet copy aignet2)
                  (rwlib-correct rwlib)
                  (cutsdb-ok cutsdb)
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  (rwlib-wfp rwlib)
                  (aignet-copies-in-bounds copy2 aignet2)
                  (aignet-copies-in-bounds copy aignet2)
                  (<= (nfix n) (+ 1 (max-fanin aignet)))
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (cutsdb-correct cutsdb aignet2))
             (aignet-copy-is-comb-equivalent (+ 1 (node-count (find-max-fanin aignet)))
                                             aignet new-copy new-aignet2))
    :hints (("goal" :induct t :in-theory (enable aignet-idp))))
            ;; (and stable-under-simplificationp
            ;;      `(:expand (,(car (last clause))

  (defret rewrite-sweep-preserves-refcounts2-len-greater
    (implies (and (< (node-count (find-max-fanin aignet2)) (len refcounts2))
                  (cutsdb-lit-idsp aignet2 cutsdb)
                  (aignet-copies-in-bounds copy aignet2)
                  (aignet-copies-in-bounds copy2 aignet2)
                  (cutsdb-ok cutsdb)
                  (rwlib-wfp rwlib)
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2))))
             (< (node-count (find-max-fanin new-aignet2)) (len new-refcounts2)))
    :rule-classes (:rewrite :linear))

  (defret copy-length-of-rewrite-sweep
    (implies (< (max-fanin aignet) (len copy))
             (equal (len new-copy) (len copy))))

  (defret copy2-length-of-rewrite-sweep
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (max-fanin (rwlib->aigs rwlib)) (len copy2))
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (aignet-copies-in-bounds copy aignet2)
                  (aignet-copies-in-bounds copy2 aignet2)
                  (cutsdb-lit-idsp aignet2 cutsdb))
             (equal (len new-copy2) (len copy2))))

  (defret eba-length-of-rewrite-sweep
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (max-fanin (rwlib->aigs rwlib)) (len eba))
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (aignet-copies-in-bounds copy aignet2)
                  (aignet-copies-in-bounds copy2 aignet2)
                  (cutsdb-lit-idsp aignet2 cutsdb))
             (equal (len new-eba) (len eba))))

  (defret eba2-length-of-rewrite-sweep
    (implies (and (rwlib-wfp rwlib)
                  (cutsdb-ok cutsdb)
                  (< (max-fanin (rwlib->aigs rwlib)) (len eba2))
                  (<= (cut-nnodes cutsdb) (+ 1 (max-fanin aignet2)))
                  (aignet-copies-in-bounds copy aignet2)
                  (aignet-copies-in-bounds copy2 aignet2)
                  (cutsdb-lit-idsp aignet2 cutsdb))
             (equal (len new-eba2) (len eba2))))

  (defret cutsdb-ok-of-rewrite-sweep
    (implies (cutsdb-ok cutsdb)
             (cutsdb-ok new-cutsdb)))

  (defret cutsdb-lit-idsp-of-rewrite-sweep
    (implies (and (cutsdb-lit-idsp aignet2 cutsdb)
                  (cutsdb-ok cutsdb))
             (cutsdb-lit-idsp new-aignet2 new-cutsdb)))

  (defret cut-nnodes-lte-max-fanin-of-rewrite-sweep
    (implies (<= (cut-nnodes cutsdb) (+ 1 (node-count (find-max-fanin aignet2))))
             (<= (cut-nnodes new-cutsdb) (+ 1 (node-count (find-max-fanin new-aignet2))))))

  (defret cutsdb-correct-of-rewrite-sweep
    (implies (and (cutsdb-correct cutsdb aignet2)
                  (cutsdb-ok cutsdb)
                  (<= (cut-nnodes cutsdb) (+ 1 (node-count (find-max-fanin aignet2)))))
             (cutsdb-correct new-cutsdb new-aignet2)))

  (Verify-guards rewrite-sweep))

(define rewrite-copy-core ((aignet "Input aignet")
                           (copy "Mapping from aignet IDs to aignet2 lits -- overwritten")
                           (aignet2)
                           (config rewrite-config-p))
  :returns (mv new-copy new-aignet2)
  :prepwork ((local (in-theory (disable acl2::resize-list-when-atom resize-list
                                        (rwlib-init-abc))))
             (local (defthm cut-leaves-length-when-cutsdb-ok
                      (implies (cutsdb-ok cutsdb)
                               (<= 0 (cut-leaves-length cutsdb)))
                      :hints(("Goal" :in-theory (enable cutsdb-ok))))))
  :guard-debug t
  (b* (((acl2::local-stobjs
         cutsdb
         rwlib
         eba
         eba2
         copy2
         strash2
         refcounts
         refcounts2
         rewrite-stats)
        (mv copy aignet2
            cutsdb rwlib eba eba2 copy2 strash2
            refcounts refcounts2 rewrite-stats))
       (rwlib (rwlib-init-abc rwlib))
       (refcounts (resize-u32 (+ 1 (max-fanin aignet)) refcounts))
       (refcounts (aignet-count-refs refcounts aignet))
       ;; (strash (aignet-populate-strash 0 strash aignet))
       ((mv copy aignet2) (init-copy-comb aignet copy aignet2))
       ((acl2::stobj-get eba eba2 copy2)
        ((aignet-tmp (rwlib->aigs rwlib)))
        (b* ((size (+ 1 (max-fanin aignet-tmp)))
             (eba (resize-eba size eba))
             (eba2 (resize-eba size eba2))
             (copy2 (resize-lits size copy2)))
          (mv eba eba2 copy2)))
       (refcounts2 (resize-u32 (* 2 (+ 1 (max-fanin aignet2))) refcounts2))
       ((mv cuts-checked cutsdb)
        (aignet-derive-cuts aignet2
                            (rewrite-config->cuts4-config config)
                            refcounts2
                            cutsdb))
       (rewrite-stats (incr-rewrite-stats-cuts-checked rewrite-stats cuts-checked))
       ;; (ncuts (nodecut-indicesi (cut-nnodes cutsdb) cutsdb))
       ;; (- (cw "; rewrite -- Total cuts: ~x0 (~x1 per node)~%"
       ;;        ncuts (ceiling ncuts (+ 1 (max-fanin aignet))))
       ;;    (cw "; rewrite -- Number of cuts evaluated: ~x0 (~x1 per node)~%"
       ;;        cuts-checked (ceiling cuts-checked (+ 1 (max-fanin aignet)))))
       ((mv aignet2 cutsdb eba eba2 copy copy2 strash2 refcounts2 rewrite-stats)
        (time$
         (rewrite-sweep 0 aignet cutsdb rwlib aignet2 eba eba2 copy copy2 strash2 refcounts refcounts2
                        rewrite-stats config)
         :msg "; rewrite -- sweep: ~st sec, ~sa bytes~%"))
       (- (cw "Rewrite stats:~%")
          (print-rewrite-stats rewrite-stats)))
    (mv copy aignet2
        cutsdb rwlib eba eba2 copy2 strash2
        refcounts refcounts2 rewrite-stats))
  ///
  (defret rewrite-copy-core-copies-in-bounds
    (aignet-copies-in-bounds new-copy new-aignet2))

  (defret stype-counts-of-rewrite-copy-core
    (and (equal (stype-count :pi new-aignet2) (stype-count :pi aignet))
         (equal (stype-count :reg new-aignet2) (stype-count :reg aignet))
         (equal (stype-count :po new-aignet2) 0)
         (equal (stype-count :nxst new-aignet2) 0)))

  (defret len-copy-of-rewrite-copy-core
    (equal (len new-copy)
           (+ 1 (max-fanin aignet))))

  (defret rewrite-copy-core-correct
    (aignet-copy-is-comb-equivalent (+ 1 (node-count (find-max-fanin aignet)))
                                    aignet new-copy new-aignet2))

  (defthm rewrite-copy-core-normalize-inputs
    (implies (syntaxp (not (and (equal aignet2 ''nil)
                                (equal copy ''nil))))
             (equal (rewrite-copy-core aignet copy aignet2 config)
                    (rewrite-copy-core aignet nil nil config)))))


(define rewrite-core ((aignet "Input aignet")
                      (aignet2 "New aignet -- overwritten")
                      (config rewrite-config-p))
  :returns (new-aignet2)
  (b* (((acl2::local-stobjs copy)
        (mv copy aignet2))
       ((mv copy aignet2)
        (rewrite-copy-core aignet copy aignet2 config))
       (aignet2 (finish-copy-comb aignet copy aignet2)))
    (mv copy aignet2))
  ///
  (defret stype-counts-of-rewrite-core
    (and (equal (stype-count :pi new-aignet2) (stype-count :pi aignet))
         (equal (stype-count :reg new-aignet2) (stype-count :reg aignet))
         (equal (stype-count :po new-aignet2) (stype-count :po aignet))))
                 
  (defret rewrite-core-correct
    (comb-equiv new-aignet2 aignet))

  (defthm rewrite-core-normalize-inputs
    (implies (syntaxp (not (equal aignet2 ''nil)))
             (equal (rewrite-core aignet aignet2 config)
                    (rewrite-core aignet nil config)))))


(define rewrite ((aignet "Input aignet")
                 (aignet2 "New aignet -- overwritten")
                 (config rewrite-config-p))
  :parents (aignet-comb-transforms)
  :short "Apply DAG-aware rewriting to the network."
  :returns (new-aignet2)
  (b* (((acl2::local-stobjs aignet-tmp)
        (mv aignet2 aignet-tmp))
       (aignet-tmp (rewrite-core aignet aignet-tmp config))
       (aignet2 (aignet-prune-comb aignet-tmp aignet2 9)))
    (mv aignet2 aignet-tmp))
  ///
  (defret stype-counts-of-rewrite
    (and (equal (stype-count :pi new-aignet2) (stype-count :pi aignet))
         (equal (stype-count :reg new-aignet2) (stype-count :reg aignet))
         (equal (stype-count :po new-aignet2) (stype-count :po aignet))))
                 
  (defret rewrite-correct
    (comb-equiv new-aignet2 aignet))

  (defthm rewrite-normalize-inputs
    (implies (syntaxp (not (equal aignet2 ''nil)))
             (equal (rewrite aignet aignet2 config)
                    (rewrite aignet nil config)))))


(define rewrite! ((aignet "Input aignet -- overwritten")
                 (config rewrite-config-p))
  :parents (aignet-comb-transforms)
  :short "Apply DAG-aware rewriting to the network."
  :returns (new-aignet)
  (b* (((acl2::local-stobjs aignet-tmp)
        (mv aignet aignet-tmp))
       (aignet-tmp (rewrite-core aignet aignet-tmp config))
       (aignet (aignet-prune-comb aignet-tmp aignet 9)))
    (mv aignet aignet-tmp))
  ///
  (defret stype-counts-of-rewrite!
    (and (equal (stype-count :pi new-aignet) (stype-count :pi aignet))
         (equal (stype-count :reg new-aignet) (stype-count :reg aignet))
         (equal (stype-count :po new-aignet) (stype-count :po aignet))))
                 
  (defret rewrite!-correct
    (comb-equiv new-aignet aignet)))
