(NON-SUBSETP-WITNESS)
(LITERALP-NON-SUBSETP-WITNESS
 (72 12 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (24 6 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (23 23 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (15 15 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (8 8 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 )
(NON-SUBSETP-WITNESS-PROPERTY
 (576 95 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (448 448 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (320 160 (:TYPE-PRESCRIPTION LITERALP-NON-SUBSETP-WITNESS))
 (196 49 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (144 144 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (91 91 (:REWRITE DEFAULT-CAR))
 (71 71 (:REWRITE DEFAULT-CDR))
 (23 23 (:REWRITE SUBSETP-TRANSITIVE))
 (23 23 (:REWRITE IS-UNIT-CLAUSE-T-MONOTONE))
 )
(MEMBER-NEGATE-CLAUSE-OR-ASSIGNMENT
 (260 39 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (160 16 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (94 94 (:TYPE-PRESCRIPTION LITERALP))
 (74 74 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (56 56 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (54 51 (:REWRITE DEFAULT-CAR))
 (50 20 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-NEGATE-CLAUSE-OR-ASSIGNMENT))
 (47 27 (:REWRITE DEFAULT-UNARY-MINUS))
 (42 39 (:REWRITE DEFAULT-CDR))
 (42 10 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (27 3 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CONS))
 (22 22 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (21 7 (:REWRITE MEMBER-EQUAL-NEGATE-CLAUSE-OR-ASSIGNMENT))
 (16 16 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (6 2 (:REWRITE NEGATE-NEGATE))
 (4 2 (:REWRITE MINUS-MINUS))
 (2 2 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 )
(EVALUATE-CLAUSE-WHEN-MEMBER
 (436 78 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (138 36 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (120 120 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (103 103 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (97 8 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (65 65 (:REWRITE DEFAULT-CAR))
 (60 20 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (46 46 (:REWRITE DEFAULT-CDR))
 (44 11 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (36 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (20 20 (:TYPE-PRESCRIPTION LITERALP))
 (20 20 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (18 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (11 11 (:REWRITE UNIT-PROPAGATION-CORRECT))
 (11 11 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 )
(EVALUATE-FORMULA-ADD-PROOF-CLAUSE
 (574 7 (:DEFINITION EVALUATE-CLAUSE))
 (450 24 (:DEFINITION FORMULA-FAL-MAX))
 (372 31 (:DEFINITION MEMBER-EQUAL))
 (329 7 (:DEFINITION EVALUATE-LITERAL))
 (274 24 (:DEFINITION MAX))
 (189 32 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (177 7 (:REWRITE FORMULA-FAL-MAX-IS-MAX))
 (158 158 (:REWRITE DEFAULT-CAR))
 (142 142 (:REWRITE DEFAULT-CDR))
 (102 49 (:REWRITE DEFAULT-<-1))
 (93 24 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (88 88 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (78 49 (:REWRITE DEFAULT-<-2))
 (70 70 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (69 69 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (56 14 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (44 7 (:REWRITE ZP-OPEN))
 (42 14 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (39 3 (:DEFINITION FORMULA-FAL-P))
 (35 35 (:TYPE-PRESCRIPTION TRUE-LISTP-LOOKUP-FORMULA-INDEX))
 (30 30 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (28 28 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 (23 23 (:TYPE-PRESCRIPTION EVALUATE-CLAUSE))
 (23 23 (:REWRITE DEFAULT-+-2))
 (23 23 (:REWRITE DEFAULT-+-1))
 (16 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 14 (:REWRITE UNIT-PROPAGATION-CORRECT))
 (14 14 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (14 14 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (14 14 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR-HONS-ASSOC-EQUAL))
 (14 14 (:DEFINITION UNDEFP$INLINE))
 (14 2 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (12 2 (:REWRITE SATISFIABLE-ADD-PROOF-CLAUSE-RUP-1-1-1))
 (7 7 (:REWRITE EVALUATE-FORMULA-FAL-T-IMPLIES-EVALUATE-CLAUSE-T))
 (4 4 (:TYPE-PRESCRIPTION LITERALP))
 (3 1 (:DEFINITION POSP))
 (2 2 (:REWRITE TRUTH-MONOTONE))
 )
(CLAUSE-OR-ASSIGNMENT-P-CONS-BETTER
 (1112 84 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (961 166 (:REWRITE BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (720 14 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (263 42 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (253 2 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CONS))
 (166 166 (:REWRITE DEFAULT-CDR))
 (138 26 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (132 132 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (121 121 (:REWRITE DEFAULT-CAR))
 (51 51 (:REWRITE NOT-CONFLICTING-LITERALSP-SUBSETP))
 (51 51 (:REWRITE CONTRADICTION-IMPLIES-CONFLICTING-LITERALSP))
 (44 24 (:REWRITE DEFAULT-UNARY-MINUS))
 (42 42 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (41 41 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (20 20 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 )
(SAT-DRAT-CLAIM-1
 (130 28 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (114 6 (:DEFINITION NON-SUBSETP-WITNESS))
 (78 10 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (46 46 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (46 7 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (42 42 (:REWRITE DEFAULT-CAR))
 (38 13 (:REWRITE DEFAULT-UNARY-MINUS))
 (35 7 (:DEFINITION NEGATE-CLAUSE-OR-ASSIGNMENT))
 (33 33 (:REWRITE DEFAULT-CDR))
 (24 6 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (21 21 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (10 10 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (6 6 (:TYPE-PRESCRIPTION LITERALP))
 (6 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE TRUTH-MONOTONE))
 )