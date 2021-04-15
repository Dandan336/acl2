(TAILS-AC=TAILS (13 13 (:REWRITE DEFAULT-CDR))
                (9 9 (:REWRITE DEFAULT-CAR)))
(LOOP$-AS-AC=LOOP$-AS (41 41 (:REWRITE DEFAULT-CAR))
                      (38 38 (:REWRITE DEFAULT-CDR))
                      (28 7 (:DEFINITION CAR-LOOP$-AS-TUPLE))
                      (16 4 (:DEFINITION CDR-LOOP$-AS-TUPLE)))
(ALT-DEF-FROM-TO-BY
     (27752 1146 (:REWRITE DEFAULT-PLUS-2))
     (12698 12698
            (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (12698 12698
            (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (10332 1248 (:REWRITE DEFAULT-TIMES-2))
     (6409 54 (:REWRITE FLOOR-ZERO . 3))
     (3791 703 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (3791 703
           (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (3791 703
           (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (3791 703
           (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 1))
     (3791 703
           (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (3277 3 (:REWRITE FLOOR-=-X/Y . 4))
     (2765 1061 (:TYPE-PRESCRIPTION MOD-ZERO . 2))
     (2765 1061 (:TYPE-PRESCRIPTION MOD-ZERO . 1))
     (2701 1061
           (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
     (2435 55 (:REWRITE FLOOR-X-Y-=-1 . 2))
     (2422 55 (:REWRITE FLOOR-ZERO . 5))
     (2368 55 (:REWRITE FLOOR-X-Y-=--1 . 2))
     (2272 767 (:REWRITE |(< (- x) c)|))
     (2247 703 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (2247 703 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (2247 703
           (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (2247 703
           (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
     (2247 703
           (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (2247 703
           (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (2247 703
           (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (2247 703
           (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 2))
     (2247 703
           (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (2247 703
           (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (2152 723
           (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (1896 8 (:LINEAR LINEAR-FLOOR-BOUNDS-1))
     (1751 791 (:REWRITE DEFAULT-LESS-THAN-1))
     (1383 40 (:REWRITE MOD-X-Y-=-X+Y . 2))
     (1330 37 (:REWRITE MOD-X-Y-=-X . 3))
     (1325 37 (:REWRITE MOD-X-Y-=-X . 4))
     (1319 55 (:REWRITE FLOOR-=-X/Y . 2))
     (1285 781 (:REWRITE |(< c (- x))|))
     (1248 1248 (:REWRITE DEFAULT-TIMES-1))
     (1182 55 (:REWRITE FLOOR-=-X/Y . 3))
     (1148 40 (:REWRITE MOD-X-Y-=-X-Y . 2))
     (1061 1061 (:TYPE-PRESCRIPTION MOD-ZERO . 4))
     (1061 1061 (:TYPE-PRESCRIPTION MOD-ZERO . 3))
     (1061 1061
           (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
     (1061 1061
           (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
     (1061 1061
           (:TYPE-PRESCRIPTION INTEGERP-MOD-2))
     (1001 791 (:REWRITE DEFAULT-LESS-THAN-2))
     (972 4 (:LINEAR LINEAR-FLOOR-BOUNDS-3))
     (880 55 (:REWRITE DEFAULT-FLOOR-RATIO))
     (879 781 (:REWRITE |(< (- x) (- y))|))
     (801 589 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (791 791 (:REWRITE THE-FLOOR-BELOW))
     (791 791 (:REWRITE THE-FLOOR-ABOVE))
     (786 786
          (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (786 786
          (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (781 781
          (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (781 781
          (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (781 781
          (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (781 781
          (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (781 781
          (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (781 781
          (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (781 781
          (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (781 781
          (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (781 781 (:REWRITE |(< (/ x) (/ y))|))
     (771 37 (:REWRITE CANCEL-MOD-+))
     (731 731
          (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (731 731 (:REWRITE INTEGERP-<-CONSTANT))
     (731 731 (:REWRITE CONSTANT-<-INTEGERP))
     (704 704
          (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (678 40 (:REWRITE MOD-ZERO . 4))
     (659 423
          (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
     (479 479
          (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
     (431 431 (:REWRITE DEFAULT-DIVIDE))
     (430 430
          (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
     (423 423
          (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (423 423
          (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (418 418
          (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (337 40 (:REWRITE DEFAULT-MOD-RATIO))
     (329 9 (:REWRITE |(floor (+ x r) i)|))
     (278 278 (:REWRITE |(< (* x y) 0)|))
     (275 275 (:REWRITE |(< (/ x) 0)|))
     (264 224 (:REWRITE INTEGERP-MINUS-X))
     (242 134 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (223 223 (:META META-INTEGERP-CORRECT))
     (214 214
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (214 214
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (208 208 (:REWRITE |(< 0 (/ x))|))
     (208 208 (:REWRITE |(< 0 (* x y))|))
     (194 194 (:REWRITE |(- (* c x))|))
     (184 184
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (184 184
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (175 55 (:REWRITE FLOOR-X-Y-=-1 . 3))
     (175 55 (:REWRITE FLOOR-X-Y-=--1 . 3))
     (170 54 (:REWRITE FLOOR-ZERO . 2))
     (155 51
          (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
     (151 51 (:REWRITE FLOOR-CANCEL-*-CONST))
     (142 72 (:REWRITE |(equal (- x) c)|))
     (123 72 (:REWRITE |(equal (- x) (- y))|))
     (115 43
          (:REWRITE |(floor x (* y (/ z))) rewriting-goal-literal|))
     (115 43
          (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
     (114 114 (:REWRITE |(< (+ c/d x) y)|))
     (111 111 (:REWRITE |(< (+ (- c) x) y)|))
     (108 40 (:REWRITE MOD-X-Y-=-X-Y . 3))
     (108 40 (:REWRITE MOD-X-Y-=-X+Y . 3))
     (105 37 (:REWRITE MOD-X-Y-=-X . 2))
     (105 37
          (:REWRITE MOD-CANCEL-*-REWRITING-GOAL-LITERAL))
     (105 37 (:REWRITE MOD-CANCEL-*-CONST))
     (105 37 (:REWRITE |(mod (+ x (mod a b)) y)|))
     (105 37
          (:REWRITE |(mod (+ x (- (mod a b))) y)|))
     (105 21
          (:REWRITE INTEGERP-+-REDUCE-CONSTANT))
     (80 32
         (:REWRITE |(mod x (* y (/ z))) rewriting-goal-literal|))
     (80 32
         (:REWRITE |(mod (* x (/ y)) z) rewriting-goal-literal|))
     (79 79 (:REWRITE |(< y (+ (- c) x))|))
     (79 79 (:REWRITE |(< x (+ c/d y))|))
     (72 72
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (72 72
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (72 72 (:REWRITE |(equal c (/ x))|))
     (72 72 (:REWRITE |(equal c (- x))|))
     (72 72 (:REWRITE |(equal (/ x) c)|))
     (72 72 (:REWRITE |(equal (/ x) (/ y))|))
     (72 8 (:REWRITE ACL2-NUMBERP-X))
     (71 71 (:REWRITE FOLD-CONSTS-IN-+))
     (68 8 (:LINEAR MOD-BOUNDS-3))
     (67 67
         (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (57 35 (:REWRITE DEFAULT-CDR))
     (57 35 (:REWRITE DEFAULT-CAR))
     (55 55 (:REWRITE DEFAULT-FLOOR-2))
     (55 55 (:REWRITE DEFAULT-FLOOR-1))
     (51 51
         (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (51 51 (:REWRITE |(floor x (- y))| . 2))
     (51 51 (:REWRITE |(floor x (- y))| . 1))
     (51 51 (:REWRITE |(floor (- x) y)| . 2))
     (43 43
         (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
     (43 43
         (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
     (40 40
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (40 40 (:REWRITE DEFAULT-MOD-2))
     (40 40 (:REWRITE DEFAULT-MOD-1))
     (40 16 (:LINEAR MOD-BOUNDS-2))
     (39 39
         (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
     (38 38
         (:REWRITE |(< (* x (/ y)) 0) rationalp (* x (/ y))|))
     (37 37
         (:REWRITE MOD-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (37 37 (:REWRITE |(mod x (- y))| . 3))
     (37 37 (:REWRITE |(mod x (- y))| . 2))
     (37 37 (:REWRITE |(mod x (- y))| . 1))
     (37 37 (:REWRITE |(mod (- x) y)| . 3))
     (37 37 (:REWRITE |(mod (- x) y)| . 2))
     (32 32
         (:REWRITE |(mod x (* y (/ z))) not rewriting-goal-literal|))
     (32 32
         (:REWRITE |(mod (* x (/ y)) z) not rewriting-goal-literal|))
     (32 8 (:REWRITE RATIONALP-X))
     (11 3
         (:REWRITE |(equal (floor (+ x y) z) x)|))
     (9 9 (:REWRITE |(equal (+ (- c) x) y)|))
     (8 8 (:REWRITE REDUCE-RATIONALP-+))
     (8 8 (:REWRITE REDUCE-RATIONALP-*))
     (8 8 (:REWRITE RATIONALP-MINUS-X))
     (8 8 (:META META-RATIONALP-CORRECT))
     (8 2 (:REWRITE |(+ x x)|))
     (5 5
        (:REWRITE |(floor (+ x y) z) where (< 0 z)| . 3))
     (5 5
        (:REWRITE |(floor (+ x y) z) where (< 0 z)| . 2))
     (4 4 (:LINEAR LINEAR-FLOOR-BOUNDS-2))
     (1 1
        (:REWRITE |(< (* x (/ y)) 1) with (< y 0)|))
     (1 1
        (:REWRITE |(< (* (/ x) y) 1) with (< x 0)|)))
(ASSOC-APPEND (1751 703
                    (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
              (905 703 (:TYPE-PRESCRIPTION BINARY-APPEND))
              (703 703 (:TYPE-PRESCRIPTION TRUE-LISTP))
              (192 3
                   (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
              (141 9 (:REWRITE ACL2-NUMBERP-X))
              (66 3 (:REWRITE RATIONALP-X))
              (60 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
              (60 3
                  (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
              (23 20 (:REWRITE DEFAULT-CAR))
              (19 16 (:REWRITE DEFAULT-CDR))
              (3 3 (:REWRITE REDUCE-RATIONALP-+))
              (3 3 (:REWRITE REDUCE-RATIONALP-*))
              (3 3
                 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
              (3 3 (:REWRITE REDUCE-INTEGERP-+))
              (3 3
                 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
              (3 3 (:REWRITE RATIONALP-MINUS-X))
              (3 3 (:REWRITE INTEGERP-MINUS-X))
              (3 3
                 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
              (3 3 (:REWRITE |(equal c (/ x))|))
              (3 3 (:REWRITE |(equal c (- x))|))
              (3 3 (:REWRITE |(equal (/ x) c)|))
              (3 3 (:REWRITE |(equal (/ x) (/ y))|))
              (3 3 (:REWRITE |(equal (- x) c)|))
              (3 3 (:REWRITE |(equal (- x) (- y))|))
              (3 3 (:META META-RATIONALP-CORRECT))
              (3 3 (:META META-INTEGERP-CORRECT)))
(LEN-APPEND (48 24 (:REWRITE DEFAULT-PLUS-2))
            (31 24 (:REWRITE DEFAULT-PLUS-1))
            (20 20
                (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
            (20 20 (:REWRITE NORMALIZE-ADDENDS))
            (20 10
                (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
            (18 15 (:REWRITE DEFAULT-CDR))
            (12 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
            (12 3
                (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
            (12 3
                (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
            (10 10 (:TYPE-PRESCRIPTION TRUE-LISTP))
            (10 10 (:TYPE-PRESCRIPTION BINARY-APPEND))
            (3 3
               (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
            (3 3
               (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
            (3 3
               (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
            (3 3 (:REWRITE DEFAULT-CAR))
            (3 3 (:REWRITE |(equal c (/ x))|))
            (3 3 (:REWRITE |(equal c (- x))|))
            (3 3 (:REWRITE |(equal (/ x) c)|))
            (3 3 (:REWRITE |(equal (/ x) (/ y))|))
            (3 3 (:REWRITE |(equal (- x) c)|))
            (3 3 (:REWRITE |(equal (- x) (- y))|))
            (3 3 (:REWRITE |(equal (+ (- c) x) y)|)))
(EQUAL-LEN-0 (9 5 (:REWRITE DEFAULT-PLUS-2))
             (8 4
                (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
             (8 4
                (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
             (5 5
                (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
             (5 5 (:REWRITE NORMALIZE-ADDENDS))
             (5 5 (:REWRITE DEFAULT-PLUS-1))
             (4 4
                (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
             (4 4 (:REWRITE SIMPLIFY-SUMS-EQUAL))
             (4 4
                (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
             (4 4
                (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
             (4 4
                (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
             (4 4 (:REWRITE DEFAULT-CDR))
             (4 4 (:REWRITE |(equal c (/ x))|))
             (4 4 (:REWRITE |(equal c (- x))|))
             (4 4 (:REWRITE |(equal (/ x) c)|))
             (4 4 (:REWRITE |(equal (/ x) (/ y))|))
             (4 4 (:REWRITE |(equal (- x) c)|))
             (4 4 (:REWRITE |(equal (- x) (- y))|)))
(EQUAL-LST-APPEND-X-LST
     (80 40
         (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (40 40 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (40 40 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (29 13 (:REWRITE DEFAULT-PLUS-2))
     (24 13 (:REWRITE DEFAULT-PLUS-1))
     (21 3 (:DEFINITION LEN))
     (14 2
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (11 3 (:REWRITE ACL2-NUMBERP-X))
     (6 2
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (5 5
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (5 5 (:REWRITE DEFAULT-CDR))
     (4 2 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (4 1 (:REWRITE RATIONALP-X))
     (2 2
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (2 2
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (2 2
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (2 2 (:REWRITE DEFAULT-CAR))
     (2 2 (:REWRITE |(equal c (/ x))|))
     (2 2 (:REWRITE |(equal c (- x))|))
     (2 2 (:REWRITE |(equal (/ x) c)|))
     (2 2 (:REWRITE |(equal (/ x) (/ y))|))
     (2 2 (:REWRITE |(equal (- x) c)|))
     (2 2 (:REWRITE |(equal (- x) (- y))|))
     (1 1 (:REWRITE REDUCE-RATIONALP-+))
     (1 1 (:REWRITE REDUCE-RATIONALP-*))
     (1 1 (:REWRITE REDUCE-INTEGERP-+))
     (1 1 (:REWRITE RATIONALP-MINUS-X))
     (1 1 (:REWRITE INTEGERP-MINUS-X))
     (1 1 (:REWRITE |(equal (+ (- c) x) y)|))
     (1 1 (:REWRITE |(+ c (+ d x))|))
     (1 1 (:META META-RATIONALP-CORRECT))
     (1 1 (:META META-INTEGERP-CORRECT)))
(CONSP-FROM-TO-BY
     (28036 4
            (:REWRITE |(floor (+ x y) z) where (< 0 z)| . 1))
     (20423 423 (:REWRITE DEFAULT-PLUS-2))
     (12108 12 (:REWRITE |(* x (if a b c))|))
     (9507 583 (:REWRITE DEFAULT-TIMES-2))
     (8868 16 (:REWRITE |(+ x (if a b c))|))
     (8438 47 (:REWRITE |(* x (+ y z))|))
     (7882 7882
           (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
     (7882 7882
           (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (7882 7882
           (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (7882 7882
           (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (6616 284
           (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (5412 12 (:REWRITE |(+ (if a b c) x)|))
     (4876 4 (:REWRITE |(< (if a b c) x)|))
     (4166 28 (:REWRITE FLOOR-ZERO . 3))
     (4158 198 (:REWRITE NORMALIZE-ADDENDS))
     (3147 423 (:REWRITE DEFAULT-PLUS-1))
     (2588 16 (:REWRITE |(+ y (+ x z))|))
     (2456 408 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (2456 408
           (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (2456 408
           (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (2456 408
           (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 1))
     (2456 408
           (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (2448 48 (:REWRITE BUBBLE-DOWN-+-MATCH-3))
     (2340 28 (:REWRITE |(floor (- x) y)| . 1))
     (2332 252 (:REWRITE SIMPLIFY-SUMS-<))
     (2324 12 (:REWRITE |(+ (+ x y) z)|))
     (1913 45 (:REWRITE |(+ y x)|))
     (1776 72 (:REWRITE |(+ 0 x)|))
     (1612 328 (:REWRITE |(< (- x) c)|))
     (1500 460 (:TYPE-PRESCRIPTION MOD-ZERO . 2))
     (1500 460 (:TYPE-PRESCRIPTION MOD-ZERO . 1))
     (1500 460
           (:TYPE-PRESCRIPTION MOD-POSITIVE . 2))
     (1500 460
           (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
     (1432 408 (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
     (1432 408 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (1432 408 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (1432 408
           (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (1432 408
           (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
     (1432 408
           (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (1432 408
           (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (1432 408
           (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (1432 408
           (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 2))
     (1432 408
           (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (1432 408
           (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (1384 29 (:REWRITE FLOOR-ZERO . 5))
     (1376 29 (:REWRITE FLOOR-ZERO . 4))
     (1358 29 (:REWRITE FLOOR-X-Y-=--1 . 2))
     (1288 12 (:REWRITE |(mod (- x) y)| . 1))
     (1225 288
           (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (1102 29 (:REWRITE FLOOR-X-Y-=-1 . 2))
     (1040 84 (:REWRITE |(+ c (+ d x))|))
     (982 94 (:REWRITE |(* y x)|))
     (925 217 (:REWRITE DEFAULT-MINUS))
     (903 29 (:REWRITE FLOOR-=-X/Y . 2))
     (843 29 (:REWRITE FLOOR-=-X/Y . 3))
     (804 92 (:REWRITE |(* (- x) y)|))
     (788 28 (:REWRITE CANCEL-FLOOR-+))
     (735 43 (:REWRITE |(* x (- y))|))
     (720 48 (:REWRITE |(integerp (- x))|))
     (712 340 (:REWRITE |(< c (- x))|))
     (604 16 (:REWRITE MOD-X-Y-=-X+Y . 2))
     (583 583 (:REWRITE DEFAULT-TIMES-1))
     (535 29 (:REWRITE DEFAULT-FLOOR-RATIO))
     (496 12 (:REWRITE MOD-X-Y-=-X . 3))
     (492 12 (:REWRITE MOD-X-Y-=-X . 4))
     (464 16 (:REWRITE MOD-X-Y-=-X-Y . 2))
     (460 460 (:TYPE-PRESCRIPTION MOD-ZERO . 4))
     (460 460 (:TYPE-PRESCRIPTION MOD-ZERO . 3))
     (460 460
          (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
     (460 460
          (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
     (460 460 (:TYPE-PRESCRIPTION INTEGERP-MOD-2))
     (460 460 (:TYPE-PRESCRIPTION INTEGERP-MOD-1))
     (444 340 (:REWRITE |(< (- x) (- y))|))
     (408 408 (:TYPE-PRESCRIPTION FLOOR))
     (348 348 (:REWRITE THE-FLOOR-BELOW))
     (348 348 (:REWRITE THE-FLOOR-ABOVE))
     (340 340
          (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (340 340
          (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (340 340
          (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (340 340
          (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (340 340
          (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (340 340
          (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (340 340
          (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (340 340
          (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (340 340
          (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (340 340
          (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (340 340
          (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (340 340 (:REWRITE |(< (/ x) (/ y))|))
     (296 296
          (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (296 296 (:REWRITE INTEGERP-<-CONSTANT))
     (296 296 (:REWRITE CONSTANT-<-INTEGERP))
     (296 16 (:REWRITE MOD-ZERO . 4))
     (293 293
          (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (284 12 (:REWRITE CANCEL-MOD-+))
     (260 260
          (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
     (260 260
          (:TYPE-PRESCRIPTION MOD-NONNEGATIVE))
     (248 16 (:REWRITE MOD-ZERO . 3))
     (232 88 (:DEFINITION FIX))
     (199 199
          (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
     (199 199 (:REWRITE DEFAULT-DIVIDE))
     (178 138 (:REWRITE INTEGERP-MINUS-X))
     (164 16 (:REWRITE DEFAULT-MOD-RATIO))
     (160 16 (:REWRITE |(* y (* x z))|))
     (155 5 (:REWRITE |(floor (+ x r) i)|))
     (150 150
          (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (138 138 (:REWRITE REDUCE-INTEGERP-+))
     (138 138 (:META META-INTEGERP-CORRECT))
     (128 128 (:REWRITE |(< (/ x) 0)|))
     (128 128 (:REWRITE |(< (* x y) 0)|))
     (120 48 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (119 119 (:REWRITE |(- (* c x))|))
     (113 29 (:REWRITE FLOOR-X-Y-=-1 . 3))
     (113 29 (:REWRITE FLOOR-X-Y-=--1 . 3))
     (108 28 (:REWRITE FLOOR-ZERO . 2))
     (108 28
          (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
     (108 28 (:REWRITE FLOOR-CANCEL-*-CONST))
     (96 96 (:REWRITE |(< 0 (/ x))|))
     (96 96 (:REWRITE |(< 0 (* x y))|))
     (96 64 (:REWRITE |(- (- x))|))
     (86 86
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (86 86
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (79 79
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (79 79
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (76 20 (:REWRITE |(equal (- x) c)|))
     (72 8 (:REWRITE ACL2-NUMBERP-X))
     (68 20
         (:REWRITE |(floor x (* y (/ z))) rewriting-goal-literal|))
     (68 20
         (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
     (48 48 (:REWRITE |(+ x (- x))|))
     (48 16 (:REWRITE MOD-X-Y-=-X-Y . 3))
     (48 16 (:REWRITE MOD-X-Y-=-X+Y . 3))
     (44 12 (:REWRITE MOD-X-Y-=-X . 2))
     (44 12
         (:REWRITE MOD-CANCEL-*-REWRITING-GOAL-LITERAL))
     (44 12 (:REWRITE MOD-CANCEL-*-CONST))
     (44 12 (:REWRITE |(mod (+ x (mod a b)) y)|))
     (44 12
         (:REWRITE |(mod (+ x (- (mod a b))) y)|))
     (32 32 (:REWRITE FOLD-CONSTS-IN-+))
     (32 8 (:REWRITE RATIONALP-X))
     (31 31 (:REWRITE |(< (+ c/d x) y)|))
     (31 31 (:REWRITE |(< (+ (- c) x) y)|))
     (29 29 (:REWRITE DEFAULT-FLOOR-2))
     (29 29 (:REWRITE DEFAULT-FLOOR-1))
     (28 28
         (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (28 28 (:REWRITE |(floor x (- y))| . 2))
     (28 28 (:REWRITE |(floor x (- y))| . 1))
     (28 28 (:REWRITE |(floor (- x) y)| . 2))
     (25 5 (:DEFINITION BINARY-APPEND))
     (24 8
         (:REWRITE |(mod x (* y (/ z))) rewriting-goal-literal|))
     (24 8
         (:REWRITE |(mod (* x (/ y)) z) rewriting-goal-literal|))
     (23 23 (:REWRITE |(< y (+ (- c) x))|))
     (23 23 (:REWRITE |(< x (+ c/d y))|))
     (20 20
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (20 20
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (20 20
         (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
     (20 20
         (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
     (20 20 (:REWRITE |(equal c (/ x))|))
     (20 20 (:REWRITE |(equal c (- x))|))
     (20 20 (:REWRITE |(equal (/ x) c)|))
     (20 20 (:REWRITE |(equal (/ x) (/ y))|))
     (20 20 (:REWRITE |(equal (- x) (- y))|))
     (20 20 (:REWRITE |(* 1 x)|))
     (16 16
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (16 16 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (16 16
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (16 16
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (16 16
         (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (16 16 (:REWRITE DEFAULT-MOD-2))
     (16 16 (:REWRITE DEFAULT-MOD-1))
     (16 16
         (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
     (16 16
         (:REWRITE |(< (* x (/ y)) 0) rationalp (* x (/ y))|))
     (16 16 (:REWRITE |(* a (/ a))|))
     (12 12
         (:REWRITE MOD-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (12 12 (:REWRITE |(mod x (- y))| . 3))
     (12 12 (:REWRITE |(mod x (- y))| . 2))
     (12 12 (:REWRITE |(mod x (- y))| . 1))
     (12 12 (:REWRITE |(mod (- x) y)| . 3))
     (12 12 (:REWRITE |(mod (- x) y)| . 2))
     (10 10
         (:REWRITE INTEGERP-+-REDUCE-CONSTANT))
     (8 8 (:REWRITE REDUCE-RATIONALP-+))
     (8 8 (:REWRITE REDUCE-RATIONALP-*))
     (8 8 (:REWRITE RATIONALP-MINUS-X))
     (8 8
        (:REWRITE |(mod x (* y (/ z))) not rewriting-goal-literal|))
     (8 8
        (:REWRITE |(mod (* x (/ y)) z) not rewriting-goal-literal|))
     (8 8
        (:REWRITE |(< 0 (* x y)) rationalp (* x y)|))
     (8 8
        (:REWRITE |(< 0 (* x (/ y))) rationalp (* x (/ y))|))
     (8 8 (:META META-RATIONALP-CORRECT))
     (8 4 (:REWRITE |(* -1 x)|))
     (5 5 (:REWRITE DEFAULT-CDR))
     (5 5 (:REWRITE DEFAULT-CAR))
     (4 4
        (:REWRITE |(floor (+ x y) z) where (< 0 z)| . 3))
     (4 4
        (:REWRITE |(floor (+ x y) z) where (< 0 z)| . 2))
     (1 1 (:REWRITE |(* 0 x)|)))
(ALT-DEF-FROM-TO-BY-RECURSION
     (75 67 (:REWRITE DEFAULT-PLUS-1))
     (67 67 (:REWRITE DEFAULT-PLUS-2))
     (63 63 (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
     (63 63 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (63 63 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (63 63 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (27 3 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (27 3
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (27 3
         (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (27 3
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 1))
     (27 3
         (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (19 19
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (18 18 (:REWRITE THE-FLOOR-BELOW))
     (18 18 (:REWRITE THE-FLOOR-ABOVE))
     (18 18 (:REWRITE DEFAULT-LESS-THAN-2))
     (18 18 (:REWRITE DEFAULT-LESS-THAN-1))
     (15 3 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (15 3 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (15 3
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (15 3
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
     (15 3
         (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (15 3
         (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (15 3
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (15 3
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 2))
     (15 3
         (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (15 3
         (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (14 14
         (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (14 14
         (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (14 14
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (14 14
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (14 14 (:REWRITE INTEGERP-<-CONSTANT))
     (14 14 (:REWRITE CONSTANT-<-INTEGERP))
     (14 14
         (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (14 14
         (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (14 14
         (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (14 14
         (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (14 14 (:REWRITE |(< c (- x))|))
     (14 14
         (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (14 14
         (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (14 14
         (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (14 14
         (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (14 14 (:REWRITE |(< (/ x) (/ y))|))
     (14 14 (:REWRITE |(< (- x) c)|))
     (14 14 (:REWRITE |(< (- x) (- y))|))
     (13 13
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (11 11 (:REWRITE |(+ c (+ d x))|))
     (8 8 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (7 7 (:REWRITE |(< y (+ (- c) x))|))
     (7 7 (:REWRITE |(< x (+ c/d y))|))
     (6 6 (:REWRITE FOLD-CONSTS-IN-+))
     (6 6 (:REWRITE |(< (+ c/d x) y)|))
     (6 6 (:REWRITE |(< (+ (- c) x) y)|))
     (5 5 (:REWRITE REDUCE-INTEGERP-+))
     (5 5 (:REWRITE INTEGERP-MINUS-X))
     (5 5 (:META META-INTEGERP-CORRECT))
     (4 4 (:REWRITE DEFAULT-MINUS))
     (2 2 (:REWRITE |(< 0 (/ x))|))
     (2 2 (:REWRITE |(< 0 (* x y))|))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (1 1 (:REWRITE |(< (/ x) 0)|))
     (1 1 (:REWRITE |(< (* x y) 0)|)))
(FROM-TO-BY-AC-I-I
     (57 9
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (36 29 (:REWRITE DEFAULT-PLUS-1))
     (32 4 (:REWRITE |(equal (/ x) c)|))
     (29 29 (:REWRITE DEFAULT-PLUS-2))
     (11 11 (:TYPE-PRESCRIPTION FROM-TO-BY-AC))
     (9 9 (:REWRITE THE-FLOOR-BELOW))
     (9 9 (:REWRITE THE-FLOOR-ABOVE))
     (9 9 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (9 9 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (9 9
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (9 9
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (9 9 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (9 9 (:REWRITE INTEGERP-<-CONSTANT))
     (9 9 (:REWRITE DEFAULT-LESS-THAN-2))
     (9 9 (:REWRITE DEFAULT-LESS-THAN-1))
     (9 9 (:REWRITE CONSTANT-<-INTEGERP))
     (9 9
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (9 9
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (9 9
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (9 9
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (9 9 (:REWRITE |(< c (- x))|))
     (9 9
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (9 9
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (9 9
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (9 9
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (9 9 (:REWRITE |(< (/ x) (/ y))|))
     (9 9 (:REWRITE |(< (- x) c)|))
     (9 9 (:REWRITE |(< (- x) (- y))|))
     (7 7 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (6 6 (:REWRITE REDUCE-INTEGERP-+))
     (6 6 (:REWRITE INTEGERP-MINUS-X))
     (6 6 (:META META-INTEGERP-CORRECT))
     (5 5
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (5 5
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (5 5 (:REWRITE |(< 0 (/ x))|))
     (5 5 (:REWRITE |(< 0 (* x y))|))
     (4 4
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (4 4
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (4 4
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (4 4 (:REWRITE |(equal c (/ x))|))
     (4 4 (:REWRITE |(equal (/ x) (/ y))|))
     (4 4 (:REWRITE |(equal (- x) (- y))|))
     (2 2
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (2 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (2 2
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (2 2
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (2 2
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (2 2 (:REWRITE DEFAULT-MINUS))
     (2 2 (:REWRITE DEFAULT-DIVIDE))
     (2 2 (:REWRITE DEFAULT-CDR))
     (2 2 (:REWRITE DEFAULT-CAR))
     (2 2 (:REWRITE |(not (equal x (/ y)))|))
     (2 2 (:REWRITE |(equal x (/ y))|))
     (2 2 (:REWRITE |(equal c (- x))|))
     (2 2 (:REWRITE |(equal (- x) c)|))
     (2 2 (:REWRITE |(/ (/ x))|))
     (1 1 (:REWRITE |(< y (+ (- c) x))|))
     (1 1 (:REWRITE |(< x (+ c/d y))|))
     (1 1 (:REWRITE |(< (+ c/d x) y)|))
     (1 1 (:REWRITE |(< (+ (- c) x) y)|))
     (1 1 (:REWRITE |(+ c (+ d x))|)))
(FROM-TO-BY-NORMALIZER
     (576082 3 (:REWRITE |(floor (if a b c) x)|))
     (321603 13755 (:REWRITE DEFAULT-PLUS-2))
     (173309 173309
             (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (173309 173309
             (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (173309 173309
             (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (119470 5705 (:REWRITE |(< (- x) c)|))
     (116878 37234 (:TYPE-PRESCRIPTION MOD-ZERO . 2))
     (116618 37234
             (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
     (113620 277 (:REWRITE FLOOR-ZERO . 3))
     (107434 17135 (:REWRITE DEFAULT-TIMES-2))
     (106480 317 (:REWRITE FLOOR-X-Y-=-1 . 2))
     (98056 317 (:REWRITE FLOOR-ZERO . 5))
     (80943 13755 (:REWRITE DEFAULT-PLUS-1))
     (73818 111 (:REWRITE |(floor (+ x r) i)|))
     (63773 2661 (:REWRITE MOD-ZERO . 4))
     (52160 2664 (:REWRITE MOD-X-Y-=-X-Y . 2))
     (48130 2625 (:REWRITE MOD-X-Y-=-X . 4))
     (37234 37234 (:TYPE-PRESCRIPTION MOD-ZERO . 4))
     (37234 37234 (:TYPE-PRESCRIPTION MOD-ZERO . 3))
     (37234 37234
            (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
     (36885 36885
            (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
     (36885 36885
            (:TYPE-PRESCRIPTION INTEGERP-MOD-2))
     (36006 322 (:REWRITE FLOOR-=-X/Y . 2))
     (35799 17135 (:REWRITE DEFAULT-TIMES-1))
     (35667 5818 (:REWRITE |(< c (- x))|))
     (34561 5513 (:REWRITE DEFAULT-MINUS))
     (33469 5933 (:REWRITE DEFAULT-LESS-THAN-1))
     (30579 335 (:REWRITE DEFAULT-FLOOR-RATIO))
     (28950 2664 (:REWRITE DEFAULT-MOD-RATIO))
     (23058 5892
            (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (22112 553 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (20332 20332
            (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
     (20078 3662
            (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (20078 3662
            (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (20078 3662
            (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (20078 3662
            (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 1))
     (20078 3662
            (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (19495 5933 (:REWRITE DEFAULT-LESS-THAN-2))
     (17855 80 (:REWRITE DEFAULT-CDR))
     (17855 80 (:REWRITE DEFAULT-CAR))
     (16682 5818 (:REWRITE |(< (- x) (- y))|))
     (16320 576
            (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (13632 576
            (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (11870 3662
            (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
     (11870 3662
            (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (11870 3662
            (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (11870 3662
            (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (11870 3662
            (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
     (11870 3662
            (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (11870 3662
            (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (11870 3662
            (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (11870 3662
            (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 2))
     (11870 3662
            (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (11870 3662
            (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (10504 2664 (:REWRITE MOD-X-Y-=-X-Y . 3))
     (10504 2664 (:REWRITE MOD-X-Y-=-X+Y . 3))
     (10153 2597 (:REWRITE MOD-X-Y-=-X . 2))
     (9750 636 (:REWRITE |(equal (/ x) c)|))
     (9716 9716
           (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (9636 645
           (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (8848 2580 (:REWRITE MOD-CANCEL-*-CONST))
     (8773 1587 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (8368 2580
           (:REWRITE MOD-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (8334 2414 (:LINEAR MOD-BOUNDS-2))
     (8319 2531
           (:REWRITE |(mod x (* y (/ z))) not rewriting-goal-literal|))
     (8319 2531
           (:REWRITE |(mod (* x (/ y)) z) not rewriting-goal-literal|))
     (7855 624 (:REWRITE |(equal (- x) c)|))
     (7853 7601 (:REWRITE DEFAULT-DIVIDE))
     (7690 2788 (:META META-INTEGERP-CORRECT))
     (7676 2800 (:REWRITE INTEGERP-MINUS-X))
     (7589 7589
           (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
     (6956 298
           (:REWRITE INTEGERP-+-REDUCE-CONSTANT))
     (5942 5942 (:REWRITE THE-FLOOR-BELOW))
     (5942 5942 (:REWRITE THE-FLOOR-ABOVE))
     (5892 5892
           (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (5892 5892
           (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (5852 5376
           (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (5818 5818
           (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (5818 5818
           (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (5818 5818
           (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (5818 5818
           (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (5818 5818
           (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (5818 5818
           (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (5818 5818
           (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (5818 5818
           (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (5818 5818 (:REWRITE |(< (/ x) (/ y))|))
     (5376 5376 (:REWRITE INTEGERP-<-CONSTANT))
     (5376 5376 (:REWRITE CONSTANT-<-INTEGERP))
     (5267 5267
           (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (5267 5267
           (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (5267 5267
           (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (5109 5 (:REWRITE |(* (if a b c) x)|))
     (4017 4017
           (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (3908 2664 (:REWRITE DEFAULT-MOD-1))
     (3728 322 (:REWRITE FLOOR-X-Y-=--1 . 3))
     (3703 317 (:REWRITE FLOOR-X-Y-=-1 . 3))
     (3412 2580
           (:REWRITE MOD-CANCEL-*-REWRITING-GOAL-LITERAL))
     (3227 335 (:REWRITE DEFAULT-FLOOR-1))
     (2915 2531
           (:REWRITE |(mod x (* y (/ z))) rewriting-goal-literal|))
     (2915 2531
           (:REWRITE |(mod (* x (/ y)) z) rewriting-goal-literal|))
     (2843 277 (:REWRITE FLOOR-ZERO . 2))
     (2788 2788 (:REWRITE REDUCE-INTEGERP-+))
     (2664 2664 (:REWRITE DEFAULT-MOD-2))
     (2580 2580 (:REWRITE |(mod x (- y))| . 3))
     (2580 2580 (:REWRITE |(mod x (- y))| . 2))
     (2580 2580 (:REWRITE |(mod x (- y))| . 1))
     (2580 2580 (:REWRITE |(mod (- x) y)| . 3))
     (2580 2580 (:REWRITE |(mod (- x) y)| . 2))
     (2539 1387 (:REWRITE |(< (+ (- c) x) y)|))
     (1932 212
           (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
     (1906 1906 (:REWRITE |(< (* x y) 0)|))
     (1900 212 (:REWRITE FLOOR-CANCEL-*-CONST))
     (1854 1854 (:REWRITE |(< (/ x) 0)|))
     (1439 1439 (:REWRITE |(< (+ c/d x) y)|))
     (1425 1257
           (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (1425 1257
           (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (1370 1370 (:REWRITE |(< 0 (* x y))|))
     (1353 1353 (:REWRITE |(< 0 (/ x))|))
     (1344 1344 (:REWRITE FOLD-CONSTS-IN-+))
     (1308 636 (:REWRITE |(equal (- x) (- y))|))
     (1287 167
           (:REWRITE |(floor x (* y (/ z))) rewriting-goal-literal|))
     (1287 167
           (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
     (1088 1088
           (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (1088 1088
           (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (1071 1071 (:REWRITE |(< y (+ (- c) x))|))
     (1071 1071 (:REWRITE |(< x (+ c/d y))|))
     (888 636 (:REWRITE |(equal (/ x) (/ y))|))
     (781 85 (:REWRITE MOD-POSITIVE . 3))
     (636 636
          (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (636 636 (:REWRITE |(equal c (/ x))|))
     (624 624 (:REWRITE |(equal c (- x))|))
     (596 149 (:REWRITE |(+ (* c x) (* d x))|))
     (576 576
          (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (516 12 (:REWRITE |(equal x (/ y))|))
     (506 506
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (477 45 (:REWRITE MOD-ZERO . 1))
     (335 335 (:REWRITE DEFAULT-FLOOR-2))
     (295 59 (:REWRITE MOD-NONPOSITIVE))
     (264 12 (:REWRITE |(not (equal x (/ y)))|))
     (264 12 (:REWRITE |(/ (/ x))|))
     (225 45 (:REWRITE MOD-ZERO . 2))
     (212 212
          (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (212 212 (:REWRITE |(floor x (- y))| . 2))
     (212 212 (:REWRITE |(floor x (- y))| . 1))
     (212 212 (:REWRITE |(floor (- x) y)| . 2))
     (167 167
          (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
     (167 167
          (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
     (113 113
          (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
     (110 110
          (:REWRITE |(< (* x (/ y)) 0) rationalp (* x (/ y))|))
     (85 85 (:REWRITE MOD-POSITIVE . 2))
     (66 66 (:REWRITE MOD-X-Y-=-X-Y . 1))
     (66 66 (:REWRITE MOD-X-Y-=-X+Y . 1))
     (66 66
         (:REWRITE |(equal (mod (+ x y) z) x)|))
     (45 45
         (:REWRITE |(< 0 (* x y)) rationalp (* x y)|))
     (41 41
         (:REWRITE |(floor (+ x y) z) where (< 0 z)| . 3))
     (41 41
         (:REWRITE |(floor (+ x y) z) where (< 0 z)| . 2))
     (40 10 (:REWRITE |(+ x (* c x))|))
     (33 33 (:REWRITE |(equal (+ (- c) x) y)|))
     (30 30
         (:REWRITE |(< 0 (* x (/ y))) rationalp (* x (/ y))|))
     (25 5 (:REWRITE |(+ (- x) (* c x))|))
     (20 4
         (:REWRITE |(equal (mod a n) (mod b n))|))
     (17 17
         (:REWRITE |(<= (/ x) y) with (< x 0)|))
     (17 17
         (:REWRITE |(<= (/ x) y) with (< 0 x)|))
     (17 17
         (:REWRITE |(< x (/ y)) with (< y 0)|))
     (9 9 (:TYPE-PRESCRIPTION ABS))
     (9 9
        (:REWRITE |(mod (+ x y) z) where (<= 0 z)| . 3))
     (9 9
        (:REWRITE |(mod (+ x y) z) where (<= 0 z)| . 2))
     (9 9 (:REWRITE |(equal (* x y) 0)|))
     (9 9
        (:REWRITE |(<= 1 (* x (/ y))) with (< y 0)|))
     (9 9
        (:REWRITE |(<= 1 (* x (/ y))) with (< 0 y)|))
     (9 9
        (:REWRITE |(< (* x (/ y)) 1) with (< y 0)|))
     (9 9
        (:REWRITE |(< (* x (/ y)) 1) with (< 0 y)|))
     (7 7 (:REWRITE MOD-NEGATIVE . 3))
     (7 7 (:REWRITE MOD-NEGATIVE . 2))
     (3 3
        (:TYPE-PRESCRIPTION ALT-DEF-FROM-TO-BY-RECURSION))
     (3 3
        (:REWRITE |(<= (* x (/ y)) -1) with (< y 0)|))
     (3 3
        (:REWRITE |(<= (* x (/ y)) -1) with (< 0 y)|))
     (3 3
        (:REWRITE |(< -1 (* x (/ y))) with (< y 0)|))
     (3 3
        (:REWRITE |(< -1 (* x (/ y))) with (< 0 y)|)))
(FROM-TO-BY-AC=FROM-TO-BY-LEMMA
     (47116 4995 (:REWRITE DEFAULT-PLUS-2))
     (22790 22790
            (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (22790 22790
            (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (22790 22790
            (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (17301 4121 (:REWRITE DEFAULT-TIMES-2))
     (16021 31 (:REWRITE MOD-X-Y-=-X-Y . 1))
     (13524 112 (:REWRITE FLOOR-ZERO . 3))
     (12952 31 (:REWRITE MOD-X-Y-=-X+Y . 1))
     (12564 4995 (:REWRITE DEFAULT-PLUS-1))
     (10429 314 (:REWRITE MOD-X-Y-=-X+Y . 2))
     (9775 292 (:REWRITE MOD-X-Y-=-X . 4))
     (9214 314 (:REWRITE MOD-X-Y-=-X-Y . 2))
     (9076 3128 (:TYPE-PRESCRIPTION MOD-ZERO . 2))
     (8916 3128 (:TYPE-PRESCRIPTION MOD-ZERO . 1))
     (8820 2582 (:REWRITE |(< (- x) c)|))
     (8744 3128
           (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
     (6386 357 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (6070 114 (:REWRITE FLOOR-X-Y-=-1 . 2))
     (5589 114 (:REWRITE FLOOR-ZERO . 5))
     (5450 2640 (:REWRITE |(< c (- x))|))
     (5382 115 (:REWRITE FLOOR-X-Y-=--1 . 2))
     (5250 313 (:REWRITE MOD-ZERO . 4))
     (5196 2678 (:REWRITE DEFAULT-LESS-THAN-1))
     (4161 4121 (:REWRITE DEFAULT-TIMES-1))
     (3992 744 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (3992 744
           (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (3992 744
           (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (3992 744
           (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 1))
     (3992 744
           (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (3795 1540 (:REWRITE DEFAULT-MINUS))
     (3740 117 (:REWRITE FLOOR-=-X/Y . 3))
     (3716 41 (:REWRITE DEFAULT-CDR))
     (3716 41 (:REWRITE DEFAULT-CAR))
     (3585 115 (:REWRITE FLOOR-=-X/Y . 2))
     (3491 314 (:REWRITE DEFAULT-MOD-RATIO))
     (3128 3128 (:TYPE-PRESCRIPTION MOD-ZERO . 3))
     (3128 3128
           (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
     (3128 3128
           (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
     (3128 3128
           (:TYPE-PRESCRIPTION INTEGERP-MOD-2))
     (3030 2678 (:REWRITE DEFAULT-LESS-THAN-2))
     (2842 2640 (:REWRITE |(< (- x) (- y))|))
     (2736 121 (:REWRITE DEFAULT-FLOOR-RATIO))
     (2682 2682 (:REWRITE THE-FLOOR-BELOW))
     (2682 2682 (:REWRITE THE-FLOOR-ABOVE))
     (2668 2668
           (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (2668 2668
           (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (2640 2640
           (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (2640 2640
           (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (2640 2640
           (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (2640 2640
           (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (2640 2640
           (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (2640 2640
           (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (2640 2640
           (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (2640 2640
           (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (2640 2640 (:REWRITE |(< (/ x) (/ y))|))
     (2452 2452
           (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (2452 2452 (:REWRITE INTEGERP-<-CONSTANT))
     (2452 2452 (:REWRITE CONSTANT-<-INTEGERP))
     (2368 744 (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
     (2368 744 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (2368 744 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (2368 744
           (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (2368 744
           (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
     (2368 744
           (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (2368 744
           (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (2368 744
           (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (2368 744
           (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 2))
     (2368 744
           (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (2368 744
           (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (2221 2221
           (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (1694 32 (:REWRITE |(floor (+ x r) i)|))
     (1602 402
           (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (1536 1536
           (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
     (1485 1485 (:REWRITE DEFAULT-DIVIDE))
     (1475 1475
           (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
     (1388 1388
           (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (1028 112 (:REWRITE |(- (+ x y))|))
     (1019 671 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (1017 434 (:REWRITE |(equal (- x) c)|))
     (978 314 (:REWRITE MOD-X-Y-=-X-Y . 3))
     (978 314 (:REWRITE MOD-X-Y-=-X+Y . 3))
     (934 287
          (:REWRITE |(mod (+ x (- (mod a b))) y)|))
     (927 287 (:REWRITE MOD-X-Y-=-X . 2))
     (927 287
          (:REWRITE |(mod (+ x (mod a b)) y)|))
     (910 774 (:REWRITE |(- (* c x))|))
     (857 597 (:REWRITE INTEGERP-MINUS-X))
     (839 839 (:REWRITE |(< (* x y) 0)|))
     (837 119
          (:REWRITE INTEGERP-+-REDUCE-CONSTANT))
     (824 824 (:REWRITE |(< (/ x) 0)|))
     (817 55 (:LINEAR MOD-BOUNDS-3))
     (742 282 (:REWRITE MOD-CANCEL-*-CONST))
     (710 282
          (:REWRITE MOD-CANCEL-*-REWRITING-GOAL-LITERAL))
     (678 678 (:REWRITE |(< 0 (* x y))|))
     (668 668 (:REWRITE |(< 0 (/ x))|))
     (624 624
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (624 624
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (588 588 (:META META-INTEGERP-CORRECT))
     (569 443 (:REWRITE |(equal (/ x) c)|))
     (566 65 (:REWRITE |(+ x x)|))
     (557 557
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (557 557
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (550 446 (:REWRITE |(< (+ (- c) x) y)|))
     (525 245
          (:REWRITE |(mod x (* y (/ z))) rewriting-goal-literal|))
     (525 245
          (:REWRITE |(mod (* x (/ y)) z) rewriting-goal-literal|))
     (523 443 (:REWRITE |(equal (- x) (- y))|))
     (474 282
          (:REWRITE MOD-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (461 461 (:REWRITE |(< (+ c/d x) y)|))
     (451 115 (:REWRITE FLOOR-X-Y-=--1 . 3))
     (446 114 (:REWRITE FLOOR-X-Y-=-1 . 3))
     (443 443
          (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (443 443
          (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (443 443 (:REWRITE |(equal c (/ x))|))
     (443 443 (:REWRITE |(equal (/ x) (/ y))|))
     (437 245
          (:REWRITE |(mod x (* y (/ z))) not rewriting-goal-literal|))
     (437 245
          (:REWRITE |(mod (* x (/ y)) z) not rewriting-goal-literal|))
     (436 112 (:REWRITE FLOOR-ZERO . 2))
     (434 434 (:REWRITE |(equal c (- x))|))
     (431 431 (:REWRITE |(< y (+ (- c) x))|))
     (431 431 (:REWRITE |(< x (+ c/d y))|))
     (402 402
          (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (366 110 (:LINEAR MOD-BOUNDS-2))
     (351 95
          (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
     (314 314 (:REWRITE DEFAULT-MOD-2))
     (314 314 (:REWRITE DEFAULT-MOD-1))
     (307 95 (:REWRITE FLOOR-CANCEL-*-CONST))
     (293 293 (:REWRITE FOLD-CONSTS-IN-+))
     (282 282 (:REWRITE |(mod x (- y))| . 3))
     (282 282 (:REWRITE |(mod x (- y))| . 2))
     (282 282 (:REWRITE |(mod x (- y))| . 1))
     (282 282 (:REWRITE |(mod (- x) y)| . 3))
     (282 282 (:REWRITE |(mod (- x) y)| . 2))
     (281 81
          (:REWRITE |(floor x (* y (/ z))) rewriting-goal-literal|))
     (281 81
          (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
     (276 276
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (264 6
          (:REWRITE |(equal (mod a n) (mod b n))|))
     (204 204
          (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (204 204
          (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (156 39 (:REWRITE |(+ (* c x) (* d x))|))
     (125 5 (:REWRITE MOD-ZERO . 1))
     (121 121 (:REWRITE DEFAULT-FLOOR-2))
     (121 121 (:REWRITE DEFAULT-FLOOR-1))
     (95 95
         (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (95 95 (:REWRITE |(floor x (- y))| . 2))
     (95 95 (:REWRITE |(floor x (- y))| . 1))
     (95 95 (:REWRITE |(floor (- x) y)| . 2))
     (81 81
         (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
     (81 81
         (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
     (79 79 (:REWRITE |(equal (+ (- c) x) y)|))
     (52 52
         (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
     (51 51
         (:REWRITE |(< (* x (/ y)) 0) rationalp (* x (/ y))|))
     (40 10
         (:REWRITE |(<= (/ x) y) with (< 0 x)|))
     (31 31
         (:REWRITE |(equal (mod (+ x y) z) x)|))
     (30 10
         (:REWRITE |(<= (/ x) y) with (< x 0)|))
     (30 10
         (:REWRITE |(< x (/ y)) with (< y 0)|))
     (25 5 (:REWRITE MOD-ZERO . 2))
     (13 13
         (:REWRITE |(< 0 (* x (/ y))) rationalp (* x (/ y))|))
     (12 12
         (:REWRITE |(floor (+ x y) z) where (< 0 z)| . 3))
     (12 12
         (:REWRITE |(floor (+ x y) z) where (< 0 z)| . 2))
     (10 10
         (:REWRITE |(mod (+ x y) z) where (<= 0 z)| . 3))
     (10 10
         (:REWRITE |(mod (+ x y) z) where (<= 0 z)| . 2))
     (9 9 (:REWRITE |(not (equal x (/ y)))|))
     (9 9 (:REWRITE |(equal x (/ y))|))
     (3 3
        (:TYPE-PRESCRIPTION ALT-DEF-FROM-TO-BY-RECURSION))
     (3 3 (:REWRITE MOD-POSITIVE . 3))
     (3 3 (:REWRITE MOD-POSITIVE . 2))
     (3 3
        (:REWRITE |(<= 1 (* x (/ y))) with (< y 0)|))
     (3 3
        (:REWRITE |(<= 1 (* x (/ y))) with (< 0 y)|))
     (3 3
        (:REWRITE |(< (* x (/ y)) 1) with (< y 0)|))
     (3 3
        (:REWRITE |(< (* x (/ y)) 1) with (< 0 y)|))
     (1 1 (:REWRITE MOD-NEGATIVE . 3))
     (1 1 (:REWRITE MOD-NEGATIVE . 2))
     (1 1
        (:REWRITE |(< (* (/ x) y) 1) with (< x 0)|)))
(FROM-TO-BY-AC=FROM-TO-BY
     (1081508 6 (:REWRITE |(floor (if a b c) x)|))
     (584872 25302 (:REWRITE DEFAULT-PLUS-2))
     (338801 338801
             (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (338801 338801
             (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (259670 78738 (:TYPE-PRESCRIPTION MOD-ZERO . 2))
     (255890 78738
             (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
     (222987 533 (:REWRITE FLOOR-ZERO . 3))
     (200906 10882 (:REWRITE |(< (- x) c)|))
     (199463 32571 (:REWRITE DEFAULT-TIMES-2))
     (182477 654 (:REWRITE FLOOR-X-Y-=--1 . 2))
     (182231 25302 (:REWRITE DEFAULT-PLUS-1))
     (176165 646 (:REWRITE FLOOR-X-Y-=-1 . 2))
     (166979 645 (:REWRITE FLOOR-ZERO . 5))
     (162455 4886 (:REWRITE MOD-ZERO . 4))
     (128125 4894 (:REWRITE MOD-X-Y-=-X-Y . 2))
     (124446 199 (:REWRITE |(floor (+ x r) i)|))
     (118689 4820 (:REWRITE MOD-X-Y-=-X . 4))
     (78738 78738 (:TYPE-PRESCRIPTION MOD-ZERO . 3))
     (78738 78738
            (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
     (78000 78000
            (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
     (78000 78000
            (:TYPE-PRESCRIPTION INTEGERP-MOD-2))
     (73599 32571 (:REWRITE DEFAULT-TIMES-1))
     (73568 11268 (:REWRITE DEFAULT-LESS-THAN-1))
     (71603 10320 (:REWRITE DEFAULT-MINUS))
     (68741 654 (:REWRITE FLOOR-=-X/Y . 2))
     (67772 4899 (:REWRITE DEFAULT-MOD-RATIO))
     (57255 675 (:REWRITE DEFAULT-FLOOR-RATIO))
     (56094 1096
            (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (52952 11070 (:REWRITE |(< c (- x))|))
     (47193 47193
            (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
     (46923 11283 (:REWRITE THE-FLOOR-BELOW))
     (46022 1031 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (42467 11268 (:REWRITE DEFAULT-LESS-THAN-2))
     (41211 142 (:REWRITE DEFAULT-CDR))
     (41211 142 (:REWRITE DEFAULT-CAR))
     (36142 11070 (:REWRITE |(< (- x) (- y))|))
     (35616 1225 (:REWRITE |(equal (- x) c)|))
     (34584 7328
            (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (34584 7328
            (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (34584 7328
            (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (34584 7328
            (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 1))
     (34584 7328
            (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (34023 1098
            (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (22964 2853 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (20956 7328
            (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
     (20956 7328
            (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (20956 7328
            (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (20956 7328
            (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (20956 7328
            (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
     (20956 7328
            (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (20956 7328
            (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (20956 7328
            (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (20956 7328
            (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 2))
     (20956 7328
            (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (20956 7328
            (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (20546 4894 (:REWRITE MOD-X-Y-=-X-Y . 3))
     (20480 4892 (:REWRITE MOD-X-Y-=-X+Y . 3))
     (20073 1247 (:REWRITE |(equal (/ x) c)|))
     (20070 66 (:LINEAR LINEAR-FLOOR-BOUNDS-1))
     (19942 4734 (:REWRITE MOD-X-Y-=-X . 2))
     (19247 1265
            (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (18906 4978 (:REWRITE INTEGERP-MINUS-X))
     (18665 18665
            (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (17217 11283 (:REWRITE THE-FLOOR-ABOVE))
     (16511 4941 (:META META-INTEGERP-CORRECT))
     (16286 4686 (:REWRITE MOD-CANCEL-*-CONST))
     (15298 4686
            (:REWRITE MOD-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (15156 4544
            (:REWRITE |(mod x (* y (/ z))) not rewriting-goal-literal|))
     (15156 4544
            (:REWRITE |(mod (* x (/ y)) z) not rewriting-goal-literal|))
     (15088 4296 (:LINEAR MOD-BOUNDS-2))
     (14937 14377 (:REWRITE DEFAULT-DIVIDE))
     (14353 14353
            (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
     (13383 15 (:REWRITE |(* (if a b c) x)|))
     (11509 11509
            (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (11509 11509
            (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (11165 11165
            (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (11165 11165
            (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (11070 11070
            (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (11070 11070
            (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (11070 11070
            (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (11070 11070
            (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (11070 11070
            (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (11070 11070
            (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (11070 11070
            (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (11070 11070
            (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (11070 11070 (:REWRITE |(< (/ x) (/ y))|))
     (10812 10260
            (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (10260 10260 (:REWRITE INTEGERP-<-CONSTANT))
     (10260 10260 (:REWRITE CONSTANT-<-INTEGERP))
     (10216 2148 (:LINEAR MOD-BOUNDS-3))
     (9902 12 (:REWRITE FLOOR-=-X/Y . 4))
     (9701 471
           (:REWRITE INTEGERP-+-REDUCE-CONSTANT))
     (8637 4899 (:REWRITE DEFAULT-MOD-1))
     (7677 7677
           (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (7250 654 (:REWRITE FLOOR-X-Y-=--1 . 3))
     (7098 646 (:REWRITE FLOOR-X-Y-=-1 . 3))
     (6705 33 (:LINEAR LINEAR-FLOOR-BOUNDS-3))
     (6483 675 (:REWRITE DEFAULT-FLOOR-1))
     (6394 4686
           (:REWRITE MOD-CANCEL-*-REWRITING-GOAL-LITERAL))
     (5141 533 (:REWRITE FLOOR-ZERO . 2))
     (5124 4544
           (:REWRITE |(mod x (* y (/ z))) rewriting-goal-literal|))
     (5124 4544
           (:REWRITE |(mod (* x (/ y)) z) rewriting-goal-literal|))
     (4899 4899 (:REWRITE DEFAULT-MOD-2))
     (4686 4686 (:REWRITE |(mod x (- y))| . 3))
     (4686 4686 (:REWRITE |(mod x (- y))| . 2))
     (4686 4686 (:REWRITE |(mod x (- y))| . 1))
     (4686 4686 (:REWRITE |(mod (- x) y)| . 3))
     (4686 4686 (:REWRITE |(mod (- x) y)| . 2))
     (4284 2744 (:REWRITE |(< (+ (- c) x) y)|))
     (4116 440 (:REWRITE FLOOR-CANCEL-*-CONST))
     (4068 440
           (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
     (3493 3493 (:REWRITE |(< (* x y) 0)|))
     (3476 3476 (:REWRITE |(< (/ x) 0)|))
     (3295 1247 (:REWRITE |(equal (- x) (- y))|))
     (3283 3283 (:TYPE-PRESCRIPTION FROM-TO-BY-AC))
     (3171 3171 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (2761 2761 (:REWRITE |(< (+ c/d x) y)|))
     (2757 2757 (:REWRITE |(< 0 (* x y))|))
     (2687 2687 (:REWRITE |(< 0 (/ x))|))
     (2647 335
           (:REWRITE |(floor x (* y (/ z))) rewriting-goal-literal|))
     (2647 335
           (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
     (2499 1803 (:REWRITE |(< y (+ (- c) x))|))
     (2364 2364 (:REWRITE FOLD-CONSTS-IN-+))
     (2281 2281
           (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (2281 2281
           (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (2228 2228
           (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (2228 2228
           (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (1807 1247 (:REWRITE |(equal (/ x) (/ y))|))
     (1803 1803 (:REWRITE |(< x (+ c/d y))|))
     (1751 183 (:REWRITE MOD-POSITIVE . 3))
     (1247 1247
           (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (1247 1247 (:REWRITE |(equal c (/ x))|))
     (1225 1225 (:REWRITE |(equal c (- x))|))
     (1142 22 (:REWRITE |(equal x (/ y))|))
     (1125 135 (:REWRITE ACL2-NUMBERP-X))
     (1098 1098
           (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (1046 102 (:REWRITE MOD-ZERO . 1))
     (867 867
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (675 675 (:REWRITE DEFAULT-FLOOR-2))
     (650 130 (:REWRITE MOD-NONPOSITIVE))
     (582 22 (:REWRITE |(not (equal x (/ y)))|))
     (510 102 (:REWRITE MOD-ZERO . 2))
     (495 45 (:REWRITE RATIONALP-X))
     (488 440
          (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (440 440 (:REWRITE |(floor x (- y))| . 2))
     (440 440 (:REWRITE |(floor x (- y))| . 1))
     (440 440 (:REWRITE |(floor (- x) y)| . 2))
     (383 335
          (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
     (383 335
          (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
     (267 267
          (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
     (244 244
          (:REWRITE |(< (* x (/ y)) 0) rationalp (* x (/ y))|))
     (183 183 (:REWRITE MOD-POSITIVE . 2))
     (156 39 (:REWRITE |(+ (* c x) (* d x))|))
     (154 154 (:REWRITE MOD-X-Y-=-X-Y . 1))
     (154 154 (:REWRITE MOD-X-Y-=-X+Y . 1))
     (154 154
          (:REWRITE |(equal (mod (+ x y) z) x)|))
     (153 33 (:LINEAR LINEAR-FLOOR-BOUNDS-2))
     (104 104 (:REWRITE |(equal (+ (- c) x) y)|))
     (94 94
         (:REWRITE |(floor (+ x y) z) where (< 0 z)| . 3))
     (94 94
         (:REWRITE |(floor (+ x y) z) where (< 0 z)| . 2))
     (70 70
         (:REWRITE |(<= (/ x) y) with (< x 0)|))
     (70 70
         (:REWRITE |(<= (/ x) y) with (< 0 x)|))
     (70 70
         (:REWRITE |(< x (/ y)) with (< y 0)|))
     (67 67
         (:REWRITE |(< 0 (* x (/ y))) rationalp (* x (/ y))|))
     (50 10
         (:REWRITE |(equal (mod a n) (mod b n))|))
     (45 45 (:REWRITE REDUCE-RATIONALP-+))
     (45 45 (:REWRITE REDUCE-RATIONALP-*))
     (45 45 (:REWRITE RATIONALP-MINUS-X))
     (45 45 (:META META-RATIONALP-CORRECT))
     (41 41 (:REWRITE |(* 0 x)|))
     (36 12
         (:REWRITE |(equal (floor (+ x y) z) x)|))
     (24 24
         (:REWRITE |(mod (+ x y) z) where (<= 0 z)| . 3))
     (24 24
         (:REWRITE |(mod (+ x y) z) where (<= 0 z)| . 2))
     (18 18 (:TYPE-PRESCRIPTION ABS))
     (18 18 (:REWRITE |(equal (* x y) 0)|))
     (8 8 (:REWRITE MOD-NEGATIVE . 3))
     (8 8 (:REWRITE MOD-NEGATIVE . 2))
     (2 2 (:REWRITE MOD-X-Y-=-X . 1))
     (2 2
        (:REWRITE |(< (* (/ x) y) 1) with (< x 0)|)))
(APPEND-NIL (2 1 (:DEFINITION TRUE-LISTP))
            (1 1 (:REWRITE DEFAULT-CDR)))
(FROM-TO-BY-AC=FROM-TO-BY-SPECIAL-CASE
     (28559 810 (:REWRITE DEFAULT-PLUS-2))
     (24916 5 (:DEFINITION ALT-DEF-FROM-TO-BY))
     (18991 631 (:REWRITE THE-FLOOR-BELOW))
     (13949 13949
            (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (13949 13949
            (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (13949 13949
            (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (10340 32 (:LINEAR LINEAR-FLOOR-BOUNDS-1))
     (9035 1019 (:REWRITE DEFAULT-TIMES-2))
     (8365 810 (:REWRITE DEFAULT-PLUS-1))
     (6554 6 (:REWRITE FLOOR-=-X/Y . 4))
     (6270 82 (:REWRITE FLOOR-ZERO . 3))
     (5107 1003
           (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (5107 1003
           (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (5107 1003
           (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (5107 1003
           (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 1))
     (5107 1003
           (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (4609 627 (:REWRITE DEFAULT-LESS-THAN-1))
     (3055 1003
           (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
     (3055 1003
           (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (3055 1003
           (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (3055 1003
           (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (3055 1003
           (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
     (3055 1003
           (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (3055 1003
           (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (3055 1003
           (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (3055 1003
           (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 2))
     (3055 1003
           (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (3055 1003
           (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (3024 16 (:LINEAR LINEAR-FLOOR-BOUNDS-3))
     (2696 82 (:REWRITE FLOOR-ZERO . 5))
     (2678 82 (:REWRITE FLOOR-ZERO . 4))
     (2626 82 (:REWRITE FLOOR-X-Y-=--1 . 2))
     (2296 82 (:REWRITE FLOOR-X-Y-=-1 . 2))
     (2204 684 (:TYPE-PRESCRIPTION MOD-ZERO . 2))
     (1904 684 (:TYPE-PRESCRIPTION MOD-ZERO . 1))
     (1864 684
           (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
     (1725 5 (:DEFINITION BINARY-APPEND))
     (1685 15 (:REWRITE CONSP-FROM-TO-BY))
     (1568 608 (:REWRITE |(< (- x) c)|))
     (1162 82 (:REWRITE FLOOR-=-X/Y . 2))
     (1019 1019 (:REWRITE DEFAULT-TIMES-1))
     (998 82 (:REWRITE DEFAULT-FLOOR-RATIO))
     (983 627 (:REWRITE DEFAULT-LESS-THAN-2))
     (928 618 (:REWRITE |(< c (- x))|))
     (922 82 (:REWRITE FLOOR-=-X/Y . 3))
     (913 289 (:REWRITE DEFAULT-MINUS))
     (812 618 (:REWRITE |(< (- x) (- y))|))
     (684 684 (:TYPE-PRESCRIPTION MOD-ZERO . 4))
     (684 684 (:TYPE-PRESCRIPTION MOD-ZERO . 3))
     (684 684
          (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
     (684 684
          (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
     (684 684 (:TYPE-PRESCRIPTION INTEGERP-MOD-2))
     (650 102 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (622 622
          (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (622 622
          (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (622 622
          (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (618 618
          (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (618 618
          (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (618 618
          (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (618 618
          (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (618 618
          (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (618 618
          (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (618 618
          (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (618 618
          (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (618 618 (:REWRITE |(< (/ x) (/ y))|))
     (608 608
          (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (584 21 (:REWRITE MOD-X-Y-=-X+Y . 2))
     (583 25 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (583 25
          (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (583 25
          (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (582 582
          (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (582 582 (:REWRITE INTEGERP-<-CONSTANT))
     (582 582 (:REWRITE CONSTANT-<-INTEGERP))
     (575 5 (:REWRITE DEFAULT-CDR))
     (575 5 (:REWRITE DEFAULT-CAR))
     (537 19 (:REWRITE MOD-X-Y-=-X . 3))
     (533 19 (:REWRITE MOD-X-Y-=-X . 4))
     (480 480
          (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
     (480 480 (:REWRITE DEFAULT-DIVIDE))
     (480 8 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
     (447 21 (:REWRITE MOD-X-Y-=-X-Y . 2))
     (424 424
          (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
     (421 19 (:REWRITE CANCEL-MOD-+))
     (292 21 (:REWRITE MOD-ZERO . 4))
     (290 5 (:DEFINITION FROM-TO-BY))
     (257 257
          (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (248 248 (:REWRITE |(< (/ x) 0)|))
     (248 248 (:REWRITE |(< (* x y) 0)|))
     (234 82 (:REWRITE FLOOR-ZERO . 2))
     (234 82 (:REWRITE FLOOR-X-Y-=-1 . 3))
     (234 82 (:REWRITE FLOOR-X-Y-=--1 . 3))
     (210 210
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (210 210
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (200 21 (:REWRITE DEFAULT-MOD-RATIO))
     (190 10 (:REWRITE |(floor (+ x r) i)|))
     (182 78
          (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
     (182 78 (:REWRITE FLOOR-CANCEL-*-CONST))
     (154 154 (:REWRITE |(< 0 (* x y))|))
     (150 150 (:REWRITE |(< 0 (/ x))|))
     (147 131 (:REWRITE INTEGERP-MINUS-X))
     (142 70
          (:REWRITE |(floor x (* y (/ z))) rewriting-goal-literal|))
     (142 70
          (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
     (134 134
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (134 134
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (131 131 (:REWRITE REDUCE-INTEGERP-+))
     (131 131 (:META META-INTEGERP-CORRECT))
     (110 78
          (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (102 70
          (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
     (102 70
          (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
     (96 16 (:LINEAR LINEAR-FLOOR-BOUNDS-2))
     (85 29 (:REWRITE |(equal (- x) c)|))
     (82 82 (:REWRITE DEFAULT-FLOOR-2))
     (82 82 (:REWRITE DEFAULT-FLOOR-1))
     (78 78 (:REWRITE |(floor x (- y))| . 2))
     (78 78 (:REWRITE |(floor x (- y))| . 1))
     (78 78 (:REWRITE |(floor (- x) y)| . 2))
     (73 21 (:REWRITE MOD-X-Y-=-X-Y . 3))
     (73 21 (:REWRITE MOD-X-Y-=-X+Y . 3))
     (71 19 (:REWRITE MOD-X-Y-=-X . 2))
     (71 19
         (:REWRITE MOD-CANCEL-*-REWRITING-GOAL-LITERAL))
     (71 19 (:REWRITE |(mod (+ x (mod a b)) y)|))
     (71 19
         (:REWRITE |(mod (+ x (- (mod a b))) y)|))
     (68 68 (:REWRITE |(< (+ c/d x) y)|))
     (68 68 (:REWRITE |(< (+ (- c) x) y)|))
     (58 58
         (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
     (58 58
         (:REWRITE |(< (* x (/ y)) 0) rationalp (* x (/ y))|))
     (55 55 (:REWRITE |(< y (+ (- c) x))|))
     (55 55 (:REWRITE |(< x (+ c/d y))|))
     (55 19 (:REWRITE MOD-CANCEL-*-CONST))
     (46 46 (:REWRITE FOLD-CONSTS-IN-+))
     (41 13
         (:REWRITE |(mod x (* y (/ z))) rewriting-goal-literal|))
     (41 13
         (:REWRITE |(mod (* x (/ y)) z) rewriting-goal-literal|))
     (29 29
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (29 29
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (29 29 (:REWRITE |(equal c (/ x))|))
     (29 29 (:REWRITE |(equal c (- x))|))
     (29 29 (:REWRITE |(equal (/ x) c)|))
     (29 29 (:REWRITE |(equal (/ x) (/ y))|))
     (29 29 (:REWRITE |(equal (- x) (- y))|))
     (25 25
         (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (22 6
         (:REWRITE |(equal (floor (+ x y) z) x)|))
     (21 21 (:REWRITE DEFAULT-MOD-2))
     (21 21 (:REWRITE DEFAULT-MOD-1))
     (21 1 (:LINEAR MOD-BOUNDS-3))
     (19 19
         (:REWRITE MOD-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (19 19 (:REWRITE |(mod x (- y))| . 3))
     (19 19 (:REWRITE |(mod x (- y))| . 2))
     (19 19 (:REWRITE |(mod x (- y))| . 1))
     (19 19 (:REWRITE |(mod (- x) y)| . 3))
     (19 19 (:REWRITE |(mod (- x) y)| . 2))
     (15 15
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (13 13
         (:REWRITE |(mod x (* y (/ z))) not rewriting-goal-literal|))
     (13 13
         (:REWRITE |(mod (* x (/ y)) z) not rewriting-goal-literal|))
     (12 12
         (:REWRITE INTEGERP-+-REDUCE-CONSTANT))
     (10 2 (:LINEAR MOD-BOUNDS-2))
     (8 8 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (8 8 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (8 8 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (6 6
        (:REWRITE |(floor (+ x y) z) where (< 0 z)| . 3))
     (6 6
        (:REWRITE |(floor (+ x y) z) where (< 0 z)| . 2))
     (6 6
        (:REWRITE |(< 0 (* x y)) rationalp (* x y)|))
     (6 6
        (:REWRITE |(< 0 (* x (/ y))) rationalp (* x (/ y))|))
     (4 4 (:REWRITE |(equal (+ (- c) x) y)|))
     (4 4
        (:REWRITE |(<= (/ x) y) with (< x 0)|))
     (4 4
        (:REWRITE |(<= (/ x) y) with (< 0 x)|))
     (4 4
        (:REWRITE |(< x (/ y)) with (< y 0)|)))
