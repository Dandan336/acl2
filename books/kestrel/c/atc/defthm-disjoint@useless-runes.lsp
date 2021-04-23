(C::DEFTHM-DISJOINT-INNER-LOOP
 (47 47 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(C::PSEUDO-EVENT-FORM-LISTP-OF-DEFTHM-DISJOINT-INNER-LOOP.EVENTS
 (1059 3 (:DEFINITION EXPLODE-ATOM))
 (882 9 (:DEFINITION EXPLODE-NONNEGATIVE-INTEGER))
 (799 14 (:DEFINITION PSEUDO-EVENT-FORM-LISTP))
 (468 18 (:DEFINITION FLOOR))
 (351 9 (:DEFINITION MOD))
 (324 324 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (288 18 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (279 9 (:DEFINITION DIGIT-TO-CHAR))
 (172 30 (:REWRITE PSEUDO-EVENT-FORMP-WHEN-MEMBER-EQUAL-OF-PSEUDO-EVENT-FORM-LISTP))
 (168 28 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (140 14 (:REWRITE PSEUDO-EVENT-FORM-LISTP-OF-CDR-WHEN-PSEUDO-EVENT-FORM-LISTP))
 (128 14 (:REWRITE PSEUDO-EVENT-FORMP-OF-CAR-WHEN-PSEUDO-EVENT-FORM-LISTP))
 (112 14 (:DEFINITION TRUE-LISTP))
 (91 7 (:DEFINITION MEMBER-EQUAL))
 (90 63 (:REWRITE DEFAULT-+-2))
 (90 27 (:REWRITE COMMUTATIVITY-OF-*))
 (90 11 (:DEFINITION BINARY-APPEND))
 (73 73 (:REWRITE DEFAULT-CAR))
 (70 10 (:REWRITE SUBSETP-CAR-MEMBER))
 (63 63 (:REWRITE DEFAULT-+-1))
 (63 54 (:REWRITE DEFAULT-*-2))
 (63 54 (:REWRITE DEFAULT-*-1))
 (61 61 (:REWRITE DEFAULT-CDR))
 (59 59 (:REWRITE DEFAULT-<-2))
 (59 59 (:REWRITE DEFAULT-<-1))
 (57 57 (:REWRITE PSEUDO-EVENT-FORM-LISTP-WHEN-NOT-CONSP))
 (56 56 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (56 28 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (54 18 (:REWRITE COMMUTATIVITY-OF-+))
 (54 18 (:DEFINITION NFIX))
 (48 18 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (39 39 (:REWRITE SUBSETP-TRANS2))
 (39 39 (:REWRITE SUBSETP-TRANS))
 (39 30 (:REWRITE DEFAULT-UNARY-MINUS))
 (36 36 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (35 35 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (35 35 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (35 5 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (28 28 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (28 28 (:REWRITE SET::IN-SET))
 (21 21 (:REWRITE DEFAULT-NUMERATOR))
 (21 21 (:REWRITE DEFAULT-DENOMINATOR))
 (21 9 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (18 18 (:DEFINITION IFIX))
 (17 1 (:REWRITE SUBSETP-OF-CONS))
 (14 14 (:REWRITE SUBSETP-MEMBER . 2))
 (14 14 (:REWRITE SUBSETP-MEMBER . 1))
 (9 9 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (9 3 (:REWRITE ZP-OPEN))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 1 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP-EXPLODE-NONNEGATIVE-INTEGER))
 (6 6 (:TYPE-PRESCRIPTION EXPLODE-NONNEGATIVE-INTEGER))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 (5 1 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (5 1 (:REWRITE DEFAULT-COERCE-3))
 (3 3 (:REWRITE DEFAULT-SYMBOL-NAME))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 )
(C::SYMBOL-LISTP-OF-DEFTHM-DISJOINT-INNER-LOOP.NAMES
 (1059 3 (:DEFINITION EXPLODE-ATOM))
 (882 9 (:DEFINITION EXPLODE-NONNEGATIVE-INTEGER))
 (468 18 (:DEFINITION FLOOR))
 (351 9 (:DEFINITION MOD))
 (324 324 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (288 18 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (279 9 (:DEFINITION DIGIT-TO-CHAR))
 (90 63 (:REWRITE DEFAULT-+-2))
 (90 27 (:REWRITE COMMUTATIVITY-OF-*))
 (90 11 (:DEFINITION BINARY-APPEND))
 (63 63 (:REWRITE DEFAULT-+-1))
 (63 54 (:REWRITE DEFAULT-*-2))
 (63 54 (:REWRITE DEFAULT-*-1))
 (59 59 (:REWRITE DEFAULT-<-2))
 (59 59 (:REWRITE DEFAULT-<-1))
 (54 18 (:REWRITE COMMUTATIVITY-OF-+))
 (54 18 (:DEFINITION NFIX))
 (48 18 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (46 46 (:REWRITE DEFAULT-CAR))
 (39 30 (:REWRITE DEFAULT-UNARY-MINUS))
 (37 37 (:REWRITE DEFAULT-CDR))
 (21 21 (:REWRITE DEFAULT-NUMERATOR))
 (21 21 (:REWRITE DEFAULT-DENOMINATOR))
 (18 18 (:DEFINITION IFIX))
 (9 3 (:REWRITE ZP-OPEN))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 1 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP-EXPLODE-NONNEGATIVE-INTEGER))
 (6 6 (:TYPE-PRESCRIPTION EXPLODE-NONNEGATIVE-INTEGER))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 (5 1 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (5 1 (:REWRITE DEFAULT-COERCE-3))
 (3 3 (:REWRITE DEFAULT-SYMBOL-NAME))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 )
(C::DEFTHM-DISJOINT-OUTER-LOOP
 (36 2 (:DEFINITION TRUE-LISTP))
 (19 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (7 7 (:REWRITE SUBSETP-TRANS2))
 (7 7 (:REWRITE SUBSETP-TRANS))
 (6 6 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (6 6 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (6 3 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 4 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (4 4 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (4 2 (:REWRITE SYMBOL-LISTP-OF-CDR-WHEN-SYMBOL-LISTP))
 (3 3 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (3 3 (:REWRITE SET::IN-SET))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(C::PSEUDO-EVENT-FORM-LISTP-OF-DEFTHM-DISJOINT-OUTER-LOOP.EVENTS
 (523 7 (:DEFINITION PSEUDO-EVENT-FORM-LISTP))
 (266 7 (:DEFINITION PSEUDO-EVENT-FORMP))
 (131 8 (:DEFINITION TRUE-LISTP))
 (112 16 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (96 16 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (66 14 (:REWRITE PSEUDO-EVENT-FORMP-WHEN-MEMBER-EQUAL-OF-PSEUDO-EVENT-FORM-LISTP))
 (62 7 (:REWRITE PSEUDO-EVENT-FORM-LISTP-OF-CDR-WHEN-PSEUDO-EVENT-FORM-LISTP))
 (61 7 (:REWRITE PSEUDO-EVENT-FORMP-OF-CAR-WHEN-PSEUDO-EVENT-FORM-LISTP))
 (54 54 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (46 46 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (42 7 (:REWRITE SYMBOLP-OF-CAR-WHEN-SYMBOL-LISTP))
 (34 1 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (32 32 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (32 16 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (30 2 (:DEFINITION MEMBER-EQUAL))
 (28 28 (:REWRITE PSEUDO-EVENT-FORM-LISTP-WHEN-NOT-CONSP))
 (28 4 (:REWRITE SUBSETP-CAR-MEMBER))
 (25 20 (:REWRITE SUBSETP-TRANS2))
 (23 23 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (22 22 (:REWRITE DEFAULT-CDR))
 (22 1 (:REWRITE SUBSETP-APPEND1))
 (21 18 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (20 20 (:REWRITE SUBSETP-TRANS))
 (19 19 (:REWRITE DEFAULT-CAR))
 (18 18 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (16 16 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (16 16 (:REWRITE SET::IN-SET))
 (16 8 (:REWRITE SYMBOL-LISTP-OF-CDR-WHEN-SYMBOL-LISTP))
 (14 14 (:REWRITE SYMBOLP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LISTP))
 (14 2 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (12 1 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (10 10 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (8 2 (:DEFINITION BINARY-APPEND))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5 1 (:DEFINITION LEN))
 (4 4 (:REWRITE SUBSETP-MEMBER . 2))
 (4 4 (:REWRITE SUBSETP-MEMBER . 1))
 (4 4 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE CONSP-OF-LIST-FIX))
 )
(C::SYMBOL-LISTP-OF-DEFTHM-DISJOINT-OUTER-LOOP.NAMES
 (22 1 (:REWRITE SUBSETP-APPEND1))
 (13 8 (:REWRITE SUBSETP-TRANS2))
 (9 9 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (8 8 (:REWRITE SUBSETP-TRANS))
 (8 2 (:DEFINITION BINARY-APPEND))
 (6 6 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (6 6 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (4 4 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(C::DEFTHM-DISJOINT-FN)
(C::PSEUDO-EVENT-FORMP-OF-DEFTHM-DISJOINT-FN
 (36 6 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (12 6 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (6 6 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (6 6 (:REWRITE SET::IN-SET))
 (3 3 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )