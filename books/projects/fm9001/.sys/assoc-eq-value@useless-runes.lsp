(FM9001::ASSOC-EQ-VALUE)
(FM9001::ASSOC-EQ-VALUE-CONS-1
 (4 4 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(FM9001::ASSOC-EQ-VALUE-CONS-2
 (9 9 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-CDR))
 )
(FM9001::REWRITE-ASSOC-EQ-VALUE-4X
 (18 18 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE DEFAULT-CDR))
 )
(FM9001::ASSOC-EQ-VALUE-APPEND-PAIRLIS$
 (184 141 (:REWRITE DEFAULT-CAR))
 (182 77 (:REWRITE DEFAULT-CDR))
 (80 16 (:REWRITE CAR-OF-APPEND))
 (77 11 (:DEFINITION BINARY-APPEND))
 (56 16 (:REWRITE CONSP-OF-APPEND))
 (33 33 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (32 8 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 (22 22 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 )
(FM9001::ASSOC-EQ-VALUE-PAIRLIS$-MEMBER
 (100 66 (:REWRITE DEFAULT-CAR))
 (38 36 (:REWRITE DEFAULT-CDR))
 (20 4 (:REWRITE ZP-OPEN))
 (13 13 (:REWRITE DEFAULT-+-2))
 (13 13 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(FM9001::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER
 (25 24 (:REWRITE DEFAULT-CAR))
 (16 15 (:REWRITE DEFAULT-CDR))
 )
(FM9001::ASSOC-EQ-VALUE-UPDATE-ALIST-1
 (61 60 (:REWRITE DEFAULT-CAR))
 (28 22 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE FM9001::CONSP-OF-ASSOC-UPDATE-ALIST-LEMMA))
 )
(FM9001::ASSOC-EQ-VALUE-UPDATE-ALIST-2
 (108 100 (:REWRITE DEFAULT-CAR))
 (65 57 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE FM9001::CONSP-OF-ASSOC-UPDATE-ALIST-LEMMA))
 )
(FM9001::ASSOC-EQ-VALUE-NTH-PAIRLIS$
 (187 9 (:REWRITE LEN-WHEN-PREFIXP))
 (127 6 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (98 6 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (93 53 (:REWRITE DEFAULT-+-2))
 (86 85 (:REWRITE DEFAULT-CDR))
 (77 73 (:REWRITE DEFAULT-CAR))
 (70 42 (:REWRITE DEFAULT-<-2))
 (63 42 (:REWRITE DEFAULT-<-1))
 (63 16 (:DEFINITION MEMBER-EQUAL))
 (54 54 (:LINEAR LEN-WHEN-PREFIXP))
 (53 53 (:REWRITE DEFAULT-+-1))
 (27 27 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (21 21 (:TYPE-PRESCRIPTION PREFIXP))
 (11 11 (:REWRITE NTH-WHEN-PREFIXP))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (6 6 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (6 6 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (6 6 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (6 6 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (6 6 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 )
(FM9001::ASSOC-EQ-VALUE-OF-SI-PAIRLIS$-SIS
 (513 3 (:REWRITE FM9001::SI-OF-DIFF-SYMBOLS-2))
 (504 3 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (444 3 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (360 2 (:DEFINITION ASSOC-EQUAL))
 (306 9 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (222 9 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (172 14 (:DEFINITION LEN))
 (141 42 (:REWRITE STR::CONSP-OF-EXPLODE))
 (78 78 (:TYPE-PRESCRIPTION FM9001::STR-APPEND-SYMBOL-UNDERSCORE))
 (75 25 (:REWRITE DEFAULT-CDR))
 (72 72 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (48 9 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (48 9 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (42 6 (:REWRITE LEN-WHEN-PREFIXP))
 (39 25 (:REWRITE DEFAULT-+-2))
 (34 27 (:REWRITE DEFAULT-<-1))
 (33 27 (:REWRITE DEFAULT-<-2))
 (30 3 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-LEFT))
 (27 27 (:TYPE-PRESCRIPTION PREFIXP))
 (25 25 (:REWRITE DEFAULT-+-1))
 (22 14 (:REWRITE DEFAULT-CAR))
 (22 2 (:DEFINITION PAIRLIS$))
 (20 20 (:LINEAR LEN-WHEN-PREFIXP))
 (15 3 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (10 10 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (9 9 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (9 9 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (9 9 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (9 9 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (9 6 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (8 1 (:REWRITE FM9001::NOT-MEMBER=>NOT-EQUAL-NTH))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:TYPE-PRESCRIPTION PAIRLIS$))
 (4 4 (:REWRITE NTH-WHEN-PREFIXP))
 (3 3 (:TYPE-PRESCRIPTION STR::ISTRPREFIXP$INLINE))
 (3 3 (:TYPE-PRESCRIPTION STR::IPREFIXP))
 (3 3 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:REWRITE DEFAULT-SYMBOL-NAME))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 (1 1 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (1 1 (:REWRITE FM9001::SI-MEMBER-SIS))
 )
(FM9001::ASSOC-EQ-VALUES
 (6 2 (:DEFINITION ALISTP))
 (4 4 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-CDR))
 )
(FM9001::LEN-ASSOC-EQ-VALUES
 (28 28 (:LINEAR LEN-WHEN-PREFIXP))
 (14 14 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (14 7 (:REWRITE DEFAULT-+-2))
 (9 8 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(FM9001::PAIRLIS$-ASSOC-EQ-VALUES
 (277 209 (:REWRITE DEFAULT-CDR))
 (108 108 (:TYPE-PRESCRIPTION FM9001::ASSOC-EQ-VALUES))
 )
(FM9001::ASSOC-EQ-VALUES-CONS-NOT-MEMBER
 (12 12 (:REWRITE DEFAULT-CDR))
 (8 4 (:REWRITE FM9001::ASSOC-EQ-VALUE-CONS-1))
 )
(FM9001::ASSOC-EQ-VALUES-APPEND-PAIRLIS$
 (77 77 (:REWRITE DEFAULT-CAR))
 (75 75 (:REWRITE DEFAULT-CDR))
 (42 7 (:DEFINITION BINARY-APPEND))
 (34 34 (:LINEAR LEN-WHEN-PREFIXP))
 (32 32 (:TYPE-PRESCRIPTION PAIRLIS$))
 (31 16 (:REWRITE DEFAULT-+-2))
 (17 17 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (16 16 (:REWRITE DEFAULT-+-1))
 (16 4 (:REWRITE FM9001::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
 (9 3 (:REWRITE FM9001::ASSOC-EQ-VALUE-CONS-2))
 )
(FM9001::ASSOC-EQ-VALUES-APPEND-WHEN-DISJOINT-1
 (25 25 (:TYPE-PRESCRIPTION STRIP-CARS))
 (25 10 (:DEFINITION ATOM))
 (23 23 (:REWRITE DEFAULT-CAR))
 (16 16 (:REWRITE DEFAULT-CDR))
 (6 2 (:DEFINITION MEMBER-EQUAL))
 (5 5 (:TYPE-PRESCRIPTION ATOM))
 )
(FM9001::ASSOC-EQ-VALUES-APPEND-WHEN-DISJOINT-2
 (56 4 (:REWRITE FM9001::ASSOC-EQ-VALUES-APPEND-WHEN-DISJOINT-1))
 (50 50 (:TYPE-PRESCRIPTION STRIP-CARS))
 (45 18 (:DEFINITION ATOM))
 (27 27 (:REWRITE DEFAULT-CAR))
 (18 18 (:REWRITE DEFAULT-CDR))
 (9 9 (:TYPE-PRESCRIPTION ATOM))
 (6 2 (:DEFINITION MEMBER-EQUAL))
 )
(FM9001::ASSOC-EQ-VALUES-ATOM)
(FM9001::CONSP-ASSOC-EQ-VALUES
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(FM9001::ASSOC-EQ-VALUES-APPEND
 (62 19 (:REWRITE DEFAULT-CDR))
 (41 26 (:REWRITE DEFAULT-CAR))
 (38 38 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (13 13 (:REWRITE CONSP-OF-APPEND))
 (12 4 (:REWRITE CAR-OF-APPEND))
 (4 4 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 )
(FM9001::ASSOC-EQ-VALUES-APPEND-PAIRLIS$-WHEN-SUBSET
 (79 3 (:REWRITE FM9001::ASSOC-EQ-VALUES-APPEND-WHEN-DISJOINT-2))
 (57 57 (:REWRITE DEFAULT-CAR))
 (56 3 (:REWRITE FM9001::ASSOC-EQ-VALUES-APPEND-WHEN-DISJOINT-1))
 (55 11 (:DEFINITION PAIRLIS$))
 (54 6 (:REWRITE FM9001::DISJOINT-ATOM))
 (50 50 (:REWRITE DEFAULT-CDR))
 (36 6 (:DEFINITION STRIP-CARS))
 (33 33 (:TYPE-PRESCRIPTION STRIP-CARS))
 (32 32 (:TYPE-PRESCRIPTION PAIRLIS$))
 (27 6 (:REWRITE FM9001::STRIP-CARS-PAIRLIS$))
 (24 4 (:DEFINITION BINARY-APPEND))
 (22 6 (:REWRITE FM9001::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
 (20 8 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (15 15 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (15 3 (:DEFINITION TRUE-LISTP))
 (12 12 (:TYPE-PRESCRIPTION FM9001::DISJOINT))
 (7 7 (:REWRITE FM9001::SUBSETP-TRANSITIVITY))
 (5 5 (:TYPE-PRESCRIPTION ATOM))
 )
(FM9001::ASSOC-EQ-VALUES-APPEND-PAIRLIS$-WHEN-DISJOINT-1
 (212 8 (:REWRITE FM9001::ASSOC-EQ-VALUES-APPEND-WHEN-DISJOINT-2))
 (157 153 (:REWRITE DEFAULT-CAR))
 (150 8 (:REWRITE FM9001::ASSOC-EQ-VALUES-APPEND-WHEN-DISJOINT-1))
 (146 142 (:REWRITE DEFAULT-CDR))
 (110 22 (:DEFINITION PAIRLIS$))
 (108 24 (:DEFINITION MEMBER-EQUAL))
 (96 16 (:DEFINITION STRIP-CARS))
 (88 88 (:TYPE-PRESCRIPTION STRIP-CARS))
 (77 77 (:TYPE-PRESCRIPTION PAIRLIS$))
 (72 16 (:REWRITE FM9001::STRIP-CARS-PAIRLIS$))
 (54 9 (:DEFINITION BINARY-APPEND))
 (45 18 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (40 40 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (40 8 (:DEFINITION TRUE-LISTP))
 (29 29 (:TYPE-PRESCRIPTION ATOM))
 (21 21 (:REWRITE FM9001::SUBSETP-TRANSITIVITY))
 (12 12 (:REWRITE FM9001::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
 )
(FM9001::ASSOC-EQ-VALUES-APPEND-PAIRLIS$-WHEN-DISJOINT-2
 (212 8 (:REWRITE FM9001::ASSOC-EQ-VALUES-APPEND-WHEN-DISJOINT-2))
 (202 8 (:REWRITE FM9001::ASSOC-EQ-VALUES-APPEND-PAIRLIS$-WHEN-SUBSET))
 (172 10 (:DEFINITION SUBSETP-EQUAL))
 (155 151 (:REWRITE DEFAULT-CAR))
 (150 8 (:REWRITE FM9001::ASSOC-EQ-VALUES-APPEND-WHEN-DISJOINT-1))
 (144 140 (:REWRITE DEFAULT-CDR))
 (108 24 (:DEFINITION MEMBER-EQUAL))
 (105 21 (:DEFINITION PAIRLIS$))
 (96 16 (:DEFINITION STRIP-CARS))
 (88 88 (:TYPE-PRESCRIPTION STRIP-CARS))
 (77 77 (:TYPE-PRESCRIPTION PAIRLIS$))
 (72 16 (:REWRITE FM9001::STRIP-CARS-PAIRLIS$))
 (54 9 (:DEFINITION BINARY-APPEND))
 (45 18 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (44 44 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (40 40 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (40 8 (:DEFINITION TRUE-LISTP))
 (29 29 (:TYPE-PRESCRIPTION ATOM))
 (20 20 (:REWRITE FM9001::SUBSETP-TRANSITIVITY))
 (12 12 (:REWRITE FM9001::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
 )
(FM9001::ASSOC-EQ-VALUES-TAKE-1
 (580 39 (:REWRITE TAKE-OF-LEN-FREE))
 (258 139 (:REWRITE DEFAULT-+-2))
 (234 27 (:DEFINITION MEMBER-EQUAL))
 (229 178 (:REWRITE DEFAULT-CDR))
 (205 159 (:REWRITE DEFAULT-<-2))
 (182 182 (:LINEAR LEN-WHEN-PREFIXP))
 (172 159 (:REWRITE DEFAULT-<-1))
 (146 134 (:REWRITE DEFAULT-CAR))
 (139 139 (:REWRITE DEFAULT-+-1))
 (91 91 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (39 39 (:REWRITE TAKE-WHEN-ATOM))
 (32 8 (:REWRITE FM9001::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
 (18 6 (:REWRITE FM9001::ASSOC-EQ-VALUE-CONS-2))
 (12 4 (:REWRITE FOLD-CONSTS-IN-+))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (3 3 (:REWRITE TAKE-UNDER-IFF))
 )
(FM9001::ASSOC-EQ-VALUES-TAKE-2
 (602 49 (:REWRITE TAKE-OF-LEN-FREE))
 (371 27 (:DEFINITION MEMBER-EQUAL))
 (264 174 (:REWRITE DEFAULT-CDR))
 (256 10 (:REWRITE FM9001::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
 (248 207 (:REWRITE DEFAULT-<-2))
 (216 207 (:REWRITE DEFAULT-<-1))
 (197 111 (:REWRITE DEFAULT-+-2))
 (184 184 (:LINEAR LEN-WHEN-PREFIXP))
 (134 127 (:REWRITE DEFAULT-CAR))
 (111 111 (:REWRITE DEFAULT-+-1))
 (92 92 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (49 49 (:REWRITE TAKE-WHEN-ATOM))
 (49 5 (:REWRITE FM9001::ASSOC-EQ-VALUES-TAKE-1))
 (24 8 (:REWRITE FOLD-CONSTS-IN-+))
 (22 22 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (22 6 (:DEFINITION TRUE-LISTP))
 (12 4 (:REWRITE FM9001::ASSOC-EQ-VALUE-CONS-2))
 (10 6 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (7 7 (:REWRITE TAKE-UNDER-IFF))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(FM9001::ASSOC-EQ-VALUES-NTHCDR-1
 (217 143 (:REWRITE DEFAULT-+-2))
 (143 143 (:REWRITE DEFAULT-+-1))
 (92 92 (:LINEAR LEN-WHEN-PREFIXP))
 (85 15 (:REWRITE FM9001::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
 (69 30 (:REWRITE ZP-OPEN))
 (46 46 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (15 5 (:REWRITE FM9001::ASSOC-EQ-VALUE-CONS-2))
 (13 13 (:REWRITE DEFAULT-<-2))
 (13 13 (:REWRITE DEFAULT-<-1))
 )
(FM9001::ASSOC-EQ-VALUES-NTHCDR-2
 (88 88 (:REWRITE DEFAULT-+-2))
 (88 88 (:REWRITE DEFAULT-+-1))
 (86 32 (:REWRITE ZP-OPEN))
 (54 18 (:REWRITE FOLD-CONSTS-IN-+))
 (36 6 (:REWRITE FM9001::ASSOC-EQ-VALUES-NTHCDR-1))
 (20 4 (:DEFINITION TRUE-LISTP))
 (18 18 (:REWRITE DEFAULT-<-2))
 (18 18 (:REWRITE DEFAULT-<-1))
 )
(FM9001::NOT-MEMBER-TAKE-NTHCDR-LEMMA
 (715 12 (:DEFINITION TAKE))
 (495 24 (:REWRITE TAKE-OF-LEN-FREE))
 (185 107 (:REWRITE DEFAULT-+-2))
 (172 172 (:LINEAR LEN-WHEN-PREFIXP))
 (142 109 (:REWRITE DEFAULT-<-2))
 (138 109 (:REWRITE DEFAULT-<-1))
 (128 38 (:REWRITE DEFAULT-CAR))
 (123 26 (:REWRITE FM9001::LEN-NTHCDR))
 (118 107 (:REWRITE DEFAULT-+-1))
 (114 24 (:REWRITE TAKE-WHEN-ATOM))
 (86 86 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (30 30 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (16 10 (:REWRITE FM9001::NOT-MEMBER-NTHCDR-LEMMA))
 (16 2 (:REWRITE REPEAT-WHEN-ZP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(FM9001::ASSOC-EQ-VALUES-TAKE-NTHCDR
 (2951 52 (:DEFINITION TAKE))
 (1940 110 (:REWRITE TAKE-OF-LEN-FREE))
 (1341 1003 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (828 509 (:REWRITE DEFAULT-+-2))
 (611 35 (:DEFINITION MEMBER-EQUAL))
 (598 598 (:LINEAR LEN-WHEN-PREFIXP))
 (533 509 (:REWRITE DEFAULT-+-1))
 (492 377 (:REWRITE DEFAULT-<-2))
 (472 89 (:REWRITE FM9001::LEN-NTHCDR))
 (446 110 (:REWRITE TAKE-WHEN-ATOM))
 (438 377 (:REWRITE DEFAULT-<-1))
 (343 57 (:REWRITE FM9001::ASSOC-EQ-VALUES-ATOM))
 (299 299 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (266 187 (:REWRITE ZP-OPEN))
 (104 8 (:REWRITE FM9001::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
 (84 6 (:REWRITE FM9001::NOT-MEMBER-TAKE-LEMMA))
 (64 26 (:REWRITE FOLD-CONSTS-IN-+))
 (55 55 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (48 6 (:REWRITE FM9001::ASSOC-EQ-VALUE-CONS-2))
 (36 8 (:REWRITE CONSP-OF-REPEAT))
 (18 4 (:REWRITE REPEAT-WHEN-ZP))
 (6 6 (:REWRITE TAKE-UNDER-IFF))
 (3 3 (:REWRITE FM9001::NOT-MEMBER-NTHCDR-LEMMA))
 )
(FM9001::ASSOC-EQ-VALUES-CONS
 (6 6 (:REWRITE FM9001::ASSOC-EQ-VALUES-ATOM))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(FM9001::SINGLETON-ASSOC-EQ-VALUES
 (46 43 (:REWRITE DEFAULT-CDR))
 (45 23 (:REWRITE DEFAULT-+-2))
 (40 40 (:LINEAR LEN-WHEN-PREFIXP))
 (23 23 (:REWRITE DEFAULT-+-1))
 (20 20 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 )
(FM9001::ASSOC-EQ-VALUES-ARGS-PAIRLIS$-ARGS
 (210 16 (:REWRITE FM9001::SINGLETON-ASSOC-EQ-VALUES))
 (72 72 (:REWRITE DEFAULT-CDR))
 (62 62 (:LINEAR LEN-WHEN-PREFIXP))
 (58 58 (:REWRITE DEFAULT-CAR))
 (56 28 (:REWRITE DEFAULT-+-2))
 (31 31 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (28 28 (:REWRITE DEFAULT-+-1))
 (16 4 (:REWRITE FM9001::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
 (9 3 (:REWRITE FM9001::ASSOC-EQ-VALUE-CONS-2))
 )
(FM9001::ASSOC-EQ-VALUES-SPLITTING-CROCK
 (397 28 (:REWRITE FM9001::SINGLETON-ASSOC-EQ-VALUES))
 (96 57 (:REWRITE DEFAULT-+-2))
 (88 88 (:LINEAR LEN-WHEN-PREFIXP))
 (86 6 (:REWRITE TAKE-OF-LEN-FREE))
 (83 50 (:REWRITE DEFAULT-CDR))
 (62 53 (:REWRITE DEFAULT-<-2))
 (61 53 (:REWRITE DEFAULT-<-1))
 (59 57 (:REWRITE DEFAULT-+-1))
 (48 24 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (48 4 (:REWRITE FM9001::LEN-NTHCDR))
 (44 44 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (42 22 (:REWRITE DEFAULT-CAR))
 (28 4 (:REWRITE CAR-OF-TAKE))
 (25 25 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (20 5 (:REWRITE LEN-OF-TAKE))
 (11 3 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:REWRITE TAKE-WHEN-ATOM))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 1 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 1 (:REWRITE UNICITY-OF-0))
 (1 1 (:REWRITE CDR-CONS))
 (1 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:DEFINITION FIX))
 )
(FM9001::ASSOC-EQ-VALUES-MAKE-LIST
 (195 5 (:DEFINITION FM9001::ASSOC-EQ-VALUES))
 (148 12 (:REWRITE FM9001::SINGLETON-ASSOC-EQ-VALUES))
 (72 30 (:REWRITE ZP-OPEN))
 (66 20 (:REWRITE CONSP-OF-REPEAT))
 (49 6 (:DEFINITION LEN))
 (27 11 (:REWRITE DEFAULT-CDR))
 (26 26 (:REWRITE DEFAULT-<-2))
 (26 26 (:REWRITE DEFAULT-<-1))
 (24 6 (:REWRITE LEN-OF-REPEAT))
 (20 20 (:LINEAR LEN-WHEN-PREFIXP))
 (20 5 (:REWRITE DEFAULT-CAR))
 (18 6 (:DEFINITION NFIX))
 (17 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (10 10 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (5 1 (:REWRITE FOLD-CONSTS-IN-+))
 (2 1 (:REWRITE UNICITY-OF-0))
 (1 1 (:REWRITE CDR-CONS))
 (1 1 (:DEFINITION FIX))
 )
(FM9001::ASSOC-EQ-VALUES-SUBSEQ-ARGS-PAIRLIS$-ARGS
 (964 32 (:REWRITE TAKE-OF-TOO-MANY))
 (699 32 (:REWRITE TAKE-OF-LEN-FREE))
 (460 300 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (284 172 (:REWRITE DEFAULT-+-2))
 (255 152 (:REWRITE DEFAULT-CDR))
 (242 30 (:REWRITE FM9001::LEN-NTHCDR))
 (222 222 (:LINEAR LEN-WHEN-PREFIXP))
 (181 172 (:REWRITE DEFAULT-+-1))
 (170 32 (:REWRITE TAKE-WHEN-ATOM))
 (152 17 (:DEFINITION NTHCDR))
 (131 104 (:REWRITE DEFAULT-<-1))
 (111 111 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (110 32 (:DEFINITION NFIX))
 (106 106 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (98 29 (:REWRITE DEFAULT-CAR))
 (71 6 (:REWRITE FM9001::SINGLETON-ASSOC-EQ-VALUES))
 (45 45 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (39 1 (:DEFINITION FM9001::ASSOC-EQ-VALUES))
 (27 27 (:TYPE-PRESCRIPTION STRINGP-SUBSEQ-TYPE-PRESCRIPTION))
 (26 16 (:REWRITE STR::CONSP-OF-EXPLODE))
 (26 15 (:REWRITE DEFAULT-UNARY-MINUS))
 (17 17 (:REWRITE FOLD-CONSTS-IN-+))
 (15 4 (:DEFINITION MEMBER-EQUAL))
 (12 6 (:DEFINITION TRUE-LISTP))
 (10 2 (:REWRITE LEN-OF-TAKE))
 (9 1 (:REWRITE FM9001::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
 (8 8 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (6 6 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 )
(FM9001::ASSOC-EQ-VALUES-UPDATE-ALIST-NOT-MEMBER
 (139 12 (:REWRITE FM9001::SINGLETON-ASSOC-EQ-VALUES))
 (52 52 (:TYPE-PRESCRIPTION LEN))
 (45 9 (:DEFINITION LEN))
 (26 26 (:LINEAR LEN-WHEN-PREFIXP))
 (18 9 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-CDR))
 (13 13 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (10 10 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE FM9001::ASSOC-EQ-VALUE-UPDATE-ALIST-1))
 )
(FM9001::ASSOC-EQ-VALUES-CDR
 (113 7 (:REWRITE FM9001::SINGLETON-ASSOC-EQ-VALUES))
 (45 45 (:TYPE-PRESCRIPTION LEN))
 (39 7 (:DEFINITION LEN))
 (20 20 (:LINEAR LEN-WHEN-PREFIXP))
 (16 8 (:REWRITE DEFAULT-+-2))
 (10 10 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (8 8 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-CAR))
 )