(LRAT::MEMBER-EQUAL-MONOTONE
 (17 17 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE DEFAULT-CDR))
 )
(LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD
 (7 2 (:REWRITE LRAT::BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(LRAT::CONTRADICTION-IMPLIES-CONFLICTING-LITERALSP
 (282 68 (:REWRITE LRAT::BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (228 228 (:TYPE-PRESCRIPTION LRAT::CLAUSE-OR-ASSIGNMENT-P))
 (167 98 (:REWRITE DEFAULT-UNARY-MINUS))
 (162 162 (:REWRITE DEFAULT-CAR))
 (141 141 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (118 118 (:REWRITE DEFAULT-CDR))
 (87 29 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (78 78 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (60 17 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (27 9 (:REWRITE LRAT::NEGATE-NEGATE))
 (18 9 (:REWRITE LRAT::MINUS-MINUS))
 (9 9 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 )
(LRAT::CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY
 (304 31 (:REWRITE LRAT::BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (193 5 (:DEFINITION LRAT::LITERAL-LISTP))
 (191 6 (:DEFINITION LRAT::UNIQUE-LITERALSP))
 (103 16 (:DEFINITION MEMBER-EQUAL))
 (80 2 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (52 5 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (44 2 (:DEFINITION LRAT::CONFLICTING-LITERALSP))
 (37 37 (:REWRITE DEFAULT-CDR))
 (32 32 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (29 29 (:REWRITE DEFAULT-CAR))
 (18 6 (:REWRITE LRAT::NEGATE-NEGATE))
 (16 16 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 (12 9 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 6 (:REWRITE LRAT::MINUS-MINUS))
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(LRAT::IS-UNIT-CLAUSE-T-MONOTONE
 (535 535 (:REWRITE DEFAULT-CAR))
 (475 475 (:REWRITE DEFAULT-CDR))
 (195 98 (:REWRITE DEFAULT-UNARY-MINUS))
 (98 98 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 1 (:REWRITE LRAT::NEGATE-NEGATE))
 (3 1 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (2 2 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 (2 1 (:REWRITE LRAT::MINUS-MINUS))
 )
(LRAT::SUBSETP-TRANSITIVE
 (113 23 (:DEFINITION MEMBER-EQUAL))
 (43 43 (:REWRITE DEFAULT-CAR))
 (32 32 (:REWRITE DEFAULT-CDR))
 (25 25 (:REWRITE LRAT::IS-UNIT-CLAUSE-T-MONOTONE))
 )
(LRAT::NOT-MEMBER-IS-UNIT-CLAUSE
 (168 168 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (133 133 (:REWRITE DEFAULT-CAR))
 (114 114 (:REWRITE DEFAULT-CDR))
 (78 39 (:REWRITE DEFAULT-UNARY-MINUS))
 (39 39 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(LRAT::CLAUSE-OR-ASSIGNMENT-P-CONS-IS-UNIT-CLAUSE
 (2293 282 (:REWRITE LRAT::BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (685 112 (:DEFINITION MEMBER-EQUAL))
 (641 12 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (333 333 (:REWRITE DEFAULT-CDR))
 (315 38 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (312 6 (:DEFINITION LRAT::IS-UNIT-CLAUSE))
 (251 251 (:REWRITE DEFAULT-CAR))
 (225 225 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (180 12 (:DEFINITION LRAT::EVALUATE-LITERAL))
 (163 86 (:REWRITE LRAT::CONTRADICTION-IMPLIES-CONFLICTING-LITERALSP))
 (150 6 (:DEFINITION LRAT::EVALUATE-CLAUSE))
 (98 52 (:REWRITE DEFAULT-UNARY-MINUS))
 (46 46 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (24 24 (:TYPE-PRESCRIPTION LRAT::EVALUATE-CLAUSE))
 (12 12 (:DEFINITION LRAT::UNDEFP$INLINE))
 (7 7 (:REWRITE LRAT::MINUS-MINUS))
 (1 1 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 )
(LRAT::IS-UNIT-CLAUSE-T-MONOTONE-ALT
 (108 54 (:TYPE-PRESCRIPTION LRAT::LITERALP-IS-UNIT-CLAUSE))
 (1 1 (:REWRITE LRAT::SUBSETP-TRANSITIVE))
 )
(LRAT::CONS-PRESERVES-SUBSETP
 (92 20 (:REWRITE LRAT::SUBSETP-TRANSITIVE))
 (56 56 (:REWRITE DEFAULT-CAR))
 (26 26 (:REWRITE DEFAULT-CDR))
 (16 16 (:REWRITE LRAT::IS-UNIT-CLAUSE-T-MONOTONE))
 )
(LRAT::IS-UNIT-CLAUSE-IMPLIES-NOT-MEMBER-CAR
 (49 5 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (18 18 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (8 8 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(LRAT::EVALUATE-CLAUSE-NIL-IMPLIES-IS-UNIT-CLAUSE-T
 (82 82 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (64 64 (:REWRITE DEFAULT-CAR))
 (53 53 (:REWRITE DEFAULT-CDR))
 (40 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (20 20 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE LRAT::IS-UNIT-CLAUSE-T-MONOTONE-ALT))
 )
(LRAT::SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL
 (127 127 (:REWRITE DEFAULT-CAR))
 (114 114 (:REWRITE DEFAULT-CDR))
 (88 8 (:DEFINITION SUBSETP-EQUAL))
 (56 29 (:REWRITE DEFAULT-UNARY-MINUS))
 (29 29 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (16 16 (:REWRITE LRAT::SUBSETP-TRANSITIVE))
 (16 16 (:REWRITE LRAT::IS-UNIT-CLAUSE-T-MONOTONE))
 (12 2 (:REWRITE LRAT::NEGATE-NEGATE))
 (6 2 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (4 4 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 (4 2 (:REWRITE LRAT::MINUS-MINUS))
 )
(LRAT::IS-UNIT-CLAUSE-UNCHANGED
 (717 717 (:REWRITE DEFAULT-CAR))
 (695 695 (:REWRITE DEFAULT-CDR))
 (363 182 (:REWRITE DEFAULT-UNARY-MINUS))
 (182 182 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (132 12 (:DEFINITION SUBSETP-EQUAL))
 (41 12 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (24 24 (:REWRITE LRAT::SUBSETP-TRANSITIVE))
 (24 24 (:REWRITE LRAT::IS-UNIT-CLAUSE-T-MONOTONE))
 (6 1 (:REWRITE LRAT::NEGATE-NEGATE))
 (4 4 (:REWRITE LRAT::IS-UNIT-CLAUSE-T-MONOTONE-ALT))
 (3 1 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (2 2 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 (2 1 (:REWRITE LRAT::MINUS-MINUS))
 )
(LRAT::UNIT-PROPAGATION-2
 (20 10 (:TYPE-PRESCRIPTION LRAT::LITERALP-IS-UNIT-CLAUSE))
 (10 10 (:TYPE-PRESCRIPTION LRAT::LITERAL-LISTP))
 (6 6 (:TYPE-PRESCRIPTION ADD-TO-SET-EQUAL))
 )
(LRAT::IS-UNIT-CLAUSE-SUPERSET
 (1129 1129 (:REWRITE DEFAULT-CAR))
 (1062 1062 (:REWRITE DEFAULT-CDR))
 (701 302 (:REWRITE DEFAULT-UNARY-MINUS))
 (361 300 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (71 50 (:REWRITE LRAT::SUBSETP-TRANSITIVE))
 (46 7 (:REWRITE LRAT::NEGATE-NEGATE))
 (42 42 (:REWRITE LRAT::IS-UNIT-CLAUSE-T-MONOTONE))
 (42 2 (:REWRITE LRAT::IS-UNIT-CLAUSE-UNCHANGED))
 (34 7 (:REWRITE LRAT::MINUS-MINUS))
 (15 5 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (14 14 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 )
(LRAT::CLAUSE-OR-ASSIGNMENT-P-CONS
 (567 72 (:REWRITE LRAT::BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (152 3 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (75 75 (:REWRITE DEFAULT-CDR))
 (75 9 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (54 54 (:REWRITE DEFAULT-CAR))
 (46 46 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (22 22 (:REWRITE LRAT::CONTRADICTION-IMPLIES-CONFLICTING-LITERALSP))
 (19 11 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 )
(LRAT::CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS
 (58 5 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (15 15 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (10 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(LRAT::UNIT-PROPAGATION-T-MONOTONE
 (67864 1042 (:DEFINITION LRAT::EVALUATE-CLAUSE))
 (52292 1196 (:REWRITE LRAT::EVALUATE-CLAUSE-NIL-IMPLIES-IS-UNIT-CLAUSE-T))
 (14615 14335 (:REWRITE DEFAULT-CAR))
 (11832 11679 (:REWRITE DEFAULT-CDR))
 (8222 8222 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 (6830 1674 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (6477 23 (:REWRITE LRAT::IS-UNIT-CLAUSE-T-MONOTONE-ALT))
 (6127 2624 (:REWRITE LRAT::SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (4482 2704 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (4025 1835 (:REWRITE DEFAULT-UNARY-MINUS))
 (2292 1146 (:DEFINITION NULL))
 (1504 1448 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (384 384 (:TYPE-PRESCRIPTION LRAT::EVALUATE-LITERAL))
 (280 88 (:REWRITE LRAT::IS-UNIT-CLAUSE-T-MONOTONE))
 (266 101 (:REWRITE LRAT::SUBSETP-TRANSITIVE))
 (153 127 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (41 41 (:REWRITE DEFAULT-<-2))
 (41 41 (:REWRITE DEFAULT-<-1))
 )
(LRAT::UNIT-PROPAGATION-MONOTONICITY
 (163313 2192 (:DEFINITION LRAT::EVALUATE-CLAUSE))
 (128974 3114 (:REWRITE LRAT::EVALUATE-CLAUSE-NIL-IMPLIES-IS-UNIT-CLAUSE-T))
 (36114 35290 (:REWRITE DEFAULT-CAR))
 (28739 28323 (:REWRITE DEFAULT-CDR))
 (21287 6097 (:REWRITE LRAT::SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (17285 17285 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 (14795 3469 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (9218 5466 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (8993 4109 (:REWRITE DEFAULT-UNARY-MINUS))
 (5782 2891 (:DEFINITION NULL))
 (3158 3074 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2039 586 (:REWRITE LRAT::UNIT-PROPAGATION-T-MONOTONE))
 (2022 109 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-UNIT-PROPAGATION))
 (1140 1140 (:TYPE-PRESCRIPTION LRAT::EVALUATE-LITERAL))
 (766 289 (:REWRITE LRAT::SUBSETP-TRANSITIVE))
 (414 222 (:REWRITE LRAT::IS-UNIT-CLAUSE-T-MONOTONE))
 (262 177 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (47 47 (:REWRITE DEFAULT-<-2))
 (47 47 (:REWRITE DEFAULT-<-1))
 )