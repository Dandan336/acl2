(VL2014::VL-BIT-P)
(VL2014::TYPE-WHEN-VL-BIT-P)
(VL2014::VL-BIT-P-POSSIBILITIES)
(VL2014::VL-BIT-FIX$INLINE)
(VL2014::RETURN-TYPE-OF-VL-BIT-FIX)
(VL2014::VL-BIT-FIX-IDEMPOTENT)
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT)
(VL2014::VL-BIT-EQUIV$INLINE)
(VL2014::VL-BIT-EQUIV-IS-AN-EQUIVALENCE)
(VL2014::VL-BIT-EQUIV-IMPLIES-EQUAL-VL-BIT-FIX-1)
(VL2014::VL-BIT-FIX-UNDER-VL-BIT-EQUIV)
(VL2014::VL-BITLIST-P)
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(STD::DEFLIST-LOCAL-ELEMENTP-OF-NIL-THM)
(VL2014::VL-BITLIST-P-OF-CONS)
(VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P)
(VL2014::VL-BITLIST-P-WHEN-NOT-CONSP)
(VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P)
(VL2014::VL-BITLIST-P-OF-APPEND)
(VL2014::VL-BITLIST-P-OF-LIST-FIX)
(VL2014::VL-BITLIST-P-OF-SFIX)
(VL2014::VL-BITLIST-P-OF-INSERT)
(VL2014::VL-BITLIST-P-OF-DELETE)
(VL2014::VL-BITLIST-P-OF-MERGESORT)
(VL2014::VL-BITLIST-P-OF-UNION)
(VL2014::VL-BITLIST-P-OF-INTERSECT-1)
(VL2014::VL-BITLIST-P-OF-INTERSECT-2)
(VL2014::VL-BITLIST-P-OF-DIFFERENCE)
(VL2014::VL-BITLIST-P-OF-DUPLICATED-MEMBERS)
(VL2014::VL-BITLIST-P-OF-REV)
(VL2014::VL-BITLIST-P-OF-RCONS)
(VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P)
(VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL)
(VL2014::VL-BITLIST-P-SET-EQUIV-CONGRUENCE)
(VL2014::VL-BITLIST-P-OF-SET-DIFFERENCE-EQUAL)
(VL2014::VL-BITLIST-P-OF-INTERSECTION-EQUAL-1)
(VL2014::VL-BITLIST-P-OF-INTERSECTION-EQUAL-2)
(VL2014::VL-BITLIST-P-OF-UNION-EQUAL)
(VL2014::VL-BITLIST-P-OF-TAKE)
(VL2014::VL-BITLIST-P-OF-REPEAT)
(VL2014::VL-BIT-P-OF-NTH-WHEN-VL-BITLIST-P)
(VL2014::VL-BITLIST-P-OF-UPDATE-NTH)
(VL2014::VL-BITLIST-P-OF-BUTLAST)
(VL2014::VL-BITLIST-P-OF-NTHCDR)
(VL2014::VL-BITLIST-P-OF-LAST)
(VL2014::VL-BITLIST-P-OF-REMOVE)
(VL2014::VL-BITLIST-P-OF-REVAPPEND)
(VL2014::VL-BITLIST-FIX$INLINE)
(VL2014::VL-BITLIST-P-OF-VL-BITLIST-FIX
 (30 1 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (22 2 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (20 12 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (15 1 (:DEFINITION VL2014::VL-BITLIST-P))
 (12 6 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (8 8 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (4 4 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (4 4 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (2 2 (:REWRITE FTY::OPEN-MEMBER-EQUAL-ON-LIST-OF-TAGS))
 (2 1 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 )
(VL2014::VL-BITLIST-FIX-WHEN-VL-BITLIST-P
 (32 4 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (28 24 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (13 3 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (9 6 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (4 4 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (1 1 (:REWRITE FTY::OPEN-MEMBER-EQUAL-ON-LIST-OF-TAGS))
 )
(VL2014::VL-BITLIST-FIX$INLINE
 (40 5 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (29 4 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (24 20 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (13 10 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (10 10 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 (4 4 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (1 1 (:REWRITE FTY::OPEN-MEMBER-EQUAL-ON-LIST-OF-TAGS))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (2 2 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (1 1 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 )
(VL2014::VL-BITLIST-EQUIV$INLINE)
(VL2014::VL-BITLIST-EQUIV-IS-AN-EQUIVALENCE)
(VL2014::VL-BITLIST-EQUIV-IMPLIES-EQUAL-VL-BITLIST-FIX-1)
(VL2014::VL-BITLIST-FIX-UNDER-VL-BITLIST-EQUIV)
(VL2014::EQUAL-OF-VL-BITLIST-FIX-1-FORWARD-TO-VL-BITLIST-EQUIV)
(VL2014::EQUAL-OF-VL-BITLIST-FIX-2-FORWARD-TO-VL-BITLIST-EQUIV)
(VL2014::VL-BITLIST-EQUIV-OF-VL-BITLIST-FIX-1-FORWARD)
(VL2014::VL-BITLIST-EQUIV-OF-VL-BITLIST-FIX-2-FORWARD)
(VL2014::CAR-OF-VL-BITLIST-FIX-X-UNDER-VL-BIT-EQUIV
 (33 3 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (18 3 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (18 2 (:REWRITE VL2014::VL-BITLIST-FIX-WHEN-VL-BITLIST-P))
 (12 12 (:TYPE-PRESCRIPTION VL2014::VL-BITLIST-P))
 (12 12 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (7 7 (:REWRITE DEFAULT-CAR))
 (6 6 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (6 6 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 (6 6 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (6 1 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 )
(VL2014::CAR-VL-BITLIST-EQUIV-CONGRUENCE-ON-X-UNDER-VL-BIT-EQUIV)
(VL2014::CDR-OF-VL-BITLIST-FIX-X-UNDER-VL-BITLIST-EQUIV
 (54 5 (:REWRITE VL2014::VL-BITLIST-FIX-WHEN-VL-BITLIST-P))
 (35 3 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (22 2 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (18 18 (:TYPE-PRESCRIPTION VL2014::VL-BITLIST-P))
 (18 18 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (12 2 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (9 9 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 (4 4 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (4 4 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 )
(VL2014::CDR-VL-BITLIST-EQUIV-CONGRUENCE-ON-X-UNDER-VL-BITLIST-EQUIV)
(VL2014::CONS-OF-VL-BIT-FIX-X-UNDER-VL-BITLIST-EQUIV
 (34 4 (:REWRITE VL2014::VL-BITLIST-FIX-WHEN-VL-BITLIST-P))
 (17 2 (:REWRITE VL2014::VL-BITLIST-P-OF-CONS))
 (10 10 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (8 8 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (6 6 (:TYPE-PRESCRIPTION VL2014::VL-BITLIST-P))
 (5 5 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 )
(VL2014::CONS-VL-BIT-EQUIV-CONGRUENCE-ON-X-UNDER-VL-BITLIST-EQUIV)
(VL2014::CONS-OF-VL-BITLIST-FIX-Y-UNDER-VL-BITLIST-EQUIV
 (19 2 (:REWRITE VL2014::VL-BITLIST-P-OF-CONS))
 (8 8 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (8 8 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (8 8 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (6 2 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (4 4 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 )
(VL2014::CONS-VL-BITLIST-EQUIV-CONGRUENCE-ON-Y-UNDER-VL-BITLIST-EQUIV)
(VL2014::CONSP-OF-VL-BITLIST-FIX
 (18 2 (:REWRITE VL2014::VL-BITLIST-FIX-WHEN-VL-BITLIST-P))
 (11 1 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (8 8 (:TYPE-PRESCRIPTION VL2014::VL-BITLIST-P))
 (8 8 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (6 1 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (6 1 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (4 4 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 (2 2 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (2 2 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 )
(VL2014::VL-BITLIST-FIX-OF-CONS
 (21 3 (:REWRITE VL2014::VL-BITLIST-FIX-WHEN-VL-BITLIST-P))
 (9 1 (:REWRITE VL2014::VL-BITLIST-P-OF-CONS))
 (6 6 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (6 2 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (4 4 (:TYPE-PRESCRIPTION VL2014::VL-BITLIST-P))
 (4 4 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (4 4 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (3 3 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 )
(VL2014::LEN-OF-VL-BITLIST-FIX
 (14 14 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (12 2 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (11 1 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (6 1 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (2 2 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (2 2 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (1 1 (:REWRITE FTY::EQUAL-OF-LEN))
 )
(VL2014::VL-BITLIST-FIX-OF-APPEND
 (49 49 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (36 32 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (36 2 (:REWRITE VL2014::VL-BITLIST-P-OF-APPEND))
 (14 4 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (12 2 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (6 1 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (4 4 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (2 2 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 )
(VL2014::VL-BITLIST-FIX-OF-REPEAT
 (16 4 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (16 2 (:REWRITE VL2014::VL-BITLIST-FIX-WHEN-VL-BITLIST-P))
 (12 2 (:REWRITE VL2014::VL-BITLIST-P-OF-REPEAT))
 (10 10 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (10 10 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (2 2 (:TYPE-PRESCRIPTION VL2014::VL-BITLIST-P))
 (1 1 (:REWRITE-QUOTED-CONSTANT VL2014::VL-BITLIST-FIX-UNDER-VL-BITLIST-EQUIV))
 )
(VL2014::NTH-OF-VL-BITLIST-FIX
 (222 16 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (124 24 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (112 11 (:REWRITE VL2014::VL-BIT-P-OF-NTH-WHEN-VL-BITLIST-P))
 (106 106 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (32 32 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (32 32 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (30 5 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (25 18 (:REWRITE DEFAULT-+-2))
 (20 18 (:REWRITE DEFAULT-CDR))
 (19 7 (:REWRITE ZP-OPEN))
 (18 18 (:REWRITE DEFAULT-+-1))
 (18 14 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE VL2014::CONSP-OF-VL-BITLIST-FIX))
 (14 14 (:REWRITE DEFAULT-<-1))
 (12 4 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (8 8 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (8 8 (:LINEAR LEN-WHEN-PREFIXP))
 (6 4 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE NTH-WHEN-PREFIXP))
 (4 4 (:LINEAR LISTPOS-COMPLETE))
 (4 4 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (2 2 (:REWRITE-QUOTED-CONSTANT VL2014::VL-BIT-FIX-UNDER-VL-BIT-EQUIV))
 )
(VL2014::VL-BITLIST-EQUIV-IMPLIES-VL-BITLIST-EQUIV-APPEND-1
 (205 17 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (128 128 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (120 17 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (117 22 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (79 79 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (34 34 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (34 34 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 )
(VL2014::VL-BITLIST-EQUIV-IMPLIES-VL-BITLIST-EQUIV-APPEND-2
 (322 26 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (204 39 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (192 192 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (192 26 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (79 79 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (52 52 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (52 52 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (4 4 (:REWRITE VL2014::CONSP-OF-VL-BITLIST-FIX))
 )
(VL2014::VL-BITLIST-EQUIV-IMPLIES-VL-BITLIST-EQUIV-NTHCDR-2
 (298 20 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (208 39 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (198 20 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (194 194 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (40 40 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (40 40 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 )
(VL2014::VL-BITLIST-EQUIV-IMPLIES-VL-BITLIST-EQUIV-TAKE-2
 (502 38 (:REWRITE VL2014::VL-BITLIST-FIX-WHEN-VL-BITLIST-P))
 (426 28 (:REWRITE VL2014::VL-BIT-FIX-IDEMPOTENT))
 (298 51 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (290 26 (:REWRITE VL2014::VL-BIT-P-OF-CAR-WHEN-VL-BITLIST-P))
 (234 234 (:TYPE-PRESCRIPTION VL2014::VL-BITLIST-P))
 (234 234 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (215 23 (:REWRITE VL2014::VL-BITLIST-P-OF-TAKE))
 (135 117 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 (64 64 (:TYPE-PRESCRIPTION VL2014::VL-BIT-P))
 (64 64 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 (15 15 (:TYPE-PRESCRIPTION NFIX))
 (10 10 (:TYPE-PRESCRIPTION LEN))
 (6 6 (:REWRITE-QUOTED-CONSTANT VL2014::VL-BITLIST-FIX-UNDER-VL-BITLIST-EQUIV))
 )
(VL2014::VL-BIT->CHAR
 (2 2 (:REWRITE VL2014::VL-BIT-P-WHEN-MEMBER-EQUAL-OF-VL-BITLIST-P))
 )
(VL2014::CHARACTERP-OF-VL-BIT->CHAR)
(VL2014::VL-BIT->CHAR-OF-VL-BIT-FIX-X)
(VL2014::VL-BIT->CHAR-VL-BIT-EQUIV-CONGRUENCE-ON-X)
(VL2014::VL-BITLIST->CHARLIST-EXEC)
(VL2014::VL-BITLIST->CHARLIST-NREV)
(VL2014::VL-BITLIST->CHARLIST)
(VL2014::CHARACTER-LISTP-OF-VL-BITLIST->CHARLIST
 (132 16 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (132 16 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (96 16 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (34 34 (:REWRITE STR::OCT-DIGIT-CHAR-LISTP-WHEN-SUBSETP-EQUAL))
 (34 34 (:REWRITE STR::HEX-DIGIT-CHAR-LISTP-WHEN-SUBSETP-EQUAL))
 (27 17 (:REWRITE STR::OCT-DIGIT-CHAR-LISTP-WHEN-NOT-CONSP))
 (27 17 (:REWRITE STR::HEX-DIGIT-CHAR-LISTP-WHEN-NOT-CONSP))
 (27 17 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-WHEN-NOT-CONSP))
 (14 7 (:REWRITE STR::OCT-DIGIT-CHAR-LISTP-OF-CDR-WHEN-OCT-DIGIT-CHAR-LISTP))
 (14 7 (:REWRITE STR::HEX-DIGIT-CHAR-LISTP-OF-CDR-WHEN-HEX-DIGIT-CHAR-LISTP))
 (14 7 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-OF-CDR-WHEN-DEC-DIGIT-CHAR-LISTP))
 (14 1 (:REWRITE STR::OCT-DIGIT-CHAR-LISTP-OF-CONS))
 (14 1 (:REWRITE STR::HEX-DIGIT-CHAR-LISTP-OF-CONS))
 (10 9 (:REWRITE DEFAULT-CDR))
 (10 9 (:REWRITE DEFAULT-CAR))
 (10 1 (:REWRITE STR::DEC-DIGIT-CHAR-LISTP-OF-CONS))
 (2 2 (:REWRITE STR::OCT-DIGIT-CHAR-P-WHEN-MEMBER-EQUAL-OF-OCT-DIGIT-CHAR-LISTP))
 (2 2 (:REWRITE STR::HEX-DIGIT-CHAR-P-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-CHAR-LISTP))
 (2 1 (:REWRITE STR::OCT-DIGIT-CHAR-P-WHEN-NONZERO-OCT-DIGIT-CHAR-P))
 (2 1 (:REWRITE STR::HEX-DIGIT-CHAR-P-WHEN-NONZERO-HEX-DIGIT-CHAR-P))
 (2 1 (:REWRITE STR::DEC-DIGIT-CHAR-P-WHEN-NONZERO-DEC-DIGIT-CHAR-P))
 (1 1 (:TYPE-PRESCRIPTION STR::OCT-DIGIT-CHAR-P$INLINE))
 (1 1 (:TYPE-PRESCRIPTION STR::NONZERO-OCT-DIGIT-CHAR-P$INLINE))
 (1 1 (:TYPE-PRESCRIPTION STR::NONZERO-HEX-DIGIT-CHAR-P$INLINE))
 (1 1 (:TYPE-PRESCRIPTION STR::NONZERO-DEC-DIGIT-CHAR-P$INLINE))
 (1 1 (:TYPE-PRESCRIPTION STR::HEX-DIGIT-CHAR-P$INLINE))
 (1 1 (:TYPE-PRESCRIPTION STR::DEC-DIGIT-CHAR-P$INLINE))
 )
(VL2014::VL-BITLIST->CHARLIST-OF-VL-BITLIST-FIX-X
 (59 44 (:REWRITE DEFAULT-CDR))
 (38 38 (:REWRITE VL2014::VL-BITLIST-P-WHEN-SUBSETP-EQUAL))
 (36 6 (:REWRITE VL2014::VL-BITLIST-P-OF-CDR-WHEN-VL-BITLIST-P))
 (32 30 (:REWRITE DEFAULT-CAR))
 )
(VL2014::VL-BITLIST->CHARLIST-VL-BITLIST-EQUIV-CONGRUENCE-ON-X)
(VL2014::VL-BITLIST->CHARLIST-NIL-PRESERVINGP-LEMMA)
(VL2014::VL-BITLIST->CHARLIST-NREV-REMOVAL
 (76 5 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (57 3 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (39 3 (:DEFINITION TRUE-LISTP))
 (36 6 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (16 16 (:REWRITE DEFAULT-CDR))
 (15 15 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (15 3 (:DEFINITION LEN))
 (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (12 12 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (12 6 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (10 10 (:REWRITE DEFAULT-CAR))
 (6 6 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (6 6 (:REWRITE SET::IN-SET))
 (6 6 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (6 6 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (6 6 (:LINEAR LEN-WHEN-PREFIXP))
 (6 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (2 2 (:TYPE-PRESCRIPTION TYPE-OF-RCONS))
 )
(VL2014::VL-BITLIST->CHARLIST-EXEC-REMOVAL
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 )
(VL2014::VL-BITLIST->CHARLIST-OF-TAKE)
(VL2014::SET-EQUIV-CONGRUENCE-OVER-VL-BITLIST->CHARLIST)
(VL2014::SUBSETP-OF-VL-BITLIST->CHARLIST-WHEN-SUBSETP)
(VL2014::MEMBER-OF-VL-BIT->CHAR-IN-VL-BITLIST->CHARLIST)
(VL2014::VL-BITLIST->CHARLIST-OF-REV)
(VL2014::VL-BITLIST->CHARLIST-OF-LIST-FIX)
(VL2014::VL-BITLIST->CHARLIST-OF-APPEND)
(VL2014::CDR-OF-VL-BITLIST->CHARLIST)
(VL2014::CAR-OF-VL-BITLIST->CHARLIST)
(VL2014::VL-BITLIST->CHARLIST-UNDER-IFF)
(VL2014::CONSP-OF-VL-BITLIST->CHARLIST)
(VL2014::LEN-OF-VL-BITLIST->CHARLIST)
(VL2014::TRUE-LISTP-OF-VL-BITLIST->CHARLIST)
(VL2014::VL-BITLIST->CHARLIST-WHEN-NOT-CONSP)
(VL2014::VL-BITLIST->CHARLIST-OF-CONS)
(VL2014::VL-BITLIST->CHARLIST-NREV
 (24 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (20 2 (:DEFINITION TRUE-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 8 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(VL2014::VL-BITLIST->CHARLIST)
(VL2014::VL-BITLIST->CHARLIST-EXEC
 (2 2 (:REWRITE VL2014::VL-BITLIST-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(VL2014::VL-BITLIST->STRING)
(VL2014::STRINGP-OF-VL-BITLIST->STRING)
(VL2014::VL-BITLIST->STRING-OF-VL-BITLIST-FIX-X)
(VL2014::VL-BITLIST->STRING-VL-BITLIST-EQUIV-CONGRUENCE-ON-X)
(VL2014::VL-TIMEUNIT-P)
(VL2014::TYPE-WHEN-VL-TIMEUNIT-P)
(VL2014::VL-TIMEUNIT-P-POSSIBILITIES)
(VL2014::VL-TIMEUNIT-FIX$INLINE)
(VL2014::RETURN-TYPE-OF-VL-TIMEUNIT-FIX)
(VL2014::VL-TIMEUNIT-FIX-IDEMPOTENT)
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT)
(VL2014::VL-TIMEUNIT-EQUIV$INLINE)
(VL2014::VL-TIMEUNIT-EQUIV-IS-AN-EQUIVALENCE)
(VL2014::VL-TIMEUNIT-EQUIV-IMPLIES-EQUAL-VL-TIMEUNIT-FIX-1)
(VL2014::VL-TIMEUNIT-FIX-UNDER-VL-TIMEUNIT-EQUIV)
(VL2014::VL-TIMEUNIT->STRING)
(VL2014::STRINGP-OF-VL-TIMEUNIT->STRING)
(VL2014::VL-TIMEUNIT->STRING-OF-VL-TIMEUNIT-FIX-X)
(VL2014::VL-TIMEUNIT->STRING-VL-TIMEUNIT-EQUIV-CONGRUENCE-ON-X)