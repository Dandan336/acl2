(TER::<
 (870 435 (:TYPE-PRESCRIPTION TER::TERMP-NULLP))
 (435 435 (:TYPE-PRESCRIPTION TER::NULLP))
 (108 53 (:REWRITE DEFAULT-+-2))
 (64 53 (:REWRITE DEFAULT-+-1))
 (39 39 (:REWRITE DEFAULT-CDR))
 (24 6 (:REWRITE COMMUTATIVITY-OF-+))
 (24 6 (:DEFINITION INTEGER-ABS))
 (24 3 (:DEFINITION LENGTH))
 (19 19 (:REWRITE DEFAULT-CAR))
 (19 1 (:REWRITE O<=-O-FINP-DEF))
 (16 14 (:REWRITE DEFAULT-<-2))
 (15 14 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 3 (:REWRITE O-INFP->NEQ-0))
 (4 1 (:REWRITE O-P-O-INFP-CAR))
 (4 1 (:REWRITE AC-<))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 (2 1 (:REWRITE O-INFP-O-FINP-O<=))
 (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
 (1 1 (:REWRITE O-P-DEF-O-FINP-1))
 )
(TER::IRREFLEXIVITY-OF-<
 (52 26 (:REWRITE DEFAULT-+-2))
 (30 30 (:REWRITE DEFAULT-CDR))
 (26 26 (:REWRITE DEFAULT-+-1))
 (14 7 (:REWRITE DEFAULT-<-2))
 (14 7 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-CAR))
 )
(TER::TRANSITIVITY-OF-<
 (1026 513 (:REWRITE DEFAULT-+-2))
 (525 525 (:REWRITE DEFAULT-CDR))
 (513 513 (:REWRITE DEFAULT-+-1))
 (405 252 (:REWRITE DEFAULT-<-1))
 (393 252 (:REWRITE DEFAULT-<-2))
 (232 232 (:REWRITE DEFAULT-CAR))
 (98 98 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(TER::ANTI-SYMMETRY-OF-<
 (264 132 (:REWRITE DEFAULT-+-2))
 (140 140 (:REWRITE DEFAULT-CDR))
 (132 132 (:REWRITE DEFAULT-+-1))
 (89 48 (:REWRITE DEFAULT-<-2))
 (87 48 (:REWRITE DEFAULT-<-1))
 (36 36 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE TER::TRANSITIVITY-OF-<))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(TER::TRICHOTOMY-OF-<
 (1414 707 (:TYPE-PRESCRIPTION TER::TERMP-NULLP))
 (707 707 (:TYPE-PRESCRIPTION TER::NULLP))
 (484 242 (:REWRITE DEFAULT-+-2))
 (372 28 (:REWRITE TER::ANTI-SYMMETRY-OF-<))
 (266 266 (:REWRITE DEFAULT-CDR))
 (242 242 (:REWRITE DEFAULT-+-1))
 (159 105 (:REWRITE DEFAULT-<-2))
 (159 105 (:REWRITE DEFAULT-<-1))
 (138 138 (:REWRITE DEFAULT-CAR))
 (42 42 (:REWRITE TER::TRANSITIVITY-OF-<))
 (14 14 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(TER::TERM->O-P)
(TER::TERM->O-P-O-FIRST-EXPT
 (81 9 (:LINEAR O-FIRST-EXPT-<=))
 (57 12 (:REWRITE O-P-DEF-O-FINP-1))
 (20 4 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (18 9 (:REWRITE DEFAULT-+-2))
 (12 3 (:REWRITE MAKE-ORD-EQUAL-4))
 (9 9 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE DEFAULT-CAR))
 (1 1 (:TYPE-PRESCRIPTION MAKE-ORD))
 )
(TER::TERM->O-P
 (156 156 (:REWRITE DEFAULT-CAR))
 (98 98 (:REWRITE DEFAULT-CDR))
 (83 11 (:REWRITE MAKE-ORD-EQUAL-4))
 (79 76 (:REWRITE DEFAULT-<-1))
 (77 76 (:REWRITE DEFAULT-<-2))
 (74 41 (:REWRITE DEFAULT-+-2))
 (41 41 (:REWRITE DEFAULT-+-1))
 (27 27 (:TYPE-PRESCRIPTION TER::TERM->O-P))
 (23 2 (:REWRITE O<=-O-FINP-DEF))
 (18 18 (:TYPE-PRESCRIPTION O-FINP))
 (16 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 2 (:REWRITE AC-<))
 (5 1 (:REWRITE O-FIRST-EXPT-<))
 (4 2 (:REWRITE O-INFP-O-FINP-O<=))
 (3 2 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (2 2 (:REWRITE |a < b & b < c  =>  a < c|))
 (2 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:TYPE-PRESCRIPTION MAKE-ORD))
 (1 1 (:REWRITE O-FIRST-COEFF-<))
 )
(TER::TECHNICAL-LEMMA
 (36 18 (:TYPE-PRESCRIPTION TER::TERMP-NULLP))
 (22 12 (:REWRITE DEFAULT-+-2))
 (22 4 (:REWRITE MAKE-ORD-EQUAL-4))
 (18 18 (:TYPE-PRESCRIPTION TER::NULLP))
 (16 16 (:REWRITE DEFAULT-CDR))
 (13 1 (:REWRITE O<=-O-FINP-DEF))
 (12 12 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE DEFAULT-CAR))
 (6 6 (:TYPE-PRESCRIPTION TER::TERM->O-P))
 (5 4 (:REWRITE DEFAULT-<-2))
 (5 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION O-FINP))
 (3 1 (:REWRITE AC-<))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 1 (:REWRITE O-INFP-O-FINP-O<=))
 (1 1 (:TYPE-PRESCRIPTION MAKE-ORD))
 (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
 )
(TER::O-P-TERM->O-P
 (292 146 (:TYPE-PRESCRIPTION TER::TERMP-NULLP))
 (146 146 (:TYPE-PRESCRIPTION TER::NULLP))
 (30 5 (:REWRITE O-P-DEF-O-FINP-1))
 (23 23 (:REWRITE DEFAULT-CAR))
 (15 15 (:TYPE-PRESCRIPTION TER::TERM->O-P))
 (10 10 (:TYPE-PRESCRIPTION O-FINP))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE DEFAULT-CDR))
 )
(TER::WELL-ORDERING-OF-<
 (658 658 (:TYPE-PRESCRIPTION TER::NULLP))
 (488 250 (:REWRITE DEFAULT-+-2))
 (306 306 (:REWRITE DEFAULT-CDR))
 (250 250 (:REWRITE DEFAULT-+-1))
 (212 212 (:REWRITE DEFAULT-CAR))
 (183 119 (:REWRITE DEFAULT-<-2))
 (182 14 (:REWRITE O-FIRST-EXPT-O-INFP))
 (181 119 (:REWRITE DEFAULT-<-1))
 (179 19 (:REWRITE O-INFP-O-FINP-O<=))
 (168 21 (:REWRITE O-FIRST-COEFF-<))
 (142 19 (:REWRITE O<=-O-FINP-DEF))
 (139 38 (:REWRITE AC-<))
 (134 20 (:REWRITE MAKE-ORD-EQUAL-4))
 (70 38 (:REWRITE |a < b & b < c  =>  a < c|))
 (44 22 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (33 33 (:REWRITE TER::TRANSITIVITY-OF-<))
 (28 14 (:REWRITE O-INFP->NEQ-0))
 (24 24 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 6 (:REWRITE O-FIRST-COEFF-DEF-O-FINP))
 (6 6 (:REWRITE MAKE-ORD-O-FIRST-COEFF))
 (2 2 (:REWRITE |~(a < a)|))
 )
(TER::<-HAS-FIRST
 (176 176 (:REWRITE DEFAULT-CAR))
 (125 63 (:REWRITE DEFAULT-+-2))
 (74 51 (:REWRITE DEFAULT-<-2))
 (74 51 (:REWRITE DEFAULT-<-1))
 (73 18 (:REWRITE O-INFP->NEQ-0))
 (64 64 (:REWRITE DEFAULT-CDR))
 (63 63 (:REWRITE DEFAULT-+-1))
 (33 33 (:TYPE-PRESCRIPTION O-FINP))
 (33 11 (:REWRITE O-FIRST-EXPT-O-INFP))
 (22 11 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
 (21 21 (:REWRITE TER::TRANSITIVITY-OF-<))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(TER::<-COMPATIBLE-*-1
 (21493 112 (:REWRITE TER::ANTI-SYMMETRY-OF-<))
 (12151 332 (:REWRITE TER::<-HAS-FIRST))
 (8634 4261 (:TYPE-PRESCRIPTION TER::TERMP-NULLP))
 (6787 332 (:REWRITE TER::TRICHOTOMY-OF-<))
 (5484 5484 (:TYPE-PRESCRIPTION TER::NULLP))
 (4518 4518 (:TYPE-PRESCRIPTION TER::*))
 (3614 1849 (:REWRITE DEFAULT-+-2))
 (3163 2795 (:REWRITE DEFAULT-CAR))
 (3146 2754 (:REWRITE DEFAULT-CDR))
 (1899 1849 (:REWRITE DEFAULT-+-1))
 (1832 281 (:DEFINITION TER::NULLP))
 (1714 128 (:REWRITE TER::*-IDENTITY-2))
 (1448 1036 (:REWRITE DEFAULT-<-2))
 (1448 1036 (:REWRITE DEFAULT-<-1))
 (1252 128 (:REWRITE TER::*-IDENTITY-1))
 (552 552 (:TYPE-PRESCRIPTION TER::TERMP-*))
 (424 332 (:REWRITE TER::TRANSITIVITY-OF-<))
 (296 296 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (224 28 (:REWRITE CONS-EQUAL))
 (4 4 (:REWRITE TER::IRREFLEXIVITY-OF-<))
 (2 1 (:REWRITE O-INFP->NEQ-0))
 )
(TER::<-COMPATIBLE-*-2
 (302 151 (:TYPE-PRESCRIPTION TER::TERMP-NULLP))
 (228 2 (:DEFINITION TER::<))
 (186 186 (:TYPE-PRESCRIPTION TER::NULLP))
 (162 15 (:DEFINITION TER::NATURAL-LISTP))
 (152 2 (:REWRITE TER::ANTI-SYMMETRY-OF-<))
 (104 2 (:DEFINITION TER::*))
 (84 5 (:REWRITE TER::<-HAS-FIRST))
 (68 5 (:REWRITE TER::TRICHOTOMY-OF-<))
 (54 4 (:REWRITE TER::*-IDENTITY-2))
 (49 49 (:REWRITE DEFAULT-CAR))
 (44 44 (:REWRITE DEFAULT-CDR))
 (42 7 (:DEFINITION TER::NULLP))
 (36 4 (:REWRITE TER::*-IDENTITY-1))
 (32 16 (:REWRITE DEFAULT-+-2))
 (25 20 (:REWRITE DEFAULT-<-2))
 (25 20 (:REWRITE DEFAULT-<-1))
 (18 16 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 5 (:REWRITE TER::TRANSITIVITY-OF-<))
 )