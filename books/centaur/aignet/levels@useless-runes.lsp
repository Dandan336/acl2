(AIGNET::AIGNET-RECORD-LEVELS-AUX
 (270 24
      (:REWRITE AIGNET::LOOKUP-ID-OUT-OF-BOUNDS))
 (245 36 (:REWRITE AIGNET::STYPE-BY-CTYPE))
 (226 14 (:REWRITE DEFAULT-CAR))
 (188 128 (:REWRITE DEFAULT-<-1))
 (184 128 (:REWRITE DEFAULT-<-2))
 (180 8
      (:REWRITE AIGNET::LOOKUP-ID-IN-BOUNDS-WHEN-POSITIVE))
 (173 46 (:REWRITE NFIX-WHEN-NOT-NATP))
 (148 68 (:REWRITE DEFAULT-+-2))
 (128 18 (:REWRITE ZP-WHEN-GT-0))
 (121 121 (:TYPE-PRESCRIPTION AIGNET::REGP))
 (115 37 (:REWRITE NATP-WHEN-GTE-0))
 (108 8 (:REWRITE POSP-REDEFINITION))
 (103 37 (:REWRITE NATP-WHEN-INTEGERP))
 (92 49
     (:REWRITE AIGNET::FANIN-COUNT-OF-ATOM))
 (81 13 (:DEFINITION LEN))
 (79 79
     (:REWRITE CONSP-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (78 68 (:REWRITE DEFAULT-+-1))
 (64 37 (:REWRITE NATP-RW))
 (62 62 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (62 62 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (51 51
     (:REWRITE AIGNET::FANIN-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (49 49
     (:REWRITE AIGNET::FANIN-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (40 4 (:DEFINITION AIGNET::U32ARR$AP))
 (30 30
     (:REWRITE AIGNET::STYPE$INLINE-OF-NODE-FIX-X-NORMALIZE-CONST))
 (30 8 (:REWRITE NATP-POSP))
 (26 8 (:REWRITE POSP-RW))
 (24 24
     (:REWRITE AIGNET::LOOKUP-ID-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (24 24
     (:REWRITE AIGNET::LOOKUP-ID-OF-NFIX-ID-NORMALIZE-CONST))
 (24 24
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION-INVERSE))
 (24 24
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION))
 (24 24
     (:REWRITE AIGNET::AIGNET-EXTENSION-SIMPLIFY-LOOKUP-ID))
 (23 6 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (22 22
     (:REWRITE AIGNET::REGP-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (19 17 (:REWRITE DEFAULT-CDR))
 (18 18
     (:REWRITE AIGNET::FANIN-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (18 18
     (:REWRITE AIGNET::FANIN-OF-BFIX-WHICH-NORMALIZE-CONST))
 (17 13 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 16
     (:REWRITE SATLINK::LIT->VAR$INLINE-OF-LIT-FIX-LIT-NORMALIZE-CONST))
 (16 16
     (:REWRITE SATLINK::EQUAL-OF-LIT-NEGATE-COND-COMPONENT-REWRITES))
 (16 16
     (:REWRITE SATLINK::EQUAL-OF-LIT-NEGATE-COMPONENT-REWRITES))
 (16 16
     (:LINEAR AIGNET::STYPE-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
 (16 16
     (:LINEAR AIGNET::STYPE-COUNT-WHEN-AIGNET-EXTENSION))
 (16 16
     (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-STYPE-COUNT-GTE))
 (16 8
     (:REWRITE AIGNET::STYPE-COUNT-OF-ATOM))
 (14 14 (:REWRITE FOLD-CONSTS-IN-+))
 (12 1 (:REWRITE NFIX-POSITIVE-TO-NON-ZP))
 (10
  10
  (:REWRITE AIGNET::CAR-OF-NODE-LIST-FIX-X-NORMALIZE-CONST-UNDER-NODE-EQUIV))
 (10 10
     (:REWRITE AIGNET::CAR-LOOKUP-ID-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (9 9
    (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
 (9 9
    (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION))
 (9 9
    (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-FANIN-COUNT-GTE))
 (9 5 (:REWRITE ZP-OPEN))
 (8 8 (:TYPE-PRESCRIPTION POSP))
 (8 8
    (:REWRITE AIGNET::STYPE-COUNT-OF-STYPE-FIX-TYPE-NORMALIZE-CONST))
 (8 8
    (:REWRITE AIGNET::STYPE-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (8 8
    (:REWRITE AIGNET::CTYPE-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (8 8 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (8 4
    (:REWRITE AIGNET::NODE-LISTP-WHEN-NOT-CONSP))
 (4 4
    (:REWRITE AIGNET::PO-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (4 4
    (:REWRITE AIGNET::AIGNET-NODES-OK-OF-SUFFIX-INVERSE))
 (4
  4
  (:REWRITE AIGNET::AIGNET-NODES-OK-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (4 4
    (:REWRITE AIGNET::AIGNET-NODES-OK-OF-EXTENSION))
 (1 1 (:REWRITE EQUAL-CONSTANT-+)))
(AIGNET::RETURN-TYPE-OF-AIGNET-RECORD-LEVELS-AUX
 (903 126 (:DEFINITION LEN))
 (873 93
      (:REWRITE AIGNET::LOOKUP-ID-OUT-OF-BOUNDS))
 (768 384
      (:TYPE-PRESCRIPTION AIGNET::TRUE-LISTP-LOOKUP-ID-OF-NODE-LISTP))
 (750 31 (:REWRITE DEFAULT-CAR))
 (559 131 (:REWRITE NFIX-WHEN-NOT-NATP))
 (519 281 (:REWRITE DEFAULT-+-2))
 (506 50 (:REWRITE AIGNET::STYPE-BY-CTYPE))
 (475 26
      (:REWRITE AIGNET::LOOKUP-ID-IN-BOUNDS-WHEN-POSITIVE))
 (403 278 (:REWRITE DEFAULT-<-2))
 (390 278 (:REWRITE DEFAULT-<-1))
 (384 384
      (:TYPE-PRESCRIPTION AIGNET::NODE-LISTP))
 (299 281 (:REWRITE DEFAULT-+-1))
 (287 287 (:META CANCEL_PLUS-LESSP-CORRECT))
 (264 264 (:TYPE-PRESCRIPTION AIGNET::REGP))
 (218 22 (:REWRITE POSP-REDEFINITION))
 (194 194 (:REWRITE NATP-RW))
 (189 126 (:REWRITE DEFAULT-CDR))
 (181 181 (:REWRITE NATP-WHEN-INTEGERP))
 (178 178
      (:REWRITE CONSP-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (157 46 (:REWRITE ZP-WHEN-GT-0))
 (128 67
      (:REWRITE AIGNET::FANIN-COUNT-OF-ATOM))
 (121 26 (:REWRITE NATP-POSP))
 (93 93
     (:REWRITE AIGNET::LOOKUP-ID-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (93 93
     (:REWRITE AIGNET::LOOKUP-ID-OF-NFIX-ID-NORMALIZE-CONST))
 (93 93
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION-INVERSE))
 (93 93
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION))
 (93 93
     (:REWRITE AIGNET::AIGNET-EXTENSION-SIMPLIFY-LOOKUP-ID))
 (84 7 (:REWRITE NFIX-POSITIVE-TO-NON-ZP))
 (79 79
     (:REWRITE AIGNET::STYPE$INLINE-OF-NODE-FIX-X-NORMALIZE-CONST))
 (78 78 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (78 78 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (72 72 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (67 67
     (:REWRITE AIGNET::FANIN-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (67 67
     (:REWRITE AIGNET::FANIN-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (65 37 (:REWRITE ZP-OPEN))
 (62 62
     (:REWRITE SATLINK::LIT->VAR$INLINE-OF-LIT-FIX-LIT-NORMALIZE-CONST))
 (62 62
     (:REWRITE AIGNET::FANIN-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (62 62
     (:REWRITE AIGNET::FANIN-OF-BFIX-WHICH-NORMALIZE-CONST))
 (62 62
     (:REWRITE SATLINK::EQUAL-OF-LIT-NEGATE-COND-COMPONENT-REWRITES))
 (62 62
     (:REWRITE SATLINK::EQUAL-OF-LIT-NEGATE-COMPONENT-REWRITES))
 (48 48
     (:REWRITE AIGNET::REGP-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (47 35 (:REWRITE DEFAULT-UNARY-MINUS))
 (42 42 (:REWRITE FOLD-CONSTS-IN-+))
 (31 31
     (:REWRITE AIGNET::CTYPE-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (31
  31
  (:REWRITE AIGNET::CAR-OF-NODE-LIST-FIX-X-NORMALIZE-CONST-UNDER-NODE-EQUIV))
 (31 31
     (:REWRITE AIGNET::CAR-LOOKUP-ID-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (26 26 (:TYPE-PRESCRIPTION POSP))
 (26 26
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
 (26 26
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION))
 (26 26
     (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-FANIN-COUNT-GTE))
 (25 22 (:REWRITE POSP-RW))
 (7 7
    (:REWRITE AIGNET$A::NUM-FANINS-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (6 6
    (:REWRITE AIGNET::ID->TYPE-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (6 6
    (:REWRITE AIGNET::ID->TYPE-OF-NFIX-ID-NORMALIZE-CONST))
 (4
  4
  (:REWRITE AIGNET::GATE-ID->FANIN1-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (4 4
    (:REWRITE AIGNET::GATE-ID->FANIN1-OF-NFIX-ID-NORMALIZE-CONST))
 (4
  4
  (:REWRITE AIGNET::GATE-ID->FANIN0-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (4 4
    (:REWRITE AIGNET::GATE-ID->FANIN0-OF-NFIX-ID-NORMALIZE-CONST)))
(AIGNET::AIGNET-RECORD-LEVELS-AUX-OF-NFIX
 (473 30
      (:REWRITE AIGNET::LOOKUP-ID-OUT-OF-BOUNDS))
 (391 84 (:REWRITE NFIX-WHEN-NOT-NATP))
 (255 12 (:REWRITE DEFAULT-CAR))
 (214 82 (:REWRITE DEFAULT-+-2))
 (175 7
      (:REWRITE AIGNET::LOOKUP-ID-IN-BOUNDS-WHEN-POSITIVE))
 (158 65 (:REWRITE NATP-WHEN-GTE-0))
 (153 20 (:REWRITE AIGNET::STYPE-BY-CTYPE))
 (136 81 (:REWRITE DEFAULT-<-2))
 (130 130 (:TYPE-PRESCRIPTION NATP))
 (114 82 (:REWRITE DEFAULT-+-1))
 (113 12 (:REWRITE ZP-WHEN-GT-0))
 (108 81 (:REWRITE DEFAULT-<-1))
 (89 89 (:META CANCEL_PLUS-LESSP-CORRECT))
 (77 77 (:TYPE-PRESCRIPTION AIGNET::REGP))
 (76 8 (:REWRITE <-0-+-NEGATIVE-2))
 (66 38 (:REWRITE FOLD-CONSTS-IN-+))
 (65 65 (:REWRITE NATP-WHEN-INTEGERP))
 (65 65 (:REWRITE NATP-RW))
 (54 33
     (:REWRITE AIGNET::FANIN-COUNT-OF-ATOM))
 (42 17
     (:TYPE-PRESCRIPTION AIGNET::TRUE-LISTP-LOOKUP-ID-OF-NODE-LISTP))
 (36 3 (:REWRITE POSP-REDEFINITION))
 (35 35 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (35 35 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (33 33
     (:REWRITE AIGNET::FANIN-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (33 33
     (:REWRITE AIGNET::FANIN-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (30 30
     (:REWRITE AIGNET::LOOKUP-ID-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (30 30
     (:REWRITE AIGNET::LOOKUP-ID-OF-NFIX-ID-NORMALIZE-CONST))
 (30 30
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION-INVERSE))
 (30 30
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION))
 (30 30
     (:REWRITE AIGNET::AIGNET-EXTENSION-SIMPLIFY-LOOKUP-ID))
 (24 24
     (:REWRITE AIGNET::STYPE$INLINE-OF-NODE-FIX-X-NORMALIZE-CONST))
 (24 24
     (:REWRITE CONSP-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (24 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (24 4
     (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (21 21
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
 (21 21
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION))
 (21 21
     (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-FANIN-COUNT-GTE))
 (20 20
     (:REWRITE SATLINK::LIT->VAR$INLINE-OF-LIT-FIX-LIT-NORMALIZE-CONST))
 (20 20
     (:REWRITE AIGNET::FANIN-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (20 20
     (:REWRITE AIGNET::FANIN-OF-BFIX-WHICH-NORMALIZE-CONST))
 (20 20
     (:REWRITE SATLINK::EQUAL-OF-LIT-NEGATE-COND-COMPONENT-REWRITES))
 (20 20
     (:REWRITE SATLINK::EQUAL-OF-LIT-NEGATE-COMPONENT-REWRITES))
 (19 19
     (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (18 18
     (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (18 3 (:REWRITE NATP-POSP))
 (17 17
     (:TYPE-PRESCRIPTION AIGNET::NODE-LISTP))
 (17 17
     (:TYPE-PRESCRIPTION AIGNET::LOOKUP-ID))
 (14 14
     (:REWRITE AIGNET::REGP-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (10 10
     (:REWRITE AIGNET$A::NUM-FANINS-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (10 10
     (:REWRITE AIGNET::ID->TYPE-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (10 10
     (:REWRITE AIGNET::ID->TYPE-OF-NFIX-ID-NORMALIZE-CONST))
 (10
  10
  (:REWRITE AIGNET::GATE-ID->FANIN1-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (10 10
     (:REWRITE AIGNET::GATE-ID->FANIN1-OF-NFIX-ID-NORMALIZE-CONST))
 (10
  10
  (:REWRITE AIGNET::GATE-ID->FANIN0-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (10 10
     (:REWRITE AIGNET::GATE-ID->FANIN0-OF-NFIX-ID-NORMALIZE-CONST))
 (10 10
     (:REWRITE AIGNET::CTYPE-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (10
  10
  (:REWRITE AIGNET::CAR-OF-NODE-LIST-FIX-X-NORMALIZE-CONST-UNDER-NODE-EQUIV))
 (10 10
     (:REWRITE AIGNET::CAR-LOOKUP-ID-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (8 4 (:REWRITE UNICITY-OF-0))
 (8 2 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE ZP-OPEN))
 (4 4 (:DEFINITION FIX))
 (3 3 (:TYPE-PRESCRIPTION POSP))
 (3 3 (:REWRITE POSP-RW)))
(AIGNET::AIGNET-NODE-LEVEL
 (292 10
      (:REWRITE AIGNET::LOOKUP-ID-OUT-OF-BOUNDS))
 (132 8 (:REWRITE DEFAULT-CAR))
 (126 6
      (:REWRITE AIGNET::LOOKUP-ID-IN-BOUNDS-WHEN-POSITIVE))
 (100 50
      (:TYPE-PRESCRIPTION AIGNET::TRUE-LISTP-LOOKUP-ID-OF-NODE-LISTP))
 (84 8 (:REWRITE AIGNET::STYPE-BY-CTYPE))
 (72 6 (:REWRITE POSP-REDEFINITION))
 (64 17 (:REWRITE NFIX-WHEN-NOT-NATP))
 (51 24 (:REWRITE NATP-WHEN-GTE-0))
 (50 50
     (:TYPE-PRESCRIPTION AIGNET::NODE-LISTP))
 (44 44 (:TYPE-PRESCRIPTION AIGNET::REGP))
 (39 27 (:REWRITE DEFAULT-<-1))
 (37 27 (:REWRITE DEFAULT-<-2))
 (36 6 (:REWRITE NATP-POSP))
 (30 30
     (:TYPE-PRESCRIPTION AIGNET::CTYPE-FIX))
 (30 12 (:REWRITE ZP-WHEN-GT-0))
 (27 27 (:META CANCEL_PLUS-LESSP-CORRECT))
 (24 24 (:REWRITE NATP-WHEN-INTEGERP))
 (24 24 (:REWRITE NATP-RW))
 (16 8
     (:REWRITE AIGNET::FANIN-COUNT-OF-ATOM))
 (14 14
     (:REWRITE AIGNET::FANIN-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (14 14
     (:REWRITE CONSP-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (12 12 (:REWRITE ZP-WHEN-INTEGERP))
 (12 12 (:REWRITE ZP-OPEN))
 (12 12
     (:REWRITE AIGNET::STYPE$INLINE-OF-NODE-FIX-X-NORMALIZE-CONST))
 (12 12 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (12 12 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (10 10
     (:REWRITE AIGNET::LOOKUP-ID-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (10 10
     (:REWRITE AIGNET::LOOKUP-ID-OF-NFIX-ID-NORMALIZE-CONST))
 (10 10
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION-INVERSE))
 (10 10
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION))
 (10 10
     (:REWRITE SATLINK::LIT->VAR$INLINE-OF-LIT-FIX-LIT-NORMALIZE-CONST))
 (10 10
     (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (10 10
     (:REWRITE AIGNET::FANIN-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (10 10
     (:REWRITE AIGNET::FANIN-OF-BFIX-WHICH-NORMALIZE-CONST))
 (10 10
     (:REWRITE SATLINK::EQUAL-OF-LIT-NEGATE-COND-COMPONENT-REWRITES))
 (10 10
     (:REWRITE SATLINK::EQUAL-OF-LIT-NEGATE-COMPONENT-REWRITES))
 (10 10
     (:REWRITE AIGNET::AIGNET-EXTENSION-SIMPLIFY-LOOKUP-ID))
 (10 10
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
 (10 10
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION))
 (10 10
     (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-FANIN-COUNT-GTE))
 (8 8
    (:REWRITE AIGNET::REGP-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (8 8
    (:REWRITE AIGNET::FANIN-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (8
  8
  (:REWRITE AIGNET::CAR-OF-NODE-LIST-FIX-X-NORMALIZE-CONST-UNDER-NODE-EQUIV))
 (8 8
    (:REWRITE AIGNET::CAR-LOOKUP-ID-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (6 6 (:TYPE-PRESCRIPTION ZP))
 (6 6 (:TYPE-PRESCRIPTION POSP))
 (6 6 (:REWRITE POSP-RW))
 (4 4
    (:REWRITE AIGNET::CTYPE-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (4 4
    (:REWRITE AIGNET::AIGNET-EXTENSION-SIMPLIFY-AIGNET-IDP))
 (2 2
    (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2
  2
  (:REWRITE
       AIGNET::CDR-OF-NODE-LIST-FIX-X-NORMALIZE-CONST-UNDER-NODE-LIST-EQUIV))
 (2 2
    (:REWRITE AIGNET::AIGNET-IDP-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (2 2
    (:REWRITE AIGNET::AIGNET-IDP-OF-NFIX-ID-NORMALIZE-CONST))
 (2 2
    (:REWRITE AIGNET::AIGNET-IDP-IN-EXTENSION)))
(AIGNET::AIGNET-NODE-LEVEL-OF-NFIX
 (618 13
      (:REWRITE AIGNET::LOOKUP-ID-IMPLIES-AIGNET-IDP))
 (589 29
      (:REWRITE AIGNET::LOOKUP-ID-OUT-OF-BOUNDS))
 (276 16
      (:REWRITE AIGNET::LOOKUP-ID-IN-BOUNDS-WHEN-POSITIVE))
 (167 10 (:REWRITE DEFAULT-CAR))
 (156 13 (:REWRITE POSP-REDEFINITION))
 (110 23 (:REWRITE NFIX-WHEN-NOT-NATP))
 (98 47 (:REWRITE NATP-WHEN-GTE-0))
 (96 48
     (:TYPE-PRESCRIPTION AIGNET::TRUE-LISTP-LOOKUP-ID-OF-NODE-LISTP))
 (94 94 (:TYPE-PRESCRIPTION NATP))
 (85 85 (:TYPE-PRESCRIPTION NFIX))
 (85 85
     (:TYPE-PRESCRIPTION AIGNET::FANIN-COUNT))
 (78 13 (:REWRITE NATP-POSP))
 (72 51 (:REWRITE DEFAULT-<-2))
 (72 51 (:REWRITE DEFAULT-<-1))
 (65 26 (:REWRITE ZP-WHEN-GT-0))
 (56 56
     (:TYPE-PRESCRIPTION AIGNET::CTYPE-FIX))
 (51 51 (:META CANCEL_PLUS-LESSP-CORRECT))
 (48 48
     (:TYPE-PRESCRIPTION AIGNET::NODE-LISTP))
 (48 48
     (:TYPE-PRESCRIPTION AIGNET::LOOKUP-ID))
 (47 47 (:REWRITE NATP-WHEN-INTEGERP))
 (47 47 (:REWRITE NATP-RW))
 (34 17
     (:REWRITE AIGNET::FANIN-COUNT-OF-ATOM))
 (33 33
     (:REWRITE CONSP-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (29 29
     (:REWRITE AIGNET::LOOKUP-ID-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (29 29
     (:REWRITE AIGNET::LOOKUP-ID-OF-NFIX-ID-NORMALIZE-CONST))
 (29 29
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION-INVERSE))
 (29 29
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION))
 (29 29
     (:REWRITE AIGNET::AIGNET-EXTENSION-SIMPLIFY-LOOKUP-ID))
 (26 26 (:REWRITE ZP-WHEN-INTEGERP))
 (26 26 (:REWRITE ZP-OPEN))
 (22 22 (:TYPE-PRESCRIPTION AIGNET::REGP))
 (17 17
     (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (17 17
     (:REWRITE AIGNET::FANIN-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (17 17
     (:REWRITE AIGNET::FANIN-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (17 17
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
 (17 17
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION))
 (17 17
     (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-FANIN-COUNT-GTE))
 (16 2 (:REWRITE DEFAULT-+-2))
 (15 15
     (:REWRITE AIGNET::STYPE$INLINE-OF-NODE-FIX-X-NORMALIZE-CONST))
 (13 13 (:TYPE-PRESCRIPTION ZP))
 (13 13 (:TYPE-PRESCRIPTION POSP))
 (13 13 (:REWRITE POSP-RW))
 (13 13
     (:REWRITE AIGNET::AIGNET-IDP-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (13 13
     (:REWRITE AIGNET::AIGNET-IDP-OF-NFIX-ID-NORMALIZE-CONST))
 (13 13
     (:REWRITE AIGNET::AIGNET-IDP-IN-EXTENSION))
 (13 13
     (:REWRITE AIGNET::AIGNET-EXTENSION-SIMPLIFY-AIGNET-IDP))
 (12 12
     (:REWRITE AIGNET$A::ID-EXISTSP-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (12 12
     (:REWRITE AIGNET$A::ID-EXISTSP-OF-NFIX-ID-NORMALIZE-CONST))
 (11 11 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (10 10
     (:REWRITE SATLINK::LIT->VAR$INLINE-OF-LIT-FIX-LIT-NORMALIZE-CONST))
 (10 10
     (:REWRITE AIGNET::FANIN-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (10 10
     (:REWRITE AIGNET::FANIN-OF-BFIX-WHICH-NORMALIZE-CONST))
 (10 10
     (:REWRITE SATLINK::EQUAL-OF-LIT-NEGATE-COND-COMPONENT-REWRITES))
 (10 10
     (:REWRITE SATLINK::EQUAL-OF-LIT-NEGATE-COMPONENT-REWRITES))
 (10
  10
  (:REWRITE AIGNET::CAR-OF-NODE-LIST-FIX-X-NORMALIZE-CONST-UNDER-NODE-EQUIV))
 (10 10
     (:REWRITE AIGNET::CAR-LOOKUP-ID-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (9 9
    (:REWRITE AIGNET::ID->TYPE-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (9 9
    (:REWRITE AIGNET::ID->TYPE-OF-NFIX-ID-NORMALIZE-CONST))
 (8 8
    (:REWRITE AIGNET::CTYPE-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (4 4
    (:REWRITE AIGNET::REGP-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (2
  2
  (:REWRITE AIGNET::GATE-ID->FANIN1-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (2 2
    (:REWRITE AIGNET::GATE-ID->FANIN1-OF-NFIX-ID-NORMALIZE-CONST))
 (2
  2
  (:REWRITE AIGNET::GATE-ID->FANIN0-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (2 2
    (:REWRITE AIGNET::GATE-ID->FANIN0-OF-NFIX-ID-NORMALIZE-CONST))
 (2 2 (:REWRITE DEFAULT-+-1)))
(AIGNET::AIGNET-LEVELS-CORRECT-UP-TO
     (21 21
         (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(AIGNET::AIGNET-LEVELS-CORRECT-UP-TO-IMPLIES
 (359 7 (:REWRITE DEFAULT-CAR))
 (267 7
      (:REWRITE AIGNET::LOOKUP-ID-IN-BOUNDS-WHEN-POSITIVE))
 (194 7
      (:REWRITE AIGNET::LOOKUP-ID-OUT-OF-BOUNDS))
 (160 160
      (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (134 7 (:REWRITE POSP-REDEFINITION))
 (68 17 (:REWRITE <-0-+-NEGATIVE-1))
 (62 62 (:META CANCEL_PLUS-LESSP-CORRECT))
 (62 7 (:REWRITE NATP-POSP))
 (58 13 (:REWRITE ZP-WHEN-INTEGERP))
 (57 21
     (:TYPE-PRESCRIPTION AIGNET::TRUE-LISTP-LOOKUP-ID-OF-NODE-LISTP))
 (56 45 (:REWRITE DEFAULT-<-1))
 (54 45 (:REWRITE DEFAULT-<-2))
 (49 13 (:REWRITE NFIX-WHEN-NOT-NATP))
 (47 7 (:REWRITE POSP-RW))
 (35 35
     (:TYPE-PRESCRIPTION AIGNET::FANIN-COUNT))
 (32 14 (:REWRITE NATP-WHEN-GTE-0))
 (28 28 (:TYPE-PRESCRIPTION NATP))
 (26 26 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (26 26 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (23 1 (:REWRITE NFIX-EQUAL-TO-NONZERO))
 (21 21
     (:TYPE-PRESCRIPTION AIGNET::NODE-LISTP))
 (21 21
     (:TYPE-PRESCRIPTION AIGNET::LOOKUP-ID))
 (19 19 (:REWRITE DEFAULT-+-2))
 (19 19 (:REWRITE DEFAULT-+-1))
 (16 6 (:REWRITE EQUAL-CONSTANT-+))
 (14 14 (:REWRITE NATP-WHEN-INTEGERP))
 (14 14 (:REWRITE NATP-RW))
 (14 14
     (:REWRITE CONSP-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (14 7
     (:REWRITE AIGNET::FANIN-COUNT-OF-ATOM))
 (7 7 (:TYPE-PRESCRIPTION POSP))
 (7 7 (:REWRITE ZP-OPEN))
 (7 7
    (:REWRITE AIGNET::STYPE$INLINE-OF-NODE-FIX-X-NORMALIZE-CONST))
 (7 7
    (:REWRITE AIGNET::LOOKUP-ID-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (7 7
    (:REWRITE AIGNET::LOOKUP-ID-OF-NFIX-ID-NORMALIZE-CONST))
 (7 7
    (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION-INVERSE))
 (7 7
    (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION))
 (7 7
    (:REWRITE AIGNET::FANIN-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (7 7
    (:REWRITE AIGNET::FANIN-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (7 7
    (:REWRITE AIGNET::CTYPE-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (7
  7
  (:REWRITE AIGNET::CAR-OF-NODE-LIST-FIX-X-NORMALIZE-CONST-UNDER-NODE-EQUIV))
 (7 7
    (:REWRITE AIGNET::CAR-LOOKUP-ID-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (7 7
    (:REWRITE AIGNET::AIGNET-EXTENSION-SIMPLIFY-LOOKUP-ID))
 (7 7
    (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
 (7 7
    (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION))
 (7 7
    (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-FANIN-COUNT-GTE))
 (4 4 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (3 3
    (:REWRITE AIGNET::NODE->TYPE-OF-NODE-FIX-NODE-NORMALIZE-CONST))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (1 1
    (:REWRITE NFIX-EQUAL-TO-NONZERO-CONST)))
(AIGNET::AIGNET-LEVELS-CORRECT-UP-TO-OF-NFIX
 (783 11 (:REWRITE DEFAULT-CAR))
 (623 11
      (:REWRITE AIGNET::LOOKUP-ID-IN-BOUNDS-WHEN-POSITIVE))
 (358 11
      (:REWRITE AIGNET::LOOKUP-ID-OUT-OF-BOUNDS))
 (304 13 (:REWRITE POSP-REDEFINITION))
 (297 249
      (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (198 17 (:REWRITE NATP-POSP))
 (176 29 (:REWRITE ZP-WHEN-GT-0))
 (164 35 (:REWRITE <-0-+-NEGATIVE-1))
 (159 29 (:REWRITE ZP-WHEN-INTEGERP))
 (123 13 (:REWRITE POSP-RW))
 (107 107 (:META CANCEL_PLUS-LESSP-CORRECT))
 (105 33
      (:TYPE-PRESCRIPTION AIGNET::TRUE-LISTP-LOOKUP-ID-OF-NODE-LISTP))
 (87 66 (:REWRITE DEFAULT-<-2))
 (86 6 (:REWRITE NATP-POSP--1))
 (84 16 (:REWRITE NFIX-WHEN-NOT-NATP))
 (77 66 (:REWRITE DEFAULT-<-1))
 (59 59 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (59 59 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (55 55
     (:TYPE-PRESCRIPTION AIGNET::FANIN-COUNT))
 (47 39 (:REWRITE DEFAULT-+-2))
 (47 11 (:REWRITE EQUAL-CONSTANT-+))
 (39 39 (:REWRITE DEFAULT-+-1))
 (36 6 (:REWRITE NFIX-POSITIVE-TO-NON-ZP))
 (33 33
     (:TYPE-PRESCRIPTION AIGNET::NODE-LISTP))
 (33 33
     (:TYPE-PRESCRIPTION AIGNET::LOOKUP-ID))
 (22 22
     (:REWRITE CONSP-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (22 11
     (:REWRITE AIGNET::FANIN-COUNT-OF-ATOM))
 (17 17 (:TYPE-PRESCRIPTION NATP))
 (14 14
     (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (13 13 (:REWRITE ZP-OPEN))
 (12 4 (:REWRITE FOLD-CONSTS-IN-+))
 (11 11 (:TYPE-PRESCRIPTION POSP))
 (11 11
     (:REWRITE AIGNET::STYPE$INLINE-OF-NODE-FIX-X-NORMALIZE-CONST))
 (11 11
     (:REWRITE AIGNET::LOOKUP-ID-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (11 11
     (:REWRITE AIGNET::LOOKUP-ID-OF-NFIX-ID-NORMALIZE-CONST))
 (11 11
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION-INVERSE))
 (11 11
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION))
 (11 11
     (:REWRITE AIGNET::FANIN-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (11 11
     (:REWRITE AIGNET::FANIN-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (11 11
     (:REWRITE AIGNET::CTYPE-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (11
  11
  (:REWRITE AIGNET::CAR-OF-NODE-LIST-FIX-X-NORMALIZE-CONST-UNDER-NODE-EQUIV))
 (11 11
     (:REWRITE AIGNET::CAR-LOOKUP-ID-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (11 11
     (:REWRITE AIGNET::AIGNET-LEVELS-CORRECT-UP-TO-IMPLIES))
 (11 11
     (:REWRITE AIGNET::AIGNET-EXTENSION-SIMPLIFY-LOOKUP-ID))
 (11 11
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
 (11 11
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION))
 (11 11
     (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-FANIN-COUNT-GTE))
 (10 6 (:REWRITE NFIX-EQUAL-TO-NONZERO))
 (10 4 (:REWRITE NATP-WHEN-GTE-0))
 (9 9
    (:REWRITE AIGNET::NODE->TYPE-OF-NODE-FIX-NODE-NORMALIZE-CONST))
 (6 3 (:REWRITE POSP-NATP))
 (4 4 (:REWRITE NFIX-EQUAL-TO-ZERO))
 (4 4
    (:REWRITE NFIX-EQUAL-TO-NONZERO-CONST))
 (4 4 (:REWRITE NATP-WHEN-INTEGERP))
 (4 4 (:REWRITE NATP-RW)))
(AIGNET::AIGNET-LEVELS-CORRECT-UP-TO-OF-UPDATE-PAST
 (713 13 (:REWRITE DEFAULT-CAR))
 (545 13
      (:REWRITE AIGNET::LOOKUP-ID-IN-BOUNDS-WHEN-POSITIVE))
 (303 13
      (:REWRITE AIGNET::LOOKUP-ID-OUT-OF-BOUNDS))
 (300 300
      (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (242 11 (:REWRITE POSP-REDEFINITION))
 (148 37 (:REWRITE <-0-+-NEGATIVE-1))
 (144 27 (:REWRITE ZP-WHEN-INTEGERP))
 (139 139 (:META CANCEL_PLUS-LESSP-CORRECT))
 (134 27 (:REWRITE ZP-WHEN-GT-0))
 (124 100 (:REWRITE DEFAULT-<-1))
 (124 38 (:REWRITE NFIX-WHEN-NOT-NATP))
 (114 100 (:REWRITE DEFAULT-<-2))
 (110 11 (:REWRITE NATP-POSP))
 (107 37
      (:TYPE-PRESCRIPTION AIGNET::TRUE-LISTP-LOOKUP-ID-OF-NODE-LISTP))
 (99 11 (:REWRITE POSP-RW))
 (81 81
     (:TYPE-PRESCRIPTION AIGNET::FANIN-COUNT))
 (70 28 (:REWRITE NATP-WHEN-GTE-0))
 (69 69 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (69 69 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (56 56 (:TYPE-PRESCRIPTION NATP))
 (44 44 (:REWRITE DEFAULT-+-2))
 (44 44 (:REWRITE DEFAULT-+-1))
 (41 7 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (39 17 (:REWRITE EQUAL-CONSTANT-+))
 (37 37
     (:TYPE-PRESCRIPTION AIGNET::NODE-LISTP))
 (37 37
     (:TYPE-PRESCRIPTION AIGNET::LOOKUP-ID))
 (28 28 (:REWRITE NATP-WHEN-INTEGERP))
 (28 28 (:REWRITE NATP-RW))
 (28 15
     (:REWRITE AIGNET::FANIN-COUNT-OF-ATOM))
 (24 24
     (:REWRITE CONSP-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (24 2 (:REWRITE NFIX-POSITIVE-TO-NON-ZP))
 (18 18
     (:REWRITE AIGNET::AIGNET-LEVELS-CORRECT-UP-TO-IMPLIES))
 (15 15
     (:REWRITE AIGNET::FANIN-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (15 15
     (:REWRITE AIGNET::FANIN-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (15 15
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
 (15 15
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION))
 (15 15
     (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-FANIN-COUNT-GTE))
 (13 13
     (:REWRITE AIGNET::STYPE$INLINE-OF-NODE-FIX-X-NORMALIZE-CONST))
 (13 13
     (:REWRITE AIGNET::LOOKUP-ID-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (13 13
     (:REWRITE AIGNET::LOOKUP-ID-OF-NFIX-ID-NORMALIZE-CONST))
 (13 13
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION-INVERSE))
 (13 13
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION))
 (13 13
     (:REWRITE AIGNET::CTYPE-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (13
  13
  (:REWRITE AIGNET::CAR-OF-NODE-LIST-FIX-X-NORMALIZE-CONST-UNDER-NODE-EQUIV))
 (13 13
     (:REWRITE AIGNET::CAR-LOOKUP-ID-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (13 13
     (:REWRITE AIGNET::AIGNET-EXTENSION-SIMPLIFY-LOOKUP-ID))
 (12 12 (:REWRITE ZP-OPEN))
 (11 11 (:TYPE-PRESCRIPTION POSP))
 (10 10
     (:REWRITE AIGNET::NODE->TYPE-OF-NODE-FIX-NODE-NORMALIZE-CONST))
 (4 4
    (:REWRITE NFIX-EQUAL-TO-NONZERO-CONST))
 (4 4
    (:REWRITE INEQUALITY-WITH-NFIX-HYP-1)))
(AIGNET::ID-OF-GATE-FANIN0-LESS-THAN-N
     (2 1
        (:TYPE-PRESCRIPTION AIGNET::TRUE-LISTP-LOOKUP-ID-OF-NODE-LISTP))
     (1 1
        (:TYPE-PRESCRIPTION AIGNET::NODE-LISTP)))
(AIGNET::ID-OF-GATE-FANIN1-LESS-THAN-N
     (2 1
        (:TYPE-PRESCRIPTION AIGNET::TRUE-LISTP-LOOKUP-ID-OF-NODE-LISTP))
     (1 1
        (:TYPE-PRESCRIPTION AIGNET::NODE-LISTP)))
(AIGNET::NOT-OUTPUT-OF-LOOKUP-LIT)
(AIGNET::AIGNET-LEVELS-CORRECT-UP-TO-OF-AIGNET-RECORD-LEVELS-AUX
 (88941 3767
        (:REWRITE AIGNET::LOOKUP-ID-IN-BOUNDS-WHEN-POSITIVE))
 (68880 82 (:REWRITE NFIX-EQUAL-TO-NONZERO))
 (59582 332
        (:LINEAR AIGNET::FANIN-COUNT-OF-CDR-WEAK))
 (43160 582
        (:LINEAR AIGNET::FANIN-ID-LTE-FANIN-COUNT))
 (42667 2977
        (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
 (34067 1831
        (:REWRITE AIGNET::LOOKUP-ID-OUT-OF-BOUNDS))
 (30506 11743
        (:TYPE-PRESCRIPTION AIGNET::TRUE-LISTP-LOOKUP-ID-OF-NODE-LISTP))
 (27387 5713
        (:REWRITE AIGNET::FANIN-COUNT-OF-ATOM))
 (24240 914
        (:REWRITE AIGNET::FANIN-COUNT-OF-CDR-LOOKUP-ID))
 (17985 516 (:REWRITE DEFAULT-CAR))
 (17412 914 (:REWRITE DEFAULT-CDR))
 (16686 9308 (:REWRITE DEFAULT-<-2))
 (16614 332
        (:LINEAR AIGNET::FANIN-COUNT-OF-CDR-LOOKUP-BOUND-BY-ID))
 (16004 6058 (:REWRITE NFIX-WHEN-NOT-NATP))
 (15034 1590 (:REWRITE ZP-WHEN-GT-0))
 (14036 664
        (:REWRITE AIGNET::FANIN-COUNT-OF-CDR-STRONG))
 (13894 769 (:REWRITE POSP-REDEFINITION))
 (11743 11743
        (:TYPE-PRESCRIPTION AIGNET::NODE-LISTP))
 (10936 562
        (:REWRITE AIGNET::FANIN-COUNT-OF-LOOKUP-ID))
 (10486 9308 (:REWRITE DEFAULT-<-1))
 (9598 9596 (:META CANCEL_PLUS-LESSP-CORRECT))
 (9500 250
       (:REWRITE AIGNET::AIGNET-EXTENSION-P-CDR))
 (9414 332
       (:LINEAR AIGNET::FANIN-COUNT-CDR-WHEN-AIGNET-EXTENSION-INVERSE))
 (7794 769 (:REWRITE NATP-POSP))
 (6540 2199 (:REWRITE NATP-WHEN-GTE-0))
 (6233 6233
       (:REWRITE AIGNET::FANIN-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (5713 5713
       (:REWRITE AIGNET::FANIN-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (3741 3741
       (:REWRITE CONSP-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (3553 769 (:REWRITE POSP-RW))
 (3239 82 (:REWRITE UPDATE-NTH-UPDATE-NTH . 2))
 (3023 2199 (:REWRITE NATP-WHEN-INTEGERP))
 (3023 2199 (:REWRITE NATP-RW))
 (2977 2977
       (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION))
 (2977 2977
       (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-FANIN-COUNT-GTE))
 (2408 152
       (:REWRITE AIGNET::BOUND-WHEN-AIGNET-IDP))
 (2392 1360 (:REWRITE DEFAULT-+-2))
 (1831 1831
       (:REWRITE AIGNET::LOOKUP-ID-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (1831 1831
       (:REWRITE AIGNET::LOOKUP-ID-OF-NFIX-ID-NORMALIZE-CONST))
 (1831 1831
       (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION-INVERSE))
 (1831 1831
       (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION))
 (1831 1831
       (:REWRITE AIGNET::AIGNET-EXTENSION-SIMPLIFY-LOOKUP-ID))
 (1606 1360 (:REWRITE DEFAULT-+-1))
 (1558 82 (:REWRITE UPDATE-NTH-UPDATE-NTH . 1))
 (1539 152 (:REWRITE AIGNET::STYPE-BY-CTYPE))
 (1496 1496
       (:TYPE-PRESCRIPTION AIGNET-EXTENSION-P))
 (1319 1319 (:REWRITE ZP-OPEN))
 (1230 164 (:DEFINITION =))
 (1207 961 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1090 1090
       (:REWRITE SATLINK::LIT->VAR$INLINE-OF-LIT-FIX-LIT-NORMALIZE-CONST))
 (1090 1090
       (:REWRITE AIGNET::FANIN-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (1090 1090
       (:REWRITE AIGNET::FANIN-OF-BFIX-WHICH-NORMALIZE-CONST))
 (1090 1090
       (:REWRITE SATLINK::EQUAL-OF-LIT-NEGATE-COND-COMPONENT-REWRITES))
 (1090 1090
       (:REWRITE SATLINK::EQUAL-OF-LIT-NEGATE-COMPONENT-REWRITES))
 (961 961 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (914
  914
  (:REWRITE
       AIGNET::CDR-OF-NODE-LIST-FIX-X-NORMALIZE-CONST-UNDER-NODE-LIST-EQUIV))
 (836 88 (:REWRITE <-0-+-NEGATIVE-2))
 (803 803 (:TYPE-PRESCRIPTION AIGNET::REGP))
 (797 797
      (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (776 162 (:REWRITE <-0-+-NEGATIVE-1))
 (769 769 (:TYPE-PRESCRIPTION POSP))
 (520 520
      (:REWRITE AIGNET::AIGNET-EXTENSION-P-TRANSITIVE-RW))
 (516
  516
  (:REWRITE AIGNET::CAR-OF-NODE-LIST-FIX-X-NORMALIZE-CONST-UNDER-NODE-EQUIV))
 (496 496
      (:REWRITE AIGNET::CAR-LOOKUP-ID-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (480 480
      (:REWRITE AIGNET::LOOKUP-ID-AIGNET-EXTENSION-P))
 (412 412
      (:REWRITE AIGNET::STYPE$INLINE-OF-NODE-FIX-X-NORMALIZE-CONST))
 (332 332
      (:LINEAR AIGNET::FANIN-COUNT-CDR-WHEN-AIGNET-EXTENSION-STRONG))
 (270 270
      (:REWRITE AIGNET::AIGNET-EXTENSION-P-SELF))
 (266 266
      (:REWRITE AIGNET::CTYPE-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (250 250
      (:REWRITE AIGNET-EXTENSION-P-OF-NODE-LIST-FIX-OLD-NORMALIZE-CONST))
 (250 250
      (:REWRITE AIGNET-EXTENSION-P-OF-NODE-LIST-FIX-NEW-NORMALIZE-CONST))
 (226 54 (:REWRITE EQUAL-CONSTANT-+))
 (201 112 (:REWRITE DEFAULT-UNARY-MINUS))
 (200 20
      (:REWRITE AIGNET::LOOKUP-ID-OF-FANIN-COUNT))
 (166 166
      (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (146 146
      (:REWRITE AIGNET::REGP-OF-STYPE-FIX-X-NORMALIZE-CONST))
 (133 133
      (:REWRITE AIGNET::NODE->TYPE-OF-NODE-FIX-NODE-NORMALIZE-CONST))
 (106 106
      (:REWRITE AIGNET::AIGNET-EXTENSION-SIMPLIFY-AIGNET-IDP))
 (100 20
      (:REWRITE AIGNET::LOOKUP-ID-OF-FANIN-COUNT-OF-SUFFIX))
 (96 96
     (:REWRITE AIGNET::AIGNET-IDP-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (96 96
     (:REWRITE AIGNET::AIGNET-IDP-OF-NFIX-ID-NORMALIZE-CONST))
 (96 96
     (:REWRITE AIGNET::AIGNET-IDP-IN-EXTENSION))
 (82 82
     (:REWRITE NFIX-EQUAL-TO-NONZERO-CONST))
 (79 79
     (:REWRITE AIGNET$A::NUM-FANINS-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (79 79
     (:REWRITE AIGNET::ID->TYPE-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (79 79
     (:REWRITE AIGNET::ID->TYPE-OF-NFIX-ID-NORMALIZE-CONST))
 (73
  73
  (:REWRITE AIGNET::GATE-ID->FANIN1-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (73 73
     (:REWRITE AIGNET::GATE-ID->FANIN1-OF-NFIX-ID-NORMALIZE-CONST))
 (73
  73
  (:REWRITE AIGNET::GATE-ID->FANIN0-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (73 73
     (:REWRITE AIGNET::GATE-ID->FANIN0-OF-NFIX-ID-NORMALIZE-CONST))
 (60 20
     (:REWRITE AIGNET::FANIN-NODE-P-BY-CTYPE))
 (20 20
     (:REWRITE AIGNET::FANIN-NODE-P-OF-NODE-FIX-X-NORMALIZE-CONST))
 (3 3
    (:TYPE-PRESCRIPTION AIGNET::AIGNET-RECORD-LEVELS-AUX))
 (1 1
    (:REWRITE AIGNET$A::ID-EXISTSP-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (1 1
    (:REWRITE AIGNET$A::ID-EXISTSP-OF-NFIX-ID-NORMALIZE-CONST)))
(AIGNET::AIGNET-LEVELS-CORRECT-OF-AIGNET-RECORD-LEVELS-AUX
  (45 1
      (:DEFINITION AIGNET::AIGNET-RECORD-LEVELS-AUX))
  (21 1 (:DEFINITION AIGNET::ID->TYPE))
  (16 1
      (:REWRITE AIGNET::LOOKUP-ID-OUT-OF-BOUNDS))
  (10 10
      (:TYPE-PRESCRIPTION AIGNET::FANIN-COUNT))
  (9 1 (:DEFINITION AIGNET::NUM-FANINS))
  (7 4 (:REWRITE DEFAULT-+-2))
  (7 1 (:DEFINITION AIGNET$A::NUM-FANINS))
  (5 4 (:REWRITE DEFAULT-+-1))
  (5 1 (:REWRITE COMMUTATIVITY-OF-+))
  (4 3
     (:REWRITE AIGNET::FANIN-COUNT-OF-ATOM))
  (4 1 (:REWRITE FOLD-CONSTS-IN-+))
  (3 3
     (:REWRITE AIGNET::FANIN-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
  (3 3
     (:REWRITE AIGNET::FANIN-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
  (3 1 (:DEFINITION AIGNET::SET-U32$INLINE))
  (2 1 (:REWRITE DEFAULT-<-1))
  (2 1 (:DEFINITION AIGNET::SET-U32_))
  (1 1 (:TYPE-PRESCRIPTION NFIX))
  (1 1
     (:REWRITE AIGNET$A::NUM-FANINS-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
  (1 1
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION-INVERSE))
  (1 1
     (:REWRITE AIGNET::LOOKUP-ID-IN-EXTENSION))
  (1 1 (:REWRITE AIGNET::LOOKUP-ID-0))
  (1 1
     (:REWRITE AIGNET::ID->TYPE-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
  (1 1
     (:REWRITE AIGNET::ID->TYPE-OF-NFIX-ID-NORMALIZE-CONST))
  (1 1 (:REWRITE DEFAULT-<-2))
  (1 1
     (:REWRITE CONSP-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
  (1 1
     (:REWRITE AIGNET::AIGNET-EXTENSION-SIMPLIFY-LOOKUP-ID))
  (1 1 (:META CANCEL_PLUS-LESSP-CORRECT))
  (1 1
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
  (1 1
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION))
  (1 1
     (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-FANIN-COUNT-GTE))
  (1 1 (:DEFINITION AIGNET::UPDATE-U32S$AI)))
(AIGNET::AIGNET-RECORD-LEVELS
 (140 6 (:DEFINITION MAKE-LIST-AC-REDEF))
 (140 6 (:DEFINITION MAKE-LIST-AC))
 (108 12 (:REWRITE ZP-WHEN-GT-0))
 (104 12 (:REWRITE ZP-WHEN-INTEGERP))
 (68 42 (:REWRITE DEFAULT-<-2))
 (47 42 (:REWRITE DEFAULT-<-1))
 (41 29 (:REWRITE DEFAULT-+-2))
 (36 8 (:REWRITE <-0-+-NEGATIVE-1))
 (30 30
     (:REWRITE CONSP-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (30 29 (:REWRITE DEFAULT-+-1))
 (25 12 (:REWRITE DEFAULT-CDR))
 (21 13
     (:REWRITE AIGNET::FANIN-COUNT-OF-ATOM))
 (16 16
     (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (16 4 (:REWRITE NATP-WHEN-GTE-0))
 (13 13
     (:REWRITE AIGNET::FANIN-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (13 13
     (:REWRITE AIGNET::FANIN-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (12 6
     (:REWRITE AIGNET::STYPE-COUNT-OF-ATOM))
 (10 4
     (:TYPE-PRESCRIPTION CONSP-MAKE-LIST-AC))
 (9 9 (:REWRITE DEFAULT-CAR))
 (6 6
    (:REWRITE AIGNET::STYPE-COUNT-OF-STYPE-FIX-TYPE-NORMALIZE-CONST))
 (6 6
    (:REWRITE AIGNET::STYPE-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (6 6
    (:LINEAR AIGNET::STYPE-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
 (6 6
    (:LINEAR AIGNET::STYPE-COUNT-WHEN-AIGNET-EXTENSION))
 (6 6
    (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-STYPE-COUNT-GTE))
 (6 3
    (:REWRITE AIGNET::NODE-LISTP-WHEN-NOT-CONSP))
 (4 4 (:TYPE-PRESCRIPTION ZP))
 (4 4 (:REWRITE NATP-WHEN-INTEGERP))
 (4 4 (:REWRITE NATP-RW))
 (4 2 (:REWRITE NFIX-WHEN-NOT-NATP))
 (3 3
    (:REWRITE AIGNET::PO-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (3 3
    (:REWRITE AIGNET::AIGNET-NODES-OK-OF-SUFFIX-INVERSE))
 (3
  3
  (:REWRITE AIGNET::AIGNET-NODES-OK-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
 (3 3
    (:REWRITE AIGNET::AIGNET-NODES-OK-OF-EXTENSION))
 (3 3
    (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
 (3 3
    (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION))
 (3 3
    (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-FANIN-COUNT-GTE))
 (2 2 (:LINEAR LEQ-POSITION-EQUAL-LEN)))
(AIGNET::RETURN-TYPE-OF-AIGNET-RECORD-LEVELS
  (94 4 (:DEFINITION MAKE-LIST-AC-REDEF))
  (94 4 (:DEFINITION MAKE-LIST-AC))
  (72 8 (:REWRITE ZP-WHEN-GT-0))
  (70 8 (:REWRITE ZP-WHEN-INTEGERP))
  (34 19 (:REWRITE DEFAULT-<-2))
  (34 6
      (:TYPE-PRESCRIPTION AIGNET::AIGNET-RECORD-LEVELS-AUX))
  (32 8 (:REWRITE DEFAULT-CDR))
  (31 21 (:REWRITE DEFAULT-+-2))
  (23 23 (:META CANCEL_PLUS-LESSP-CORRECT))
  (22 21 (:REWRITE DEFAULT-+-1))
  (20 19 (:REWRITE DEFAULT-<-1))
  (18 6
      (:TYPE-PRESCRIPTION CONSP-MAKE-LIST-AC))
  (18 4 (:REWRITE <-0-+-NEGATIVE-1))
  (11 11
      (:REWRITE CONSP-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
  (9 5
     (:REWRITE AIGNET::FANIN-COUNT-OF-ATOM))
  (8 8
     (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
  (6 6 (:TYPE-PRESCRIPTION ZP))
  (5 5
     (:REWRITE AIGNET::FANIN-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
  (5 5
     (:REWRITE AIGNET::FANIN-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
  (4 2 (:REWRITE NFIX-WHEN-NOT-NATP))
  (3 3 (:REWRITE DEFAULT-CAR))
  (3 3
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
  (3 3
     (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION))
  (3 3
     (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-FANIN-COUNT-GTE))
  (1 1
     (:REWRITE AIGNET$A::NUM-FANINS-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST))
  (1 1 (:LINEAR LEQ-POSITION-EQUAL-LEN)))
(AIGNET::AIGNET-LEVELS-CORRECT-OF-AIGNET-RECORD-LEVELS
 (82 3 (:DEFINITION MAKE-LIST-AC-REDEF))
 (82 3 (:DEFINITION MAKE-LIST-AC))
 (78 6 (:REWRITE ZP-WHEN-GT-0))
 (52 6 (:REWRITE ZP-WHEN-INTEGERP))
 (24 14 (:REWRITE DEFAULT-<-2))
 (24 4 (:REWRITE <-0-+-NEGATIVE-1))
 (18 18 (:META CANCEL_PLUS-LESSP-CORRECT))
 (16 12 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (14 6 (:DEFINITION NOT))
 (12 12 (:REWRITE DEFAULT-+-1))
 (10 10
     (:REWRITE CONSP-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (8 8
    (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (8 8
    (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION-BIND-INVERSE))
 (8 8
    (:LINEAR AIGNET::FANIN-COUNT-WHEN-AIGNET-EXTENSION))
 (8 8
    (:LINEAR AIGNET::AIGNET-EXTENSION-IMPLIES-FANIN-COUNT-GTE))
 (7 4
    (:REWRITE AIGNET::FANIN-COUNT-OF-ATOM))
 (4 4
    (:REWRITE AIGNET::FANIN-COUNT-OF-NODE-LIST-FIX-X-NORMALIZE-CONST))
 (4 4
    (:REWRITE AIGNET::FANIN-COUNT-OF-AIGNET-NORM-X-NORMALIZE-CONST))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (1 1
    (:REWRITE AIGNET$A::NUM-FANINS-OF-NODE-LIST-FIX-AIGNET-NORMALIZE-CONST)))