(N_CLOCKWISE)
(N_COUNTER_CLOCKWISE)
(N_ACROSS)
(FORCE_CASE_SPLIT (40 2 (:REWRITE ABS-<-1-IMP-NOT-INT))
                  (22 2 (:DEFINITION ABS))
                  (10 10
                      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
                  (10 10
                      (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
                  (10 10 (:REWRITE |(< (- x) (- y))|))
                  (8 8 (:REWRITE SIMPLIFY-SUMS-<))
                  (8 8
                     (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
                  (8 8 (:REWRITE DEFAULT-<-2))
                  (8 8 (:REWRITE DEFAULT-<-1))
                  (5 5 (:REWRITE |(< (- x) 0)|))
                  (4 4
                     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
                  (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
                  (2 2 (:TYPE-PRESCRIPTION ABS))
                  (2 2 (:REWRITE REDUCE-INTEGERP-+))
                  (2 2
                     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
                  (2 2 (:REWRITE INTEGERP-MINUS-X))
                  (2 2 (:REWRITE DEFAULT-+-2))
                  (2 2 (:REWRITE DEFAULT-+-1))
                  (2 2 (:REWRITE |(+ c (+ d x))|))
                  (2 2 (:META META-INTEGERP-CORRECT))
                  (1 1 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                  (1 1
                     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
                  (1 1
                     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                  (1 1 (:REWRITE |(equal (- x) (- y))|))
                  (1 1 (:REWRITE |(< d (+ c x))|))
                  (1 1 (:REWRITE |(< 0 (- x))|))
                  (1 1 (:REWRITE |(< (+ c x) d)|)))
(<=_=_<_OR_= (3 3 (:REWRITE SIMPLIFY-SUMS-<))
             (3 3
                (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
             (3 3
                (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
             (3 3
                (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
             (3 3 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
             (3 3 (:REWRITE DEFAULT-<-2))
             (3 3 (:REWRITE DEFAULT-<-1))
             (3 3 (:REWRITE |(< (- x) (- y))|))
             (1 1 (:REWRITE SIMPLIFY-SUMS-EQUAL))
             (1 1
                (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
             (1 1
                (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
             (1 1 (:REWRITE |(equal (- x) (- y))|)))
(ROUTE (117614 88114
               (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
       (117614 88114
               (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
       (100703 48595 (:TYPE-PRESCRIPTION MOD-ZERO . 1))
       (97867 97867
              (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
       (97867 97867
              (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
       (69015 20091
              (:TYPE-PRESCRIPTION NOT-INTEGERP-4E))
       (66680 19560
              (:TYPE-PRESCRIPTION NOT-INTEGERP-3E))
       (64236 19560
              (:TYPE-PRESCRIPTION NOT-INTEGERP-2E))
       (61631 18999
              (:TYPE-PRESCRIPTION NOT-INTEGERP-1E))
       (49003 48595
              (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
       (49003 48595
              (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
       (49003 48595
              (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
       (47305 46897
              (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
       (44385 21825 (:REWRITE DEFAULT-*-2))
       (29982 29982
              (:TYPE-PRESCRIPTION NOT-INTEGERP-3C))
       (29982 29982
              (:TYPE-PRESCRIPTION NOT-INTEGERP-2C))
       (29421 29421
              (:TYPE-PRESCRIPTION NOT-INTEGERP-1C))
       (22145 21857
              (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
       (21992 5118
              (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
       (21825 21825 (:REWRITE DEFAULT-*-1))
       (20087 20087
              (:TYPE-PRESCRIPTION NOT-INTEGERP-4G))
       (19556 19556
              (:TYPE-PRESCRIPTION NOT-INTEGERP-3G))
       (19556 19556
              (:TYPE-PRESCRIPTION NOT-INTEGERP-2G))
       (17911 14244 (:REWRITE DEFAULT-<-2))
       (16916 6045 (:REWRITE DEFAULT-UNARY-/))
       (7951 7951
             (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
       (6045 6045
             (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
       (5378 3978 (:LINEAR MOD-BOUNDS-2))
       (5372 1510 (:REWRITE MOD-X-Y-=-X . 4))
       (3624 3588 (:REWRITE SIMPLIFY-SUMS-EQUAL))
       (3624 3588
             (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
       (3588 3588 (:REWRITE |(equal (- x) (- y))|))
       (3371 1500 (:REWRITE MOD-ZERO . 3))
       (3303 3303
             (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
       (3303 3303 (:REWRITE |(equal (- x) 0)|))
       (3050 2732 (:REWRITE MOD-NEGATIVE . 3))
       (3034 2998 (:REWRITE MOD-COMPLETION))
       (2990 2990 (:REWRITE |(integerp (* c x))|))
       (2864 2732 (:REWRITE MOD-NEGATIVE . 2))
       (2746 2554 (:REWRITE MOD-NONNEGATIVE))
       (2690 932 (:REWRITE |(< (+ c x y) d)|))
       (2608 23 (:REWRITE |(+ x (if a b c))|))
       (1941 1941
             (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
       (1611 1575 (:REWRITE MOD-CANCEL-*))
       (1607 1575 (:REWRITE MOD-MINUS-2))
       (1524 1500 (:REWRITE MOD-X-Y-=-X . 2))
       (1516 26 (:REWRITE |(- (if a b c))|))
       (1209 1209 (:REWRITE |(equal (* x y) 0)|))
       (928 928 (:REWRITE FOLD-CONSTS-IN-+))
       (808 808 (:REWRITE MOD-POSITIVE . 3))
       (808 808 (:REWRITE MOD-POSITIVE . 2))
       (736 736 (:REWRITE MOD-NONPOSITIVE))
       (688 427 (:REWRITE |(equal (+ c x) d)|))
       (600 60 (:REWRITE |(< 0 (/ x))|))
       (600 60 (:REWRITE |(< (/ x) 0)|))
       (288 32 (:REWRITE BUBBLE-DOWN-*-MATCH-1))
       (256 32 (:REWRITE |(* x (/ x))|))
       (125 125 (:REWRITE |(equal (+ c x y) d)|))
       (116 116 (:REWRITE |(* x (if a b c))|)))