(FM9001::REG-BODY)
(FM9001::REG*
 (12 6 (:TYPE-PRESCRIPTION FM9001::CONSP-SIS))
 (6 6 (:TYPE-PRESCRIPTION POSP))
 )
(FM9001::REG*$DESTRUCTURE
 (1346 1 (:REWRITE FM9001::SI-OF-DIFF-SYMBOLS-2))
 (1343 1 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (1300 5 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (873 50 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (797 50 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (778 4 (:REWRITE STR::IPREFIXP-OF-CONS-LEFT))
 (766 10 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (513 20 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (320 320 (:TYPE-PRESCRIPTION LEN))
 (272 50 (:DEFINITION LEN))
 (109 94 (:REWRITE DEFAULT-CDR))
 (102 102 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (100 50 (:REWRITE DEFAULT-+-2))
 (99 54 (:TYPE-PRESCRIPTION FM9001::CONSP-SIS))
 (70 70 (:LINEAR LEN-WHEN-PREFIXP))
 (66 41 (:REWRITE DEFAULT-<-1))
 (56 41 (:REWRITE DEFAULT-<-2))
 (55 55 (:TYPE-PRESCRIPTION PREFIXP))
 (50 50 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (50 50 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (50 50 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (50 50 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (50 50 (:REWRITE DEFAULT-+-1))
 (48 39 (:REWRITE DEFAULT-CAR))
 (45 45 (:TYPE-PRESCRIPTION POSP))
 (35 35 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (30 15 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (25 15 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (22 22 (:DEFINITION NOT))
 (22 15 (:REWRITE STR::CONSP-OF-EXPLODE))
 (11 4 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (6 6 (:TYPE-PRESCRIPTION STR::ICHAREQV$INLINE))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 5 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (1 1 (:TYPE-PRESCRIPTION STR::ISTRPREFIXP$INLINE))
 (1 1 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (1 1 (:REWRITE DEFAULT-SYMBOL-NAME))
 )
(FM9001::REG&)
(FM9001::REG$NETLIST)
(FM9001::REG-BODY$UNBOUND-IN-BODY
 (13386 21 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (12648 72 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (7659 462 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (7506 462 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (6279 51 (:REWRITE STR::IPREFIXP-OF-CONS-LEFT))
 (6126 90 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (3759 138 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (2910 2910 (:TYPE-PRESCRIPTION LEN))
 (2772 462 (:DEFINITION LEN))
 (1707 1707 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (1173 858 (:REWRITE DEFAULT-CDR))
 (968 500 (:REWRITE DEFAULT-+-2))
 (600 600 (:LINEAR LEN-WHEN-PREFIXP))
 (585 396 (:REWRITE DEFAULT-CAR))
 (534 534 (:TYPE-PRESCRIPTION PREFIXP))
 (500 500 (:REWRITE DEFAULT-+-1))
 (488 326 (:REWRITE DEFAULT-<-2))
 (464 326 (:REWRITE DEFAULT-<-1))
 (462 462 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (462 462 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (462 462 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (462 462 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (462 315 (:REWRITE STR::CONSP-OF-EXPLODE))
 (372 162 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (324 162 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (300 300 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (198 51 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (93 93 (:TYPE-PRESCRIPTION STR::ICHAREQV$INLINE))
 (81 81 (:TYPE-PRESCRIPTION FM9001::REG-BODY))
 (72 72 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (42 21 (:REWRITE DEFAULT-SYMBOL-NAME))
 (42 14 (:REWRITE FOLD-CONSTS-IN-+))
 (35 14 (:REWRITE ZP-OPEN))
 (21 21 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(FM9001::REG-BODY$ALL-UNBOUND-IN-BODY
 (26 13 (:TYPE-PRESCRIPTION FM9001::CONSP-SIS))
 (16 4 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-ATOM))
 (13 13 (:TYPE-PRESCRIPTION FM9001::SIS))
 (13 13 (:TYPE-PRESCRIPTION POSP))
 (12 12 (:TYPE-PRESCRIPTION FM9001::REG-BODY))
 (6 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(FM9001::REG-BODY-INDUCTION)
(FM9001::REG-BODY$VALUE
 (3024 6 (:REWRITE FM9001::ASSOC-EQ-VALUES-CONS-NOT-MEMBER))
 (2994 6 (:DEFINITION MEMBER-EQUAL))
 (2940 6 (:REWRITE FM9001::SI-OF-DIFF-SYMBOLS-2))
 (2922 6 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (2724 18 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (1584 96 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (1566 96 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (1218 12 (:REWRITE STR::IPREFIXP-OF-CONS-LEFT))
 (1182 18 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (696 24 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (512 347 (:REWRITE DEFAULT-CDR))
 (462 462 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (407 275 (:REWRITE DEFAULT-+-2))
 (333 210 (:REWRITE DEFAULT-CAR))
 (275 275 (:REWRITE DEFAULT-+-1))
 (202 62 (:REWRITE FOLD-CONSTS-IN-+))
 (172 86 (:TYPE-PRESCRIPTION FM9001::CONSP-SIS))
 (148 112 (:REWRITE DEFAULT-<-2))
 (146 10 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-SE-OCC))
 (144 144 (:LINEAR LEN-WHEN-PREFIXP))
 (136 112 (:REWRITE DEFAULT-<-1))
 (132 90 (:REWRITE STR::CONSP-OF-EXPLODE))
 (114 114 (:TYPE-PRESCRIPTION PREFIXP))
 (111 30 (:REWRITE ZP-OPEN))
 (96 96 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (96 96 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (96 96 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (96 96 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (96 36 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (86 86 (:TYPE-PRESCRIPTION FM9001::SIS))
 (86 86 (:TYPE-PRESCRIPTION POSP))
 (80 20 (:REWRITE FM9001::LEN-SIS))
 (80 14 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-ATOM-NAMES))
 (72 72 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (72 36 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (68 4 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-CONS))
 (60 20 (:DEFINITION NFIX))
 (54 12 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (36 36 (:TYPE-PRESCRIPTION FM9001::SE))
 (36 18 (:REWRITE FM9001::CONSP-ASSOC-EQ-VALUES))
 (36 6 (:DEFINITION BINARY-APPEND))
 (30 30 (:TYPE-PRESCRIPTION PAIRLIS$))
 (30 30 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (30 10 (:REWRITE FM9001::V-THREEFIX-BVP))
 (28 10 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-ATOM))
 (24 24 (:TYPE-PRESCRIPTION STR::ICHAREQV$INLINE))
 (20 20 (:TYPE-PRESCRIPTION FM9001::BVP))
 (20 20 (:TYPE-PRESCRIPTION FM9001::ALL-UNBOUND-IN-BODY))
 (18 18 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (16 8 (:REWRITE UNICITY-OF-0))
 (16 4 (:REWRITE FM9001::ASSOC-EQ-VALUE-CONS-2))
 (8 8 (:DEFINITION FIX))
 (6 6 (:TYPE-PRESCRIPTION STR::ISTRPREFIXP$INLINE))
 (6 6 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (6 6 (:REWRITE DEFAULT-SYMBOL-NAME))
 (6 4 (:REWRITE FM9001::F-GATES=B-GATES))
 (4 4 (:TYPE-PRESCRIPTION BOOLEANP))
 (3 1 (:REWRITE FM9001::F-BUF-OF-3VP))
 (1 1 (:TYPE-PRESCRIPTION FM9001::3VP))
 )
(FM9001::NOT-PRIMP-REG)
(FM9001::REG$VALUE
 (19776 16 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (19108 76 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (18844 14 (:REWRITE FM9001::SI-OF-DIFF-SYMBOLS-2))
 (14905 13 (:DEFINITION FM9001::DELETE-TO-EQ))
 (12744 732 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (11686 732 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (11298 60 (:REWRITE STR::IPREFIXP-OF-CONS-LEFT))
 (11118 146 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (7414 288 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (4278 786 (:DEFINITION LEN))
 (2278 2 (:DEFINITION FM9001::SE))
 (1972 1666 (:REWRITE DEFAULT-CDR))
 (1582 1582 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (1552 776 (:REWRITE DEFAULT-+-2))
 (1036 1036 (:LINEAR LEN-WHEN-PREFIXP))
 (949 760 (:REWRITE DEFAULT-CAR))
 (816 519 (:REWRITE DEFAULT-<-1))
 (808 808 (:TYPE-PRESCRIPTION PREFIXP))
 (776 776 (:REWRITE DEFAULT-+-1))
 (741 519 (:REWRITE DEFAULT-<-2))
 (732 732 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (732 732 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (732 732 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (732 732 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (518 518 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (444 222 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (382 222 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (352 240 (:REWRITE STR::CONSP-OF-EXPLODE))
 (279 93 (:REWRITE FM9001::F-GATES=B-GATES))
 (220 220 (:TYPE-PRESCRIPTION BOOLEANP))
 (216 216 (:REWRITE NTH-WHEN-PREFIXP))
 (212 212 (:REWRITE NTH-ADD1))
 (172 60 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (120 2 (:DEFINITION FM9001::DUAL-PORT-RAM-VALUE))
 (92 92 (:TYPE-PRESCRIPTION STR::ICHAREQV$INLINE))
 (85 27 (:REWRITE FM9001::F-BUF-OF-NOT-BOOLEANP))
 (79 27 (:REWRITE FM9001::F-BUF-OF-3VP))
 (76 76 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (58 4 (:DEFINITION SUBSEQ-LIST))
 (58 4 (:DEFINITION MEMBER-EQUAL))
 (56 56 (:TYPE-PRESCRIPTION FM9001::3VP))
 (36 10 (:REWRITE FM9001::ASSOC-EQ-OF-NON-FN-NETLIST))
 (26 2 (:REWRITE FM9001::ASSOC-EQ-VALUES-CONS-NOT-MEMBER))
 (24 24 (:TYPE-PRESCRIPTION FM9001::NET-SYNTAX-OKP))
 (22 4 (:REWRITE FM9001::F-IF-REWRITE))
 (20 8 (:REWRITE FM9001::OPEN-V-THREEFIX))
 (20 4 (:REWRITE FM9001::NTHCDR-OF-LEN-L))
 (16 16 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (16 16 (:REWRITE DEFAULT-SYMBOL-NAME))
 (16 4 (:DEFINITION STRIP-CARS))
 (14 14 (:TYPE-PRESCRIPTION FM9001::BVP))
 (12 12 (:TYPE-PRESCRIPTION STRIP-CARS))
 (12 12 (:TYPE-PRESCRIPTION FM9001::FT-WIRE))
 (12 4 (:REWRITE FM9001::FT-BUF-REWRITE))
 (12 4 (:REWRITE FM9001::BVP-IS-TRUE-LISTP))
 (12 2 (:REWRITE TAKE-OF-TOO-MANY))
 (12 2 (:DEFINITION BINARY-APPEND))
 (10 10 (:TYPE-PRESCRIPTION PAIRLIS$))
 (10 2 (:REWRITE TAKE-OF-LEN-FREE))
 (10 2 (:REWRITE FM9001::LEN-READ-MEM-OF-MEMORY-PROPERP-32))
 (10 2 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-SE-OCC))
 (10 2 (:DEFINITION TRUE-LISTP))
 (8 8 (:TYPE-PRESCRIPTION FM9001::F-BUF))
 (8 8 (:REWRITE FM9001::F-NAND-REWRITE))
 (8 4 (:TYPE-PRESCRIPTION FM9001::TRUE-LISTP-READ-MEM-OF-MEMORY-PROPERP-32))
 (8 4 (:REWRITE FM9001::V-THREEFIX-BVP))
 (8 4 (:DEFINITION NTHCDR))
 (8 4 (:DEFINITION FM9001::3V-FIX))
 (6 6 (:TYPE-PRESCRIPTION FM9001::MEMORY-PROPERP))
 (6 6 (:TYPE-PRESCRIPTION FM9001::F-IF))
 (6 6 (:REWRITE FM9001::F-AND-REWRITE))
 (6 2 (:REWRITE FM9001::NET-SYNTAX-OKP-DELETE-TO-EQ-NETLIST))
 (4 4 (:TYPE-PRESCRIPTION FM9001::TRUE-LISTP-READ-MEM-OF-MEMORY-PROPERP))
 (4 4 (:TYPE-PRESCRIPTION FM9001::READ-MEM))
 (4 4 (:TYPE-PRESCRIPTION FM9001::ALL-UNBOUND-IN-BODY))
 (4 4 (:REWRITE NTH-0-CONS))
 (4 4 (:REWRITE FM9001::ASSOC-EQ-VALUES-ATOM))
 (2 2 (:TYPE-PRESCRIPTION NFIX))
 (2 2 (:REWRITE TAKE-WHEN-ATOM))
 (2 2 (:REWRITE TAKE-OF-CONS))
 (2 2 (:REWRITE FM9001::LEN-READ-MEM-OF-MEMORY-PROPERP))
 (2 2 (:REWRITE FM9001::LEN-READ-MEM-OF-MEMORY-OKP))
 (2 2 (:REWRITE CONS-EQUAL))
 (2 2 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-ATOM-NAMES))
 (2 2 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-ATOM))
 )
(FM9001::REG-BODY-STATE-INDUCTION
 (3 3 (:TYPE-PRESCRIPTION FM9001::DE-OCC-BINDINGS))
 )
(FM9001::REG-BODY$STATE-AUX-1
 (43 40 (:REWRITE DEFAULT-CAR))
 (18 6 (:REWRITE FM9001::ASSOC-EQ-OF-NON-FN-NETLIST))
 (12 12 (:TYPE-PRESCRIPTION FM9001::NET-SYNTAX-OKP))
 (12 10 (:REWRITE DEFAULT-CDR))
 )
(FM9001::REG-BODY$STATE-AUX-2
 (1470 3 (:REWRITE FM9001::SI-OF-DIFF-SYMBOLS-2))
 (1461 3 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (1362 9 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (792 48 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (783 48 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (609 6 (:REWRITE STR::IPREFIXP-OF-CONS-LEFT))
 (591 9 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (348 12 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (306 48 (:DEFINITION LEN))
 (300 300 (:TYPE-PRESCRIPTION LEN))
 (231 231 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (131 84 (:REWRITE DEFAULT-CDR))
 (100 52 (:REWRITE DEFAULT-+-2))
 (70 41 (:REWRITE DEFAULT-CAR))
 (66 45 (:REWRITE STR::CONSP-OF-EXPLODE))
 (60 60 (:LINEAR LEN-WHEN-PREFIXP))
 (60 42 (:REWRITE DEFAULT-<-2))
 (57 57 (:TYPE-PRESCRIPTION PREFIXP))
 (54 42 (:REWRITE DEFAULT-<-1))
 (52 52 (:REWRITE DEFAULT-+-1))
 (48 48 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (48 48 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (48 48 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (48 48 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (48 18 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (36 18 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (30 30 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (27 6 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (12 12 (:TYPE-PRESCRIPTION STR::ICHAREQV$INLINE))
 (9 9 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (4 4 (:REWRITE ZP-OPEN))
 (3 3 (:TYPE-PRESCRIPTION STR::ISTRPREFIXP$INLINE))
 (3 3 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (3 3 (:REWRITE DEFAULT-SYMBOL-NAME))
 )
(FM9001::REG-BODY$STATE
 (4903 13 (:REWRITE FM9001::SI-OF-DIFF-SYMBOLS-2))
 (4870 10 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (4540 30 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (2640 160 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (2610 160 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (2549 14 (:DEFINITION MEMBER-EQUAL))
 (2030 20 (:REWRITE STR::IPREFIXP-OF-CONS-LEFT))
 (1970 30 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (1479 3 (:REWRITE FM9001::ASSOC-EQ-VALUE-UPDATE-ALIST-2))
 (1160 40 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (1026 5 (:DEFINITION ASSOC-EQUAL))
 (770 770 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (585 406 (:REWRITE DEFAULT-CDR))
 (473 292 (:REWRITE DEFAULT-+-2))
 (328 215 (:REWRITE DEFAULT-CAR))
 (292 292 (:REWRITE DEFAULT-+-1))
 (220 150 (:REWRITE STR::CONSP-OF-EXPLODE))
 (212 212 (:LINEAR LEN-WHEN-PREFIXP))
 (198 138 (:REWRITE DEFAULT-<-2))
 (190 190 (:TYPE-PRESCRIPTION PREFIXP))
 (178 138 (:REWRITE DEFAULT-<-1))
 (160 160 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (160 160 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (160 160 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (160 160 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (160 60 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (146 46 (:REWRITE FOLD-CONSTS-IN-+))
 (130 5 (:REWRITE FM9001::ASSOC-EQ-VALUES-DE-OCC-UPDATE-ALIST))
 (120 60 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (106 106 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (90 20 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (86 23 (:REWRITE ZP-OPEN))
 (84 17 (:DEFINITION STRIP-CARS))
 (79 9 (:REWRITE FM9001::UPDATE-ALIST-OF-NOT-A-KEY))
 (54 8 (:DEFINITION ALISTP))
 (42 6 (:REWRITE FM9001::CONSP-ASSOC-EQ-VALUES))
 (40 40 (:TYPE-PRESCRIPTION STR::ICHAREQV$INLINE))
 (40 40 (:TYPE-PRESCRIPTION ALISTP))
 (40 10 (:REWRITE FM9001::LEN-SIS))
 (30 30 (:TYPE-PRESCRIPTION STRIP-CARS))
 (30 30 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (30 10 (:REWRITE FM9001::ASSOC-EQ-OF-NON-FN-NETLIST))
 (30 10 (:DEFINITION NFIX))
 (24 24 (:TYPE-PRESCRIPTION BOOLEANP))
 (24 8 (:REWRITE FM9001::F-GATES=B-GATES))
 (20 20 (:TYPE-PRESCRIPTION FM9001::NET-SYNTAX-OKP))
 (17 7 (:REWRITE FM9001::V-THREEFIX-BVP))
 (15 15 (:REWRITE FM9001::SUBSETP-TRANSITIVITY))
 (15 3 (:REWRITE FM9001::SI-MEMBER-SIS))
 (12 12 (:TYPE-PRESCRIPTION FM9001::UPDATE-ALIST))
 (12 4 (:REWRITE FM9001::F-BUF-OF-NOT-BOOLEANP))
 (12 3 (:REWRITE FM9001::UPDATE-ALIST-DIFF-KEYS))
 (10 10 (:TYPE-PRESCRIPTION FM9001::BVP))
 (10 10 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (10 10 (:REWRITE DEFAULT-SYMBOL-NAME))
 (9 3 (:REWRITE FM9001::ASSOC-EQ-VALUE-UPDATE-ALIST-1))
 (9 3 (:DEFINITION POSP))
 (8 4 (:REWRITE UNICITY-OF-0))
 (4 4 (:DEFINITION FIX))
 (3 3 (:REWRITE FM9001::SI-SIS-DIFF-IDXES))
 (2 2 (:REWRITE FM9001::ASSOC-EQ-VALUE-DE-OCC-UPDATE-ALIST-DIFF-NAMES))
 )
(FM9001::REG$STATE
 (115970 94 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (112048 446 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (110372 82 (:REWRITE FM9001::SI-OF-DIFF-SYMBOLS-2))
 (101510 82 (:DEFINITION FM9001::DELETE-TO-EQ))
 (74718 4292 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (68522 4292 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (66232 352 (:REWRITE STR::IPREFIXP-OF-CONS-LEFT))
 (65176 856 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (43458 1688 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (24533 4493 (:DEFINITION LEN))
 (9705 8099 (:REWRITE DEFAULT-CDR))
 (9288 9288 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (8986 4493 (:REWRITE DEFAULT-+-2))
 (6096 6096 (:LINEAR LEN-WHEN-PREFIXP))
 (4738 4738 (:TYPE-PRESCRIPTION PREFIXP))
 (4705 3006 (:REWRITE DEFAULT-<-1))
 (4681 3647 (:REWRITE DEFAULT-CAR))
 (4493 4493 (:REWRITE DEFAULT-+-1))
 (4308 3006 (:REWRITE DEFAULT-<-2))
 (4292 4292 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (4292 4292 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (4292 4292 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (4292 4292 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (3048 3048 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (2604 1302 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (2242 1302 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (2068 1410 (:REWRITE STR::CONSP-OF-EXPLODE))
 (1010 352 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (540 540 (:TYPE-PRESCRIPTION STR::ICHAREQV$INLINE))
 (446 446 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (418 33 (:DEFINITION MEMBER-EQUAL))
 (410 28 (:REWRITE FM9001::UPDATE-ALIST-OF-NOT-A-KEY))
 (304 110 (:REWRITE FM9001::ASSOC-EQ-OF-NON-FN-NETLIST))
 (188 188 (:TYPE-PRESCRIPTION FM9001::NET-SYNTAX-OKP))
 (156 156 (:TYPE-PRESCRIPTION FM9001::SE))
 (104 13 (:DEFINITION ALISTP))
 (96 48 (:REWRITE FM9001::ASSOC-EQ-VALUES-ATOM))
 (96 16 (:DEFINITION BINARY-APPEND))
 (94 94 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (94 94 (:REWRITE DEFAULT-SYMBOL-NAME))
 (56 1 (:REWRITE FM9001::ASSOC-EQ-VALUES-DE-OCC-UPDATE-ALIST))
 (44 44 (:TYPE-PRESCRIPTION FM9001::UPDATE-ALIST))
 (36 36 (:TYPE-PRESCRIPTION FM9001::BVP))
 (36 12 (:REWRITE FM9001::BVP-IS-TRUE-LISTP))
 (32 32 (:TYPE-PRESCRIPTION BOOLEANP))
 (30 6 (:DEFINITION TRUE-LISTP))
 (28 12 (:REWRITE FM9001::F-GATES=B-GATES))
 (28 12 (:REWRITE FM9001::F-BUF-OF-NOT-BOOLEANP))
 (28 12 (:REWRITE FM9001::F-BUF-OF-3VP))
 (25 3 (:DEFINITION STRIP-CARS))
 (22 10 (:REWRITE FM9001::V-THREEFIX-BVP))
 (20 20 (:TYPE-PRESCRIPTION FM9001::V-THREEFIX))
 (20 20 (:REWRITE FM9001::OPEN-V-THREEFIX))
 (18 6 (:REWRITE FM9001::NET-SYNTAX-OKP-DELETE-TO-EQ-NETLIST))
 (16 16 (:TYPE-PRESCRIPTION FM9001::F-BUF))
 (16 16 (:TYPE-PRESCRIPTION FM9001::3VP))
 (11 11 (:REWRITE FM9001::ALISTP-PAIRLIS$))
 (8 4 (:REWRITE FM9001::UPDATE-ALIST-DIFF-KEYS))
 (8 4 (:REWRITE FM9001::ASSOC-EQ-VALUE-UPDATE-ALIST-1))
 (7 7 (:TYPE-PRESCRIPTION STRIP-CARS))
 (7 7 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-ATOM))
 (4 4 (:REWRITE FM9001::SUBSETP-TRANSITIVITY))
 )
(FM9001::WE-REG-BODY)
(FM9001::WE-REG*
 (14 7 (:TYPE-PRESCRIPTION FM9001::CONSP-SIS))
 (7 7 (:TYPE-PRESCRIPTION POSP))
 )
(FM9001::WE-REG*$DESTRUCTURE
 (4055 1 (:REWRITE FM9001::SI-OF-DIFF-SYMBOLS-2))
 (4052 1 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (3994 8 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (3021 156 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (2863 7 (:REWRITE STR::IPREFIXP-OF-CONS-LEFT))
 (2842 28 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (2494 156 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (2151 84 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (1020 1020 (:TYPE-PRESCRIPTION LEN))
 (802 156 (:DEFINITION LEN))
 (312 156 (:REWRITE DEFAULT-+-2))
 (300 285 (:REWRITE DEFAULT-CDR))
 (240 240 (:LINEAR LEN-WHEN-PREFIXP))
 (216 127 (:REWRITE DEFAULT-<-1))
 (187 187 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (164 164 (:TYPE-PRESCRIPTION PREFIXP))
 (163 127 (:REWRITE DEFAULT-<-2))
 (156 156 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (156 156 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (156 156 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (156 156 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (156 156 (:REWRITE DEFAULT-+-1))
 (133 124 (:REWRITE DEFAULT-CAR))
 (120 120 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (99 54 (:TYPE-PRESCRIPTION FM9001::CONSP-SIS))
 (72 36 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (46 36 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (45 45 (:TYPE-PRESCRIPTION POSP))
 (43 43 (:DEFINITION NOT))
 (22 15 (:REWRITE STR::CONSP-OF-EXPLODE))
 (14 7 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (9 9 (:TYPE-PRESCRIPTION STR::ICHAREQV$INLINE))
 (8 8 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:TYPE-PRESCRIPTION STR::ISTRPREFIXP$INLINE))
 (1 1 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (1 1 (:REWRITE DEFAULT-SYMBOL-NAME))
 )
(FM9001::WE-REG&)
(FM9001::WE-REG$NETLIST)
(FM9001::WE-REG-BODY$UNBOUND-IN-BODY
 (13386 21 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (12648 72 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (7659 462 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (7506 462 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (6279 51 (:REWRITE STR::IPREFIXP-OF-CONS-LEFT))
 (6126 90 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (3759 138 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (2910 2910 (:TYPE-PRESCRIPTION LEN))
 (2772 462 (:DEFINITION LEN))
 (1707 1707 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (1209 894 (:REWRITE DEFAULT-CDR))
 (976 508 (:REWRITE DEFAULT-+-2))
 (621 432 (:REWRITE DEFAULT-CAR))
 (600 600 (:LINEAR LEN-WHEN-PREFIXP))
 (534 534 (:TYPE-PRESCRIPTION PREFIXP))
 (508 508 (:REWRITE DEFAULT-+-1))
 (490 328 (:REWRITE DEFAULT-<-2))
 (466 328 (:REWRITE DEFAULT-<-1))
 (462 462 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (462 462 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (462 462 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (462 462 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (462 315 (:REWRITE STR::CONSP-OF-EXPLODE))
 (372 162 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (324 162 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (300 300 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (198 51 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (93 93 (:TYPE-PRESCRIPTION FM9001::WE-REG-BODY))
 (93 93 (:TYPE-PRESCRIPTION STR::ICHAREQV$INLINE))
 (72 72 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (54 18 (:REWRITE FOLD-CONSTS-IN-+))
 (43 16 (:REWRITE ZP-OPEN))
 (42 21 (:REWRITE DEFAULT-SYMBOL-NAME))
 (21 21 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(FM9001::WE-REG-BODY$ALL-UNBOUND-IN-BODY
 (26 13 (:TYPE-PRESCRIPTION FM9001::CONSP-SIS))
 (16 4 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-ATOM))
 (13 13 (:TYPE-PRESCRIPTION FM9001::SIS))
 (13 13 (:TYPE-PRESCRIPTION POSP))
 (12 12 (:TYPE-PRESCRIPTION FM9001::WE-REG-BODY))
 (6 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(FM9001::WE-REG-BODY-INDUCTION)
(FM9001::WE-REG-BODY$VALUE
 (3024 6 (:REWRITE FM9001::ASSOC-EQ-VALUES-CONS-NOT-MEMBER))
 (2994 6 (:DEFINITION MEMBER-EQUAL))
 (2940 6 (:REWRITE FM9001::SI-OF-DIFF-SYMBOLS-2))
 (2922 6 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (2724 18 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (1584 96 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (1566 96 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (1218 12 (:REWRITE STR::IPREFIXP-OF-CONS-LEFT))
 (1182 18 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (1026 160 (:DEFINITION LEN))
 (696 24 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (512 347 (:REWRITE DEFAULT-CDR))
 (462 462 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (407 275 (:REWRITE DEFAULT-+-2))
 (328 205 (:REWRITE DEFAULT-CAR))
 (275 275 (:REWRITE DEFAULT-+-1))
 (202 62 (:REWRITE FOLD-CONSTS-IN-+))
 (172 86 (:TYPE-PRESCRIPTION FM9001::CONSP-SIS))
 (148 112 (:REWRITE DEFAULT-<-2))
 (146 10 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-SE-OCC))
 (144 144 (:LINEAR LEN-WHEN-PREFIXP))
 (136 112 (:REWRITE DEFAULT-<-1))
 (132 90 (:REWRITE STR::CONSP-OF-EXPLODE))
 (114 114 (:TYPE-PRESCRIPTION PREFIXP))
 (111 30 (:REWRITE ZP-OPEN))
 (96 96 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (96 96 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (96 96 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (96 96 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (96 36 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (86 86 (:TYPE-PRESCRIPTION FM9001::SIS))
 (86 86 (:TYPE-PRESCRIPTION POSP))
 (80 20 (:REWRITE FM9001::LEN-SIS))
 (80 14 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-ATOM-NAMES))
 (72 72 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (72 36 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (68 4 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-CONS))
 (60 20 (:DEFINITION NFIX))
 (54 12 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (36 36 (:TYPE-PRESCRIPTION FM9001::SE))
 (36 18 (:REWRITE FM9001::CONSP-ASSOC-EQ-VALUES))
 (36 6 (:DEFINITION BINARY-APPEND))
 (30 30 (:TYPE-PRESCRIPTION PAIRLIS$))
 (30 30 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (30 10 (:REWRITE FM9001::V-THREEFIX-BVP))
 (28 10 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-ATOM))
 (24 24 (:TYPE-PRESCRIPTION STR::ICHAREQV$INLINE))
 (20 20 (:TYPE-PRESCRIPTION FM9001::BVP))
 (20 20 (:TYPE-PRESCRIPTION FM9001::ALL-UNBOUND-IN-BODY))
 (18 18 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (16 8 (:REWRITE UNICITY-OF-0))
 (16 4 (:REWRITE FM9001::ASSOC-EQ-VALUE-CONS-2))
 (8 8 (:DEFINITION FIX))
 (6 6 (:TYPE-PRESCRIPTION STR::ISTRPREFIXP$INLINE))
 (6 6 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (6 6 (:REWRITE DEFAULT-SYMBOL-NAME))
 (6 4 (:REWRITE FM9001::F-GATES=B-GATES))
 (4 4 (:TYPE-PRESCRIPTION BOOLEANP))
 (3 1 (:REWRITE FM9001::F-BUF-OF-3VP))
 (1 1 (:TYPE-PRESCRIPTION FM9001::3VP))
 )
(FM9001::NOT-PRIMP-WE-REG)
(FM9001::WE-REG$VALUE
 (86066 23 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (85155 21 (:REWRITE FM9001::SI-OF-DIFF-SYMBOLS-2))
 (84782 174 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (73171 23 (:DEFINITION FM9001::DELETE-TO-EQ))
 (63963 3308 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (60529 151 (:REWRITE STR::IPREFIXP-OF-CONS-LEFT))
 (60076 594 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (52902 3308 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (45403 1772 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (17516 3404 (:DEFINITION LEN))
 (7146 6719 (:REWRITE DEFAULT-CDR))
 (6758 3379 (:REWRITE DEFAULT-+-2))
 (5745 5 (:DEFINITION FM9001::SE))
 (5108 5108 (:LINEAR LEN-WHEN-PREFIXP))
 (4346 2557 (:REWRITE DEFAULT-<-1))
 (4081 4081 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (3482 3482 (:TYPE-PRESCRIPTION PREFIXP))
 (3379 3379 (:REWRITE DEFAULT-+-1))
 (3325 2557 (:REWRITE DEFAULT-<-2))
 (3308 3308 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (3308 3308 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (3308 3308 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (3308 3308 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (3294 3023 (:REWRITE DEFAULT-CAR))
 (2554 2554 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (1536 768 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (998 768 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (677 226 (:REWRITE FM9001::F-GATES=B-GATES))
 (540 540 (:REWRITE NTH-WHEN-PREFIXP))
 (530 530 (:REWRITE NTH-ADD1))
 (522 522 (:TYPE-PRESCRIPTION BOOLEANP))
 (506 345 (:REWRITE STR::CONSP-OF-EXPLODE))
 (312 151 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (300 5 (:DEFINITION FM9001::DUAL-PORT-RAM-VALUE))
 (197 197 (:TYPE-PRESCRIPTION STR::ICHAREQV$INLINE))
 (192 61 (:REWRITE FM9001::F-BUF-OF-NOT-BOOLEANP))
 (177 61 (:REWRITE FM9001::F-BUF-OF-3VP))
 (174 174 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (145 10 (:DEFINITION SUBSEQ-LIST))
 (126 126 (:TYPE-PRESCRIPTION FM9001::3VP))
 (63 16 (:REWRITE FM9001::ASSOC-EQ-OF-NON-FN-NETLIST))
 (58 4 (:DEFINITION MEMBER-EQUAL))
 (55 10 (:REWRITE FM9001::F-IF-REWRITE))
 (50 10 (:REWRITE FM9001::NTHCDR-OF-LEN-L))
 (42 42 (:TYPE-PRESCRIPTION FM9001::NET-SYNTAX-OKP))
 (30 30 (:TYPE-PRESCRIPTION FM9001::FT-WIRE))
 (30 10 (:REWRITE FM9001::FT-BUF-REWRITE))
 (30 5 (:REWRITE TAKE-OF-TOO-MANY))
 (26 2 (:REWRITE FM9001::ASSOC-EQ-VALUES-CONS-NOT-MEMBER))
 (25 5 (:REWRITE TAKE-OF-LEN-FREE))
 (25 5 (:REWRITE FM9001::LEN-READ-MEM-OF-MEMORY-PROPERP-32))
 (25 5 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-SE-OCC))
 (23 23 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (23 23 (:REWRITE DEFAULT-SYMBOL-NAME))
 (20 20 (:REWRITE FM9001::F-NAND-REWRITE))
 (20 10 (:TYPE-PRESCRIPTION FM9001::TRUE-LISTP-READ-MEM-OF-MEMORY-PROPERP-32))
 (20 10 (:DEFINITION NTHCDR))
 (20 10 (:DEFINITION FM9001::3V-FIX))
 (20 8 (:REWRITE FM9001::OPEN-V-THREEFIX))
 (17 17 (:TYPE-PRESCRIPTION FM9001::F-BUF))
 (17 17 (:TYPE-PRESCRIPTION FM9001::BVP))
 (16 4 (:DEFINITION STRIP-CARS))
 (15 15 (:TYPE-PRESCRIPTION FM9001::MEMORY-PROPERP))
 (15 15 (:TYPE-PRESCRIPTION FM9001::F-IF))
 (15 15 (:REWRITE FM9001::F-AND-REWRITE))
 (15 5 (:REWRITE FM9001::NET-SYNTAX-OKP-DELETE-TO-EQ-NETLIST))
 (12 12 (:TYPE-PRESCRIPTION STRIP-CARS))
 (12 4 (:REWRITE FM9001::BVP-IS-TRUE-LISTP))
 (12 2 (:DEFINITION BINARY-APPEND))
 (10 10 (:TYPE-PRESCRIPTION FM9001::TRUE-LISTP-READ-MEM-OF-MEMORY-PROPERP))
 (10 10 (:TYPE-PRESCRIPTION FM9001::READ-MEM))
 (10 10 (:TYPE-PRESCRIPTION PAIRLIS$))
 (10 10 (:TYPE-PRESCRIPTION FM9001::ALL-UNBOUND-IN-BODY))
 (10 10 (:REWRITE NTH-0-CONS))
 (10 2 (:DEFINITION TRUE-LISTP))
 (8 4 (:REWRITE FM9001::V-THREEFIX-BVP))
 (7 7 (:REWRITE FM9001::ASSOC-EQ-VALUES-ATOM))
 (5 5 (:TYPE-PRESCRIPTION NFIX))
 (5 5 (:REWRITE TAKE-WHEN-ATOM))
 (5 5 (:REWRITE TAKE-OF-CONS))
 (5 5 (:REWRITE FM9001::LEN-READ-MEM-OF-MEMORY-PROPERP))
 (5 5 (:REWRITE FM9001::LEN-READ-MEM-OF-MEMORY-OKP))
 (5 5 (:REWRITE CONS-EQUAL))
 (5 5 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-ATOM-NAMES))
 (5 5 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-ATOM))
 )
(FM9001::WE-REG-BODY-STATE-INDUCTION
 (3 3 (:TYPE-PRESCRIPTION FM9001::DE-OCC-BINDINGS))
 )
(FM9001::WE-REG-BODY$STATE-AUX
 (1470 3 (:REWRITE FM9001::SI-OF-DIFF-SYMBOLS-2))
 (1461 3 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (1362 9 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (792 48 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (783 48 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (609 6 (:REWRITE STR::IPREFIXP-OF-CONS-LEFT))
 (591 9 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (348 12 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (306 48 (:DEFINITION LEN))
 (300 300 (:TYPE-PRESCRIPTION LEN))
 (231 231 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (131 84 (:REWRITE DEFAULT-CDR))
 (100 52 (:REWRITE DEFAULT-+-2))
 (70 41 (:REWRITE DEFAULT-CAR))
 (66 45 (:REWRITE STR::CONSP-OF-EXPLODE))
 (60 60 (:LINEAR LEN-WHEN-PREFIXP))
 (60 42 (:REWRITE DEFAULT-<-2))
 (57 57 (:TYPE-PRESCRIPTION PREFIXP))
 (54 42 (:REWRITE DEFAULT-<-1))
 (52 52 (:REWRITE DEFAULT-+-1))
 (48 48 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (48 48 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (48 48 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (48 48 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (48 18 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (36 18 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (30 30 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (27 6 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (12 12 (:TYPE-PRESCRIPTION STR::ICHAREQV$INLINE))
 (9 9 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (4 4 (:REWRITE ZP-OPEN))
 (3 3 (:TYPE-PRESCRIPTION STR::ISTRPREFIXP$INLINE))
 (3 3 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (3 3 (:REWRITE DEFAULT-SYMBOL-NAME))
 )
(FM9001::WE-REG-BODY$STATE
 (16673 47 (:REWRITE FM9001::SI-OF-DIFF-SYMBOLS-2))
 (16558 34 (:DEFINITION STR::ISTRPREFIXP$INLINE))
 (15436 102 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
 (8976 544 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (8874 544 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (7677 44 (:DEFINITION MEMBER-EQUAL))
 (6902 68 (:REWRITE STR::IPREFIXP-OF-CONS-LEFT))
 (6698 102 (:REWRITE PREFIXP-OF-CONS-LEFT))
 (6409 13 (:REWRITE FM9001::ASSOC-EQ-VALUE-UPDATE-ALIST-2))
 (3944 136 (:REWRITE PREFIXP-OF-CONS-RIGHT))
 (3118 19 (:DEFINITION ASSOC-EQUAL))
 (2618 2618 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (2068 1388 (:REWRITE DEFAULT-CDR))
 (1702 1089 (:REWRITE DEFAULT-+-2))
 (1272 780 (:REWRITE DEFAULT-CAR))
 (1089 1089 (:REWRITE DEFAULT-+-1))
 (759 555 (:REWRITE DEFAULT-<-2))
 (748 510 (:REWRITE STR::CONSP-OF-EXPLODE))
 (732 732 (:LINEAR LEN-WHEN-PREFIXP))
 (691 555 (:REWRITE DEFAULT-<-1))
 (646 646 (:TYPE-PRESCRIPTION PREFIXP))
 (544 544 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (544 544 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (544 544 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (544 544 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (544 204 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (526 19 (:REWRITE FM9001::ASSOC-EQ-VALUES-DE-OCC-UPDATE-ALIST))
 (522 126 (:REWRITE ZP-OPEN))
 (408 204 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 (366 366 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (316 34 (:REWRITE FM9001::UPDATE-ALIST-OF-NOT-A-KEY))
 (306 68 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
 (218 32 (:DEFINITION ALISTP))
 (160 160 (:TYPE-PRESCRIPTION ALISTP))
 (152 56 (:REWRITE FM9001::CONSP-ASSOC-EQ-VALUES))
 (148 22 (:REWRITE REPEAT-WHEN-ZP))
 (136 136 (:TYPE-PRESCRIPTION STR::ICHAREQV$INLINE))
 (114 38 (:REWRITE FM9001::ASSOC-EQ-OF-NON-FN-NETLIST))
 (102 102 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
 (91 27 (:REWRITE FM9001::F-GATES=B-GATES))
 (76 76 (:TYPE-PRESCRIPTION FM9001::NET-SYNTAX-OKP))
 (66 14 (:REWRITE FM9001::SI-MEMBER-SIS))
 (52 52 (:TYPE-PRESCRIPTION FM9001::UPDATE-ALIST))
 (52 13 (:REWRITE FM9001::UPDATE-ALIST-DIFF-KEYS))
 (46 18 (:REWRITE CONSP-OF-REPEAT))
 (41 9 (:REWRITE FM9001::F-BUF-OF-NOT-BOOLEANP))
 (40 16 (:REWRITE FM9001::V-THREEFIX-BVP))
 (39 13 (:REWRITE FM9001::ASSOC-EQ-VALUE-UPDATE-ALIST-1))
 (39 13 (:DEFINITION POSP))
 (35 35 (:REWRITE FM9001::SUBSETP-TRANSITIVITY))
 (34 34 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (34 34 (:REWRITE DEFAULT-SYMBOL-NAME))
 (24 24 (:TYPE-PRESCRIPTION FM9001::BVP))
 (6 6 (:REWRITE FM9001::ASSOC-EQ-VALUE-DE-OCC-UPDATE-ALIST-DIFF-NAMES))
 )
(FM9001::WE-REG$STATE
 (4476 3865 (:REWRITE DEFAULT-CDR))
 (3870 378 (:DEFINITION FM9001::DELETE-TO-EQ))
 (3822 3187 (:REWRITE DEFAULT-CAR))
 (1652 826 (:REWRITE DEFAULT-+-2))
 (1579 121 (:REWRITE FM9001::UPDATE-ALIST-OF-NOT-A-KEY))
 (1493 128 (:DEFINITION MEMBER-EQUAL))
 (1384 346 (:REWRITE FM9001::SI-OF-DIFF-SYMBOLS-2))
 (1342 524 (:REWRITE FM9001::ASSOC-EQ-OF-NON-FN-NETLIST))
 (826 826 (:REWRITE DEFAULT-+-1))
 (794 794 (:TYPE-PRESCRIPTION FM9001::NET-SYNTAX-OKP))
 (564 564 (:TYPE-PRESCRIPTION FM9001::SE))
 (508 508 (:LINEAR LEN-WHEN-PREFIXP))
 (424 53 (:DEFINITION ALISTP))
 (384 64 (:DEFINITION BINARY-APPEND))
 (383 383 (:REWRITE DEFAULT-SYMBOL-NAME))
 (339 195 (:REWRITE FM9001::ASSOC-EQ-VALUES-ATOM))
 (254 254 (:LINEAR FM9001::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (180 60 (:REWRITE FM9001::BVP-IS-TRUE-LISTP))
 (168 3 (:REWRITE FM9001::ASSOC-EQ-VALUES-DE-OCC-UPDATE-ALIST))
 (166 166 (:TYPE-PRESCRIPTION FM9001::UPDATE-ALIST))
 (150 30 (:DEFINITION TRUE-LISTP))
 (148 148 (:TYPE-PRESCRIPTION FM9001::BVP))
 (139 25 (:DEFINITION STRIP-CARS))
 (93 63 (:REWRITE DEFAULT-<-1))
 (91 45 (:REWRITE FM9001::F-GATES=B-GATES))
 (89 43 (:REWRITE FM9001::F-BUF-OF-3VP))
 (82 40 (:REWRITE FM9001::OPEN-V-THREEFIX))
 (78 10 (:REWRITE REPEAT-WHEN-ZP))
 (75 63 (:REWRITE DEFAULT-<-2))
 (72 24 (:REWRITE FM9001::NET-SYNTAX-OKP-DELETE-TO-EQ-NETLIST))
 (72 6 (:REWRITE ZP-OPEN))
 (63 63 (:TYPE-PRESCRIPTION STRIP-CARS))
 (53 21 (:REWRITE CONSP-OF-REPEAT))
 (48 20 (:REWRITE FM9001::V-THREEFIX-BVP))
 (46 46 (:TYPE-PRESCRIPTION FM9001::3VP))
 (41 41 (:REWRITE FM9001::ALISTP-PAIRLIS$))
 (40 40 (:TYPE-PRESCRIPTION FM9001::V-THREEFIX))
 (31 31 (:REWRITE FM9001::ALL-UNBOUND-IN-BODY-ATOM))
 (20 10 (:REWRITE FM9001::UPDATE-ALIST-DIFF-KEYS))
 (20 10 (:REWRITE FM9001::ASSOC-EQ-VALUE-UPDATE-ALIST-1))
 (10 10 (:REWRITE FM9001::SUBSETP-TRANSITIVITY))
 (4 4 (:TYPE-PRESCRIPTION ZP))
 )