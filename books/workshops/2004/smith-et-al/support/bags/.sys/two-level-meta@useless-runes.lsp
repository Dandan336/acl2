(BAG::SYNTAX-DECONSP)
(BAG::SYNTAX-SUBBAGP-LIST-FN
 (1596 19 (:REWRITE LIST::EQUAL-OF-IF-HACK))
 (1432 188 (:DEFINITION LEN))
 (662 376 (:REWRITE LIST::LEN-OF-NON-CONSP))
 (650 325 (:REWRITE DEFAULT-+-2))
 (637 637 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (592 568 (:REWRITE DEFAULT-CDR))
 (580 51 (:LINEAR LIST::LEN-LINEAR))
 (445 16 (:LINEAR LIST::LEN-OF-CDR-LINEAR))
 (371 325 (:REWRITE DEFAULT-+-1))
 (350 295 (:REWRITE DEFAULT-CAR))
 (231 51 (:LINEAR LIST::LEN-WHEN-CONSP-LINEAR))
 (222 102 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (148 1 (:LINEAR LIST::ACL2-COUNT-OF-CAR-BOUND-WEAK))
 (148 1 (:LINEAR LIST::ACL2-COUNT-OF-CAR-BOUND-TIGHT))
 (140 28 (:DEFINITION INTEGER-ABS))
 (102 102 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (102 102 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (85 85 (:REWRITE LIST::TRUE-LISTP-OF-NON-CONSP-CHEAP))
 (72 18 (:DEFINITION SYMBOL-LISTP))
 (51 51 (:LINEAR SYN::LEN-IMPLIES-ACL2-LEN))
 (47 47 (:TYPE-PRESCRIPTION BOOLEANP))
 (42 35 (:REWRITE DEFAULT-<-2))
 (41 41 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (36 35 (:REWRITE DEFAULT-<-1))
 (33 33 (:REWRITE DEFAULT-COERCE-2))
 (33 33 (:REWRITE DEFAULT-COERCE-1))
 (30 15 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (28 28 (:REWRITE DEFAULT-UNARY-MINUS))
 (22 22 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (14 14 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (14 14 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (14 14 (:REWRITE DEFAULT-REALPART))
 (14 14 (:REWRITE DEFAULT-NUMERATOR))
 (14 14 (:REWRITE DEFAULT-IMAGPART))
 (14 14 (:REWRITE DEFAULT-DENOMINATOR))
 (4 1 (:REWRITE LIST::LEN-EQUAL-0-REWRITE))
 (2 2 (:REWRITE EQUAL-CONSTANT-+))
 )
(BAG::SYNTAX-SUBBAGP-LIST-IRRELEVANT
 (406 406 (:REWRITE DEFAULT-CDR))
 (142 142 (:REWRITE DEFAULT-CAR))
 (130 130 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (53 53 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (53 53 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (50 50 (:TYPE-PRESCRIPTION BOOLEANP))
 (5 1 (:REWRITE LIST::EQUAL-OF-IF-HACK))
 )
(BAG::SYNTAX-SUBBAGP-LIST-WRAPPER
 (372 4 (:REWRITE LIST::EQUAL-OF-IF-HACK))
 (300 40 (:DEFINITION LEN))
 (172 12 (:DEFINITION LENGTH))
 (152 152 (:TYPE-PRESCRIPTION LEN))
 (142 138 (:REWRITE DEFAULT-CDR))
 (140 80 (:REWRITE LIST::LEN-OF-NON-CONSP))
 (136 12 (:LINEAR LIST::LEN-LINEAR))
 (133 133 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (108 4 (:LINEAR LIST::LEN-OF-CDR-LINEAR))
 (88 44 (:REWRITE DEFAULT-+-2))
 (80 68 (:REWRITE DEFAULT-CAR))
 (56 12 (:LINEAR LIST::LEN-WHEN-CONSP-LINEAR))
 (50 23 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (44 44 (:REWRITE DEFAULT-+-1))
 (26 26 (:REWRITE LIST::TRUE-LISTP-OF-NON-CONSP-CHEAP))
 (23 23 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (23 23 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (18 18 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (16 16 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (16 4 (:DEFINITION SYMBOL-LISTP))
 (12 12 (:LINEAR SYN::LEN-IMPLIES-ACL2-LEN))
 (11 11 (:TYPE-PRESCRIPTION BOOLEANP))
 (8 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:TYPE-PRESCRIPTION BAG::SYNTAX-SUBBAGP-LIST-WRAPPER))
 )
(BAG::SYNTAX-SUBBAGP-IMPLIES-ANY-SUBBAGP
 (818 818 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (304 297 (:REWRITE DEFAULT-CDR))
 (113 113 (:REWRITE DEFAULT-CAR))
 (68 34 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (63 7 (:REWRITE BAG::NON-UNIQUE-NOT-SUBBAGP-OF-UNIQUE))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-33))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-32))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-31))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-30))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-29))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-28))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-27))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-26))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-25))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-24))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-23))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-22))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-21))
 (61 36 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-20))
 (57 32 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-9))
 (57 32 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-8))
 (57 32 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-3))
 (57 32 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-2))
 (57 32 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-18))
 (57 32 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-17))
 (57 32 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-16))
 (57 32 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-15))
 (57 32 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-14))
 (57 32 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-13))
 (57 32 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-12))
 (57 32 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-11))
 (57 32 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-10))
 (34 34 (:TYPE-PRESCRIPTION BOOLEANP))
 (34 34 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (34 34 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (28 7 (:REWRITE BAG::SUBBAGP-WHEN-CDR-IS-NON-CONSP))
 (14 14 (:TYPE-PRESCRIPTION BAG::UNIQUE))
 (14 7 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO))
 (14 7 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE))
 (12 12 (:TYPE-PRESCRIPTION BAG::BOOLEANP-OF-MV-NTH-0-OF-SYNTAX-REMOVE-BAG-1))
 (10 10 (:REWRITE BAG::BIND-SUBBAGP-REMOVE-BAG))
 (9 3 (:REWRITE BAG::V0-REMOVE-1-SUBBAGP))
 (9 3 (:REWRITE BAG::SYNTAX-SUBBAGP-HELPER-IMPLEMENTS-SUBBAGP))
 (9 3 (:REWRITE BAG::SYNTAX-REMOVE-BAG-1-IMPLEMENTS-SUBBAGP))
 (7 7 (:REWRITE BAG::UNIQUE-SUBBAGP-UNIQUE-FREE))
 (7 7 (:REWRITE BAG::UNIQUE-OF-NON-CONSP-CHEAP))
 (7 7 (:REWRITE BAG::UNIQUE-IF-PERM-OF-SOMETHING-UNIQUE))
 (7 7 (:REWRITE BAG::UNIQUE-COMPUTATION))
 (7 7 (:REWRITE BAG::SUBBAGP-UNIQUENESS))
 (7 7 (:REWRITE BAG::SUBBAGP-REMOVE-BAG))
 (7 7 (:REWRITE BAG::SUBBAGP-REMOVE))
 (7 7 (:REWRITE BAG::SUBBAGP-OF-REMOVE-1-IMPLIES-SUBBAGP))
 (7 7 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO-CHEAP))
 (7 7 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE-CHEAP))
 (7 7 (:REWRITE BAG::SUBBAGP-NIL-FROM-<-OF-COUNTS))
 (7 7 (:REWRITE BAG::SUBBAGP-FALSE-FROM-WITNESS))
 (7 7 (:REWRITE BAG::SUBBAGP-CHAINING))
 (7 7 (:REWRITE BAG::*TRIGGER*-SYNTAX-EV-SYNTAX-SUBBAGP))
 (6 6 (:TYPE-PRESCRIPTION BAG::BOOLEANP-OF-MV-NTH-0-OF-SYNTAX-SUBBAGP-HELPER))
 (3 3 (:REWRITE BAG::V1-SYNTAX-REMOVE-BAG-IMPLICATION))
 )
(BAG::*META*-SUBBAGP-LIST
 (118 118 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (21 21 (:REWRITE DEFAULT-CDR))
 (13 6 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-33))
 (13 6 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-32))
 (13 6 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-31))
 (13 6 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-30))
 (13 6 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-29))
 (13 6 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-28))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-9))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-8))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-3))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-26))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-25))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-24))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-23))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-22))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-21))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-20))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-19))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-18))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-17))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-16))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-15))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-14))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-13))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-12))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-11))
 (12 5 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-10))
 (8 8 (:REWRITE DEFAULT-CAR))
 (7 4 (:REWRITE BAG::SYNTAX-EV-CONSTRAINT-1))
 (6 3 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (3 3 (:TYPE-PRESCRIPTION BOOLEANP))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )