(MOD-CANCEL-SPECIAL-1-EXT
 (72 4 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (42 17 (:REWRITE DEFAULT-*-2))
 (41 8 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (38 38 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (37 19 (:REWRITE DEFAULT-+-2))
 (33 15 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (25 17 (:REWRITE DEFAULT-*-1))
 (25 11 (:REWRITE DEFAULT-UNARY-MINUS))
 (21 19 (:REWRITE DEFAULT-+-1))
 (16 4 (:DEFINITION NFIX))
 (14 14 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (13 10 (:REWRITE DEFAULT-NUMERATOR))
 (12 12 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (12 12 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (10 10 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:META CANCEL_PLUS-LESSP-CORRECT))
 (9 9 (:REWRITE FOLD-CONSTS-IN-*))
 (7 7 (:REWRITE RATIONALP-*))
 (4 4 (:DEFINITION IFIX))
 (4 2 (:REWRITE DEFAULT-DENOMINATOR))
 (3 3 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE INTEGERP==>DENOMINATOR=1))
 )
(JUSTIFY-FLOOR-RECURSION-EXT
 (56 56 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (56 56 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (8 2 (:REWRITE FLOOR-=-X/Y . 3))
 (8 2 (:REWRITE FLOOR-=-X/Y . 2))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (5 2 (:REWRITE FLOOR-TYPE-4 . 3))
 (4 4 (:REWRITE INTEGERP-+-MINUS-*))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (4 2 (:REWRITE FLOOR-TYPE-3 . 2))
 (2 2 (:REWRITE FLOOR-TYPE-4 . 2))
 (2 2 (:REWRITE FLOOR-TYPE-3 . 3))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(MOD-X-Y-=-X-+-Y-EXT
 (97 97 (:REWRITE DEFAULT-<-2))
 (97 97 (:REWRITE DEFAULT-<-1))
 (90 90 (:TYPE-PRESCRIPTION MOD-TYPE . 2))
 (90 90 (:TYPE-PRESCRIPTION MOD-TYPE . 1))
 (90 90 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (24 6 (:REWRITE MOD-=-0 . 2))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 6 (:REWRITE MOD-X-Y-=-X-FOR-RATIONALS . 3))
 (16 6 (:REWRITE MOD-X-Y-=-X-FOR-RATIONALS . 2))
 (14 6 (:REWRITE MOD-X-Y-=-X+Y-FOR-RATIONALS . 2))
 (12 4 (:LINEAR MOD-BOUNDED-BY-MODULUS))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE THIS-NEEDS-TO-BE-ADDED-TO-QUOTIENT-REMAINDER-LEMMAS))
 (6 6 (:REWRITE INTEGERP-+-MINUS-*))
 (6 6 (:REWRITE DEFAULT-*-2))
 (6 6 (:REWRITE DEFAULT-*-1))
 (6 2 (:LINEAR MOD-TYPE . 4))
 (6 2 (:LINEAR MOD-TYPE . 3))
 (6 2 (:LINEAR MOD-TYPE . 2))
 (6 2 (:LINEAR MOD-TYPE . 1))
 )
(MOD-X-I*J
 (1032 24 (:LINEAR FLOOR-BOUNDED-BY-/))
 (413 10 (:REWRITE MOD-X-Y-=-X-FOR-RATIONALS . 3))
 (413 10 (:REWRITE MOD-X-Y-=-X+Y-FOR-RATIONALS . 2))
 (392 10 (:REWRITE MOD-X-Y-=-X-FOR-RATIONALS . 2))
 (392 10 (:REWRITE MOD-X-Y-=-X+Y-FOR-RATIONALS . 3))
 (279 88 (:REWRITE COMMUTATIVITY-OF-*))
 (250 250 (:REWRITE DEFAULT-<-2))
 (250 250 (:REWRITE DEFAULT-<-1))
 (242 183 (:REWRITE DEFAULT-*-2))
 (198 183 (:REWRITE DEFAULT-*-1))
 (190 28 (:REWRITE FLOOR-=-X/Y . 3))
 (190 28 (:REWRITE FLOOR-=-X/Y . 2))
 (160 160 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (160 160 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (160 160 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (160 160 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (133 10 (:REWRITE MOD-=-0 . 2))
 (115 115 (:TYPE-PRESCRIPTION MOD-TYPE . 3))
 (115 115 (:TYPE-PRESCRIPTION MOD-TYPE . 2))
 (115 115 (:TYPE-PRESCRIPTION MOD-TYPE . 1))
 (108 6 (:REWRITE FLOOR-TYPE-2))
 (82 28 (:REWRITE FLOOR-TYPE-4 . 3))
 (82 28 (:REWRITE FLOOR-TYPE-4 . 2))
 (82 28 (:REWRITE FLOOR-TYPE-3 . 3))
 (82 28 (:REWRITE FLOOR-TYPE-3 . 2))
 (73 13 (:REWRITE MOD-X-Y-=-X-+-Y-EXT . 1))
 (66 6 (:REWRITE FLOOR-TYPE-1))
 (64 64 (:REWRITE INTEGERP-+-MINUS-*))
 (60 16 (:REWRITE DEFAULT-+-2))
 (40 16 (:REWRITE DEFAULT-+-1))
 (36 12 (:LINEAR FLOOR-TYPE-2 . 2))
 (36 12 (:LINEAR FLOOR-TYPE-2 . 1))
 (36 12 (:LINEAR FLOOR-TYPE-1 . 2))
 (36 12 (:LINEAR FLOOR-TYPE-1 . 1))
 (20 2 (:LINEAR MOD-TYPE . 2))
 (10 10 (:REWRITE THIS-NEEDS-TO-BE-ADDED-TO-QUOTIENT-REMAINDER-LEMMAS))
 (8 1 (:REWRITE COMMUTATIVITY-2-OF-*))
 (3 1 (:REWRITE DISTRIBUTIVITY-OF-/-OVER-*))
 (2 2 (:LINEAR MOD-TYPE . 3))
 (2 2 (:LINEAR MOD-TYPE . 1))
 )
(EXPT-1-LINEAR-B
 (67 67 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (46 46 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-0-BASE))
 (22 4 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (20 2 (:LINEAR EXPT->-1-TWO))
 (15 11 (:REWRITE SIMPLIFY-SUMS-<))
 (15 11 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (15 11 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (15 11 (:REWRITE DEFAULT-<-1))
 (14 6 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (12 12 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE |(< (- x) (- y))|))
 (8 8 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
 (8 8 (:REWRITE |(< 0 (- x))|))
 (6 6 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (4 4 (:REWRITE DEFAULT-EXPT-2))
 (4 4 (:REWRITE DEFAULT-EXPT-1))
 (4 4 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE->-1))
 (4 4 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE-<-1))
 (4 4 (:LINEAR EXPT-IS-INCREASING-FOR-BASE->-1))
 (3 3 (:REWRITE |arith (expt x c)|))
 (3 3 (:REWRITE |arith (expt x (- n))|))
 (3 3 (:REWRITE |arith (expt 1/c n)|))
 (3 3 (:LINEAR EXPT-<-1-TWO))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (2 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (2 2 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (2 2 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (2 2 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (2 2 (:REWRITE NORMALIZE-ADDENDS))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE |(expt x (- n))|))
 (2 2 (:REWRITE |(expt 2^i n)|))
 (2 2 (:REWRITE |(expt 1/c n)|))
 (2 2 (:REWRITE |(expt (- x) n)|))
 (2 2 (:REWRITE |(equal (- x) 0)|))
 (2 2 (:REWRITE |(equal (- x) (- y))|))
 (2 2 (:LINEAR EXPT-X->=-X))
 (2 2 (:LINEAR EXPT-X->-X))
 (2 2 (:LINEAR EXPT->-1-ONE))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (1 1 (:REWRITE REDUCE-INTEGERP-+))
 (1 1 (:REWRITE INTEGERP-MINUS-X))
 (1 1 (:REWRITE |(< (- x) 0)|))
 (1 1 (:META META-INTEGERP-CORRECT))
 )
(EXPT-1-LINEAR-D
 (49 49 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (36 36 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-0-BASE))
 (30 22 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (28 3 (:LINEAR EXPT->-1-TWO))
 (28 3 (:LINEAR EXPT-<-1-ONE))
 (24 20 (:REWRITE SIMPLIFY-SUMS-<))
 (24 20 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (24 20 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (24 20 (:REWRITE DEFAULT-<-2))
 (24 3 (:LINEAR EXPT-1-LINEAR-B))
 (20 20 (:REWRITE DEFAULT-<-1))
 (20 20 (:REWRITE |(< (- x) (- y))|))
 (20 4 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE->-1))
 (18 2 (:LINEAR EXPT-X->=-X))
 (11 11 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (7 7 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
 (7 7 (:REWRITE |(< 0 (- x))|))
 (5 5 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (4 4 (:REWRITE |arith (expt x c)|))
 (4 4 (:REWRITE |arith (expt x (- n))|))
 (4 4 (:REWRITE |arith (expt 1/c n)|))
 (4 4 (:REWRITE DEFAULT-EXPT-2))
 (4 4 (:REWRITE DEFAULT-EXPT-1))
 (4 4 (:LINEAR EXPT-IS-INCREASING-FOR-BASE->-1))
 (4 4 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (3 3 (:LINEAR EXPT->-1-ONE))
 (3 3 (:LINEAR EXPT-<-1-TWO))
 (2 2 (:REWRITE ZIP-OPEN))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (2 2 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (2 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (2 2 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (2 2 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (2 2 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (2 2 (:REWRITE NORMALIZE-ADDENDS))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE |(expt x (- n))|))
 (2 2 (:REWRITE |(expt 2^i n)|))
 (2 2 (:REWRITE |(expt 1/c n)|))
 (2 2 (:REWRITE |(expt (- x) n)|))
 (2 2 (:REWRITE |(equal (- x) 0)|))
 (2 2 (:REWRITE |(equal (- x) (- y))|))
 (2 2 (:REWRITE |(< (- x) 0)|))
 (2 2 (:LINEAR EXPT-X->-X))
 (1 1 (:REWRITE REDUCE-INTEGERP-+))
 (1 1 (:REWRITE INTEGERP-MINUS-X))
 (1 1 (:META META-INTEGERP-CORRECT))
 )
(EXPT-1-LINEAR-H
 (273 273 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (72 8 (:LINEAR EXPT-X->=-X))
 (66 50 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (64 8 (:LINEAR EXPT->-1-TWO))
 (64 8 (:LINEAR EXPT-<-1-ONE))
 (64 8 (:LINEAR EXPT-1-LINEAR-B))
 (58 50 (:REWRITE SIMPLIFY-SUMS-<))
 (58 50 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (58 50 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (58 50 (:REWRITE DEFAULT-<-1))
 (50 50 (:REWRITE DEFAULT-<-2))
 (50 50 (:REWRITE |(< (- x) (- y))|))
 (44 16 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (32 16 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE->-1))
 (28 28 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (22 22 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (20 20 (:REWRITE |arith (* c (* d x))|))
 (17 17 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (17 17 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (16 16 (:LINEAR EXPT-IS-INCREASING-FOR-BASE->-1))
 (10 10 (:REWRITE |arith (* (- x) y)|))
 (8 8 (:REWRITE DEFAULT-EXPT-2))
 (8 8 (:REWRITE DEFAULT-EXPT-1))
 (8 8 (:LINEAR EXPT-X->-X))
 (8 8 (:LINEAR EXPT->-1-ONE))
 (8 8 (:LINEAR EXPT-<-1-TWO))
 (7 7 (:REWRITE |arith (expt x c)|))
 (7 7 (:REWRITE |arith (expt x (- n))|))
 (7 7 (:REWRITE |arith (expt 1/c n)|))
 (4 4 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (4 4 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
 (4 4 (:REWRITE |(expt x (- n))|))
 (4 4 (:REWRITE |(expt 2^i n)|))
 (4 4 (:REWRITE |(expt 1/c n)|))
 (4 4 (:REWRITE |(expt (- x) n)|))
 (4 4 (:REWRITE |(< 0 (- x))|))
 (4 4 (:REWRITE |(< (- x) 0)|))
 (3 3 (:REWRITE ARITH-NORMALIZE-ADDENDS))
 (2 2 (:REWRITE |arith (- (* c x))|))
 (2 2 (:REWRITE REDUCE-INTEGERP-+))
 (2 2 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (2 2 (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
 (2 2 (:REWRITE NORMALIZE-ADDENDS))
 (2 2 (:REWRITE INTEGERP-MINUS-X))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE |(< (+ c x) d)|))
 (2 2 (:META META-INTEGERP-CORRECT))
 )
(NINTEGERP-EXPT-HELPER
 (11 11 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 )
(NINTEGERP-EXPT
 (13 13 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 )