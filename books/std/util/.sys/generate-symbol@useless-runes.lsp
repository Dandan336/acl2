(STD::CHARACTER-LISTP-OF-EXPLODE-NONNEGATIVE-INTEGER
 (1344 84 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (446 314 (:REWRITE DEFAULT-+-2))
 (350 304 (:REWRITE DEFAULT-*-2))
 (346 304 (:REWRITE DEFAULT-*-1))
 (318 314 (:REWRITE DEFAULT-+-1))
 (268 88 (:REWRITE COMMUTATIVITY-OF-+))
 (264 252 (:REWRITE DEFAULT-<-2))
 (252 252 (:REWRITE DEFAULT-<-1))
 (252 84 (:DEFINITION NFIX))
 (194 146 (:REWRITE DEFAULT-UNARY-MINUS))
 (112 28 (:REWRITE ZP-OPEN))
 (108 104 (:REWRITE DEFAULT-NUMERATOR))
 (106 104 (:REWRITE DEFAULT-DENOMINATOR))
 (96 40 (:REWRITE DEFAULT-CDR))
 (96 40 (:REWRITE DEFAULT-CAR))
 (84 84 (:DEFINITION IFIX))
 (10 4 (:REWRITE DEFAULT-UNARY-/))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 4 (:REWRITE RATIONALP-*))
 (2 2 (:REWRITE RATIONALP-UNARY-/))
 )
(STD::STRING/SYMBOL/INTEGER-LIST-P)
(STD::GENERATE-SYMBOL-FN1
 (295 3 (:DEFINITION EXPLODE-NONNEGATIVE-INTEGER))
 (156 6 (:DEFINITION FLOOR))
 (117 3 (:DEFINITION MOD))
 (108 108 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (96 6 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (93 3 (:DEFINITION DIGIT-TO-CHAR))
 (46 36 (:REWRITE DEFAULT-CAR))
 (44 34 (:REWRITE DEFAULT-CDR))
 (30 21 (:REWRITE DEFAULT-+-2))
 (30 9 (:REWRITE COMMUTATIVITY-OF-*))
 (21 21 (:REWRITE DEFAULT-<-2))
 (21 21 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-+-1))
 (21 18 (:REWRITE DEFAULT-*-2))
 (21 18 (:REWRITE DEFAULT-*-1))
 (18 6 (:REWRITE COMMUTATIVITY-OF-+))
 (18 6 (:DEFINITION NFIX))
 (14 11 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:REWRITE DEFAULT-DENOMINATOR))
 (6 6 (:DEFINITION IFIX))
 (4 1 (:REWRITE ZP-OPEN))
 )
(STD::GENERATE-SYMBOL-IN-PACKAGE-OF-SYMBOL
 (594 6 (:DEFINITION EXPLODE-NONNEGATIVE-INTEGER))
 (312 12 (:DEFINITION FLOOR))
 (234 6 (:DEFINITION MOD))
 (216 216 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (192 12 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (186 6 (:DEFINITION DIGIT-TO-CHAR))
 (60 42 (:REWRITE DEFAULT-+-2))
 (60 18 (:REWRITE COMMUTATIVITY-OF-*))
 (52 49 (:REWRITE DEFAULT-CAR))
 (42 42 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-<-1))
 (42 42 (:REWRITE DEFAULT-+-1))
 (42 36 (:REWRITE DEFAULT-*-2))
 (42 36 (:REWRITE DEFAULT-*-1))
 (36 12 (:REWRITE COMMUTATIVITY-OF-+))
 (36 12 (:DEFINITION NFIX))
 (27 21 (:REWRITE DEFAULT-UNARY-MINUS))
 (22 19 (:REWRITE DEFAULT-CDR))
 (15 3 (:REWRITE DEFAULT-COERCE-3))
 (12 12 (:REWRITE DEFAULT-NUMERATOR))
 (12 12 (:REWRITE DEFAULT-DENOMINATOR))
 (12 12 (:DEFINITION IFIX))
 (12 3 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-SYMBOL-NAME))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 )