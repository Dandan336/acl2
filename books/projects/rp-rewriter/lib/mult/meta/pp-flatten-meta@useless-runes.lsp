(RP::PP-LISTS-P)
(RP::PP-HAS-BITP-RP (4027 7 (:DEFINITION APPLY$-BADGEP))
                    (2081 10
                          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
                    (1979 8
                          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
                    (1784 16 (:DEFINITION SUBSETP-EQUAL))
                    (1772 8
                          (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
                    (1504 4 (:DEFINITION TRUE-LISTP))
                    (1464 120 (:DEFINITION MEMBER-EQUAL))
                    (1256 20
                          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
                    (1224 12 (:DEFINITION RP::RP-TERMP))
                    (984 40 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
                    (920 64
                         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
                    (828 4 (:DEFINITION RP::FALIST-CONSISTENT))
                    (644 4
                         (:DEFINITION RP::FALIST-CONSISTENT-AUX))
                    (448 8 (:DEFINITION RP::RP-TERM-LISTP))
                    (390 390 (:TYPE-PRESCRIPTION RP::RP-TERMP))
                    (303 139 (:REWRITE DEFAULT-+-2))
                    (240 240 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
                    (210 14 (:DEFINITION LENGTH))
                    (208 208 (:REWRITE SUBSETP-IMPLIES-MEMBER))
                    (192 192
                         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
                    (191 139 (:REWRITE DEFAULT-+-1))
                    (182 18 (:DEFINITION LEN))
                    (180 50 (:REWRITE O-P-O-INFP-CAR))
                    (168 20
                         (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
                    (160 48 (:REWRITE RP::IS-IF-RP-TERMP))
                    (128 128
                         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
                    (121 29 (:DEFINITION QUOTEP))
                    (112 112 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
                    (112 28 (:REWRITE COMMUTATIVITY-OF-+))
                    (112 28 (:DEFINITION INTEGER-ABS))
                    (111 3 (:REWRITE O<=-O-FINP-DEF))
                    (106 8 (:DEFINITION NATP))
                    (84 84 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
                    (82 6
                        (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
                    (64 16 (:REWRITE RP::RP-TERMP-CADDDR))
                    (58 20
                        (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
                    (56 14 (:REWRITE RP::RP-TERMP-CADDDDR))
                    (49 41 (:REWRITE DEFAULT-<-2))
                    (48 48
                        (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
                    (48 48
                        (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
                    (48 24
                        (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
                    (48 16 (:REWRITE RP::RP-TERMP-CADR))
                    (48 16 (:REWRITE RP::RP-TERMP-CADDR))
                    (48 16 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
                    (46 41 (:REWRITE DEFAULT-<-1))
                    (42 42
                        (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
                    (42 42 (:TYPE-PRESCRIPTION LEN))
                    (42 28 (:REWRITE STR::CONSP-OF-EXPLODE))
                    (40 40
                        (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
                    (36 36
                        (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
                    (33 33
                        (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-3))
                    (32 32 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
                    (32 16
                        (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
                    (28 28
                        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
                    (28 28 (:REWRITE DEFAULT-UNARY-MINUS))
                    (28 14
                        (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
                    (28 7 (:DEFINITION WEAK-APPLY$-BADGE-P))
                    (24 4 (:DEFINITION ALL-NILS))
                    (22 22
                        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                    (22 22
                        (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-2))
                    (20 20 (:TYPE-PRESCRIPTION QUOTEP))
                    (20 20 (:TYPE-PRESCRIPTION ALL-NILS))
                    (20 4
                        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
                    (18 18 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                    (16 16 (:TYPE-PRESCRIPTION TRUE-LISTP))
                    (16 16 (:LINEAR LEN-WHEN-PREFIXP))
                    (14 14
                        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
                    (14 14 (:REWRITE INTEGERP==>NUMERATOR-=-X))
                    (14 14
                        (:REWRITE INTEGERP==>DENOMINATOR-=-1))
                    (14 14
                        (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
                    (14 14 (:REWRITE DEFAULT-REALPART))
                    (14 14 (:REWRITE DEFAULT-NUMERATOR))
                    (14 14 (:REWRITE DEFAULT-IMAGPART))
                    (14 14 (:REWRITE DEFAULT-DENOMINATOR))
                    (14 14
                        (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-0))
                    (12 3 (:REWRITE AC-<))
                    (12 2 (:REWRITE O-FIRST-EXPT-<))
                    (11 11
                        (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-1))
                    (8 8
                       (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
                    (8 8 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                    (8 8 (:LINEAR BOUNDS-POSITION-EQUAL))
                    (8 4 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
                    (6 3 (:REWRITE O-INFP-O-FINP-O<=))
                    (4 4 (:TYPE-PRESCRIPTION O-FINP))
                    (4 4
                       (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
                    (4 2 (:REWRITE O-FIRST-COEFF-<))
                    (3 3
                       (:REWRITE |a < b & b < c  =>  a < c|)))
(RP::PP-TERM-P (21709 205 (:DEFINITION RP::EX-FROM-RP))
               (19356 3810 (:REWRITE RP::MEASURE-LEMMA1))
               (18990 526 (:REWRITE RP::NOT-INCLUDE-RP))
               (18332 226 (:DEFINITION RP::INCLUDE-FNC))
               (17164 1446 (:REWRITE RP::MEASURE-LEMMA1-2))
               (14327 141 (:DEFINITION APPLY$-BADGEP))
               (13751 165
                      (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
               (6177 36 (:DEFINITION SUBSETP-EQUAL))
               (5765 4365 (:REWRITE DEFAULT-CDR))
               (5313 270 (:DEFINITION MEMBER-EQUAL))
               (4890 18
                     (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
               (4315 9 (:DEFINITION TRUE-LISTP))
               (3600 45
                     (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
               (3528 27 (:DEFINITION RP::RP-TERMP))
               (3315 144
                     (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
               (3252 90 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
               (3233 1974 (:REWRITE DEFAULT-CAR))
               (2502 9 (:DEFINITION RP::FALIST-CONSISTENT))
               (1962 9
                     (:DEFINITION RP::FALIST-CONSISTENT-AUX))
               (1326 1326
                     (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
               (1285 271 (:DEFINITION QUOTEP))
               (1256 1256
                     (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
               (1112 18 (:DEFINITION RP::RP-TERM-LISTP))
               (1052 120
                     (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
               (939 66 (:DEFINITION NATP))
               (756 141 (:DEFINITION WEAK-APPLY$-BADGE-P))
               (700 20 (:REWRITE RP::EX-FROM-RP-X2))
               (585 585 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
               (540 540 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
               (468 468 (:REWRITE SUBSETP-IMPLIES-MEMBER))
               (453 45
                    (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
               (434 122 (:REWRITE O-P-O-INFP-CAR))
               (432 432
                    (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
               (412 412
                    (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
               (360 108 (:REWRITE RP::IS-IF-RP-TERMP))
               (288 288
                    (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
               (252 252 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
               (222 99
                    (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
               (206 81
                    (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
               (144 36 (:REWRITE RP::RP-TERMP-CADDDR))
               (120 40 (:REWRITE RP::CONS-COUNT-ATOM))
               (108 108
                    (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
               (108 108
                    (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
               (108 36 (:REWRITE RP::RP-TERMP-CADR))
               (108 36 (:REWRITE RP::RP-TERMP-CADDR))
               (108 36 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
               (108 27 (:REWRITE RP::RP-TERMP-CADDDDR))
               (107 9 (:DEFINITION LEN))
               (104 104 (:REWRITE O-P-DEF-O-FINP-1))
               (104 36
                    (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
               (104 4 (:REWRITE O<=-O-FINP-DEF))
               (99 99
                   (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
               (90 90
                   (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
               (90 9 (:DEFINITION ALL-NILS))
               (81 81
                   (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
               (72 72 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
               (63 63 (:TYPE-PRESCRIPTION LEN))
               (63 9
                   (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
               (51 51
                   (:REWRITE RP::EQUALITY-MEASURE-LEMMA3))
               (45 45 (:TYPE-PRESCRIPTION QUOTEP))
               (45 45 (:TYPE-PRESCRIPTION ALL-NILS))
               (43 43
                   (:REWRITE RP::EQUALITY-MEASURE-LEMMA2))
               (40 8 (:REWRITE RP::MEASURE-LEMMA7-2))
               (37 35 (:REWRITE DEFAULT-<-2))
               (37 35 (:REWRITE DEFAULT-<-1))
               (36 36 (:TYPE-PRESCRIPTION TRUE-LISTP))
               (35 35
                   (:REWRITE RP::EQUALITY-MEASURE-LEMMA1))
               (18 18
                   (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
               (18 18 (:LINEAR LEN-WHEN-PREFIXP))
               (18 9 (:REWRITE DEFAULT-+-2))
               (12 4 (:REWRITE AC-<))
               (9 9
                  (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
               (9 9 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
               (9 9 (:REWRITE DEFAULT-+-1))
               (9 9 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
               (9 9 (:LINEAR BOUNDS-POSITION-EQUAL))
               (8 4 (:REWRITE O-INFP-O-FINP-O<=))
               (4 4
                  (:REWRITE |a < b & b < c  =>  a < c|)))
(RP::CUT-LIST-BY-HALF)
(RP::TRUE-LISTP-OF-CUT-LIST-BY-HALF.FIRST
     (6123 21
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (5990 7 (:DEFINITION TRUE-LISTP))
     (4121 14 (:DEFINITION RP::RP-TERM-LISTP))
     (3932 28
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (3869 28 (:DEFINITION QUOTEP))
     (3792 14
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (3778 7 (:DEFINITION APPLY$-BADGEP))
     (3106 28 (:DEFINITION SUBSETP-EQUAL))
     (2546 210 (:DEFINITION MEMBER-EQUAL))
     (1981 28
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (1904 7 (:DEFINITION RP::RP-TERMP))
     (1755 1755 (:REWRITE DEFAULT-CDR))
     (1715 70 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (1600 112
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (1449 7 (:DEFINITION RP::FALIST-CONSISTENT))
     (1127 7
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (806 806 (:REWRITE DEFAULT-CAR))
     (420 420 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (364 364 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (336 336
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (294 84 (:REWRITE O-P-O-INFP-CAR))
     (259 259 (:TYPE-PRESCRIPTION RP::RP-TERMP))
     (224 224
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (196 196 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (140 140 (:TYPE-PRESCRIPTION O-P))
     (133 14 (:DEFINITION NATP))
     (91 91
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (84 35 (:REWRITE RP::IS-IF-RP-TERMP))
     (70 70 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (70 70
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (70 70 (:REWRITE O-P-DEF-O-FINP-1))
     (63 63
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (63 63
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (56 56 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (56 21 (:REWRITE RP::RP-TERMP-CADR))
     (49 49 (:TYPE-PRESCRIPTION LEN))
     (49 7 (:DEFINITION LEN))
     (47 40 (:REWRITE DEFAULT-+-2))
     (42 21
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (42 21
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (42 7 (:DEFINITION ALL-NILS))
     (40 40 (:REWRITE DEFAULT-+-1))
     (35 35 (:TYPE-PRESCRIPTION ALL-NILS))
     (35 7
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (28 28 (:TYPE-PRESCRIPTION QUOTEP))
     (28 14 (:REWRITE RP::RP-TERMP-CADDR))
     (28 14 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (28 7 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (21 21
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (21 21
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (14 14
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (14 14 (:LINEAR LEN-WHEN-PREFIXP))
     (14 7
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (14 7
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (7 7
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (7 7 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (7 7 (:REWRITE DEFAULT-<-2))
     (7 7 (:REWRITE DEFAULT-<-1))
     (7 7 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (7 7 (:LINEAR BOUNDS-POSITION-EQUAL))
     (6 6 (:REWRITE ZP-OPEN)))
(RP::TRUE-LISTP-OF-CUT-LIST-BY-HALF.SECOND
     (29698 91
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (20641 108
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (20396 108 (:DEFINITION QUOTEP))
     (20027 38 (:DEFINITION APPLY$-BADGEP))
     (19252 50 (:DEFINITION RP::RP-TERM-LISTP))
     (17981 74
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (16390 148 (:DEFINITION SUBSETP-EQUAL))
     (13430 1110 (:DEFINITION MEMBER-EQUAL))
     (9053 370 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (8440 592
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (8431 8431 (:REWRITE DEFAULT-CDR))
     (8239 108
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (7952 29 (:DEFINITION RP::RP-TERMP))
     (6003 29 (:DEFINITION RP::FALIST-CONSISTENT))
     (4669 29
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (3650 3650 (:REWRITE DEFAULT-CAR))
     (2220 2220 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (2202 37
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (1924 1924 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (1776 1776
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (1218 348 (:REWRITE O-P-O-INFP-CAR))
     (1184 1184
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (1036 1036 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (728 74 (:DEFINITION NATP))
     (580 580 (:TYPE-PRESCRIPTION O-P))
     (396 157 (:REWRITE RP::IS-IF-RP-TERMP))
     (388 388 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (370 370
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (349 349
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (290 290 (:REWRITE O-P-DEF-O-FINP-1))
     (261 261
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (259 259 (:TYPE-PRESCRIPTION LEN))
     (259 37 (:DEFINITION LEN))
     (257 257
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (240 203 (:REWRITE DEFAULT-+-2))
     (232 87 (:REWRITE RP::RP-TERMP-CADR))
     (230 115
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (224 224 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (222 111
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (222 37 (:DEFINITION ALL-NILS))
     (203 203 (:REWRITE DEFAULT-+-1))
     (185 185 (:TYPE-PRESCRIPTION ALL-NILS))
     (152 38 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (145 29
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (132 62 (:REWRITE RP::RP-TERMP-CADDR))
     (132 62 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (111 111
          (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (108 108 (:TYPE-PRESCRIPTION QUOTEP))
     (107 49
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (91 91
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (82 82 (:LINEAR LEN-WHEN-PREFIXP))
     (58 58
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (41 41 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (41 41 (:LINEAR BOUNDS-POSITION-EQUAL))
     (37 37 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (37 37 (:REWRITE DEFAULT-<-2))
     (37 37 (:REWRITE DEFAULT-<-1))
     (32 8 (:REWRITE RP::RP-TERMP-CADDDR))
     (29 29
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (11 11 (:REWRITE ZP-OPEN)))
(RP::CUT-LIST-BY-HALF-RETURNS-PP-LISTS
     (22891 63
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (21253 21 (:DEFINITION TRUE-LISTP))
     (15457 42 (:DEFINITION RP::RP-TERM-LISTP))
     (15016 147
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (14365 147 (:DEFINITION QUOTEP))
     (13903 84
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (13840 88 (:DEFINITION APPLY$-BADGEP))
     (11526 84 (:DEFINITION SUBSETP-EQUAL))
     (9846 630 (:DEFINITION MEMBER-EQUAL))
     (6825 147
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (6804 63 (:DEFINITION RP::RP-TERMP))
     (6180 336
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (6125 6125 (:REWRITE DEFAULT-CDR))
     (6111 210 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (4347 21 (:DEFINITION RP::FALIST-CONSISTENT))
     (3683 3683 (:REWRITE DEFAULT-CAR))
     (3381 21
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (1554 1554 (:TYPE-PRESCRIPTION RP::RP-TERMP))
     (1260 1260 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (1092 1092 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (1008 1008
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (966 273 (:REWRITE O-P-O-INFP-CAR))
     (672 672
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (672 189 (:REWRITE RP::IS-IF-RP-TERMP))
     (588 588 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (508 42 (:DEFINITION NATP))
     (462 462 (:TYPE-PRESCRIPTION O-P))
     (462 462
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (357 357
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (328 328 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (273 84 (:REWRITE RP::RP-TERMP-CADR))
     (259 229 (:REWRITE DEFAULT-+-2))
     (231 231 (:REWRITE O-P-DEF-O-FINP-1))
     (229 229 (:REWRITE DEFAULT-+-1))
     (218 88 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (210 210
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (210 42 (:REWRITE RP::RP-TERMP-CADDDR))
     (200 200 (:REWRITE ZP-OPEN))
     (189 189
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (189 63 (:REWRITE RP::RP-TERMP-CADDR))
     (189 63 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (168 168 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (151 63
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (147 147 (:TYPE-PRESCRIPTION QUOTEP))
     (147 42
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (126 63
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (126 63
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (126 21 (:DEFINITION ALL-NILS))
     (105 105 (:TYPE-PRESCRIPTION ALL-NILS))
     (105 21
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (63 63
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (63 63
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (56 56 (:LINEAR LEN-WHEN-PREFIXP))
     (52 31 (:REWRITE DEFAULT-<-1))
     (42 42 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (42 42
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (40 31 (:REWRITE DEFAULT-<-2))
     (29 29 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (28 28 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (28 28 (:LINEAR BOUNDS-POSITION-EQUAL))
     (21 21
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (14 7
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (7 7
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (7 7
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP)))
(RP::SORT-MEASURE-LEMMA1
     (101 56 (:REWRITE DEFAULT-PLUS-2))
     (66 56 (:REWRITE DEFAULT-PLUS-1))
     (36 36
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (22 22 (:REWRITE DEFAULT-CDR))
     (18 18 (:LINEAR LEN-WHEN-PREFIXP))
     (16 16 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (15 5
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (11 7 (:REWRITE DEFAULT-LESS-THAN-1))
     (9 9 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (9 9 (:LINEAR BOUNDS-POSITION-EQUAL))
     (9 5
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (9 5 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (8 5 (:REWRITE SIMPLIFY-SUMS-<))
     (7 7 (:REWRITE THE-FLOOR-BELOW))
     (7 7 (:REWRITE THE-FLOOR-ABOVE))
     (7 7 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (7 7
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (7 7
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (7 7 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (7 7 (:REWRITE INTEGERP-<-CONSTANT))
     (7 7 (:REWRITE DEFAULT-LESS-THAN-2))
     (7 7 (:REWRITE CONSTANT-<-INTEGERP))
     (7 7
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (7 7
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (7 7
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (7 7
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (7 7 (:REWRITE |(< c (- x))|))
     (7 7
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (7 7
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (7 7
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (7 7
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (7 7 (:REWRITE |(< (/ x) (/ y))|))
     (7 7 (:REWRITE |(< (- x) c)|))
     (7 7 (:REWRITE |(< (- x) (- y))|))
     (6 6 (:REWRITE |(+ c (+ d x))|))
     (6 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (5 5
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (5 5
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (5 5
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (5 5 (:REWRITE |(equal c (/ x))|))
     (5 5 (:REWRITE |(equal c (- x))|))
     (5 5 (:REWRITE |(equal (/ x) c)|))
     (5 5 (:REWRITE |(equal (/ x) (/ y))|))
     (5 5 (:REWRITE |(equal (- x) c)|))
     (5 5 (:REWRITE |(equal (- x) (- y))|))
     (5 5 (:REWRITE |(equal (+ (- c) x) y)|))
     (4 4 (:REWRITE |(< (/ x) 0)|))
     (4 4 (:REWRITE |(< (* x y) 0)|))
     (3 3 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (3 3 (:REWRITE FOLD-CONSTS-IN-+))
     (3 3 (:REWRITE DEFAULT-MINUS))
     (2 2
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (2 2
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (2 2 (:REWRITE DEFAULT-CAR))
     (2 2 (:REWRITE |(< (if a b c) x)|))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE |(< y (+ (- c) x))|))
     (1 1 (:REWRITE |(< x (+ c/d y))|))
     (1 1 (:REWRITE |(< (+ c/d x) y)|))
     (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(RP::SORT-MEASURE-LEMMA1-V2
     (30 18 (:REWRITE DEFAULT-PLUS-2))
     (18 18 (:REWRITE DEFAULT-PLUS-1))
     (16 16
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (16 16 (:REWRITE NORMALIZE-ADDENDS))
     (14 14 (:LINEAR LEN-WHEN-PREFIXP))
     (12 12 (:REWRITE DEFAULT-CDR))
     (11 7 (:REWRITE DEFAULT-LESS-THAN-1))
     (9 9 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (9 5
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (9 5 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (8 5 (:REWRITE SIMPLIFY-SUMS-<))
     (7 7 (:REWRITE THE-FLOOR-BELOW))
     (7 7 (:REWRITE THE-FLOOR-ABOVE))
     (7 7 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (7 7
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (7 7
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (7 7 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (7 7 (:REWRITE INTEGERP-<-CONSTANT))
     (7 7 (:REWRITE DEFAULT-LESS-THAN-2))
     (7 7 (:REWRITE CONSTANT-<-INTEGERP))
     (7 7
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (7 7
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (7 7
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (7 7
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (7 7 (:REWRITE |(< c (- x))|))
     (7 7
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (7 7
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (7 7
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (7 7
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (7 7 (:REWRITE |(< (/ x) (/ y))|))
     (7 7 (:REWRITE |(< (- x) c)|))
     (7 7 (:REWRITE |(< (- x) (- y))|))
     (7 7 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (7 7 (:LINEAR BOUNDS-POSITION-EQUAL))
     (4 4 (:REWRITE |(< (/ x) 0)|))
     (4 4 (:REWRITE |(< (* x y) 0)|))
     (4 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (4 2
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (4 2
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (2 2
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (2 2
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (2 2
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (2 2
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (2 2
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (2 2 (:REWRITE DEFAULT-CAR))
     (2 2 (:REWRITE |(equal c (/ x))|))
     (2 2 (:REWRITE |(equal c (- x))|))
     (2 2 (:REWRITE |(equal (/ x) c)|))
     (2 2 (:REWRITE |(equal (/ x) (/ y))|))
     (2 2 (:REWRITE |(equal (- x) c)|))
     (2 2 (:REWRITE |(equal (- x) (- y))|))
     (2 2 (:REWRITE |(equal (+ (- c) x) y)|))
     (2 2 (:REWRITE |(< (if a b c) x)|))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE |(< y (+ (- c) x))|))
     (1 1 (:REWRITE |(< x (+ c/d y))|))
     (1 1 (:REWRITE |(< (+ c/d x) y)|))
     (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(RP::SORT-MEASURE-LEMMA2
     (6 3 (:REWRITE DEFAULT-PLUS-2))
     (5 5 (:REWRITE DEFAULT-CDR))
     (4 4 (:LINEAR LEN-WHEN-PREFIXP))
     (3 3
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (3 3 (:REWRITE NORMALIZE-ADDENDS))
     (3 3 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (3 3 (:REWRITE DEFAULT-PLUS-1))
     (2 2 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (2 2 (:LINEAR BOUNDS-POSITION-EQUAL))
     (2 1
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (2 1 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (2 1 (:REWRITE DEFAULT-LESS-THAN-1))
     (1 1 (:REWRITE THE-FLOOR-BELOW))
     (1 1 (:REWRITE THE-FLOOR-ABOVE))
     (1 1 (:REWRITE SIMPLIFY-SUMS-<))
     (1 1 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (1 1 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (1 1
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (1 1
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (1 1 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (1 1 (:REWRITE INTEGERP-<-CONSTANT))
     (1 1 (:REWRITE DEFAULT-LESS-THAN-2))
     (1 1 (:REWRITE CONSTANT-<-INTEGERP))
     (1 1
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (1 1
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (1 1
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (1 1
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (1 1 (:REWRITE |(< c (- x))|))
     (1 1 (:REWRITE |(< (if a b c) x)|))
     (1 1
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (1 1
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (1 1
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (1 1
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (1 1 (:REWRITE |(< (/ x) (/ y))|))
     (1 1 (:REWRITE |(< (- x) c)|))
     (1 1 (:REWRITE |(< (- x) (- y))|)))
(RP::SORT-MEASURE-LEMMA2-V2-
     (6 6 (:LINEAR LEN-WHEN-PREFIXP))
     (4 2 (:REWRITE DEFAULT-PLUS-2))
     (3 3 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL))
     (2 2
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (2 2 (:REWRITE NORMALIZE-ADDENDS))
     (2 2 (:REWRITE DEFAULT-PLUS-1))
     (2 2 (:REWRITE DEFAULT-CDR))
     (2 1
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (2 1
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (2 1
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (2 1 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (2 1 (:REWRITE DEFAULT-LESS-THAN-1))
     (2 1
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (1 1 (:REWRITE THE-FLOOR-BELOW))
     (1 1 (:REWRITE THE-FLOOR-ABOVE))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (1 1 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (1 1 (:REWRITE SIMPLIFY-SUMS-<))
     (1 1 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (1 1 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (1 1
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (1 1
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (1 1
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (1 1
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (1 1 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (1 1 (:REWRITE INTEGERP-<-CONSTANT))
     (1 1
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (1 1 (:REWRITE DEFAULT-LESS-THAN-2))
     (1 1 (:REWRITE CONSTANT-<-INTEGERP))
     (1 1 (:REWRITE |(equal c (/ x))|))
     (1 1 (:REWRITE |(equal c (- x))|))
     (1 1 (:REWRITE |(equal (/ x) c)|))
     (1 1 (:REWRITE |(equal (/ x) (/ y))|))
     (1 1 (:REWRITE |(equal (- x) c)|))
     (1 1 (:REWRITE |(equal (- x) (- y))|))
     (1 1
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (1 1
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (1 1
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (1 1
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (1 1 (:REWRITE |(< c (- x))|))
     (1 1
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (1 1
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (1 1
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (1 1 (:REWRITE |(< (/ x) (/ y))|))
     (1 1 (:REWRITE |(< (- x) c)|))
     (1 1 (:REWRITE |(< (- x) (- y))|)))
(RP::SORT-MEASURE-LEMMA3
     (665 665
          (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
     (665 665
          (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (665 665
          (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (665 665
          (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (468 36 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (324 36
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (324 36
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (180 36 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (180 36 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (180 36
          (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (180 36
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (180 36
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (180 36
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (180 36
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (54 6
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (33 3 (:REWRITE DEFAULT-FLOOR-RATIO))
     (32 32 (:REWRITE DEFAULT-TIMES-2))
     (32 32 (:REWRITE DEFAULT-TIMES-1))
     (30 6
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (29 29 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (29 29 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (29 29 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (28 17 (:REWRITE DEFAULT-PLUS-2))
     (27 1 (:LINEAR LINEAR-FLOOR-BOUNDS-3))
     (23 17 (:REWRITE DEFAULT-PLUS-1))
     (23 1 (:LINEAR LINEAR-FLOOR-BOUNDS-2))
     (21 3 (:DEFINITION LEN))
     (20 20
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (17 8 (:REWRITE DEFAULT-LESS-THAN-1))
     (10 10
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (10 2 (:REWRITE DEFAULT-MINUS))
     (8 8 (:REWRITE THE-FLOOR-BELOW))
     (8 8 (:REWRITE THE-FLOOR-ABOVE))
     (8 8 (:REWRITE DEFAULT-LESS-THAN-2))
     (7 7
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (7 7
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (7 7 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (7 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (6 6
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (6 6
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (6 6
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (6 6
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (6 6 (:REWRITE |(< c (- x))|))
     (6 6
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (6 6
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (6 6
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (6 6
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (6 6 (:REWRITE |(< (/ x) (/ y))|))
     (6 6 (:REWRITE |(< (- x) (- y))|))
     (5 5 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (5 5 (:REWRITE REDUCE-INTEGERP-+))
     (5 5 (:REWRITE INTEGERP-MINUS-X))
     (5 5 (:REWRITE INTEGERP-<-CONSTANT))
     (5 5
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (5 5 (:REWRITE CONSTANT-<-INTEGERP))
     (5 5 (:META META-INTEGERP-CORRECT))
     (5 4 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (3 3 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (3 3 (:REWRITE DEFAULT-FLOOR-2))
     (3 3 (:REWRITE DEFAULT-FLOOR-1))
     (3 3 (:REWRITE DEFAULT-CDR))
     (3 3 (:REWRITE |(floor x 2)| . 2))
     (3 3 (:REWRITE |(< 0 (* x y))|))
     (2 2 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (2 2 (:REWRITE |(< y (+ (- c) x))|))
     (2 2 (:REWRITE |(< x (+ c/d y))|))
     (2 2 (:REWRITE |(< 0 (/ x))|))
     (2 2 (:REWRITE |(< (+ c/d x) y)|))
     (2 2 (:REWRITE |(< (+ (- c) x) y)|))
     (2 2 (:LINEAR LEN-WHEN-PREFIXP))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< x 0)|))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< 0 x)|))
     (1 1 (:REWRITE |(< x (/ y)) with (< y 0)|))
     (1 1 (:REWRITE |(< (/ x) 0)|))
     (1 1 (:REWRITE |(< (* x y) 0)|))
     (1 1 (:REWRITE |(* (- x) y)|))
     (1 1 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (1 1 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::SORT-MEASURE-LEMMA4 (16 16 (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
                         (16 16 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
                         (16 16 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
                         (16 16 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
                         (13 1 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
                         (9 1
                            (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
                         (9 1
                            (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
                         (5 1 (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
                         (5 1 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
                         (5 1 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
                         (5 1
                            (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
                         (5 1
                            (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
                         (5 1
                            (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
                         (5 1
                            (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
                         (5 1
                            (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2)))
(RP::LEN-OF-CUT-LIST-BY-HALF-SECOND
     (35 5 (:DEFINITION LEN))
     (15 10 (:REWRITE DEFAULT-PLUS-2))
     (10 10 (:REWRITE DEFAULT-PLUS-1))
     (8 8
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (8 8 (:REWRITE NORMALIZE-ADDENDS))
     (7 1 (:DEFINITION RP::CUT-LIST-BY-HALF))
     (6 6 (:REWRITE DEFAULT-CDR))
     (6 6 (:LINEAR LEN-WHEN-PREFIXP))
     (5 5 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (4 2 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL))
     (3 2
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (3 2 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (3 2 (:REWRITE DEFAULT-LESS-THAN-1))
     (2 2 (:REWRITE THE-FLOOR-BELOW))
     (2 2 (:REWRITE THE-FLOOR-ABOVE))
     (2 2 (:REWRITE SIMPLIFY-SUMS-<))
     (2 2 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (2 2
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (2 2
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (2 2 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (2 2 (:REWRITE INTEGERP-<-CONSTANT))
     (2 2 (:REWRITE DEFAULT-MINUS))
     (2 2 (:REWRITE DEFAULT-LESS-THAN-2))
     (2 2 (:REWRITE CONSTANT-<-INTEGERP))
     (2 2
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (2 2
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (2 2
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (2 2
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (2 2 (:REWRITE |(< c (- x))|))
     (2 2
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (2 2
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (2 2
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (2 2
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (2 2 (:REWRITE |(< (/ x) (/ y))|))
     (2 2 (:REWRITE |(< (- x) c)|))
     (2 2 (:REWRITE |(< (- x) (- y))|))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE DEFAULT-CAR)))
(RP::LEN-OF-CUT-LIST-BY-HALF-FIRST
     (21 3 (:DEFINITION LEN))
     (7 4 (:REWRITE DEFAULT-PLUS-2))
     (7 1 (:DEFINITION RP::CUT-LIST-BY-HALF))
     (6 6 (:LINEAR LEN-WHEN-PREFIXP))
     (4 4
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (4 4 (:REWRITE NORMALIZE-ADDENDS))
     (4 4 (:REWRITE DEFAULT-PLUS-1))
     (4 4 (:REWRITE DEFAULT-CDR))
     (4 2 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (3 3 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL))
     (3 2
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (3 2 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (3 2 (:REWRITE DEFAULT-LESS-THAN-1))
     (2 2 (:REWRITE THE-FLOOR-BELOW))
     (2 2 (:REWRITE THE-FLOOR-ABOVE))
     (2 2 (:REWRITE SIMPLIFY-SUMS-<))
     (2 2 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (2 2
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (2 2
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (2 2 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (2 2 (:REWRITE INTEGERP-<-CONSTANT))
     (2 2 (:REWRITE DEFAULT-LESS-THAN-2))
     (2 2 (:REWRITE CONSTANT-<-INTEGERP))
     (2 2
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (2 2
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (2 2
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (2 2
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (2 2 (:REWRITE |(< c (- x))|))
     (2 2
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (2 2
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (2 2
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (2 2
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (2 2 (:REWRITE |(< (/ x) (/ y))|))
     (2 2 (:REWRITE |(< (- x) c)|))
     (2 2 (:REWRITE |(< (- x) (- y))|))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE DEFAULT-CAR)))
(RP::GUARD-LEMMA1
     (477 477
          (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
     (477 477
          (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (477 477
          (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (477 477
          (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (325 25 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (225 25
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (225 25
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (125 25 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (125 25 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (125 25
          (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (125 25
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (125 25
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (125 25
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (125 25
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (54 14 (:REWRITE DEFAULT-PLUS-2))
     (40 40 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (40 40 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (40 40 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (33 3 (:REWRITE DEFAULT-FLOOR-RATIO))
     (29 29 (:REWRITE DEFAULT-TIMES-2))
     (29 29 (:REWRITE DEFAULT-TIMES-1))
     (27 3
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (27 1 (:LINEAR LINEAR-FLOOR-BOUNDS-3))
     (23 1 (:LINEAR LINEAR-FLOOR-BOUNDS-2))
     (22 22
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (20 14 (:REWRITE DEFAULT-PLUS-1))
     (15 3
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (10 5 (:REWRITE DEFAULT-LESS-THAN-1))
     (8 4 (:REWRITE DEFAULT-MINUS))
     (7 7
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (6 4 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (5 5 (:REWRITE THE-FLOOR-BELOW))
     (5 5 (:REWRITE THE-FLOOR-ABOVE))
     (5 5 (:REWRITE REDUCE-INTEGERP-+))
     (5 5 (:REWRITE INTEGERP-MINUS-X))
     (5 5
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (5 5 (:REWRITE DEFAULT-LESS-THAN-2))
     (5 5 (:META META-INTEGERP-CORRECT))
     (5 4
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (5 4
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (5 4
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (5 4 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (4 4 (:REWRITE SIMPLIFY-SUMS-<))
     (4 4 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (4 4 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (4 4 (:REWRITE INTEGERP-<-CONSTANT))
     (4 4 (:REWRITE CONSTANT-<-INTEGERP))
     (4 4
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (4 4
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (4 4
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (4 4
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (4 4 (:REWRITE |(< c (- x))|))
     (4 4
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (4 4
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (4 4
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (4 4
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (4 4 (:REWRITE |(< (/ x) (/ y))|))
     (4 4 (:REWRITE |(< (- x) c)|))
     (4 4 (:REWRITE |(< (- x) (- y))|))
     (3 3 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (3 3 (:REWRITE DEFAULT-FLOOR-2))
     (3 3 (:REWRITE DEFAULT-FLOOR-1))
     (3 3 (:REWRITE |(floor x 2)| . 2))
     (3 3 (:REWRITE |(< (/ x) 0)|))
     (3 3 (:REWRITE |(< (* x y) 0)|))
     (2 2 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (2 2 (:TYPE-PRESCRIPTION ABS))
     (2 2
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (2 2 (:REWRITE |(< (+ c/d x) y)|))
     (2 2 (:REWRITE |(< (+ (- c) x) y)|))
     (2 2 (:REWRITE |(* (- x) y)|))
     (2 2 (:LINEAR LEN-WHEN-PREFIXP))
     (1 1
        (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
     (1 1 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (1 1 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::O<-FLOOR
     (226 1 (:REWRITE O<=-O-FINP-DEF))
     (140 2 (:REWRITE |(< (+ c/d x) y)|))
     (113 1 (:REWRITE |(< (+ (- c) x) y)|))
     (82 3 (:REWRITE SIMPLIFY-SUMS-<))
     (60 60 (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
     (60 60 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (60 60 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (60 60 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (45 7 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (32 4
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (28 2 (:REWRITE |(+ y (+ x z))|))
     (23 8 (:REWRITE NORMALIZE-ADDENDS))
     (18 10 (:REWRITE DEFAULT-LESS-THAN-1))
     (17 17 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
     (17 17 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (17 17 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (17 17 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (17 15 (:REWRITE DEFAULT-PLUS-1))
     (15 15 (:REWRITE DEFAULT-PLUS-2))
     (14 14 (:REWRITE DEFAULT-TIMES-2))
     (14 14 (:REWRITE DEFAULT-TIMES-1))
     (12 3 (:REWRITE |(* y x)|))
     (11 1 (:REWRITE DEFAULT-FLOOR-RATIO))
     (10 10 (:REWRITE THE-FLOOR-BELOW))
     (10 10 (:REWRITE THE-FLOOR-ABOVE))
     (10 10 (:REWRITE DEFAULT-LESS-THAN-2))
     (10 1 (:REWRITE |(+ y x)|))
     (8 1 (:REWRITE |(* x (+ y z))|))
     (7 7
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (7 7
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (7 2 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
     (7 1 (:REWRITE |(* y (* x z))|))
     (6 6
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (6 6
        (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (5 1 (:REWRITE O-INFP-O-FINP-O<=))
     (5 1 (:REWRITE AC-<))
     (4 4 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (4 4 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (4 4 (:REWRITE INTEGERP-<-CONSTANT))
     (4 4 (:REWRITE CONSTANT-<-INTEGERP))
     (4 4
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (4 4
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (4 4
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (4 4
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (4 4 (:REWRITE |(< c (- x))|))
     (4 4
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (4 4
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (4 4
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (4 4
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (4 4 (:REWRITE |(< (/ x) (/ y))|))
     (4 4 (:REWRITE |(< (- x) c)|))
     (4 4 (:REWRITE |(< (- x) (- y))|))
     (4 4 (:DEFINITION FIX))
     (4 1 (:REWRITE |(+ c (+ d x))|))
     (4 1 (:REWRITE |(+ (- x) (* c x))|))
     (3 3 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (3 3 (:REWRITE |(< 0 (* x y))|))
     (2 2 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (2 2 (:REWRITE REDUCE-INTEGERP-+))
     (2 2 (:REWRITE INTEGERP-MINUS-X))
     (2 2
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (2 2 (:REWRITE |(< x (+ c/d y))|))
     (2 2 (:REWRITE |(* a (/ a))|))
     (2 2 (:META META-INTEGERP-CORRECT))
     (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (1 1 (:REWRITE DEFAULT-FLOOR-2))
     (1 1 (:REWRITE DEFAULT-FLOOR-1))
     (1 1 (:REWRITE |(floor x 2)| . 2))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< x 0)|))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< 0 x)|))
     (1 1 (:REWRITE |(< y (+ (- c) x))|))
     (1 1 (:REWRITE |(< x (/ y)) with (< y 0)|))
     (1 1 (:REWRITE |(< x (/ y)) with (< 0 y)|))
     (1 1 (:REWRITE |(< 0 (/ x))|))
     (1 1 (:REWRITE |(+ x (- x))|))
     (1 1 (:REWRITE |(+ 0 x)|))
     (1 1 (:REWRITE |(* a (/ a) b)|))
     (1 1 (:REWRITE |(* 1 x)|)))
(RP::O<-FLOOR-2 (187 1 (:REWRITE O<=-O-FINP-DEF))
                (101 2 (:REWRITE |(< (+ c/d x) y)|))
                (60 60 (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
                (60 60 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
                (60 60 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
                (60 60 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
                (56 3 (:REWRITE SIMPLIFY-SUMS-<))
                (53 17 (:REWRITE DEFAULT-PLUS-2))
                (32 4
                    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
                (31 31 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
                (31 31 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
                (31 31 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
                (31 31 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
                (21 17 (:REWRITE DEFAULT-PLUS-1))
                (18 18 (:REWRITE DEFAULT-TIMES-2))
                (18 18 (:REWRITE DEFAULT-TIMES-1))
                (16 8 (:REWRITE DEFAULT-LESS-THAN-1))
                (12 3 (:REWRITE |(* y x)|))
                (11 1 (:REWRITE DEFAULT-FLOOR-RATIO))
                (10 10
                    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
                (10 1 (:REWRITE |(+ y x)|))
                (8 8 (:REWRITE THE-FLOOR-BELOW))
                (8 8 (:REWRITE THE-FLOOR-ABOVE))
                (8 8 (:REWRITE DEFAULT-LESS-THAN-2))
                (8 4 (:REWRITE DEFAULT-MINUS))
                (8 1 (:REWRITE |(* x (+ y z))|))
                (7 1 (:REWRITE |(* y (* x z))|))
                (5 5
                   (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
                (5 5
                   (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
                (5 5 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
                (5 5
                   (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
                (5 1 (:REWRITE O-INFP-O-FINP-O<=))
                (5 1 (:REWRITE AC-<))
                (4 4 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
                (4 4 (:REWRITE REMOVE-WEAK-INEQUALITIES))
                (4 4 (:REWRITE REMOVE-STRICT-INEQUALITIES))
                (4 4 (:REWRITE INTEGERP-<-CONSTANT))
                (4 4 (:REWRITE CONSTANT-<-INTEGERP))
                (4 4
                   (:REWRITE |(< c (/ x)) positive c --- present in goal|))
                (4 4
                   (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
                (4 4
                   (:REWRITE |(< c (/ x)) negative c --- present in goal|))
                (4 4
                   (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
                (4 4 (:REWRITE |(< c (- x))|))
                (4 4
                   (:REWRITE |(< (/ x) c) positive c --- present in goal|))
                (4 4
                   (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
                (4 4
                   (:REWRITE |(< (/ x) c) negative c --- present in goal|))
                (4 4
                   (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
                (4 4 (:REWRITE |(< (/ x) (/ y))|))
                (4 4 (:REWRITE |(< (- x) c)|))
                (4 4 (:REWRITE |(< (- x) (- y))|))
                (4 1 (:REWRITE |(+ (- x) (* c x))|))
                (3 3 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
                (2 2 (:REWRITE REDUCE-INTEGERP-+))
                (2 2 (:REWRITE INTEGERP-MINUS-X))
                (2 2
                   (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                (2 2 (:REWRITE |(* a (/ a))|))
                (2 2 (:REWRITE |(* (- x) y)|))
                (2 2 (:META META-INTEGERP-CORRECT))
                (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
                (1 1 (:REWRITE DEFAULT-FLOOR-2))
                (1 1 (:REWRITE DEFAULT-FLOOR-1))
                (1 1 (:REWRITE |(floor x 2)| . 2))
                (1 1
                   (:REWRITE |(<= (/ x) y) with (< x 0)|))
                (1 1
                   (:REWRITE |(<= (/ x) y) with (< 0 x)|))
                (1 1 (:REWRITE |(< x (/ y)) with (< y 0)|))
                (1 1 (:REWRITE |(< x (/ y)) with (< 0 y)|))
                (1 1 (:REWRITE |(< 0 (* x y))|))
                (1 1 (:REWRITE |(< (+ (- c) x) y)|))
                (1 1 (:REWRITE |(+ x (- x))|))
                (1 1 (:REWRITE |(* a (/ a) b)|))
                (1 1 (:REWRITE |(* 1 x)|)))
(RP::FLOOR-IS-POS (20 20 (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
                  (20 20 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
                  (20 20 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
                  (20 20 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
                  (13 1 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
                  (9 1
                     (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
                  (9 1
                     (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
                  (9 1
                     (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
                  (5 1 (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
                  (5 1 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
                  (5 1 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
                  (5 1
                     (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
                  (5 1
                     (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
                  (5 1
                     (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
                  (5 1
                     (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
                  (5 1
                     (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
                  (5 1
                     (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
                  (5 1
                     (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2)))
(RP::FLOOR-IS-LESS-THAN
     (693 693
          (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
     (693 693
          (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (693 693
          (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (693 693
          (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (368 32 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (272 32
          (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (272 32
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (272 32
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (160 32 (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
     (160 32 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (160 32 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (160 32
          (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (160 32
          (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
     (160 32
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (160 32
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (160 32
          (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (160 32
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (160 32
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (56 8
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 1))
     (33 3 (:REWRITE DEFAULT-FLOOR-RATIO))
     (32 32 (:REWRITE DEFAULT-TIMES-2))
     (32 32 (:REWRITE DEFAULT-TIMES-1))
     (29 29 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (29 29 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (29 29 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (27 1 (:LINEAR LINEAR-FLOOR-BOUNDS-3))
     (23 1 (:LINEAR LINEAR-FLOOR-BOUNDS-2))
     (22 14 (:REWRITE DEFAULT-PLUS-2))
     (20 20
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (20 14 (:REWRITE DEFAULT-PLUS-1))
     (16 8 (:REWRITE DEFAULT-LESS-THAN-2))
     (10 2 (:REWRITE DEFAULT-MINUS))
     (8 8 (:REWRITE THE-FLOOR-BELOW))
     (8 8 (:REWRITE THE-FLOOR-ABOVE))
     (8 8 (:REWRITE DEFAULT-LESS-THAN-1))
     (7 7
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (7 7
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (7 7 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (7 7
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (6 6 (:REWRITE REDUCE-INTEGERP-+))
     (6 6 (:REWRITE INTEGERP-MINUS-X))
     (6 6
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (6 6
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (6 6
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (6 6
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (6 6
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (6 6
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (6 6
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (6 6
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (6 6
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (6 6 (:REWRITE |(< (/ x) (/ y))|))
     (6 6 (:REWRITE |(< (- x) (- y))|))
     (6 6 (:META META-INTEGERP-CORRECT))
     (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (5 5 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (5 5 (:REWRITE INTEGERP-<-CONSTANT))
     (5 5 (:REWRITE CONSTANT-<-INTEGERP))
     (5 5 (:REWRITE |(< (- x) c)|))
     (4 4 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (3 3 (:REWRITE DEFAULT-FLOOR-2))
     (3 3 (:REWRITE DEFAULT-FLOOR-1))
     (3 3 (:REWRITE |(floor x 2)| . 2))
     (3 3 (:REWRITE |(< 0 (* x y))|))
     (2 2 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (2 2 (:REWRITE |(< y (+ (- c) x))|))
     (2 2 (:REWRITE |(< x (+ c/d y))|))
     (2 2 (:REWRITE |(< 0 (/ x))|))
     (2 2 (:REWRITE |(< (/ x) 0)|))
     (2 2 (:REWRITE |(< (+ c/d x) y)|))
     (2 2 (:REWRITE |(< (+ (- c) x) y)|))
     (2 2 (:REWRITE |(< (* x y) 0)|))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< x 0)|))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< 0 x)|))
     (1 1 (:REWRITE |(< x (/ y)) with (< y 0)|))
     (1 1 (:REWRITE |(* (- x) y)|)))
(RP::CONSP-CDR-IMPLIES
     (8 4 (:REWRITE DEFAULT-PLUS-2))
     (6 6 (:REWRITE DEFAULT-CDR))
     (6 6 (:LINEAR LEN-WHEN-PREFIXP))
     (4 4
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (4 4 (:REWRITE NORMALIZE-ADDENDS))
     (4 4 (:REWRITE DEFAULT-PLUS-1))
     (3 3 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL))
     (2 1
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (2 1
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (2 1
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (2 1 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (2 1 (:REWRITE DEFAULT-LESS-THAN-2))
     (1 1 (:REWRITE THE-FLOOR-BELOW))
     (1 1 (:REWRITE THE-FLOOR-ABOVE))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (1 1 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (1 1 (:REWRITE SIMPLIFY-SUMS-<))
     (1 1 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (1 1 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (1 1
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (1 1
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (1 1
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (1 1
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (1 1 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (1 1 (:REWRITE INTEGERP-<-CONSTANT))
     (1 1
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (1 1 (:REWRITE DEFAULT-LESS-THAN-1))
     (1 1 (:REWRITE CONSTANT-<-INTEGERP))
     (1 1 (:REWRITE |(equal c (/ x))|))
     (1 1 (:REWRITE |(equal c (- x))|))
     (1 1 (:REWRITE |(equal (/ x) c)|))
     (1 1 (:REWRITE |(equal (/ x) (/ y))|))
     (1 1 (:REWRITE |(equal (- x) c)|))
     (1 1 (:REWRITE |(equal (- x) (- y))|))
     (1 1 (:REWRITE |(< x (if a b c))|))
     (1 1
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (1 1
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (1 1
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (1 1
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (1 1 (:REWRITE |(< c (- x))|))
     (1 1
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (1 1
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (1 1
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (1 1
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (1 1 (:REWRITE |(< (/ x) (/ y))|))
     (1 1 (:REWRITE |(< (- x) c)|))
     (1 1 (:REWRITE |(< (- x) (- y))|)))
(RP::POS-LEN-IMPLIES (2 2 (:LINEAR LEN-WHEN-PREFIXP))
                     (1 1 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                     (1 1 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                     (1 1 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::LESS-THAN-2-OF-LEN-IS
     (452 19 (:REWRITE RP::POS-LEN-IMPLIES))
     (32 16 (:REWRITE DEFAULT-PLUS-2))
     (22 22 (:REWRITE DEFAULT-CDR))
     (21 11 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (19 11
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (19 11 (:REWRITE DEFAULT-LESS-THAN-2))
     (16 16
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (16 16 (:REWRITE NORMALIZE-ADDENDS))
     (16 16 (:REWRITE DEFAULT-PLUS-1))
     (16 16 (:LINEAR LEN-WHEN-PREFIXP))
     (15 15 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (13 11 (:REWRITE DEFAULT-LESS-THAN-1))
     (12 11
         (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (11 11 (:REWRITE THE-FLOOR-BELOW))
     (11 11 (:REWRITE THE-FLOOR-ABOVE))
     (11 11 (:REWRITE SIMPLIFY-SUMS-<))
     (11 11
         (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (11 11
         (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (11 11
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (11 11
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (11 11 (:REWRITE INTEGERP-<-CONSTANT))
     (11 11 (:REWRITE CONSTANT-<-INTEGERP))
     (11 11
         (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (11 11
         (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (11 11
         (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (11 11
         (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (11 11 (:REWRITE |(< c (- x))|))
     (11 11
         (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (11 11
         (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (11 11
         (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (11 11 (:REWRITE |(< (/ x) (/ y))|))
     (11 11 (:REWRITE |(< (- x) c)|))
     (11 11 (:REWRITE |(< (- x) (- y))|))
     (9 9
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (9 9
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (9 9 (:REWRITE |(< 0 (/ x))|))
     (9 9 (:REWRITE |(< 0 (* x y))|))
     (8 8 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (8 8 (:LINEAR BOUNDS-POSITION-EQUAL))
     (4 2
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (4 2
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (3 3 (:REWRITE |(< x (if a b c))|))
     (3 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (2 2 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (2 2
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (2 2
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (2 2
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (2 2 (:REWRITE |(equal c (/ x))|))
     (2 2 (:REWRITE |(equal c (- x))|))
     (2 2 (:REWRITE |(equal (/ x) c)|))
     (2 2 (:REWRITE |(equal (/ x) (/ y))|))
     (2 2 (:REWRITE |(equal (- x) c)|))
     (2 2 (:REWRITE |(equal (- x) (- y))|))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (1 1 (:REWRITE |(equal x (if a b c))|))
     (1 1 (:REWRITE |(equal (if a b c) x)|))
     (1 1 (:REWRITE |(< (if a b c) x)|))
     (1 1 (:REWRITE |(< (+ c/d x) y)|))
     (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(RP::MERGE-SORTED-AND$-LISTS (353 163 (:REWRITE DEFAULT-+-2))
                             (299 23 (:REWRITE RP::POS-LEN-IMPLIES))
                             (240 163 (:REWRITE DEFAULT-+-1))
                             (166 5 (:REWRITE O<=-O-FINP-DEF))
                             (120 30 (:DEFINITION INTEGER-ABS))
                             (94 58 (:REWRITE DEFAULT-<-2))
                             (68 58 (:REWRITE DEFAULT-<-1))
                             (60 15 (:DEFINITION LENGTH))
                             (46 46 (:REWRITE DEFAULT-CAR))
                             (46 46 (:LINEAR LEN-WHEN-PREFIXP))
                             (40 40 (:REWRITE DEFAULT-CDR))
                             (38 38 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                             (30 30 (:REWRITE DEFAULT-UNARY-MINUS))
                             (30 15
                                 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
                             (28 5 (:REWRITE AC-<))
                             (24 2 (:REWRITE <<-IMPLIES-LEXORDER))
                             (23 23 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                             (23 23 (:LINEAR BOUNDS-POSITION-EQUAL))
                             (16 4 (:REWRITE <<-TRICHOTOMY))
                             (15 15
                                 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
                             (15 15 (:REWRITE INTEGERP==>NUMERATOR-=-X))
                             (15 15
                                 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
                             (15 15
                                 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                             (15 15
                                 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
                             (15 15 (:REWRITE DEFAULT-REALPART))
                             (15 15 (:REWRITE DEFAULT-NUMERATOR))
                             (15 15 (:REWRITE DEFAULT-IMAGPART))
                             (15 15 (:REWRITE DEFAULT-DENOMINATOR))
                             (15 5 (:REWRITE O-INFP-O-FINP-O<=))
                             (12 12 (:TYPE-PRESCRIPTION <<))
                             (12 12
                                 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-3))
                             (12 3 (:REWRITE O-P-O-INFP-CAR))
                             (9 9
                                (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-2))
                             (6 6
                                (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-1))
                             (6 6
                                (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-0))
                             (5 5 (:REWRITE |a < b & b < c  =>  a < c|))
                             (4 4 (:REWRITE <<-TRANSITIVE))
                             (4 2 (:REWRITE <<-ASYMMETRIC))
                             (2 2 (:REWRITE LEXORDER-TRANSITIVE)))
(RP::TRUE-LISTP-OF-MERGE-SORTED-AND$-LISTS
     (155209 348
             (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (82660 203 (:DEFINITION RP::RP-TERM-LISTP))
     (80628 438
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (79551 438 (:DEFINITION QUOTEP))
     (78411 213 (:DEFINITION APPLY$-BADGEP))
     (71629 350
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (67861 138 (:DEFINITION RP::RP-TERMP))
     (67054 438
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (62726 540 (:DEFINITION SUBSETP-EQUAL))
     (53614 114 (:DEFINITION RP::FALIST-CONSISTENT))
     (48050 4050 (:DEFINITION MEMBER-EQUAL))
     (46745 4076 (:REWRITE RP::POS-LEN-IMPLIES))
     (42294 114
            (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (35522 1350 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (33270 31788 (:REWRITE DEFAULT-CDR))
     (30200 2160
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (15970 14216 (:REWRITE DEFAULT-CAR))
     (8100 8100 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (7156 3983 (:REWRITE DEFAULT-<-2))
     (7150 143
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (7020 7020 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (6640 6640 (:LINEAR LEN-WHEN-PREFIXP))
     (6480 6480
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (4800 1371 (:REWRITE O-P-O-INFP-CAR))
     (4320 4320
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (3983 3983
           (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (3983 3983 (:REWRITE DEFAULT-<-1))
     (3780 3780 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (3320 3320 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (3320 3320 (:LINEAR BOUNDS-POSITION-EQUAL))
     (2682 270 (:DEFINITION NATP))
     (2592 213 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (2499 1035
           (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (2160 2160 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (2067 117
           (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (1779 135 (:DEFINITION ALL-NILS))
     (1674 639 (:REWRITE RP::IS-IF-RP-TERMP))
     (1370 1370
           (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (1350 1350
           (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (1143 1143 (:REWRITE O-P-DEF-O-FINP-1))
     (1056 1056
           (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (1026 1026
           (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (960 351 (:REWRITE RP::RP-TERMP-CADR))
     (880 880 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (810 405
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (675 675 (:TYPE-PRESCRIPTION ALL-NILS))
     (554 248 (:REWRITE RP::RP-TERMP-CADDR))
     (554 248 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (438 438 (:TYPE-PRESCRIPTION QUOTEP))
     (411 187
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (405 405
          (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (348 348
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (228 228
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (160 40 (:REWRITE RP::RP-TERMP-CADDDR))
     (126 11 (:REWRITE <<-IMPLIES-LEXORDER))
     (117 117
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (82 21 (:REWRITE <<-TRICHOTOMY))
     (62 62 (:TYPE-PRESCRIPTION <<))
     (21 21 (:REWRITE <<-TRANSITIVE))
     (20 10 (:REWRITE <<-ASYMMETRIC))
     (1 1 (:REWRITE <<-IRREFLEXIVE)))
(RP::SORT-AND$-LIST (23 23 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                    (13 9 (:REWRITE DEFAULT-CDR))
                    (11 7 (:REWRITE DEFAULT-<-2))
                    (8 8 (:LINEAR LEN-WHEN-PREFIXP))
                    (8 7 (:REWRITE DEFAULT-<-1))
                    (4 4 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                    (4 4 (:LINEAR BOUNDS-POSITION-EQUAL))
                    (3 3 (:TYPE-PRESCRIPTION TRUE-LISTP))
                    (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
                    (2 1 (:REWRITE DEFAULT-+-2))
                    (1 1 (:REWRITE DEFAULT-+-1)))
(RP::TRUE-LISTP-OF-SORT-AND$-LIST
     (113559 255
             (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (61509 151 (:DEFINITION RP::RP-TERM-LISTP))
     (59534 336
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (58582 336 (:DEFINITION QUOTEP))
     (57977 160 (:DEFINITION APPLY$-BADGEP))
     (50957 270
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (49176 109 (:DEFINITION RP::RP-TERMP))
     (46845 336
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (45908 392 (:DEFINITION SUBSETP-EQUAL))
     (37568 93 (:DEFINITION RP::FALIST-CONSISTENT))
     (35228 2940 (:DEFINITION MEMBER-EQUAL))
     (29315 85
            (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (25980 980 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (24335 22918 (:REWRITE DEFAULT-CDR))
     (22128 1568
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (12425 10258 (:REWRITE DEFAULT-CAR))
     (7188 106
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (5880 5880 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (5212 2900 (:REWRITE DEFAULT-<-2))
     (5096 5096 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (4880 4880 (:LINEAR LEN-WHEN-PREFIXP))
     (4704 4704
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (3490 969 (:REWRITE O-P-O-INFP-CAR))
     (3136 3136
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (3099 3099
           (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (2900 2900 (:REWRITE DEFAULT-<-1))
     (2744 2744 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (2440 2440 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (2440 2440 (:LINEAR BOUNDS-POSITION-EQUAL))
     (2359 160 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (1990 761
           (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (1966 196 (:DEFINITION NATP))
     (1813 100
           (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (1605 1605 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (1298 98 (:DEFINITION ALL-NILS))
     (1266 474 (:REWRITE RP::IS-IF-RP-TERMP))
     (1013 1013
           (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (980 980
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (899 811 (:REWRITE O-P-DEF-O-FINP-1))
     (798 798
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (711 711
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (688 252 (:REWRITE RP::RP-TERMP-CADR))
     (634 634 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (588 294
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (490 490 (:TYPE-PRESCRIPTION ALL-NILS))
     (450 190 (:REWRITE RP::RP-TERMP-CADDR))
     (450 190 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (336 336 (:TYPE-PRESCRIPTION QUOTEP))
     (324 142
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (294 294
          (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (255 255
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (186 186
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (128 32 (:REWRITE RP::RP-TERMP-CADDDR))
     (126 11 (:REWRITE <<-IMPLIES-LEXORDER))
     (100 100
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (88 88 (:TYPE-PRESCRIPTION O-FINP))
     (82 21 (:REWRITE <<-TRICHOTOMY))
     (68 68 (:TYPE-PRESCRIPTION FLOOR))
     (68 34 (:REWRITE DEFAULT-UNARY-MINUS))
     (68 34 (:REWRITE DEFAULT-+-2))
     (62 62 (:TYPE-PRESCRIPTION <<))
     (34 34 (:REWRITE DEFAULT-+-1))
     (21 21 (:REWRITE <<-TRANSITIVE))
     (20 10 (:REWRITE <<-ASYMMETRIC))
     (1 1 (:REWRITE <<-IRREFLEXIVE)))
(RP::SORT-AND$-LIST
     (35626 64
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (25950 54 (:DEFINITION APPLY$-BADGEP))
     (21189 27
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (21115 27 (:DEFINITION QUOTEP))
     (17684 13 (:DEFINITION RP::RP-TERM-LISTP))
     (17643 69 (:DEFINITION SUBSETP-EQUAL))
     (14776 430 (:DEFINITION MEMBER-EQUAL))
     (14010 27
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (13928 7 (:DEFINITION RP::RP-TERMP))
     (13775 107
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (13720 832
            (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (13125 608 (:REWRITE ACL2-NUMBERP-X))
     (11112 281 (:REWRITE RATIONALP-X))
     (9755 7 (:DEFINITION RP::FALIST-CONSISTENT))
     (8794 225
           (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (8159 7
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (7595 160 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (6248 351
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (5567 4 (:DEFINITION RP::SORT-AND$-LIST))
     (3819 3444 (:REWRITE DEFAULT-CDR))
     (3026 40
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (2199 1298 (:REWRITE DEFAULT-CAR))
     (1620 1620
           (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (1620 1620
           (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (1620 1620
           (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (1552 54 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (1430 832
           (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (1073 163
           (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (1053 1053
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (985 985 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (960 832 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (838 834
          (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (834 834
          (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (832 832
          (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (832 832 (:REWRITE |(equal c (/ x))|))
     (832 832 (:REWRITE |(equal c (- x))|))
     (832 832 (:REWRITE |(equal (/ x) c)|))
     (832 832 (:REWRITE |(equal (/ x) (/ y))|))
     (832 832 (:REWRITE |(equal (- x) c)|))
     (832 832 (:REWRITE |(equal (- x) (- y))|))
     (747 747 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (702 702
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (692 692 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (644 36 (:DEFINITION ALL-NILS))
     (608 608
          (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (542 147
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (531 339 (:REWRITE DEFAULT-LESS-THAN-2))
     (531 159 (:REWRITE DEFAULT-PLUS-2))
     (510 323
          (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (496 496 (:LINEAR LEN-WHEN-PREFIXP))
     (458 458 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (395 373 (:REWRITE REDUCE-INTEGERP-+))
     (374 4 (:REWRITE |(+ x (if a b c))|))
     (373 373 (:REWRITE INTEGERP-MINUS-X))
     (373 373
          (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (373 373 (:META META-INTEGERP-CORRECT))
     (367 323
          (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (358 358
          (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (341 339 (:REWRITE DEFAULT-LESS-THAN-1))
     (339 339 (:REWRITE THE-FLOOR-BELOW))
     (339 339 (:REWRITE THE-FLOOR-ABOVE))
     (336 7
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (333 333
          (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (333 333
          (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (329 325
          (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (325 325 (:REWRITE INTEGERP-<-CONSTANT))
     (325 325 (:REWRITE CONSTANT-<-INTEGERP))
     (325 325
          (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (325 325
          (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (325 325
          (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (325 325
          (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (325 325 (:REWRITE |(< c (- x))|))
     (325 325
          (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (325 325
          (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (325 325
          (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (325 325
          (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (325 325 (:REWRITE |(< (/ x) (/ y))|))
     (325 325 (:REWRITE |(< (- x) c)|))
     (325 325 (:REWRITE |(< (- x) (- y))|))
     (323 323 (:REWRITE SIMPLIFY-SUMS-<))
     (302 84 (:REWRITE O-P-O-INFP-CAR))
     (296 250
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (295 295 (:TYPE-PRESCRIPTION RP::RP-TERMP))
     (281 281 (:REWRITE REDUCE-RATIONALP-+))
     (281 281 (:REWRITE REDUCE-RATIONALP-*))
     (281 281 (:REWRITE RATIONALP-MINUS-X))
     (281 281
          (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (281 281 (:META META-RATIONALP-CORRECT))
     (264 264 (:REWRITE |(< 0 (* x y))|))
     (250 250 (:REWRITE |(< 0 (/ x))|))
     (249 249
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (248 248 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (248 248 (:LINEAR BOUNDS-POSITION-EQUAL))
     (212 4 (:REWRITE |(+ (+ x y) z)|))
     (200 200
          (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (200 200
          (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (200 200
          (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (180 180 (:TYPE-PRESCRIPTION ALL-NILS))
     (175 159 (:REWRITE DEFAULT-PLUS-1))
     (160 160
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (156 4 (:REWRITE |(- (if a b c))|))
     (142 142 (:REWRITE DEFAULT-TIMES-2))
     (142 142 (:REWRITE DEFAULT-TIMES-1))
     (127 127
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (108 41 (:REWRITE RP::IS-IF-RP-TERMP))
     (103 5 (:REWRITE DEFAULT-FLOOR-RATIO))
     (102 102
          (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (90 34 (:REWRITE DEFAULT-MINUS))
     (84 84
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (78 70 (:REWRITE O-P-DEF-O-FINP-1))
     (69 69 (:REWRITE |(< (/ x) 0)|))
     (69 69 (:REWRITE |(< (* x y) 0)|))
     (66 66
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (64 64
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (64 64
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (64 16 (:REWRITE |(* c (* d x))|))
     (63 63
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (56 21 (:REWRITE RP::RP-TERMP-CADR))
     (55 55 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (50 5 (:REWRITE |(* y x)|))
     (48 4 (:REWRITE <<-IMPLIES-LEXORDER))
     (42 42 (:REWRITE |(equal x (if a b c))|))
     (42 42 (:REWRITE |(equal (if a b c) x)|))
     (36 16 (:REWRITE RP::RP-TERMP-CADDR))
     (36 16 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (32 8 (:REWRITE <<-TRICHOTOMY))
     (32 8 (:REWRITE |(+ (* c x) (* d x))|))
     (27 27 (:TYPE-PRESCRIPTION QUOTEP))
     (26 26 (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
     (26 26 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (26 26 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (26 26 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 2))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 1))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (26 2 (:REWRITE RP::SORT-MEASURE-LEMMA1))
     (26 2 (:REWRITE |(* (* x y) z)|))
     (24 24 (:TYPE-PRESCRIPTION <<))
     (20 4 (:REWRITE RP::SORT-MEASURE-LEMMA1-V2))
     (18 18 (:REWRITE |(* (- x) y)|))
     (16 16 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (16 4 (:REWRITE RP::RP-TERMP-CADDDR))
     (14 14
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (10 2 (:REWRITE |(+ y x)|))
     (8 8 (:TYPE-PRESCRIPTION O-FINP))
     (8 8 (:REWRITE <<-TRANSITIVE))
     (8 4 (:REWRITE <<-ASYMMETRIC))
     (7 7
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (5 5 (:REWRITE DEFAULT-FLOOR-2))
     (5 5 (:REWRITE DEFAULT-FLOOR-1))
     (5 5 (:REWRITE |(floor x 2)| . 2))
     (4 4 (:TYPE-PRESCRIPTION LEXORDER))
     (4 4 (:TYPE-PRESCRIPTION ABS))
     (4 4 (:REWRITE LEXORDER-TRANSITIVE))
     (4 4 (:REWRITE |(equal (+ (- c) x) y)|))
     (4 4 (:REWRITE |(< (+ c/d x) y)|))
     (4 4 (:REWRITE |(< (+ (- c) x) y)|))
     (3 3 (:REWRITE |(< y (+ (- c) x))|))
     (2 2
        (:REWRITE |(not (equal (* (/ x) y) 1))|))
     (2 2 (:REWRITE |(floor (+ x r) i)|)))
(RP::PP-LISTS-P-IMPLIES-ALISTP
     (7446 15
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (6762 5 (:DEFINITION TRUE-LISTP))
     (4002 16 (:DEFINITION RP::RP-TERM-LISTP))
     (3719 47
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (3540 15 (:DEFINITION RP::RP-TERMP))
     (3432 47 (:DEFINITION QUOTEP))
     (3404 47
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (3295 38 (:DEFINITION APPLY$-BADGEP))
     (3292 26
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (2610 20 (:DEFINITION SUBSETP-EQUAL))
     (2401 200 (:REWRITE RP::POS-LEN-IMPLIES))
     (2370 5 (:DEFINITION RP::FALIST-CONSISTENT))
     (2070 150 (:DEFINITION MEMBER-EQUAL))
     (1855 5
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (1484 1419 (:REWRITE DEFAULT-CDR))
     (1440 50 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (1300 80
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (981 896 (:REWRITE DEFAULT-CAR))
     (360 195 (:REWRITE DEFAULT-<-2))
     (340 340 (:LINEAR LEN-WHEN-PREFIXP))
     (300 300 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (260 260 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (246 69 (:REWRITE O-P-O-INFP-CAR))
     (240 240
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (195 195
          (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (195 195 (:REWRITE DEFAULT-<-1))
     (172 51 (:REWRITE RP::IS-IF-RP-TERMP))
     (170 170 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (170 170 (:LINEAR BOUNDS-POSITION-EQUAL))
     (170 38 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (160 160
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (141 50
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (140 140 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (127 127 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (122 122
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (121 10 (:DEFINITION NATP))
     (109 109
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (90 5
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (77 26 (:REWRITE RP::RP-TERMP-CADR))
     (65 5 (:DEFINITION ALL-NILS))
     (59 59 (:REWRITE O-P-DEF-O-FINP-1))
     (50 50
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (50 10 (:REWRITE RP::RP-TERMP-CADDDR))
     (47 47 (:TYPE-PRESCRIPTION QUOTEP))
     (46 46 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (45 45
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (45 15 (:REWRITE RP::RP-TERMP-CADDR))
     (45 15 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (36 15
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (35 10
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (30 15
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (25 25 (:TYPE-PRESCRIPTION ALL-NILS))
     (15 15
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (15 15
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (10 10
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (5 5
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP)))
(RP::MERGE-SORTED-PP-LISTS (598 46 (:REWRITE RP::POS-LEN-IMPLIES))
                           (458 207 (:REWRITE DEFAULT-+-2))
                           (310 207 (:REWRITE DEFAULT-+-1))
                           (298 60 (:REWRITE DEFAULT-CDR))
                           (205 5 (:REWRITE O<=-O-FINP-DEF))
                           (168 66 (:REWRITE DEFAULT-CAR))
                           (160 40 (:DEFINITION INTEGER-ABS))
                           (153 91 (:REWRITE DEFAULT-<-2))
                           (104 26 (:REWRITE O-P-O-INFP-CAR))
                           (101 91 (:REWRITE DEFAULT-<-1))
                           (92 92 (:LINEAR LEN-WHEN-PREFIXP))
                           (80 20 (:DEFINITION LENGTH))
                           (66 66 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                           (46 46 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                           (46 46 (:LINEAR BOUNDS-POSITION-EQUAL))
                           (40 40 (:REWRITE DEFAULT-UNARY-MINUS))
                           (40 20
                               (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
                           (31 5 (:REWRITE AC-<))
                           (20 20
                               (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
                           (20 20 (:REWRITE INTEGERP==>NUMERATOR-=-X))
                           (20 20
                               (:REWRITE INTEGERP==>DENOMINATOR-=-1))
                           (20 20
                               (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                           (20 20
                               (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
                           (20 20 (:REWRITE DEFAULT-REALPART))
                           (20 20 (:REWRITE DEFAULT-NUMERATOR))
                           (20 20 (:REWRITE DEFAULT-IMAGPART))
                           (20 20 (:REWRITE DEFAULT-DENOMINATOR))
                           (20 20
                               (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-3))
                           (15 15
                               (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-2))
                           (15 5 (:REWRITE O-INFP-O-FINP-O<=))
                           (10 10
                               (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-1))
                           (10 10
                               (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-0))
                           (5 5 (:REWRITE |a < b & b < c  =>  a < c|))
                           (4 4 (:REWRITE RP::PP-LIST-ORDER-SANITY)))
(RP::PP-LISTS-P-OF-MERGE-SORTED-PP-LISTS
     (5070 390 (:REWRITE RP::POS-LEN-IMPLIES))
     (780 780 (:LINEAR LEN-WHEN-PREFIXP))
     (780 390 (:REWRITE DEFAULT-<-2))
     (656 164 (:REWRITE O-P-O-INFP-CAR))
     (390 390
          (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (390 390 (:REWRITE DEFAULT-<-1))
     (390 390 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (390 390 (:LINEAR BOUNDS-POSITION-EQUAL))
     (164 164 (:REWRITE O-P-DEF-O-FINP-1))
     (124 124
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (102 102
          (:REWRITE RP::PP-LIST-ORDER-SANITY)))
(RP::MERGE-SORTED-PP-LISTS (1131 87 (:REWRITE RP::POS-LEN-IMPLIES))
                           (300 5
                                (:DEFINITION RP::MERGE-SORTED-PP-LISTS))
                           (228 57 (:REWRITE O-P-O-INFP-CAR))
                           (220 20 (:DEFINITION ACONS))
                           (200 13 (:REWRITE CONS-CAR-CDR))
                           (174 174 (:LINEAR LEN-WHEN-PREFIXP))
                           (174 87 (:REWRITE DEFAULT-<-2))
                           (87 87 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                           (87 87 (:REWRITE DEFAULT-<-1))
                           (87 87 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                           (87 87 (:LINEAR BOUNDS-POSITION-EQUAL))
                           (57 57 (:REWRITE O-P-DEF-O-FINP-1))
                           (37 37
                               (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
                           (21 21 (:REWRITE RP::PP-LIST-ORDER-SANITY))
                           (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
                           (4 4 (:TYPE-PRESCRIPTION BOOLEANP)))
(RP::SORT-PP-LISTS (26190 4 (:DEFINITION RP::EX-FROM-RP))
                   (25264 8 (:DEFINITION APPLY$-BADGEP))
                   (23660 1836 (:REWRITE RP::MEASURE-LEMMA1))
                   (18550 1594 (:REWRITE RP::SORT-MEASURE-LEMMA2))
                   (15198 16
                          (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
                   (14744 46
                          (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
                   (14738 4 (:REWRITE RP::NOT-INCLUDE-RP))
                   (14726 4 (:DEFINITION RP::INCLUDE-FNC))
                   (14670 8 (:DEFINITION TRUE-LISTP))
                   (12876 40
                          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
                   (12812 24 (:DEFINITION RP::RP-TERMP))
                   (11894 1352 (:REWRITE RP::MEASURE-LEMMA1-2))
                   (10791 2325 (:REWRITE DEFAULT-CDR))
                   (10784 8 (:DEFINITION RP::FALIST-CONSISTENT))
                   (10778 110
                          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
                   (9211 465
                         (:REWRITE RP::EQUALITY-MEASURE-LEMMA3))
                   (8256 8
                         (:DEFINITION RP::FALIST-CONSISTENT-AUX))
                   (8098 1004 (:REWRITE DEFAULT-CAR))
                   (6862 122 (:REWRITE LEN-WHEN-PREFIXP))
                   (4632 32 (:DEFINITION SUBSETP-EQUAL))
                   (3712 120
                         (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
                   (3674 8 (:DEFINITION WEAK-APPLY$-BADGE-P))
                   (2864 240 (:DEFINITION MEMBER-EQUAL))
                   (2786 80 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
                   (2188 120
                         (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
                   (2186 16 (:DEFINITION RP::RP-TERM-LISTP))
                   (1800 128
                         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
                   (1748 1748 (:LINEAR LEN-WHEN-PREFIXP))
                   (1185 465
                         (:REWRITE RP::EQUALITY-MEASURE-LEMMA1))
                   (874 874 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                   (874 874 (:LINEAR BOUNDS-POSITION-EQUAL))
                   (774 774 (:TYPE-PRESCRIPTION RP::RP-TERMP))
                   (761 761
                        (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                   (751 465 (:REWRITE DEFAULT-<-2))
                   (588 465 (:REWRITE DEFAULT-<-1))
                   (480 480 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
                   (416 416 (:REWRITE SUBSETP-IMPLIES-MEMBER))
                   (384 384
                        (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
                   (350 128 (:REWRITE O-P-O-INFP-CAR))
                   (336 40
                        (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
                   (330 8 (:DEFINITION ALL-NILS))
                   (320 96 (:REWRITE RP::IS-IF-RP-TERMP))
                   (256 256
                        (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
                   (236 236 (:TYPE-PRESCRIPTION PREFIXP))
                   (230 230 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
                   (224 224 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
                   (222 8
                        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
                   (216 16 (:DEFINITION NATP))
                   (212 44 (:DEFINITION QUOTEP))
                   (161 161
                        (:REWRITE RP::EQUALITY-MEASURE-LEMMA2))
                   (128 32 (:REWRITE RP::RP-TERMP-CADDDR))
                   (124 116
                        (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
                   (120 120 (:REWRITE PREFIXP-TRANSITIVE . 2))
                   (120 120 (:REWRITE PREFIXP-TRANSITIVE . 1))
                   (120 120
                        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
                   (120 120
                        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
                   (104 26 (:REWRITE RP::RP-TERMP-CADDDDR))
                   (96 96
                       (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
                   (96 96
                       (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
                   (96 32 (:REWRITE RP::RP-TERMP-CADR))
                   (96 32 (:REWRITE RP::RP-TERMP-CADDR))
                   (96 32 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
                   (80 80
                       (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
                   (80 36
                       (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
                   (72 72
                       (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
                   (64 64 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
                   (40 40 (:TYPE-PRESCRIPTION QUOTEP))
                   (40 40 (:TYPE-PRESCRIPTION ALL-NILS))
                   (36 18
                       (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
                   (32 32 (:TYPE-PRESCRIPTION TRUE-LISTP))
                   (24 10
                       (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
                   (20 20
                       (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
                   (18 18
                       (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                   (16 16
                       (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
                   (12 12 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
                   (8 8
                      (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
                   (8 8
                      (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
                   (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
                   (2 1 (:REWRITE DEFAULT-+-2))
                   (1 1 (:REWRITE DEFAULT-+-1)))
(RP::PP-LISTS-P-OF-SORT-PP-LISTS
     (69432 123
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (63762 41 (:DEFINITION TRUE-LISTP))
     (40914 128 (:DEFINITION RP::RP-TERM-LISTP))
     (38659 369
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (36194 369 (:DEFINITION QUOTEP))
     (35113 296 (:DEFINITION APPLY$-BADGEP))
     (35082 210
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (29518 164 (:DEFINITION SUBSETP-EQUAL))
     (29224 135 (:DEFINITION RP::RP-TERMP))
     (28012 369
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (25090 1230 (:DEFINITION MEMBER-EQUAL))
     (19434 41 (:DEFINITION RP::FALIST-CONSISTENT))
     (15650 656
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (15510 410 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (15211 41
            (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (3714 1980 (:REWRITE DEFAULT-<-2))
     (3438 3438 (:LINEAR LEN-WHEN-PREFIXP))
     (2929 835 (:REWRITE O-P-O-INFP-CAR))
     (2460 2460 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (2132 2132 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (2017 2017
           (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (1980 1980 (:REWRITE DEFAULT-<-1))
     (1968 1968
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (1719 1719 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (1719 1719 (:LINEAR BOUNDS-POSITION-EQUAL))
     (1636 517 (:REWRITE RP::IS-IF-RP-TERMP))
     (1369 296 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (1312 1312
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (1150 410
           (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (1148 1148 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (1088 1088
           (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (1063 1063 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (986 82 (:DEFINITION NATP))
     (862 616 (:REWRITE O-P-DEF-O-FINP-1))
     (859 859
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (797 312 (:REWRITE RP::RP-TERMP-CADR))
     (738 41
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (533 41 (:DEFINITION ALL-NILS))
     (470 82 (:REWRITE RP::RP-TERMP-CADDDR))
     (410 410
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (399 123 (:REWRITE RP::RP-TERMP-CADDR))
     (399 123 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (374 374 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (369 369 (:TYPE-PRESCRIPTION QUOTEP))
     (369 369
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (289 123
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (287 82
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (246 246 (:TYPE-PRESCRIPTION O-FINP))
     (246 123
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (205 205 (:TYPE-PRESCRIPTION ALL-NILS))
     (151 151 (:REWRITE RP::PP-LIST-ORDER-SANITY))
     (134 67 (:REWRITE DEFAULT-UNARY-MINUS))
     (134 67 (:REWRITE DEFAULT-+-2))
     (123 123
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (123 123
          (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (82 82
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (67 67 (:REWRITE DEFAULT-+-1))
     (41 41
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP)))
(RP::SORT-PP-LISTS (21501 41
                          (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
                   (19053 13 (:DEFINITION TRUE-LISTP))
                   (13586 74
                          (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
                   (13202 72 (:DEFINITION QUOTEP))
                   (13103 60 (:DEFINITION APPLY$-BADGEP))
                   (12557 25 (:DEFINITION RP::RP-TERM-LISTP))
                   (11432 62
                          (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
                   (10762 68 (:DEFINITION SUBSETP-EQUAL))
                   (8910 510 (:DEFINITION MEMBER-EQUAL))
                   (7220 25 (:DEFINITION RP::RP-TERMP))
                   (7182 74
                         (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
                   (5870 170 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
                   (5512 272
                         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
                   (5226 11 (:DEFINITION RP::FALIST-CONSISTENT))
                   (5094 4057 (:REWRITE DEFAULT-CDR))
                   (4081 11
                         (:DEFINITION RP::FALIST-CONSISTENT-AUX))
                   (3920 2199 (:REWRITE DEFAULT-CAR))
                   (1641 24
                         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
                   (1093 599 (:REWRITE DEFAULT-<-2))
                   (1024 1024 (:LINEAR LEN-WHEN-PREFIXP))
                   (1020 1020 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
                   (920 217 (:REWRITE O-P-O-INFP-CAR))
                   (884 884 (:REWRITE SUBSETP-IMPLIES-MEMBER))
                   (816 816
                        (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
                   (762 762 (:TYPE-PRESCRIPTION RP::RP-TERMP))
                   (636 636
                        (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                   (615 60 (:DEFINITION WEAK-APPLY$-BADGE-P))
                   (601 599 (:REWRITE DEFAULT-<-1))
                   (544 544
                        (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
                   (512 512 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                   (512 512 (:LINEAR BOUNDS-POSITION-EQUAL))
                   (490 150
                        (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
                   (476 476 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
                   (370 2 (:DEFINITION RP::SORT-PP-LISTS))
                   (358 104 (:REWRITE RP::IS-IF-RP-TERMP))
                   (351 351 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
                   (333 185 (:REWRITE O-P-DEF-O-FINP-1))
                   (228 228
                        (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
                   (225 17 (:DEFINITION ALL-NILS))
                   (202 11
                        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
                   (190 190
                        (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
                   (170 170
                        (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
                   (164 55 (:REWRITE RP::RP-TERMP-CADR))
                   (148 148 (:TYPE-PRESCRIPTION O-FINP))
                   (102 51
                        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
                   (99 99
                       (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
                   (98 31 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
                   (96 18 (:REWRITE RP::RP-TERMP-CADDDR))
                   (92 31 (:REWRITE RP::RP-TERMP-CADDR))
                   (91 91 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
                   (85 85 (:TYPE-PRESCRIPTION ALL-NILS))
                   (83 37
                       (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
                   (72 72 (:TYPE-PRESCRIPTION QUOTEP))
                   (51 51
                       (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                   (41 41
                       (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
                   (22 22
                       (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
                   (19 9 (:REWRITE DEFAULT-+-2))
                   (16 8 (:REWRITE DEFAULT-UNARY-MINUS))
                   (11 11
                       (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
                   (11 9 (:REWRITE DEFAULT-+-1))
                   (10 2 (:REWRITE RP::SORT-MEASURE-LEMMA1-V2))
                   (10 1 (:REWRITE ASSOCIATIVITY-OF-+))
                   (6 6 (:REWRITE RP::PP-LIST-ORDER-SANITY))
                   (1 1 (:REWRITE FOLD-CONSTS-IN-+)))
(RP::AND$-PP-LISTS-AUX
     (12033 34
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (10664 11 (:DEFINITION TRUE-LISTP))
     (8304 67
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (7919 66 (:DEFINITION QUOTEP))
     (7900 20 (:DEFINITION RP::RP-TERM-LISTP))
     (7683 37 (:DEFINITION APPLY$-BADGEP))
     (7158 42
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (6382 52 (:DEFINITION SUBSETP-EQUAL))
     (5342 390 (:DEFINITION MEMBER-EQUAL))
     (3459 130 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (3352 208
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (3341 3249 (:REWRITE DEFAULT-CDR))
     (3294 28 (:DEFINITION RP::RP-TERMP))
     (3219 67
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (2092 12 (:DEFINITION RP::FALIST-CONSISTENT))
     (1833 1833 (:REWRITE DEFAULT-CAR))
     (1610 10
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (780 780 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (676 676 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (627 21
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (624 624
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (574 160 (:REWRITE O-P-O-INFP-CAR))
     (416 416
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (403 101 (:REWRITE RP::IS-IF-RP-TERMP))
     (364 364 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (292 26 (:DEFINITION NATP))
     (222 222
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (211 52 (:REWRITE RP::RP-TERMP-CADR))
     (170 170
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (170 170 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (138 138 (:REWRITE O-P-DEF-O-FINP-1))
     (130 130
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (112 37 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (98 31 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (96 18 (:REWRITE RP::RP-TERMP-CADDDR))
     (92 31 (:REWRITE RP::RP-TERMP-CADDR))
     (90 90
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (82 82 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (78 78 (:TYPE-PRESCRIPTION LEN))
     (78 39
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (78 13 (:DEFINITION ALL-NILS))
     (73 32
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (66 66 (:TYPE-PRESCRIPTION QUOTEP))
     (65 65 (:TYPE-PRESCRIPTION ALL-NILS))
     (60 12
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (54 27
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (39 39
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (34 34
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (28 28 (:LINEAR LEN-WHEN-PREFIXP))
     (24 24
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (14 14 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (14 14 (:LINEAR BOUNDS-POSITION-EQUAL))
     (13 13 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (13 13 (:REWRITE DEFAULT-<-2))
     (13 13 (:REWRITE DEFAULT-<-1))
     (12 12
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (4 2
        (:TYPE-PRESCRIPTION RP::TRUE-LISTP-OF-MERGE-SORTED-AND$-LISTS)))
(RP::PP-LISTS-P-OF-AND$-PP-LISTS-AUX
     (45064 132
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (41596 44 (:DEFINITION TRUE-LISTP))
     (29590 94 (:DEFINITION RP::RP-TERM-LISTP))
     (28816 294
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (27274 294 (:DEFINITION QUOTEP))
     (26336 162
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (26175 159 (:DEFINITION APPLY$-BADGEP))
     (21595 176 (:DEFINITION SUBSETP-EQUAL))
     (18075 1320 (:DEFINITION MEMBER-EQUAL))
     (14410 124 (:DEFINITION RP::RP-TERMP))
     (14199 294
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (12287 12285 (:REWRITE DEFAULT-CDR))
     (11698 440 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (11356 704
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (9207 48 (:DEFINITION RP::FALIST-CONSISTENT))
     (7139 44
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (6895 6891 (:REWRITE DEFAULT-CAR))
     (2640 2640 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (2288 2288 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (2112 2112
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (2000 566 (:REWRITE O-P-O-INFP-CAR))
     (1526 436 (:REWRITE RP::IS-IF-RP-TERMP))
     (1408 1408
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (1232 1232 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (1103 88 (:DEFINITION NATP))
     (928 928
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (782 242 (:REWRITE RP::RP-TERMP-CADR))
     (740 740
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (632 632
          (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS-AUX))
     (592 592 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (478 478 (:REWRITE O-P-DEF-O-FINP-1))
     (440 440
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (417 159 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (396 396
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (384 126 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (376 68 (:REWRITE RP::RP-TERMP-CADDDR))
     (372 126 (:REWRITE RP::RP-TERMP-CADDR))
     (362 362 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (299 112
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (294 294 (:TYPE-PRESCRIPTION QUOTEP))
     (291 132
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (276 78
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (264 264 (:TYPE-PRESCRIPTION LEN))
     (264 44 (:DEFINITION ALL-NILS))
     (240 48
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (220 220 (:TYPE-PRESCRIPTION ALL-NILS))
     (194 88
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (132 132
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (132 132
          (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (96 96
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (88 88 (:LINEAR LEN-WHEN-PREFIXP))
     (48 48
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (44 44 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (44 44 (:REWRITE DEFAULT-<-2))
     (44 44 (:REWRITE DEFAULT-<-1))
     (44 44 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (44 44 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::AND$-PP-LISTS (58208 160
                          (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
                   (53490 53 (:DEFINITION TRUE-LISTP))
                   (39197 108 (:DEFINITION RP::RP-TERM-LISTP))
                   (38720 360
                          (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
                   (36983 359 (:DEFINITION QUOTEP))
                   (35650 205 (:DEFINITION APPLY$-BADGEP))
                   (35277 208
                          (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
                   (29915 220 (:DEFINITION SUBSETP-EQUAL))
                   (25515 1650 (:DEFINITION MEMBER-EQUAL))
                   (17032 154 (:DEFINITION RP::RP-TERMP))
                   (16931 360
                          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
                   (16516 15636 (:REWRITE DEFAULT-CDR))
                   (16016 880
                          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
                   (15901 550 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
                   (10831 54 (:DEFINITION RP::FALIST-CONSISTENT))
                   (9624 9423 (:REWRITE DEFAULT-CAR))
                   (8417 52
                         (:DEFINITION RP::FALIST-CONSISTENT-AUX))
                   (3483 1098 (:REWRITE O-P-O-INFP-CAR))
                   (3300 3300 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
                   (2860 2860 (:REWRITE SUBSETP-IMPLIES-MEMBER))
                   (2640 2640
                         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
                   (1770 504 (:REWRITE RP::IS-IF-RP-TERMP))
                   (1760 1760
                         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
                   (1540 1540 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
                   (1364 110 (:DEFINITION NATP))
                   (1148 1148
                         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
                   (920 102
                        (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
                   (888 888
                        (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
                   (807 254 (:REWRITE RP::RP-TERMP-CADR))
                   (795 795 (:REWRITE O-P-DEF-O-FINP-1))
                   (776 776 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
                   (550 550
                        (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
                   (541 205 (:DEFINITION WEAK-APPLY$-BADGE-P))
                   (504 96 (:REWRITE RP::RP-TERMP-CADDDR))
                   (472 472
                        (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS))
                   (470 154 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
                   (468 468
                        (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
                   (464 154 (:REWRITE RP::RP-TERMP-CADDR))
                   (422 422 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
                   (387 152
                        (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
                   (359 359 (:TYPE-PRESCRIPTION QUOTEP))
                   (351 165
                        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
                   (330 330 (:TYPE-PRESCRIPTION LEN))
                   (330 55 (:DEFINITION ALL-NILS))
                   (275 275 (:TYPE-PRESCRIPTION ALL-NILS))
                   (270 54
                        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
                   (236 111
                        (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
                   (165 165
                        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                   (160 160
                        (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
                   (112 112 (:LINEAR LEN-WHEN-PREFIXP))
                   (108 108
                        (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
                   (56 56 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                   (56 56 (:LINEAR BOUNDS-POSITION-EQUAL))
                   (55 55 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                   (55 55 (:REWRITE DEFAULT-<-2))
                   (55 55 (:REWRITE DEFAULT-<-1))
                   (54 54
                       (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP)))
(RP::PP-LISTS-P-OF-AND$-PP-LISTS
     (48140 135
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (43996 45 (:DEFINITION TRUE-LISTP))
     (31612 96 (:DEFINITION RP::RP-TERM-LISTP))
     (30883 331
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (29088 331 (:DEFINITION QUOTEP))
     (28010 186
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (27830 195 (:DEFINITION APPLY$-BADGEP))
     (22971 180 (:DEFINITION SUBSETP-EQUAL))
     (19371 1350 (:DEFINITION MEMBER-EQUAL))
     (15270 147 (:DEFINITION RP::RP-TERMP))
     (14958 331
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (12956 12956 (:REWRITE DEFAULT-CDR))
     (12353 450 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (12168 720
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (9424 49 (:DEFINITION RP::FALIST-CONSISTENT))
     (7714 7714 (:REWRITE DEFAULT-CAR))
     (7310 45
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (2700 2700 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (2340 2340 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (2160 2160
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (2086 589 (:REWRITE O-P-O-INFP-CAR))
     (1758 485 (:REWRITE RP::IS-IF-RP-TERMP))
     (1440 1440
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (1260 1260 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (1199 90 (:DEFINITION NATP))
     (1080 1080
           (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (845 256 (:REWRITE RP::RP-TERMP-CADR))
     (797 797
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (689 689
          (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS))
     (663 663 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (499 499 (:REWRITE O-P-DEF-O-FINP-1))
     (493 195 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (486 90 (:REWRITE RP::RP-TERMP-CADDDR))
     (450 450
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (443 139 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (431 139 (:REWRITE RP::RP-TERMP-CADDR))
     (405 405
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (370 370 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (366 135
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (337 90
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (331 331 (:TYPE-PRESCRIPTION QUOTEP))
     (303 135
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (270 270 (:TYPE-PRESCRIPTION LEN))
     (270 45 (:DEFINITION ALL-NILS))
     (245 49
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (225 225 (:TYPE-PRESCRIPTION ALL-NILS))
     (202 90
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (135 135
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (135 135
          (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (118 59
          (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS-AUX))
     (98 98
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (90 90 (:LINEAR LEN-WHEN-PREFIXP))
     (49 49
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (45 45 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (45 45 (:REWRITE DEFAULT-<-2))
     (45 45 (:REWRITE DEFAULT-<-1))
     (45 45 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (45 45 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::APPEND-OF-PP-LIST-P
     (12466 36
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (11542 12 (:DEFINITION TRUE-LISTP))
     (8236 24 (:DEFINITION RP::RP-TERM-LISTP))
     (7996 84
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (7627 84 (:DEFINITION QUOTEP))
     (7363 48
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (7327 51 (:DEFINITION APPLY$-BADGEP))
     (6088 48 (:DEFINITION SUBSETP-EQUAL))
     (5128 360 (:DEFINITION MEMBER-EQUAL))
     (3885 84
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (3876 36 (:DEFINITION RP::RP-TERMP))
     (3462 3438 (:REWRITE DEFAULT-CDR))
     (3274 120 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (3220 192
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (2484 12 (:DEFINITION RP::FALIST-CONSISTENT))
     (2104 2095 (:REWRITE DEFAULT-CAR))
     (1932 12
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (720 720 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (624 624 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (576 576
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (540 153 (:REWRITE O-P-O-INFP-CAR))
     (384 384
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (372 108 (:REWRITE RP::IS-IF-RP-TERMP))
     (336 336 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (291 24 (:DEFINITION NATP))
     (258 258 (:TYPE-PRESCRIPTION O-P))
     (231 231
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (204 204
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (174 174 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (153 48 (:REWRITE RP::RP-TERMP-CADR))
     (129 129 (:REWRITE O-P-DEF-O-FINP-1))
     (126 51 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (120 120
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (114 24 (:REWRITE RP::RP-TERMP-CADDDR))
     (108 108
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (105 36 (:REWRITE RP::RP-TERMP-CADDR))
     (105 36 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (96 96 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (87 36
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (84 84 (:TYPE-PRESCRIPTION QUOTEP))
     (84 24
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (72 72 (:TYPE-PRESCRIPTION LEN))
     (72 36
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (72 12 (:DEFINITION ALL-NILS))
     (60 60 (:TYPE-PRESCRIPTION ALL-NILS))
     (60 12
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (48 24
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (41 41 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (36 36
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (36 36
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (34 17
         (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (27 9 (:REWRITE CAR-OF-APPEND))
     (24 24
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (24 24 (:LINEAR LEN-WHEN-PREFIXP))
     (17 17 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (12 12
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (12 12 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (12 12 (:REWRITE DEFAULT-<-2))
     (12 12 (:REWRITE DEFAULT-<-1))
     (12 12 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (12 12 (:LINEAR BOUNDS-POSITION-EQUAL))
     (6 6 (:REWRITE CONSP-OF-APPEND))
     (5 5 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (3 3 (:REWRITE CDR-OF-APPEND-WHEN-CONSP)))
(RP::PP-LISTS-P-IMPLIES-TRUE-LISTP
     (4793 15
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (4521 5 (:DEFINITION TRUE-LISTP))
     (3159 10 (:DEFINITION RP::RP-TERM-LISTP))
     (3042 29
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (2931 29 (:DEFINITION QUOTEP))
     (2843 16
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (2830 15 (:DEFINITION APPLY$-BADGEP))
     (2342 20 (:DEFINITION SUBSETP-EQUAL))
     (1942 150 (:DEFINITION MEMBER-EQUAL))
     (1541 29
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (1516 11 (:DEFINITION RP::RP-TERMP))
     (1332 1332 (:REWRITE DEFAULT-CDR))
     (1279 50 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (1220 80
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (1035 5 (:DEFINITION RP::FALIST-CONSISTENT))
     (805 5
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (726 726 (:REWRITE DEFAULT-CAR))
     (300 300 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (260 260 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (240 240
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (222 63 (:REWRITE O-P-O-INFP-CAR))
     (160 160
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (140 140 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (120 37 (:REWRITE RP::IS-IF-RP-TERMP))
     (111 10 (:DEFINITION NATP))
     (106 106 (:TYPE-PRESCRIPTION O-P))
     (84 84
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (77 77
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (61 61 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (55 18 (:REWRITE RP::RP-TERMP-CADR))
     (53 53 (:REWRITE O-P-DEF-O-FINP-1))
     (50 50
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (45 45
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (40 40 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (40 15 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (35 13 (:REWRITE RP::RP-TERMP-CADDR))
     (35 13 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (30 30 (:TYPE-PRESCRIPTION LEN))
     (30 15
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (30 6 (:REWRITE RP::RP-TERMP-CADDDR))
     (30 5 (:DEFINITION ALL-NILS))
     (29 29 (:TYPE-PRESCRIPTION QUOTEP))
     (26 11
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (25 25 (:TYPE-PRESCRIPTION ALL-NILS))
     (25 8
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (25 5
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (20 10
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (15 15
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (15 15
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (10 10
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (10 10 (:LINEAR LEN-WHEN-PREFIXP))
     (5 5
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (5 5 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (5 5 (:REWRITE DEFAULT-<-2))
     (5 5 (:REWRITE DEFAULT-<-1))
     (5 5 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (5 5 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::APPLY-SIGN-TO-PP-LISTS)
(RP::PP-LISTS-P-OF-APPLY-SIGN-TO-PP-LISTS
     (24005 66
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (21797 22 (:DEFINITION TRUE-LISTP))
     (15785 50 (:DEFINITION RP::RP-TERM-LISTP))
     (15441 168
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (14478 168 (:DEFINITION QUOTEP))
     (13916 94
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (13805 99 (:DEFINITION APPLY$-BADGEP))
     (11335 88 (:DEFINITION SUBSETP-EQUAL))
     (9575 660 (:DEFINITION MEMBER-EQUAL))
     (7664 76 (:DEFINITION RP::RP-TERMP))
     (7438 168
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (6412 6411 (:REWRITE DEFAULT-CDR))
     (6090 220 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (6016 352
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (4631 24 (:DEFINITION RP::FALIST-CONSISTENT))
     (3738 3735 (:REWRITE DEFAULT-CAR))
     (3597 22
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (1320 1320 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (1144 1144 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (1056 1056
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (1020 288 (:REWRITE O-P-O-INFP-CAR))
     (919 263 (:REWRITE RP::IS-IF-RP-TERMP))
     (704 704
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (637 44 (:DEFINITION NATP))
     (616 616 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (557 557
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (460 151 (:REWRITE RP::RP-TERMP-CADR))
     (402 402
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (326 326 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (253 99 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (250 44 (:REWRITE RP::RP-TERMP-CADDDR))
     (244 244 (:REWRITE O-P-DEF-O-FINP-1))
     (223 68 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (220 220
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (217 68 (:REWRITE RP::RP-TERMP-CADDR))
     (198 198
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (197 66
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (184 184 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (176 44
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (168 168 (:TYPE-PRESCRIPTION QUOTEP))
     (165 66
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (132 132 (:TYPE-PRESCRIPTION LEN))
     (132 22 (:DEFINITION ALL-NILS))
     (120 24
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (110 110 (:TYPE-PRESCRIPTION ALL-NILS))
     (110 44
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (66 66
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (66 66
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (48 48
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (44 44 (:LINEAR LEN-WHEN-PREFIXP))
     (24 24
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (22 22 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (22 22 (:REWRITE DEFAULT-<-2))
     (22 22 (:REWRITE DEFAULT-<-1))
     (22 22 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (22 22 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::PP-TERM-TO-PP-LISTS (398 388 (:REWRITE RP::MEASURE-LEMMA1))
                         (382 132 (:REWRITE RP::MEASURE-LEMMA1-2))
                         (197 129 (:REWRITE DEFAULT-CDR))
                         (120 40 (:REWRITE RP::CONS-COUNT-ATOM))
                         (104 4 (:REWRITE O<=-O-FINP-DEF))
                         (40 10 (:REWRITE O-P-O-INFP-CAR))
                         (40 8 (:REWRITE RP::MEASURE-LEMMA7-2))
                         (20 20 (:REWRITE RP::EX-FROM-RP-X2))
                         (20 20 (:REWRITE DEFAULT-CAR))
                         (18 18
                             (:REWRITE RP::EQUALITY-MEASURE-LEMMA3))
                         (12 4 (:REWRITE AC-<))
                         (10 10 (:REWRITE O-P-DEF-O-FINP-1))
                         (10 10
                             (:REWRITE RP::EQUALITY-MEASURE-LEMMA2))
                         (8 4 (:REWRITE O-INFP-O-FINP-O<=))
                         (4 4 (:REWRITE |a < b & b < c  =>  a < c|))
                         (4 2 (:REWRITE DEFAULT-<-2))
                         (4 2 (:REWRITE DEFAULT-<-1))
                         (2 2
                            (:REWRITE RP::EQUALITY-MEASURE-LEMMA1)))
(RP::PP-LISTS-P-OF-PP-TERM-TO-PP-LISTS
     (831792 2418
             (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (768900 806 (:DEFINITION TRUE-LISTP))
     (546408 1612 (:DEFINITION RP::RP-TERM-LISTP))
     (529500 5642
             (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (504508 5642 (:DEFINITION QUOTEP))
     (486752 3224
             (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (484316 3446 (:DEFINITION APPLY$-BADGEP))
     (400974 3224 (:DEFINITION SUBSETP-EQUAL))
     (336494 24180 (:DEFINITION MEMBER-EQUAL))
     (261992 5642
             (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (261192 2418 (:DEFINITION RP::RP-TERMP))
     (216462 8060 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (211266 12896
             (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (166872 806 (:DEFINITION RP::FALIST-CONSISTENT))
     (129796 806
             (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (48360 48360 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (41912 41912 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (38688 38688
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (37472 10544 (:REWRITE O-P-O-INFP-CAR))
     (25792 25792
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (25792 7254 (:REWRITE RP::IS-IF-RP-TERMP))
     (22568 22568
            (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (19626 1612 (:DEFINITION NATP))
     (17732 17732
            (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (13702 13702
            (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (11646 11646
            (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (10478 3224 (:REWRITE RP::RP-TERMP-CADR))
     (9064 8932 (:REWRITE O-P-DEF-O-FINP-1))
     (8510 3446 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (8060 8060
           (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (8060 1612 (:REWRITE RP::RP-TERMP-CADDDR))
     (7254 7254
           (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (7254 2418 (:REWRITE RP::RP-TERMP-CADDR))
     (7254 2418 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (6448 6448 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (5888 2418
           (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (5654 1612
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (5642 5642 (:TYPE-PRESCRIPTION QUOTEP))
     (4854 2418
           (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (4836 4836 (:TYPE-PRESCRIPTION LEN))
     (4836 806 (:DEFINITION ALL-NILS))
     (4030 4030 (:TYPE-PRESCRIPTION ALL-NILS))
     (4030 806
           (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (3236 1612
           (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (2418 2418
           (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (2418 2418
           (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (1612 1612 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (1612 1612
           (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (1612 1612 (:LINEAR LEN-WHEN-PREFIXP))
     (964 964
          (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (806 806
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (806 806 (:REWRITE DEFAULT-<-2))
     (806 806 (:REWRITE DEFAULT-<-1))
     (806 806 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (806 806 (:LINEAR BOUNDS-POSITION-EQUAL))
     (204 204
          (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS))
     (132 132 (:TYPE-PRESCRIPTION O-FINP)))
(RP::PP-TERM-TO-PP-LISTS
     (89020 51
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (87688 17 (:DEFINITION TRUE-LISTP))
     (82984 34 (:DEFINITION RP::RP-TERM-LISTP))
     (82631 119
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (82102 119 (:DEFINITION QUOTEP))
     (81722 68
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (81671 68 (:DEFINITION APPLY$-BADGEP))
     (79904 68 (:DEFINITION SUBSETP-EQUAL))
     (78544 510 (:DEFINITION MEMBER-EQUAL))
     (71070 618
            (:DEFINITION RP::PP-TERM-TO-PP-LISTS))
     (49112 272
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (40279 40279 (:REWRITE DEFAULT-CDR))
     (35825 170 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (25593 25593 (:REWRITE DEFAULT-CAR))
     (5539 119
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (5524 51 (:DEFINITION RP::RP-TERMP))
     (3529 17 (:DEFINITION RP::FALIST-CONSISTENT))
     (3110 3110
           (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (2747 17
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (1020 1020 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (884 884 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (816 816
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (782 221 (:REWRITE O-P-O-INFP-CAR))
     (544 544
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (544 153 (:REWRITE RP::IS-IF-RP-TERMP))
     (476 476 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (414 34 (:DEFINITION NATP))
     (374 374
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (289 289
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (255 255 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (221 68 (:REWRITE RP::RP-TERMP-CADR))
     (187 187 (:REWRITE O-P-DEF-O-FINP-1))
     (172 68 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (170 170
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (170 34 (:REWRITE RP::RP-TERMP-CADDDR))
     (153 153
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (153 51 (:REWRITE RP::RP-TERMP-CADDR))
     (153 51 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (136 136 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (123 51
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (119 119 (:TYPE-PRESCRIPTION QUOTEP))
     (119 34
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (102 51
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (102 17 (:DEFINITION ALL-NILS))
     (85 85 (:TYPE-PRESCRIPTION ALL-NILS))
     (85 17
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (68 34
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (51 51
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (51 51
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (34 34 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (34 34
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (34 34 (:LINEAR LEN-WHEN-PREFIXP))
     (17 17
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (17 17 (:REWRITE DEFAULT-<-2))
     (17 17 (:REWRITE DEFAULT-<-1))
     (17 17 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (17 17 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::PP-LISTS-TO-TERM-AND$)
(RP::PP-LISTS-TO-TERM-P+
     (10022 26
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (8258 8 (:DEFINITION TRUE-LISTP))
     (7690 42
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (7310 40 (:DEFINITION QUOTEP))
     (7164 24 (:DEFINITION APPLY$-BADGEP))
     (6576 12 (:DEFINITION RP::RP-TERM-LISTP))
     (6074 32
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (5976 48 (:DEFINITION SUBSETP-EQUAL))
     (5016 360 (:DEFINITION MEMBER-EQUAL))
     (3236 120 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (3144 192
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (2827 2643 (:REWRITE DEFAULT-CDR))
     (2156 18 (:DEFINITION RP::RP-TERMP))
     (1972 42
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (1471 1463 (:REWRITE DEFAULT-CAR))
     (1286 10 (:DEFINITION RP::FALIST-CONSISTENT))
     (1166 16
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (966 6
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (720 720 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (624 624 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (576 576
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (524 143 (:REWRITE O-P-O-INFP-CAR))
     (398 84 (:REWRITE RP::IS-IF-RP-TERMP))
     (384 384
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (336 336 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (258 24 (:DEFINITION NATP))
     (250 50 (:REWRITE RP::RP-TERMP-CADR))
     (162 162
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (142 142 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (127 127 (:REWRITE O-P-DEF-O-FINP-1))
     (120 120
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (110 110
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (96 24 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (80 22 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (72 72 (:TYPE-PRESCRIPTION LEN))
     (72 36
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (72 12 (:REWRITE RP::RP-TERMP-CADDDR))
     (72 12 (:DEFINITION ALL-NILS))
     (68 22 (:REWRITE RP::RP-TERMP-CADDR))
     (60 60 (:TYPE-PRESCRIPTION ALL-NILS))
     (58 26
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (54 54
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (52 52 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (52 26
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (50 10
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (40 40 (:TYPE-PRESCRIPTION QUOTEP))
     (36 36
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (28 28 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (28 28 (:LINEAR LEN-WHEN-PREFIXP))
     (26 26
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (20 20
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (14 14 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (14 14 (:LINEAR BOUNDS-POSITION-EQUAL))
     (12 12 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (12 12 (:REWRITE DEFAULT-<-2))
     (12 12 (:REWRITE DEFAULT-<-1))
     (10 10
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP)))
(RP::FLATTEN-PP-MAIN)
(RP::PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-BIT-FIX-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-BINARY-AND-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-MERGE-PP-AND-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-BINARY-OR-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-MERGE-PP-OR-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-BINARY-NOT-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-BINARY-?-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-IFIX-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-NFIX-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-=-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-ZIP-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-FIX-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-EXPT-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-NONNEGATIVE-INTEGER-QUOTIENT-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-FLOOR-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-EVENP-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-ODDP-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-LOGBITP-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-LOGBIT$INLINE-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-BIT-OF-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-BINARY-XOR-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-TYPE-P-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-TYPE-FIX-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA-P+-WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::META-EXTRACT-FORMULA----WHEN-PP-FLATTEN-FORMULA-CHECKS)
(RP::RP-EVL-OF-BIT-FIX-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (278 278 (:REWRITE DEFAULT-CAR))
     (156 24 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (111 13 (:DEFINITION RP::IS-SYNP$INLINE))
     (91 91 (:REWRITE DEFAULT-CDR))
     (34 24
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (34 24 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (34 24 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (34 24 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (34 24 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (34 24
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (33 23 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (33 23
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (33 23
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (33 23
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (33 23 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (33 23 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (33 23
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (33 23 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (33 23
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (33 23
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (33 23 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (33 23 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (33 23 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (33 23
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (33 23
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (33 23
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (33 23 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (33 23 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (33 23
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (33 23 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (32 22 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (32 22 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (30 6
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (21 21
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (14 14
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (12 12
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (10 10
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (8 8
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (8 8
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (6 1 (:REWRITE O-INFP->NEQ-0))
     (3 3 (:TYPE-PRESCRIPTION O-FINP))
     (3 1 (:REWRITE O-FIRST-EXPT-O-INFP))
     (2 1 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (1 1 (:REWRITE RP::BIT-FIX-OPENER)))
(RP::RP-EVL-OF-BINARY-AND-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (413 413 (:REWRITE DEFAULT-CAR))
     (286 63 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (189 21 (:DEFINITION RP::IS-SYNP$INLINE))
     (171 171 (:REWRITE DEFAULT-CDR))
     (77 63 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (75 61 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (75 61 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (39 9
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (34 34
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (21 7 (:REWRITE RP::BIT-FIX-OPENER))
     (20 20
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (17 17
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (14 14
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (14 14
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (13 13
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (7 7 (:TYPE-PRESCRIPTION BITP))
     (7 7 (:DEFINITION BITP)))
(RP::RP-EVL-OF-MERGE-PP-AND-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (193 193 (:REWRITE DEFAULT-CAR))
     (132 36 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (81 81 (:REWRITE DEFAULT-CDR))
     (81 9 (:DEFINITION RP::IS-SYNP$INLINE))
     (42 36 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (15 15
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (15 3
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (7 7 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (7 7
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (6 6
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (6 6
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (5 5
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE)))
(RP::RP-EVL-OF-BINARY-OR-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (413 413 (:REWRITE DEFAULT-CAR))
     (286 63 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (189 21 (:DEFINITION RP::IS-SYNP$INLINE))
     (171 171 (:REWRITE DEFAULT-CDR))
     (77 63 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (77 63
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (77 63 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (75 61 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (75 61 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (39 9
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (34 34
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (21 7 (:REWRITE RP::BIT-FIX-OPENER))
     (20 20
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (17 17
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (14 14
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (14 14
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (13 13
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (7 7 (:TYPE-PRESCRIPTION BITP))
     (7 7 (:DEFINITION BITP))
     (6 3 (:REWRITE O-INFP->NEQ-0)))
(RP::RP-EVL-OF-MERGE-PP-OR-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (193 193 (:REWRITE DEFAULT-CAR))
     (132 36 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (81 81 (:REWRITE DEFAULT-CDR))
     (81 9 (:DEFINITION RP::IS-SYNP$INLINE))
     (42 36 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (15 15
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (15 3
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (7 7 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (7 7
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (6 6
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (6 6
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (5 5
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE)))
(RP::RP-EVL-OF-BINARY-NOT-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (171 171 (:REWRITE DEFAULT-CAR))
     (92 20 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (57 7 (:DEFINITION RP::IS-SYNP$INLINE))
     (50 50 (:REWRITE DEFAULT-CDR))
     (26 20
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (26 20
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (26 20
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (26 20
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (26 20 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (26 20 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (26 20 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (26 20
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (25 19 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (25 19 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (25 19 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (25 19 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (25 19
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (25 19 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (15 15
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (15 3
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (10 10
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (7 7 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (6 2 (:REWRITE RP::BIT-FIX-OPENER))
     (5 5
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (4 4
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (4 4
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (4 2 (:REWRITE DEFAULT-UNARY-MINUS))
     (4 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:TYPE-PRESCRIPTION BITP))
     (2 2 (:REWRITE DEFAULT-+-1))
     (2 2 (:DEFINITION BITP)))
(RP::RP-EVL-OF-BINARY-?-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (350 86 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (339 339 (:REWRITE DEFAULT-CAR))
     (231 23 (:DEFINITION RP::IS-SYNP$INLINE))
     (222 222 (:REWRITE DEFAULT-CDR))
     (96 86 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (96 86
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (96 86 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (95 85 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (95 85 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (33 33
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (24 5
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (21 7 (:REWRITE RP::BIT-FIX-OPENER))
     (18 18
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (18 18
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (12 12
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (11 11
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (8 8
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (7 7 (:TYPE-PRESCRIPTION BITP))
     (7 7 (:DEFINITION BITP)))
(RP::RP-EVL-OF-IFIX-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (274 274 (:REWRITE DEFAULT-CAR))
     (125 21 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (87 11 (:DEFINITION RP::IS-SYNP$INLINE))
     (70 70 (:REWRITE DEFAULT-CDR))
     (31 21 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (30 20
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (30 20
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (30 20
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (30 20
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (30 20
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (30 20
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (30 20
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (30 20
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (30 20
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (29 19 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (29 19 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (24 5
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (17 17
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (11 11
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (10 10
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (8 8
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (6 6
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (6 6
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (1 1
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP)))
(RP::RP-EVL-OF-NFIX-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (383 383 (:REWRITE DEFAULT-CAR))
     (175 32 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (117 15 (:DEFINITION RP::IS-SYNP$INLINE))
     (94 94 (:REWRITE DEFAULT-CDR))
     (46 32 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (46 32 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (46 32 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (46 32 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (46 32 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (46 32 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (46 32 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (46 32
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (45 31
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (45 31
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (45 31
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (44 30
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (44 30
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (44 30
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (44 30 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (44 30 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (44 30
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (44 30
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (44 30 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (44 30 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (44 30 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (44 30 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (44 30 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (44 30
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (42 10
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (41 27 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (40 26 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (26 26
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (18 18
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (17 17
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (14 14
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (8 8
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (8 8
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (2 2
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP)))
(RP::RP-EVL-OF-=-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (1100 4 (:DEFINITION RP::RP-TERMP))
     (828 4 (:DEFINITION RP::FALIST-CONSISTENT))
     (644 4
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (635 635 (:REWRITE DEFAULT-CAR))
     (560 560 (:REWRITE DEFAULT-CDR))
     (556 2 (:REWRITE RP::RP-EVL-OF-RP-EQUAL2))
     (556 2
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-LOOSE))
     (236 38 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (174 19 (:DEFINITION RP::IS-SYNP$INLINE))
     (168 48 (:REWRITE O-P-O-INFP-CAR))
     (80 80 (:TYPE-PRESCRIPTION RP::RP-TERMP))
     (50 38 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (50 38
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (50 38 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (48 36 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (48 36 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (46 2 (:REWRITE RP::RP-EVL-OF-RP-EQUAL))
     (41 21
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (40 40 (:REWRITE O-P-DEF-O-FINP-1))
     (38 2 (:DEFINITION RP::RP-EQUAL))
     (36 36
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (32 16 (:REWRITE RP::IS-IF-RP-TERMP))
     (24 24
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (24 24
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (24 24 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (21 21
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (21 4
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (20 4
         (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (18 18
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (16 8 (:REWRITE RP::RP-TERMP-CADR))
     (16 8 (:REWRITE RP::RP-TERMP-CADDR))
     (16 8 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (9 9
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (8 8
        (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (8 4
        (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (8 4 (:DEFINITION QUOTEP))
     (7 7
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (6 6 (:TYPE-PRESCRIPTION RP::RP-EQUAL))
     (4 4
        (:TYPE-PRESCRIPTION RP::RP-EQUAL-SUBTERMS))
     (4 4 (:TYPE-PRESCRIPTION QUOTEP))
     (2 2
        (:REWRITE RP::RP-EQUAL-SUBTERMS-REFLEXIVE))
     (2 2 (:REWRITE RP::RP-EQUAL-REFLEXIVE)))
(RP::RP-EVL-OF-ZIP-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (274 274 (:REWRITE DEFAULT-CAR))
     (127 22 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (87 11 (:DEFINITION RP::IS-SYNP$INLINE))
     (70 70 (:REWRITE DEFAULT-CDR))
     (32 22 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (32 22 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (32 22 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (32 22 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (32 22 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (32 22 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (32 22 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (32 22
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (29 19 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (24 5
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (18 18
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (11 11
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (11 11
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (8 8
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (6 6
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (6 6
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (1 1 (:REWRITE O-INFP->NEQ-0))
     (1 1
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP)))
(RP::RP-EVL-OF-FIX-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (274 274 (:REWRITE DEFAULT-CAR))
     (125 21 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (87 11 (:DEFINITION RP::IS-SYNP$INLINE))
     (70 70 (:REWRITE DEFAULT-CDR))
     (31 21 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (31 21
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (31 21 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (30 20
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (30 20
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (30 20
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (30 20 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (29 19 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (29 19 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (24 5
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (17 17
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (11 11
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (10 10
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (8 8
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (6 6
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (6 6
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (2 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1 1
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (1 1
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP)))
(RP::RP-EVL-OF-EXPT-LEMMA
     (975 975 (:REWRITE DEFAULT-CAR))
     (354 102 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (219 219
          (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (177 177 (:REWRITE DEFAULT-CDR))
     (168 26 (:DEFINITION RP::IS-SYNP$INLINE))
     (134 102
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (134 102
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (134 102
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (134 102
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (134 102 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (134 102
          (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (134 102 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (130 98 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (130 98 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (130 98 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (130 98 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (130 98
          (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (127 95
          (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (127 95
          (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (127 95 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (127 95 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (127 95
          (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (127 95
          (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (127 95 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (127 95 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (127 95 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (127 95 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (127 95 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (127 95
          (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (118 86 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (118 86 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (114 82 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (84 84
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (78 16
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (57 57
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (36 36
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (26 26
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (24 6 (:REWRITE DEFAULT-*-2))
     (21 3 (:REWRITE DEFAULT-UNARY-/))
     (19 11
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (16 16 (:REWRITE DEFAULT-+-2))
     (16 16 (:REWRITE DEFAULT-+-1))
     (15 6 (:REWRITE DEFAULT-*-1))
     (11 11
         (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (10 10
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (10 10
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (8 8
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (6 6 (:REWRITE DEFAULT-<-2))
     (6 6 (:REWRITE DEFAULT-<-1))
     (6 1 (:REWRITE O-INFP->NEQ-0))
     (4 4 (:REWRITE ZIP-OPEN))
     (3 3 (:TYPE-PRESCRIPTION O-FINP))
     (3 1 (:REWRITE O-FIRST-EXPT-O-INFP))
     (2 1 (:REWRITE O-FIRST-EXPT-DEF-O-FINP)))
(RP::RP-EVL-OF-EXPT-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (172 172 (:REWRITE DEFAULT-CAR))
     (114 21 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (81 9 (:DEFINITION RP::IS-SYNP$INLINE))
     (70 70 (:REWRITE DEFAULT-CDR))
     (45 45
         (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (45 45
         (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (27 21 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (27 21
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (27 21
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (12 12
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (12 2
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (6 6 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (6 6
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (6 6
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (4 4
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (4 4
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF)))
(RP::RP-EVL-OF-NONNEGATIVE-INTEGER-QUOTIENT-LEMMA
     (527 527 (:REWRITE DEFAULT-CAR))
     (215 67 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (116 116 (:REWRITE DEFAULT-CDR))
     (96 14 (:DEFINITION RP::IS-SYNP$INLINE))
     (83 67
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (83 67
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (83 67
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (83 67
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (83 67 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (83 67 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (83 67 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (83 67
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (79 63 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (79 63 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (79 63 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (79 63 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (79 63
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (77 61
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (75 59
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (75 59 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (75 59 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (75 59
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (75 59
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (75 59 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (75 59 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (75 59 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (75 59 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (75 59 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (75 59
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (71 55 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (71 55 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (69 53 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (54 12
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (52 52
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (36 36
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (27 14
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (24 24
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (24 6 (:REWRITE DEFAULT-<-2))
     (18 18
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (18 9 (:REWRITE DEFAULT-+-1))
     (16 9 (:REWRITE DEFAULT-+-2))
     (14 14
         (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (14 6 (:REWRITE DEFAULT-UNARY-MINUS))
     (13 13
         (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (12 6 (:REWRITE DEFAULT-<-1))
     (6 6
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (6 6
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (2 1 (:REWRITE O-INFP->NEQ-0)))
(RP::RP-EVL-OF-NONNEGATIVE-INTEGER-QUOTIENT-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (172 172 (:REWRITE DEFAULT-CAR))
     (114 21 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (81 9 (:DEFINITION RP::IS-SYNP$INLINE))
     (70 70 (:REWRITE DEFAULT-CDR))
     (27 21 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (27 21
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (27 21
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (27 21
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (27 21 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (12 12
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (12 2
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (6 6 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (6 6
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (6 6
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (4 4
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (4 4
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF)))
(RP::RP-EVL-OF-FLOOR-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (454 454 (:REWRITE DEFAULT-CAR))
     (399 87 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (261 27 (:DEFINITION RP::IS-SYNP$INLINE))
     (244 244 (:REWRITE DEFAULT-CDR))
     (101 87
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (101 87
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (101 87
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (101 87
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (101 87 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (101 87 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (101 87 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (99 85
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (99 85
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (99 85
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (99 85
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (99 85
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (99 85 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (99 85
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (98 84
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (97 83 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (97 83
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (97 83
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (97 83 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (97 83
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (97 83
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (97 83
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (97 83
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (97 83
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (97 83 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (93 79
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (93 79 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (93 79 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (93 79
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (93 79
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (93 79 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (93 79 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (93 79 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (93 79 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (93 79 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (93 79
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (90 76 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (61 13 (:REWRITE DEFAULT-UNARY-/))
     (51 51
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (40 24
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (37 13 (:REWRITE DEFAULT-*-1))
     (36 36
         (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (33 7
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (31 10 (:REWRITE DEFAULT-NUMERATOR))
     (26 26
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (24 24
         (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (20 20
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (20 20
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (20 12 (:REWRITE RATIONALP-*))
     (18 10 (:REWRITE INTEGERP==>NUMERATOR-=-X))
     (16 5 (:REWRITE DEFAULT-DENOMINATOR))
     (15 15
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (13 13 (:REWRITE DEFAULT-*-2))
     (12 12
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (11 11
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (9 5 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
     (6 4 (:REWRITE DEFAULT-UNARY-MINUS))
     (6 4 (:REWRITE DEFAULT-+-2))
     (6 4 (:REWRITE DEFAULT-+-1))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1)))
(RP::RP-EVL-OF-EVENP-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (165 165 (:REWRITE DEFAULT-CAR))
     (87 16 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (57 7 (:DEFINITION RP::IS-SYNP$INLINE))
     (46 46 (:REWRITE DEFAULT-CDR))
     (22 16
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (22 16
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (22 16
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (22 16
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (22 16 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (22 16 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (22 16 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (21 15 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (21 15
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (21 15
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (21 15
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (21 15
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (21 15
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (21 15
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (21 15
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (21 15 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (21 15
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (21 15
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (21 15
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (21 15
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (21 15 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (21 15 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (21 15
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (21 15
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (20 14
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (20 14
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (20 14
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (20 14 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (19 13
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (19 13
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (19 13 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (19 13 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (19 13
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (19 13 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (19 13
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (19 13 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (19 13 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (19 13 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (19 13 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (19 13 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (19 13 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (19 13 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (19 13
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (18 12 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (15 3
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (14 14
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (10 4 (:REWRITE DEFAULT-*-1))
     (9 9
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (8 4 (:REWRITE DEFAULT-*-2))
     (7 7 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (6 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (5 5
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (4 4
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (4 4
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (4 4
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (2 2
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (2 2
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP)))
(RP::RP-EVL-OF-ODDP-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (271 271 (:REWRITE DEFAULT-CAR))
     (120 18 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (87 11 (:DEFINITION RP::IS-SYNP$INLINE))
     (69 69 (:REWRITE DEFAULT-CDR))
     (28 18 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (28 18
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (28 18 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (27 17 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (26 16 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (26 16 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (21 4
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (15 15
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (10 10
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (8 8
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (7 7
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (6 6
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (6 6
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP)))
(RP::RP-EVL-OF-LOGBITP-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (180 180 (:REWRITE DEFAULT-CAR))
     (119 24 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (81 9 (:DEFINITION RP::IS-SYNP$INLINE))
     (73 73 (:REWRITE DEFAULT-CDR))
     (30 24 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (30 24
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (30 24 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (29 23 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (15 3
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (14 14
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (7 7 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (6 6
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (6 6
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (6 6
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (5 5
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE)))
(RP::RP-EVL-OF-LOGBIT$INLINE-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (289 289 (:REWRITE DEFAULT-CAR))
     (179 35 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (123 14 (:DEFINITION RP::IS-SYNP$INLINE))
     (108 108 (:REWRITE DEFAULT-CDR))
     (45 35 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (45 35
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (45 35 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (44 34 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (44 34 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (43 33 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (21 21
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (21 4
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (10 10
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (10 10
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (9 9
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (9 9
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (7 7
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE)))
(RP::RP-EVL-OF-BIT-OF-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (193 193 (:REWRITE DEFAULT-CAR))
     (132 36 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (81 81 (:REWRITE DEFAULT-CDR))
     (81 9 (:DEFINITION RP::IS-SYNP$INLINE))
     (42 36 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (15 15
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (15 3
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (7 7 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (7 7
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (6 6
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (6 6
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (5 5
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE)))
(RP::RP-EVL-OF-BINARY-XOR-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (302 302 (:REWRITE DEFAULT-CAR))
     (196 49 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (123 14 (:DEFINITION RP::IS-SYNP$INLINE))
     (116 116 (:REWRITE DEFAULT-CDR))
     (59 49 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (59 49
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (59 49 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (58 48 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (58 48 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (24 24
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (24 5
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (18 6 (:REWRITE RP::BIT-FIX-OPENER))
     (13 13
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (11 11
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (9 9
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (9 9
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (8 8
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (6 6 (:TYPE-PRESCRIPTION BITP))
     (6 6 (:DEFINITION BITP)))
(RP::RP-EVL-OF-TYPE-P-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (171 171 (:REWRITE DEFAULT-CAR))
     (88 18 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (57 7 (:DEFINITION RP::IS-SYNP$INLINE))
     (50 50 (:REWRITE DEFAULT-CDR))
     (24 18 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (23 17
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (23 17
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (23 17
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (23 17
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (23 17
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (23 17
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (23 17
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (23 17
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (23 17
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (15 3
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (13 13
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (8 8
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (7 7 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (5 5
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (4 4
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (4 4
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (2 2
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP)))
(RP::RP-EVL-OF-TYPE-FIX-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (282 282 (:REWRITE DEFAULT-CAR))
     (144 26 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (99 12 (:DEFINITION RP::IS-SYNP$INLINE))
     (85 85 (:REWRITE DEFAULT-CDR))
     (36 26 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (36 26
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (36 26 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (35 25 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (35 25 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (21 4
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (19 19
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (11 11
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (10 10
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (7 7
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (7 7
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (7 7
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (4 4 (:TYPE-PRESCRIPTION RP::TYPE-FIX)))
(RP::RP-EVL-OF-P+-WHEN-PP-FLATTEN-FORMULA-CHECKS
     (193 193 (:REWRITE DEFAULT-CAR))
     (134 37 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (84 84 (:TYPE-PRESCRIPTION RP::TYPE-FIX))
     (81 81 (:REWRITE DEFAULT-CDR))
     (81 9 (:DEFINITION RP::IS-SYNP$INLINE))
     (43 37
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (43 37
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (43 37
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (43 37
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (43 37 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (43 37 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (43 37 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (43 37
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (42 36
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (42 36 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (20 4
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (20 2 (:REWRITE DEFAULT-+-2))
     (20 2 (:REWRITE DEFAULT-+-1))
     (16 16
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (15 3
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (8 8
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (7 7 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (6 6
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (6 6
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (5 5
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (4 4
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (4 4
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP)))
(RP::RP-EVL-OF----WHEN-PP-FLATTEN-FORMULA-CHECKS
     (171 171 (:REWRITE DEFAULT-CAR))
     (88 18 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (57 7 (:DEFINITION RP::IS-SYNP$INLINE))
     (50 50 (:REWRITE DEFAULT-CDR))
     (42 42 (:TYPE-PRESCRIPTION RP::TYPE-FIX))
     (24 18 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (24 18
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (24 18 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (23 17
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (23 17
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (23 17
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (23 17 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (23 17
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (20 2 (:REWRITE DEFAULT-UNARY-MINUS))
     (15 3
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (13 13
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (10 2
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (8 8
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (7 7 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (5 5
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (4 4
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (4 4
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (2 2
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (2 2
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP)))
(RP::RP-EVL-OF-EX-FROM-RP-REVERSE)
(RP::WHEN-EX-FROM-RP-IS-1
     (396 384 (:REWRITE DEFAULT-CDR))
     (310 286 (:REWRITE DEFAULT-CAR))
     (100 25 (:REWRITE O-P-O-INFP-CAR))
     (77 12 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (72 4 (:DEFINITION RP::TRANS-LIST))
     (53 6 (:DEFINITION RP::IS-SYNP$INLINE))
     (52 4
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (40 40
         (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (36 36
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (29 9
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (25 25 (:REWRITE O-P-DEF-O-FINP-1))
     (24 24 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (16 16 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (14 12 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (12 12
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (12 4 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (11 11 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (11 11
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (9 9
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (7 7
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF)))
(RP::WHEN-EX-FROM-RP-IS-0
     (396 384 (:REWRITE DEFAULT-CDR))
     (310 286 (:REWRITE DEFAULT-CAR))
     (100 25 (:REWRITE O-P-O-INFP-CAR))
     (77 12 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (72 4 (:DEFINITION RP::TRANS-LIST))
     (53 6 (:DEFINITION RP::IS-SYNP$INLINE))
     (52 4
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (40 40
         (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (36 36
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (29 9
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (25 25 (:REWRITE O-P-DEF-O-FINP-1))
     (24 24 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (18 3 (:REWRITE O-INFP->NEQ-0))
     (16 16 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (14 12 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (14 12
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (14 12 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (12 12
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (12 4 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (11 11 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (11 11
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (9 9 (:TYPE-PRESCRIPTION O-FINP))
     (9 9
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (9 3 (:REWRITE O-FIRST-EXPT-O-INFP))
     (7 7
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (6 3 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (4 4 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1)))
(RP::EVAL-OF-BINARY-NOT-1
     (59 53 (:REWRITE DEFAULT-CDR))
     (38 26 (:REWRITE DEFAULT-CAR))
     (36 2 (:DEFINITION RP::TRANS-LIST))
     (29 3 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (24 2 (:DEFINITION RP::IS-SYNP$INLINE))
     (18 18
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (16 2
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (12 3 (:REWRITE O-P-O-INFP-CAR))
     (12 1 (:DEFINITION RP::INCLUDE-FNC))
     (8 8 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (7 3 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (3 3 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (3 3 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (3 3
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (3 3 (:REWRITE O-P-DEF-O-FINP-1))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (2 2
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (2 2 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (2 2 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (2 2
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (2 2 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (2 2
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP)))
(RP::EVAL-OF-BINARY-NOT
     (74 65 (:REWRITE DEFAULT-CDR))
     (60 38 (:REWRITE DEFAULT-CAR))
     (54 3 (:DEFINITION RP::TRANS-LIST))
     (29 3 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (27 27
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (24 2 (:DEFINITION RP::IS-SYNP$INLINE))
     (13 2
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (12 12 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (10 4 (:REWRITE O-P-O-INFP-CAR))
     (9 3 (:REWRITE RP::EVAL-OF-BINARY-NOT-1))
     (9 1 (:DEFINITION RP::INCLUDE-FNC))
     (7 3 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (4 3 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (4 3 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (4 1
        (:REWRITE RP::QUOTEP-TERM-WITH-EX-FROM-RP))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (3 3 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (3 3 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (3 3
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (3 3 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (2 2
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (2 2
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (2 2 (:REWRITE O-P-DEF-O-FINP-1))
     (2 2
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (1 1 (:TYPE-PRESCRIPTION QUOTEP)))
(RP::EVAL-OF---1
     (59 53 (:REWRITE DEFAULT-CDR))
     (39 27 (:REWRITE DEFAULT-CAR))
     (36 2 (:DEFINITION RP::TRANS-LIST))
     (29 3 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (24 2 (:DEFINITION RP::IS-SYNP$INLINE))
     (18 18
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (16 2
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (12 3 (:REWRITE O-P-O-INFP-CAR))
     (12 1 (:DEFINITION RP::INCLUDE-FNC))
     (8 8 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (7 3 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (3 3 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (3 3 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (3 3
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (3 3 (:REWRITE O-P-DEF-O-FINP-1))
     (3 2 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (2 2
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (2 2 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (2 2 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (2 2
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (2 2
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (2 2 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
     (2 2
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP)))
(RP::EVAL-OF----
     (74 65 (:REWRITE DEFAULT-CDR))
     (61 39 (:REWRITE DEFAULT-CAR))
     (54 3 (:DEFINITION RP::TRANS-LIST))
     (29 3 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (27 27
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (24 2 (:DEFINITION RP::IS-SYNP$INLINE))
     (13 2
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (12 12 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (10 4 (:REWRITE O-P-O-INFP-CAR))
     (9 3 (:REWRITE RP::EVAL-OF---1))
     (9 1 (:DEFINITION RP::INCLUDE-FNC))
     (7 3 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (4 3 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (4 3 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (4 3 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (4 1
        (:REWRITE RP::QUOTEP-TERM-WITH-EX-FROM-RP))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (3 3 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (3 3 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (3 3
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (3 3 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (2 2
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (2 2
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (2 2 (:REWRITE O-P-DEF-O-FINP-1))
     (2 2
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
     (2 2
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (1 1 (:TYPE-PRESCRIPTION QUOTEP)))
(RP::EVAL-OF-BIT-OF-1
     (110 98 (:REWRITE DEFAULT-CDR))
     (74 50 (:REWRITE DEFAULT-CAR))
     (72 4 (:DEFINITION RP::TRANS-LIST))
     (44 5 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (36 36
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (36 3 (:DEFINITION RP::IS-SYNP$INLINE))
     (32 4
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (24 6 (:REWRITE O-P-O-INFP-CAR))
     (24 2 (:DEFINITION RP::INCLUDE-FNC))
     (16 16 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (11 5 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (6 6 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (6 6 (:REWRITE O-P-DEF-O-FINP-1))
     (6 4 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (6 4 (:REWRITE RP::EVAL-OF----))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (5 5 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (5 5
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (4 4
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (4 4 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (4 4 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (4 4 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (3 3
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE)))
(RP::EVAL-OF-BIT-OF
     (125 110 (:REWRITE DEFAULT-CDR))
     (101 63 (:REWRITE DEFAULT-CAR))
     (90 5 (:DEFINITION RP::TRANS-LIST))
     (45 45
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (44 5 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (36 3 (:DEFINITION RP::IS-SYNP$INLINE))
     (26 4
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (20 20 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (20 8 (:REWRITE O-P-O-INFP-CAR))
     (18 2 (:DEFINITION RP::INCLUDE-FNC))
     (16 5 (:REWRITE RP::EVAL-OF-BIT-OF-1))
     (11 5 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (7 5 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (7 5 (:REWRITE RP::EVAL-OF----))
     (6 6 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (6 5 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (6 5 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (5 5 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (5 5
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (5 5 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (4 4
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (4 4 (:REWRITE O-P-DEF-O-FINP-1))
     (4 1
        (:REWRITE RP::QUOTEP-TERM-WITH-EX-FROM-RP))
     (3 3
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (1 1 (:TYPE-PRESCRIPTION QUOTEP)))
(RP::EVAL-OF-BINARY-?-1
     (165 147 (:REWRITE DEFAULT-CDR))
     (111 75 (:REWRITE DEFAULT-CAR))
     (108 6 (:DEFINITION RP::TRANS-LIST))
     (59 7 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (54 54
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (48 6
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (48 4 (:DEFINITION RP::IS-SYNP$INLINE))
     (36 9 (:REWRITE O-P-O-INFP-CAR))
     (36 3 (:DEFINITION RP::INCLUDE-FNC))
     (24 24 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (15 7 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (9 9 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (9 9 (:REWRITE O-P-DEF-O-FINP-1))
     (9 6 (:REWRITE RP::EVAL-OF-BIT-OF))
     (9 6 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (9 6 (:REWRITE RP::EVAL-OF----))
     (7 7 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (7 7
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (7 7
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (6 6
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (6 6 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (6 6 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (6 6 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (4 4
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (4 4
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (4 4
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE)))
(RP::EVAL-OF-BINARY-?
     (180 159 (:REWRITE DEFAULT-CDR))
     (143 89 (:REWRITE DEFAULT-CAR))
     (126 7 (:DEFINITION RP::TRANS-LIST))
     (63 63
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (59 7 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (48 4 (:DEFINITION RP::IS-SYNP$INLINE))
     (39 6
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (30 12 (:REWRITE O-P-O-INFP-CAR))
     (28 28 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (27 3 (:DEFINITION RP::INCLUDE-FNC))
     (23 7 (:REWRITE RP::EVAL-OF-BINARY-?-1))
     (15 7 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (10 7 (:REWRITE RP::EVAL-OF-BIT-OF))
     (10 7 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (10 7 (:REWRITE RP::EVAL-OF----))
     (9 9 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (8 7 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (8 7 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (7 7 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (7 7
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (7 7
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (7 7
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (7 7 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (7 7 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (6 6
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (6 6 (:REWRITE O-P-DEF-O-FINP-1))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (4 4
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (4 4
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (4 4
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (4 1
        (:REWRITE RP::QUOTEP-TERM-WITH-EX-FROM-RP))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (1 1 (:TYPE-PRESCRIPTION QUOTEP)))
(RP::EVAL-OF-BINARY-OR-1
     (110 98 (:REWRITE DEFAULT-CDR))
     (78 54 (:REWRITE DEFAULT-CAR))
     (72 4 (:DEFINITION RP::TRANS-LIST))
     (44 5 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (36 36
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (36 3 (:DEFINITION RP::IS-SYNP$INLINE))
     (32 4
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (24 6 (:REWRITE O-P-O-INFP-CAR))
     (24 2 (:DEFINITION RP::INCLUDE-FNC))
     (16 16 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (11 5 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (6 6 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (6 6 (:REWRITE O-P-DEF-O-FINP-1))
     (6 4 (:REWRITE RP::EVAL-OF-BIT-OF))
     (6 4 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (6 4 (:REWRITE RP::EVAL-OF-BINARY-?))
     (6 4 (:REWRITE RP::EVAL-OF----))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (5 5 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (5 5
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (4 4
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (4 4 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (4 4 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (4 4 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (3 3
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE)))
(RP::EVAL-OF-BINARY-OR
     (125 110 (:REWRITE DEFAULT-CDR))
     (105 67 (:REWRITE DEFAULT-CAR))
     (90 5 (:DEFINITION RP::TRANS-LIST))
     (45 45
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (44 5 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (36 3 (:DEFINITION RP::IS-SYNP$INLINE))
     (26 4
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (20 20 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (20 8 (:REWRITE O-P-O-INFP-CAR))
     (18 2 (:DEFINITION RP::INCLUDE-FNC))
     (16 5 (:REWRITE RP::EVAL-OF-BINARY-OR-1))
     (11 5 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (7 5 (:REWRITE RP::EVAL-OF-BIT-OF))
     (7 5 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (7 5 (:REWRITE RP::EVAL-OF-BINARY-?))
     (7 5 (:REWRITE RP::EVAL-OF----))
     (6 6 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (6 5 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (6 5 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (5 5 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (5 5
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (5 5 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (4 4
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (4 4 (:REWRITE O-P-DEF-O-FINP-1))
     (4 1
        (:REWRITE RP::QUOTEP-TERM-WITH-EX-FROM-RP))
     (3 3
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (1 1 (:TYPE-PRESCRIPTION QUOTEP)))
(RP::EVAL-OF-BINARY-XOR-1
     (110 98 (:REWRITE DEFAULT-CDR))
     (80 56 (:REWRITE DEFAULT-CAR))
     (72 4 (:DEFINITION RP::TRANS-LIST))
     (44 5 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (36 36
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (36 3 (:DEFINITION RP::IS-SYNP$INLINE))
     (32 4
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (24 6 (:REWRITE O-P-O-INFP-CAR))
     (24 2 (:DEFINITION RP::INCLUDE-FNC))
     (16 16 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (11 5 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (6 6 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (6 6 (:REWRITE O-P-DEF-O-FINP-1))
     (6 4 (:REWRITE RP::EVAL-OF-BIT-OF))
     (6 4 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (6 4 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (6 4 (:REWRITE RP::EVAL-OF-BINARY-?))
     (6 4 (:REWRITE RP::EVAL-OF----))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (5 5 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (5 5
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (4 4
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (4 4 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (4 4 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (4 4 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (3 3
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE)))
(RP::EVAL-OF-BINARY-XOR
     (125 110 (:REWRITE DEFAULT-CDR))
     (107 69 (:REWRITE DEFAULT-CAR))
     (90 5 (:DEFINITION RP::TRANS-LIST))
     (45 45
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (44 5 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (36 3 (:DEFINITION RP::IS-SYNP$INLINE))
     (26 4
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (20 20 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (20 8 (:REWRITE O-P-O-INFP-CAR))
     (18 2 (:DEFINITION RP::INCLUDE-FNC))
     (16 5 (:REWRITE RP::EVAL-OF-BINARY-XOR-1))
     (11 5 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (7 5 (:REWRITE RP::EVAL-OF-BIT-OF))
     (7 5 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (7 5 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (7 5 (:REWRITE RP::EVAL-OF-BINARY-?))
     (7 5 (:REWRITE RP::EVAL-OF----))
     (6 6 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (6 5 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (6 5 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (5 5 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (5 5
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (5 5 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (4 4
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (4 4 (:REWRITE O-P-DEF-O-FINP-1))
     (4 1
        (:REWRITE RP::QUOTEP-TERM-WITH-EX-FROM-RP))
     (3 3
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (1 1 (:TYPE-PRESCRIPTION QUOTEP)))
(RP::EVAL-OF-BINARY-AND-1
     (110 98 (:REWRITE DEFAULT-CDR))
     (82 58 (:REWRITE DEFAULT-CAR))
     (72 4 (:DEFINITION RP::TRANS-LIST))
     (44 5 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (36 36
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (36 3 (:DEFINITION RP::IS-SYNP$INLINE))
     (32 4
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (24 6 (:REWRITE O-P-O-INFP-CAR))
     (24 2 (:DEFINITION RP::INCLUDE-FNC))
     (16 16 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (11 5 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (6 6 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (6 6 (:REWRITE O-P-DEF-O-FINP-1))
     (6 4 (:REWRITE RP::EVAL-OF-BIT-OF))
     (6 4 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (6 4 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (6 4 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (6 4 (:REWRITE RP::EVAL-OF-BINARY-?))
     (6 4 (:REWRITE RP::EVAL-OF----))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (5 5 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (5 5
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (4 4
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (4 4 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (4 4 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (4 4 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (3 3
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE)))
(RP::EVAL-OF-BINARY-AND
     (125 110 (:REWRITE DEFAULT-CDR))
     (109 71 (:REWRITE DEFAULT-CAR))
     (90 5 (:DEFINITION RP::TRANS-LIST))
     (45 45
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (44 5 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (36 3 (:DEFINITION RP::IS-SYNP$INLINE))
     (26 4
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (20 20 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (20 8 (:REWRITE O-P-O-INFP-CAR))
     (18 2 (:DEFINITION RP::INCLUDE-FNC))
     (16 5 (:REWRITE RP::EVAL-OF-BINARY-AND-1))
     (11 5 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (7 5 (:REWRITE RP::EVAL-OF-BIT-OF))
     (7 5 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (7 5 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (7 5 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (7 5 (:REWRITE RP::EVAL-OF-BINARY-?))
     (7 5 (:REWRITE RP::EVAL-OF----))
     (6 6 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (6 5 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (6 5 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (5 5 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (5 5
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (5 5 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (4 4
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (4 4 (:REWRITE O-P-DEF-O-FINP-1))
     (4 1
        (:REWRITE RP::QUOTEP-TERM-WITH-EX-FROM-RP))
     (3 3
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (1 1 (:TYPE-PRESCRIPTION QUOTEP)))
(RP::NOT$-TO-PP-SUM (6 1 (:REWRITE O-INFP->NEQ-0))
                    (3 3 (:TYPE-PRESCRIPTION O-FINP))
                    (3 1 (:REWRITE O-FIRST-EXPT-O-INFP))
                    (2 1 (:REWRITE O-FIRST-EXPT-DEF-O-FINP)))
(RP::PP-HAS-BITP-RP-IMPLIES-LEMMA
     (1231 1180 (:REWRITE DEFAULT-CDR))
     (1201 1059 (:REWRITE DEFAULT-CAR))
     (821 17
          (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (521 233 (:REWRITE O-P-O-INFP-CAR))
     (397 30 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (337 29 (:DEFINITION RP::IS-SYNP$INLINE))
     (275 55
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (270 15 (:DEFINITION RP::TRANS-LIST))
     (191 12
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (165 55 (:DEFINITION APPLY$-BADGEP))
     (138 42
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (116 86 (:REWRITE O-P-DEF-O-FINP-1))
     (110 55 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (87 24 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (80 29
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (67 67 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (66 66
         (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (63 63 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (56 29
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (56 29 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (56 29 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (56 29 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (56 29 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (56 29
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (55 55 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (53 28 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (53 28
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (53 28
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (53 28
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (53 28 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (53 28
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (53 28 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (53 28
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (53 28
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (53 28
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (53 28 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (53 28 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (53 28
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (53 28 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (44 26 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (44 26
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (44 26 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (44 26 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (44 26
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (44 26 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (44 26 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (44 26 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (44 26 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (44 26 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (42 42
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (34 34
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (32 5
         (:REWRITE RP::QUOTEP-TERM-WITH-EX-FROM-RP))
     (30 30
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (25 12 (:REWRITE RP::EVAL-OF-BIT-OF))
     (25 12 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (25 12 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (25 12 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (25 12 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (25 12 (:REWRITE RP::EVAL-OF-BINARY-?))
     (25 12 (:REWRITE RP::EVAL-OF----))
     (13 12 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (13 12 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (12 12 (:TYPE-PRESCRIPTION O-FINP))
     (11 1 (:REWRITE RP::NOT-INCLUDE-EX-FROM-RP))
     (9 9 (:REWRITE RP::EX-FROM-RP-X2))
     (7 7
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (5 5 (:TYPE-PRESCRIPTION QUOTEP)))
(RP::PP-HAS-BITP-RP-IMPLIES
     (1079 20 (:DEFINITION RP::INCLUDE-FNC))
     (977 14
          (:REWRITE RP::NOT-INCLUDE-RP-MEANS-VALID-SC))
     (839 3
          (:REWRITE RP::CAR-OF-EX-FROM-RP-IS-NOT-RP))
     (832 5 (:DEFINITION RP::RP-TERMP))
     (792 792 (:REWRITE DEFAULT-CDR))
     (532 532 (:REWRITE DEFAULT-CAR))
     (414 2 (:DEFINITION RP::FALIST-CONSISTENT))
     (322 2
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (244 4
          (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (220 58 (:REWRITE O-P-O-INFP-CAR))
     (143 4
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (125 25
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (123 7
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (112 8 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (96 8 (:DEFINITION RP::IS-SYNP$INLINE))
     (75 25 (:DEFINITION APPLY$-BADGEP))
     (62 20
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (61 61 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (54 54 (:REWRITE O-P-DEF-O-FINP-1))
     (50 25 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (50 25 (:DEFINITION QUOTEP))
     (39 1 (:REWRITE RP::VALID-SC-CADR))
     (36 36 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (36 18 (:REWRITE RP::IS-IF-RP-TERMP))
     (32 32
         (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (27 27
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (25 25 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (24 8 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (20 20
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (18 18
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (18 9 (:REWRITE RP::RP-TERMP-CADR))
     (18 9 (:REWRITE RP::RP-TERMP-CADDR))
     (18 9 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (18 3 (:REWRITE RP::NOT-INCLUDE-EX-FROM-RP))
     (12 3 (:REWRITE RP::VALID-SC-OF-EX-FROM-RP))
     (12 3 (:REWRITE RP::VALID-SC-EX-FROM-RP))
     (12 3
         (:REWRITE RP::QUOTEP-TERM-WITH-EX-FROM-RP))
     (10 2
         (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (8 8
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (8 8
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (8 8 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (8 8
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (8 8
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (8 8
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (8 8 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (8 4 (:REWRITE RP::EVAL-OF-BIT-OF))
     (8 4 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (8 4 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (8 4 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (8 4 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (8 4 (:REWRITE RP::EVAL-OF-BINARY-?))
     (8 4 (:REWRITE RP::EVAL-OF----))
     (5 5 (:TYPE-PRESCRIPTION QUOTEP))
     (4 4
        (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (4 4 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (4 4 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (4 2
        (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (1 1 (:REWRITE RP::VALID-SC-CADDR)))
(RP::PP-TERM-P-IS-BITP
     (5102 5102 (:REWRITE DEFAULT-CDR))
     (3640 260 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (3120 260 (:DEFINITION RP::IS-SYNP$INLINE))
     (2282 260 (:DEFINITION RP::INCLUDE-FNC))
     (2266 2266 (:REWRITE DEFAULT-CAR))
     (1676 138
           (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (1386 122
           (:REWRITE RP::NOT-INCLUDE-RP-MEANS-VALID-SC))
     (1287 11 (:REWRITE RP::VALID-SC-EX-FROM-RP-2))
     (1254 11 (:DEFINITION RP::EVAL-AND-ALL))
     (798 133
          (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (780 780
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (780 260 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (531 260 (:DEFINITION QUOTEP))
     (520 520
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (399 399
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (266 266
          (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (266 140 (:REWRITE RP::EVAL-OF----))
     (260 260
          (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (260 260
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (260 260 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (260 260
          (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (260 260
          (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (260 260
          (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (260 260 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (260 260
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (180 45 (:REWRITE O-P-O-INFP-CAR))
     (139 139 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (55 55
         (:TYPE-PRESCRIPTION RP::EVAL-AND-ALL))
     (55 55
         (:TYPE-PRESCRIPTION RP::CONTEXT-FROM-RP))
     (45 45 (:REWRITE O-P-DEF-O-FINP-1)))
(RP::FLOOR-OF-TWO-IS-LESS
     (725 725
          (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
     (725 725
          (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (725 725
          (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (725 725
          (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (456 40 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (336 40
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (336 40
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (200 40 (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
     (200 40 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (200 40 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (200 40
          (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (200 40
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (200 40
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (200 40
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (200 40
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (66 10
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (66 10
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 1))
     (50 10
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (50 10
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 2))
     (33 3 (:REWRITE DEFAULT-FLOOR-RATIO))
     (32 32 (:REWRITE DEFAULT-TIMES-2))
     (32 32 (:REWRITE DEFAULT-TIMES-1))
     (29 29 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (29 29 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (29 29 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (27 1 (:LINEAR LINEAR-FLOOR-BOUNDS-3))
     (23 1 (:LINEAR LINEAR-FLOOR-BOUNDS-2))
     (22 14 (:REWRITE DEFAULT-PLUS-2))
     (20 20
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (20 14 (:REWRITE DEFAULT-PLUS-1))
     (16 8 (:REWRITE DEFAULT-LESS-THAN-1))
     (10 2 (:REWRITE DEFAULT-MINUS))
     (8 8 (:REWRITE THE-FLOOR-BELOW))
     (8 8 (:REWRITE THE-FLOOR-ABOVE))
     (8 8 (:REWRITE DEFAULT-LESS-THAN-2))
     (7 7
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (7 7
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (7 7 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (7 7
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (6 6 (:REWRITE REDUCE-INTEGERP-+))
     (6 6 (:REWRITE INTEGERP-MINUS-X))
     (6 6
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (6 6
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (6 6
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (6 6
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (6 6
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (6 6 (:REWRITE |(< c (- x))|))
     (6 6
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (6 6
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (6 6
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (6 6
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (6 6 (:REWRITE |(< (/ x) (/ y))|))
     (6 6 (:REWRITE |(< (- x) (- y))|))
     (6 6 (:META META-INTEGERP-CORRECT))
     (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (5 5 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (5 5 (:REWRITE INTEGERP-<-CONSTANT))
     (5 5 (:REWRITE CONSTANT-<-INTEGERP))
     (4 4 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (3 3 (:REWRITE DEFAULT-FLOOR-2))
     (3 3 (:REWRITE DEFAULT-FLOOR-1))
     (3 3 (:REWRITE |(floor x 2)| . 2))
     (3 3 (:REWRITE |(< 0 (* x y))|))
     (2 2 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (2 2 (:REWRITE |(< y (+ (- c) x))|))
     (2 2 (:REWRITE |(< x (+ c/d y))|))
     (2 2 (:REWRITE |(< 0 (/ x))|))
     (2 2 (:REWRITE |(< (+ c/d x) y)|))
     (2 2 (:REWRITE |(< (+ (- c) x) y)|))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< x 0)|))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< 0 x)|))
     (1 1 (:REWRITE |(< x (/ y)) with (< y 0)|))
     (1 1 (:REWRITE |(< (/ x) 0)|))
     (1 1 (:REWRITE |(< (* x y) 0)|))
     (1 1 (:REWRITE |(* (- x) y)|)))
(RP::FLOOR-OF-LEN-IS-LESS-THAN-LST
     (865 865
          (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (865 865
          (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (865 865
          (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (520 40 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (360 40
          (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (360 40
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (360 40
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (200 40 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (200 40 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (200 40
          (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (200 40
          (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
     (200 40
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (200 40
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (200 40
          (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (200 40
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (200 40
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (88 38 (:REWRITE DEFAULT-PLUS-2))
     (61 38 (:REWRITE DEFAULT-PLUS-1))
     (61 33 (:REWRITE DEFAULT-TIMES-2))
     (56 3 (:REWRITE DEFAULT-FLOOR-RATIO))
     (40 33 (:REWRITE DEFAULT-TIMES-1))
     (39 1 (:REWRITE |(floor (+ x r) i)|))
     (37 37 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (37 37 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (37 37 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (33 1 (:LINEAR LINEAR-FLOOR-BOUNDS-3))
     (28 1 (:LINEAR LINEAR-FLOOR-BOUNDS-2))
     (23 23
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (23 7 (:REWRITE DEFAULT-LESS-THAN-1))
     (17 17
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (10 7 (:REWRITE DEFAULT-LESS-THAN-2))
     (9 5 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (7 7 (:REWRITE THE-FLOOR-BELOW))
     (7 7 (:REWRITE THE-FLOOR-ABOVE))
     (7 7 (:REWRITE DEFAULT-CDR))
     (7 6
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (7 6
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (7 4
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (6 6 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (6 3 (:REWRITE DEFAULT-FLOOR-1))
     (5 5 (:REWRITE REDUCE-INTEGERP-+))
     (5 5 (:REWRITE INTEGERP-MINUS-X))
     (5 5
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (5 5 (:META META-INTEGERP-CORRECT))
     (4 4 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (4 4 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (4 4 (:REWRITE INTEGERP-<-CONSTANT))
     (4 4 (:REWRITE CONSTANT-<-INTEGERP))
     (4 4
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (4 4
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (4 4
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (4 4
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (4 4 (:REWRITE |(< c (- x))|))
     (4 4
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (4 4
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (4 4
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (4 4
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (4 4 (:REWRITE |(< (/ x) (/ y))|))
     (4 4 (:REWRITE |(< (- x) c)|))
     (4 4 (:REWRITE |(< (- x) (- y))|))
     (3 3 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (3 3 (:REWRITE DEFAULT-FLOOR-2))
     (3 3 (:REWRITE |(floor x 2)| . 2))
     (3 3 (:REWRITE |(< y (+ (- c) x))|))
     (3 3 (:REWRITE |(< x (+ c/d y))|))
     (2 2 (:TYPE-PRESCRIPTION ABS))
     (2 2 (:REWRITE |(< (+ c/d x) y)|))
     (2 2 (:REWRITE |(< (+ (- c) x) y)|))
     (2 2 (:REWRITE |(* (- x) y)|))
     (2 2 (:LINEAR LEN-WHEN-PREFIXP))
     (1 1 (:REWRITE |(< (/ x) y) with (< x 0)|))
     (1 1 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (1 1 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::FIX-LESS-THAN-WITH-SMM
     (4 4 (:LINEAR LEN-WHEN-PREFIXP))
     (2 2 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (2 2 (:LINEAR BOUNDS-POSITION-EQUAL))
     (2 1
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (2 1
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (1 1 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (1 1
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (1 1
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (1 1 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (1 1
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (1 1 (:REWRITE |(equal c (/ x))|))
     (1 1 (:REWRITE |(equal c (- x))|))
     (1 1 (:REWRITE |(equal (/ x) c)|))
     (1 1 (:REWRITE |(equal (/ x) (/ y))|))
     (1 1 (:REWRITE |(equal (- x) c)|))
     (1 1 (:REWRITE |(equal (- x) (- y))|)))
(RP::BIT-LIST-LISTP)
(RP::RP-EVLT-LST-LST)
(RP::TIMES$)
(RP::TIMES$-OF-1-AND-0 (5 5 (:TYPE-PRESCRIPTION RP::TYPE-FIX))
                       (4 4
                          (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                       (2 2 (:REWRITE DEFAULT-*-2))
                       (2 2 (:REWRITE DEFAULT-*-1)))
(RP::LEN-EQUALS-2 (12 7 (:REWRITE DEFAULT-+-2))
                  (7 7 (:REWRITE DEFAULT-+-1))
                  (5 5 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                  (3 3
                     (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                  (2 2 (:REWRITE FOLD-CONSTS-IN-+))
                  (2 2 (:REWRITE DEFAULT-UNARY-MINUS)))
(RP::BIT-LISTP-LEMMA
     (139 1 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (136 1 (:DEFINITION RP::PP-TERM-P))
     (81 62 (:REWRITE DEFAULT-CAR))
     (60 5
         (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (45 5
         (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (37 1 (:DEFINITION RP::RP-TRANS))
     (36 12
         (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (30 5 (:REWRITE O-INFP->NEQ-0))
     (28 28 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (27 27
         (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (26 26 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (22 22
         (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (20 5 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (18 18 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (18 1 (:DEFINITION RP::TRANS-LIST))
     (15 15 (:TYPE-PRESCRIPTION O-FINP))
     (15 5 (:REWRITE O-FIRST-EXPT-O-INFP))
     (14 1 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (12 1 (:DEFINITION RP::IS-SYNP$INLINE))
     (11 1
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (10 5 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (8 1 (:DEFINITION RP::IS-FALIST))
     (8 1 (:DEFINITION RP::INCLUDE-FNC))
     (5 2 (:DEFINITION QUOTEP))
     (3 1 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (3 1 (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (1 1
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (1 1 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (1 1 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (1 1
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (1 1 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (1 1
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (1 1
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (1 1
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (1 1 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (1 1 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (1 1 (:REWRITE RP::EVAL-OF-BIT-OF))
     (1 1 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (1 1 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (1 1 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (1 1 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (1 1 (:REWRITE RP::EVAL-OF-BINARY-?))
     (1 1 (:REWRITE RP::EVAL-OF----))
     (1 1
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP)))
(RP::BIT-LISTP-LEMMA-2
     (566 14 (:DEFINITION RP::RP-TRANS))
     (498 330 (:REWRITE O-P-O-INFP-CAR))
     (473 411 (:REWRITE DEFAULT-CDR))
     (347 21 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (306 20 (:DEFINITION RP::IS-SYNP$INLINE))
     (296 190 (:REWRITE DEFAULT-CAR))
     (252 14 (:DEFINITION RP::TRANS-LIST))
     (202 14
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (160 14 (:DEFINITION RP::INCLUDE-FNC))
     (112 14 (:DEFINITION RP::IS-FALIST))
     (103 21 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (96 36 (:REWRITE O-P-DEF-O-FINP-1))
     (93 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (90 15 (:REWRITE O-INFP->NEQ-0))
     (70 28 (:DEFINITION QUOTEP))
     (69 69 (:TYPE-PRESCRIPTION O-FINP))
     (45 45 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (45 21 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (45 21
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (45 21
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (45 21
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (45 21 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (45 15 (:REWRITE O-FIRST-EXPT-O-INFP))
     (44 20
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (33 33
         (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (30 15 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (24 6 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (20 20
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (20 20
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (20 15
         (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (14 14 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (14 14 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (14 14 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (14 14 (:REWRITE RP::EVAL-OF-BIT-OF))
     (14 14 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (14 14 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (14 14 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (14 14 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (14 14 (:REWRITE RP::EVAL-OF-BINARY-?))
     (14 14 (:REWRITE RP::EVAL-OF----))
     (12 1
         (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (9 1
        (:DEFINITION RP::INCLUDE-FNC-SUBTERMS)))
(RP::OR$-TO-PP-SUM (18 3 (:REWRITE O-INFP->NEQ-0))
                   (9 9 (:TYPE-PRESCRIPTION O-FINP))
                   (9 3 (:REWRITE O-FIRST-EXPT-O-INFP))
                   (6 3 (:REWRITE O-FIRST-EXPT-DEF-O-FINP)))
(RP::BINARY-XOR-TO-PP-SUM (18 3 (:REWRITE O-INFP->NEQ-0))
                          (9 9 (:TYPE-PRESCRIPTION O-FINP))
                          (9 3 (:REWRITE O-FIRST-EXPT-O-INFP))
                          (6 3 (:REWRITE O-FIRST-EXPT-DEF-O-FINP)))
(RP::BINARY-?-TO-PP-SUM (42 7 (:REWRITE O-INFP->NEQ-0))
                        (21 21 (:TYPE-PRESCRIPTION O-FINP))
                        (21 7 (:REWRITE O-FIRST-EXPT-O-INFP))
                        (14 7 (:REWRITE O-FIRST-EXPT-DEF-O-FINP)))
(RP::---OF-PP-SUM (4 4
                     (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                  (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
                  (3 3 (:REWRITE DEFAULT-+-2))
                  (3 3 (:REWRITE DEFAULT-+-1)))
(RP::--OF-- (3 3 (:TYPE-PRESCRIPTION RP::TYPE-FIX))
            (2 2
               (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
            (2 2 (:REWRITE DEFAULT-UNARY-MINUS)))
(RP::PP-SUM-REORDER (7 7 (:REWRITE DEFAULT-+-2))
                    (7 7 (:REWRITE DEFAULT-+-1))
                    (6 6
                       (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                    (3 3 (:REWRITE FOLD-CONSTS-IN-+)))
(RP::PP-SUM-COMM (6 6
                    (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                 (5 5 (:REWRITE DEFAULT-+-2))
                 (5 5 (:REWRITE DEFAULT-+-1))
                 (3 3 (:REWRITE FOLD-CONSTS-IN-+)))
(RP::PP-SUM-OF-0 (5 5 (:TYPE-PRESCRIPTION RP::TYPE-FIX))
                 (2 2
                    (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP)))
(RP::TYPE-FIX-OF-FNCS (4 4
                         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                      (2 2 (:REWRITE DEFAULT-+-2))
                      (2 2 (:REWRITE DEFAULT-+-1)))
(RP::TYPE-FIX-OF-- (2 2
                      (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                   (2 2 (:REWRITE DEFAULT-UNARY-MINUS)))
(RP::TYPE-FIX-WHEN-INTEGERP)
(RP::TYPE-FIX-WHEN-BITP (6 1 (:REWRITE O-INFP->NEQ-0))
                        (3 3 (:TYPE-PRESCRIPTION O-FINP))
                        (3 1 (:REWRITE O-FIRST-EXPT-O-INFP))
                        (2 1 (:REWRITE O-FIRST-EXPT-DEF-O-FINP)))
(RP::INTEGERP-OF-FNCS)
(RP::BITP-IMPLIES-INTEGERP)
(RP::WHEN-MINUS-OF-X-IS-ZERO)
(RP::WHEN-MINUS-OF-X-IS-1)
(RP::BINAR-AND-ABS-IS-AND$-2 (42 12 (:REWRITE O-INFP->NEQ-0))
                             (28 10 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
                             (18 18 (:TYPE-PRESCRIPTION O-FINP))
                             (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
                             (18 6 (:REWRITE O-FIRST-EXPT-O-INFP))
                             (12 6 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
                             (10 10
                                 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                             (10 10 (:REWRITE DEFAULT-*-2))
                             (10 10 (:REWRITE DEFAULT-*-1)))
(RP::PP-SUM-EQUALS (39 15 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
                   (15 15
                       (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                   (12 12 (:TYPE-PRESCRIPTION BITP))
                   (12 12 (:DEFINITION BITP))
                   (10 10 (:TYPE-PRESCRIPTION RP::TYPE-FIX))
                   (2 2 (:REWRITE DEFAULT-+-2))
                   (2 2 (:REWRITE DEFAULT-+-1)))
(RP::--OF--EQUALS (10 10 (:TYPE-PRESCRIPTION RP::TYPE-FIX))
                  (8 4 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
                  (4 4
                     (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                  (2 2 (:TYPE-PRESCRIPTION BITP))
                  (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
                  (2 2 (:DEFINITION BITP)))
(RP::AND$-OF-1-0 (11 5 (:REWRITE RP::BIT-FIX-OPENER))
                 (3 3 (:TYPE-PRESCRIPTION BITP))
                 (3 3 (:DEFINITION BITP)))
(RP::PP-SUM-OF-NEGATED-SUM (36 16 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
                           (16 16
                               (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                           (10 10 (:TYPE-PRESCRIPTION BITP))
                           (10 10 (:DEFINITION BITP))
                           (8 8 (:REWRITE DEFAULT-+-2))
                           (8 8 (:REWRITE DEFAULT-+-1))
                           (5 5 (:TYPE-PRESCRIPTION RP::TYPE-FIX))
                           (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
                           (3 3 (:REWRITE FOLD-CONSTS-IN-+)))
(RP::AND$-ASSOC (4 4 (:TYPE-PRESCRIPTION BITP))
                (4 4 (:DEFINITION BITP)))
(RP::AND$-COMM-LOOP=STOPPER (4 4 (:TYPE-PRESCRIPTION BITP))
                            (4 4 (:DEFINITION BITP)))
(RP::AND$-IS-TIMES (102 6
                        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
                   (96 12 (:REWRITE ACL2-NUMBERP-X))
                   (54 6 (:REWRITE RATIONALP-X))
                   (24 6 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
                   (18 6
                       (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                   (18 3 (:REWRITE O-INFP->NEQ-0))
                   (12 12
                       (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
                   (9 9 (:TYPE-PRESCRIPTION O-FINP))
                   (9 3 (:REWRITE O-FIRST-EXPT-O-INFP))
                   (6 6 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                   (6 6 (:REWRITE REDUCE-RATIONALP-+))
                   (6 6 (:REWRITE REDUCE-RATIONALP-*))
                   (6 6
                      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
                   (6 6 (:REWRITE REDUCE-INTEGERP-+))
                   (6 6
                      (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
                   (6 6 (:REWRITE RATIONALP-MINUS-X))
                   (6 6
                      (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
                   (6 6 (:REWRITE INTEGERP-MINUS-X))
                   (6 6
                      (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                   (6 6
                      (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
                   (6 6 (:REWRITE |(equal c (/ x))|))
                   (6 6 (:REWRITE |(equal c (- x))|))
                   (6 6 (:REWRITE |(equal (/ x) c)|))
                   (6 6 (:REWRITE |(equal (/ x) (/ y))|))
                   (6 6 (:REWRITE |(equal (- x) c)|))
                   (6 6 (:REWRITE |(equal (- x) (- y))|))
                   (6 6 (:META META-RATIONALP-CORRECT))
                   (6 6 (:META META-INTEGERP-CORRECT))
                   (6 3 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
                   (3 3
                      (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0)))
(RP::TYPE-FIX-OF-TIMES
     (122 8 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (116 2 (:DEFINITION BITP))
     (60 4
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (56 8 (:REWRITE ACL2-NUMBERP-X))
     (28 4 (:REWRITE RATIONALP-X))
     (14 14 (:REWRITE DEFAULT-TIMES-2))
     (14 14 (:REWRITE DEFAULT-TIMES-1))
     (12 4
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (8 8 (:REWRITE REDUCE-INTEGERP-+))
     (8 8 (:REWRITE INTEGERP-MINUS-X))
     (8 8
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (8 8
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (8 8 (:META META-INTEGERP-CORRECT))
     (6 6 (:TYPE-PRESCRIPTION BITP))
     (4 4 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (4 4 (:REWRITE REDUCE-RATIONALP-+))
     (4 4 (:REWRITE REDUCE-RATIONALP-*))
     (4 4
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (4 4
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (4 4 (:REWRITE RATIONALP-MINUS-X))
     (4 4
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (4 4
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (4 4 (:REWRITE |(equal c (/ x))|))
     (4 4 (:REWRITE |(equal c (- x))|))
     (4 4 (:REWRITE |(equal (/ x) c)|))
     (4 4 (:REWRITE |(equal (/ x) (/ y))|))
     (4 4 (:REWRITE |(equal (- x) c)|))
     (4 4 (:REWRITE |(equal (- x) (- y))|))
     (4 4 (:META META-RATIONALP-CORRECT))
     (2 2
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (2 2
        (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS)))
(RP::TIMES$-OF--- (244 16 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
                  (232 4 (:DEFINITION BITP))
                  (120 8
                       (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
                  (112 16 (:REWRITE ACL2-NUMBERP-X))
                  (56 8 (:REWRITE RATIONALP-X))
                  (32 32 (:REWRITE DEFAULT-TIMES-2))
                  (32 32 (:REWRITE DEFAULT-TIMES-1))
                  (24 8
                      (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                  (16 16 (:REWRITE REDUCE-INTEGERP-+))
                  (16 16 (:REWRITE INTEGERP-MINUS-X))
                  (16 16
                      (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                  (16 16
                      (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
                  (16 16 (:META META-INTEGERP-CORRECT))
                  (12 12 (:TYPE-PRESCRIPTION BITP))
                  (12 12 (:REWRITE DEFAULT-MINUS))
                  (8 8 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                  (8 8 (:REWRITE REDUCE-RATIONALP-+))
                  (8 8 (:REWRITE REDUCE-RATIONALP-*))
                  (8 8
                     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
                  (8 8
                     (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
                  (8 8 (:REWRITE RATIONALP-MINUS-X))
                  (8 8
                     (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
                  (8 8
                     (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
                  (8 8 (:REWRITE |(equal c (/ x))|))
                  (8 8 (:REWRITE |(equal c (- x))|))
                  (8 8 (:REWRITE |(equal (/ x) c)|))
                  (8 8 (:REWRITE |(equal (/ x) (/ y))|))
                  (8 8 (:REWRITE |(equal (- x) c)|))
                  (8 8 (:REWRITE |(equal (- x) (- y))|))
                  (8 8 (:META META-RATIONALP-CORRECT))
                  (4 4
                     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
                  (4 4
                     (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
                  (4 4 (:REWRITE |(- (* c x))|)))
(RP::TIMES$-DISTRIBUTE-OVER-PP-SUM
     (368 26 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (348 6 (:DEFINITION BITP))
     (180 12
          (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (168 24 (:REWRITE ACL2-NUMBERP-X))
     (84 12 (:REWRITE RATIONALP-X))
     (75 75 (:REWRITE DEFAULT-TIMES-2))
     (75 75 (:REWRITE DEFAULT-TIMES-1))
     (40 40 (:REWRITE DEFAULT-PLUS-2))
     (40 40 (:REWRITE DEFAULT-PLUS-1))
     (36 12
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (26 26 (:REWRITE REDUCE-INTEGERP-+))
     (26 26 (:REWRITE INTEGERP-MINUS-X))
     (26 26
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (26 26 (:META META-INTEGERP-CORRECT))
     (24 24
         (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (18 18 (:TYPE-PRESCRIPTION BITP))
     (14 14
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (12 12 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (12 12 (:REWRITE REDUCE-RATIONALP-+))
     (12 12 (:REWRITE REDUCE-RATIONALP-*))
     (12 12
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (12 12
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (12 12 (:REWRITE RATIONALP-MINUS-X))
     (12 12
         (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (12 12
         (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (12 12 (:REWRITE |(equal c (/ x))|))
     (12 12 (:REWRITE |(equal c (- x))|))
     (12 12 (:REWRITE |(equal (/ x) c)|))
     (12 12 (:REWRITE |(equal (/ x) (/ y))|))
     (12 12 (:REWRITE |(equal (- x) c)|))
     (12 12 (:REWRITE |(equal (- x) (- y))|))
     (12 12 (:META META-RATIONALP-CORRECT))
     (6 6
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (6 6
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (6 6 (:REWRITE NORMALIZE-ADDENDS)))
(RP::TIMES$-COMM (305 20 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
                 (290 5 (:DEFINITION BITP))
                 (150 10
                      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
                 (140 20 (:REWRITE ACL2-NUMBERP-X))
                 (70 10 (:REWRITE RATIONALP-X))
                 (53 53 (:REWRITE DEFAULT-TIMES-2))
                 (53 53 (:REWRITE DEFAULT-TIMES-1))
                 (30 10
                     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                 (20 20 (:REWRITE REDUCE-INTEGERP-+))
                 (20 20 (:REWRITE INTEGERP-MINUS-X))
                 (20 20
                     (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                 (20 20
                     (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
                 (20 20 (:META META-INTEGERP-CORRECT))
                 (15 15 (:TYPE-PRESCRIPTION BITP))
                 (10 10 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                 (10 10 (:REWRITE REDUCE-RATIONALP-+))
                 (10 10 (:REWRITE REDUCE-RATIONALP-*))
                 (10 10
                     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
                 (10 10
                     (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
                 (10 10 (:REWRITE RATIONALP-MINUS-X))
                 (10 10
                     (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
                 (10 10
                     (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
                 (10 10 (:REWRITE |(equal c (/ x))|))
                 (10 10 (:REWRITE |(equal c (- x))|))
                 (10 10 (:REWRITE |(equal (/ x) c)|))
                 (10 10 (:REWRITE |(equal (/ x) (/ y))|))
                 (10 10 (:REWRITE |(equal (- x) c)|))
                 (10 10 (:REWRITE |(equal (- x) (- y))|))
                 (10 10 (:META META-RATIONALP-CORRECT))
                 (7 7
                    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
                 (5 5
                    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
                 (2 2 (:REWRITE |(* c (* d x))|)))
(RP::TIMES$-REODER (183 12 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
                   (174 3 (:DEFINITION BITP))
                   (90 6
                       (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
                   (84 12 (:REWRITE ACL2-NUMBERP-X))
                   (42 6 (:REWRITE RATIONALP-X))
                   (40 40 (:REWRITE DEFAULT-TIMES-2))
                   (40 40 (:REWRITE DEFAULT-TIMES-1))
                   (18 6
                       (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                   (12 12 (:REWRITE REDUCE-INTEGERP-+))
                   (12 12 (:REWRITE INTEGERP-MINUS-X))
                   (12 12
                       (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                   (12 12
                       (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
                   (12 12 (:META META-INTEGERP-CORRECT))
                   (9 9 (:TYPE-PRESCRIPTION BITP))
                   (6 6 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                   (6 6 (:REWRITE REDUCE-RATIONALP-+))
                   (6 6 (:REWRITE REDUCE-RATIONALP-*))
                   (6 6
                      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
                   (6 6
                      (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
                   (6 6 (:REWRITE RATIONALP-MINUS-X))
                   (6 6
                      (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
                   (6 6
                      (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
                   (6 6 (:REWRITE |(equal c (/ x))|))
                   (6 6 (:REWRITE |(equal c (- x))|))
                   (6 6 (:REWRITE |(equal (/ x) c)|))
                   (6 6 (:REWRITE |(equal (/ x) (/ y))|))
                   (6 6 (:REWRITE |(equal (- x) c)|))
                   (6 6 (:REWRITE |(equal (- x) (- y))|))
                   (6 6 (:META META-RATIONALP-CORRECT))
                   (5 5
                      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
                   (3 3
                      (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
                   (2 2 (:REWRITE |(* c (* d x))|)))
(RP::AND$-OF-REPEATED-VARS (5 5 (:TYPE-PRESCRIPTION BITP))
                           (5 5 (:DEFINITION BITP)))
(RP::LEN-TO-CONSP (9 5 (:REWRITE DEFAULT-+-2))
                  (5 5 (:REWRITE DEFAULT-CDR))
                  (5 5 (:REWRITE DEFAULT-+-1))
                  (3 3 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                  (1 1 (:REWRITE ZP-OPEN)))
(RP::LEN-TO-CONSP-WHEN-O (1 1 (:REWRITE RP::LEN-TO-CONSP))
                         (1 1 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS)))
(RP::LEN-TO-CONSP-WHEN-LESS-THAN-2 (10 5 (:REWRITE DEFAULT-+-2))
                                   (9 9 (:REWRITE DEFAULT-CDR))
                                   (5 5 (:REWRITE DEFAULT-+-1))
                                   (4 4 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                                   (4 2 (:REWRITE DEFAULT-<-1))
                                   (2 2 (:REWRITE DEFAULT-<-2))
                                   (2 2 (:LINEAR LEN-WHEN-PREFIXP))
                                   (1 1 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                                   (1 1 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::APPEND-RETURNS-BIT-LIST-LISTP
     (240 16
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (217 64 (:REWRITE O-P-O-INFP-CAR))
     (192 16
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (163 117 (:REWRITE DEFAULT-CDR))
     (112 16 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (108 90 (:REWRITE DEFAULT-CAR))
     (102 102 (:TYPE-PRESCRIPTION O-P))
     (96 16 (:REWRITE O-INFP->NEQ-0))
     (96 16 (:DEFINITION RP::RP-TRANS-LST))
     (80 80
         (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (76 16 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (56 4 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (51 51 (:REWRITE O-P-DEF-O-FINP-1))
     (48 48 (:TYPE-PRESCRIPTION O-FINP))
     (48 48 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (48 16 (:REWRITE O-FIRST-EXPT-O-INFP))
     (48 4 (:DEFINITION RP::IS-SYNP$INLINE))
     (32 16 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (30 15
         (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (24 4
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (15 15 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (15 15 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (12 12
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (12 4 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (12 4 (:REWRITE CAR-OF-APPEND))
     (8 8
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (8 8 (:REWRITE CONSP-OF-APPEND))
     (4 4
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (4 4
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (4 4 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (4 4
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (4 4
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (4 4 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
     (4 4
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP)))
(RP::APPEND-RETURNS-BIT-LIST-LISTP-WITH-STRIP-CDRS
     (385 26
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (350 107 (:REWRITE O-P-O-INFP-CAR))
     (308 180 (:REWRITE DEFAULT-CDR))
     (307 26
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (215 4 (:REWRITE RP::BIT-LISTP-LEMMA))
     (177 26 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (170 137 (:REWRITE DEFAULT-CAR))
     (162 162 (:TYPE-PRESCRIPTION O-P))
     (151 26 (:DEFINITION RP::RP-TRANS-LST))
     (130 130
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (123 26 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (96 16 (:REWRITE O-INFP->NEQ-0))
     (81 81 (:REWRITE O-P-DEF-O-FINP-1))
     (78 78 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (56 4 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (48 48 (:TYPE-PRESCRIPTION O-FINP))
     (48 16 (:REWRITE O-FIRST-EXPT-O-INFP))
     (48 4 (:DEFINITION RP::IS-SYNP$INLINE))
     (36 18
         (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (32 16 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (24 4
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (18 18 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (18 18 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (15 5 (:REWRITE CAR-OF-APPEND))
     (12 12
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (12 4 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (10 10 (:REWRITE CONSP-OF-APPEND))
     (8 8
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (5 5 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
     (4 4
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (4 4
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (4 4 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (4 4
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (4 4
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (4 4
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (4 4 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (4 4
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP)))
(RP::APPEND-RETURNS-BIT-LISTP
     (654 2 (:REWRITE RP::BIT-LISTP-LEMMA-2))
     (556 369 (:REWRITE DEFAULT-CDR))
     (347 244 (:REWRITE DEFAULT-CAR))
     (326 19
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (300 212 (:REWRITE O-P-O-INFP-CAR))
     (278 2 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (272 2 (:DEFINITION RP::PP-TERM-P))
     (269 19
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (227 14 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (200 13 (:DEFINITION RP::IS-SYNP$INLINE))
     (164 4 (:DEFINITION RP::RP-TRANS))
     (154 77
          (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (108 20 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (108 18 (:REWRITE O-INFP->NEQ-0))
     (103 103
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (77 77 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (77 77 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (72 4 (:DEFINITION RP::TRANS-LIST))
     (70 70 (:TYPE-PRESCRIPTION O-FINP))
     (69 69 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (68 14 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (62 14
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (60 4
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (57 57 (:REWRITE CONSP-OF-APPEND))
     (56 56 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (56 16 (:REWRITE O-P-DEF-O-FINP-1))
     (54 18 (:REWRITE O-FIRST-EXPT-O-INFP))
     (48 4 (:DEFINITION RP::INCLUDE-FNC))
     (44 44
         (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (42 14 (:REWRITE CAR-OF-APPEND))
     (36 18 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (32 4 (:DEFINITION RP::IS-FALIST))
     (30 14 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (30 14
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (30 14
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (30 14
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (30 14 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (30 5
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (29 13
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (20 8 (:DEFINITION QUOTEP))
     (15 15
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (14 14 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
     (13 13
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (13 13
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (10 10
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (8 4 (:REWRITE RP::EVAL-OF-BIT-OF))
     (8 4 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (8 4 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (8 4 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (8 4 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (8 4 (:REWRITE RP::EVAL-OF-BINARY-?))
     (8 4 (:REWRITE RP::EVAL-OF----))
     (6 2 (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (4 4 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (4 4 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (4 4 (:REWRITE FN-CHECK-DEF-NOT-QUOTE)))
(RP::APPEND-EQUAL (1764 6
                        (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
                  (1726 2 (:DEFINITION TRUE-LISTP))
                  (1192 4 (:DEFINITION RP::RP-TERM-LISTP))
                  (1138 8
                        (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
                  (1120 8 (:DEFINITION QUOTEP))
                  (1098 12
                        (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
                  (1094 2 (:DEFINITION APPLY$-BADGEP))
                  (860 8 (:DEFINITION SUBSETP-EQUAL))
                  (700 60 (:DEFINITION MEMBER-EQUAL))
                  (566 8
                       (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
                  (544 2 (:DEFINITION RP::RP-TERMP))
                  (490 490 (:REWRITE DEFAULT-CDR))
                  (478 20 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
                  (440 32
                       (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
                  (414 2 (:DEFINITION RP::FALIST-CONSISTENT))
                  (322 2
                       (:DEFINITION RP::FALIST-CONSISTENT-AUX))
                  (230 230 (:REWRITE DEFAULT-CAR))
                  (120 120 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
                  (104 104 (:REWRITE SUBSETP-IMPLIES-MEMBER))
                  (96 96
                      (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
                  (84 24 (:REWRITE O-P-O-INFP-CAR))
                  (74 74 (:TYPE-PRESCRIPTION RP::RP-TERMP))
                  (70 4 (:DEFINITION NATP))
                  (64 64
                      (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
                  (56 56 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
                  (50 6 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
                  (40 40 (:TYPE-PRESCRIPTION O-P))
                  (40 20
                      (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
                  (38 6 (:DEFINITION BITP))
                  (30 30 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
                  (26 26
                      (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
                  (24 10 (:REWRITE RP::IS-IF-RP-TERMP))
                  (24 2 (:REWRITE RP::LEN-TO-CONSP))
                  (20 20 (:TYPE-PRESCRIPTION BINARY-APPEND))
                  (20 20
                      (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
                  (20 20 (:REWRITE O-P-DEF-O-FINP-1))
                  (20 10
                      (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
                  (20 2 (:REWRITE ZP-OPEN))
                  (18 18
                      (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
                  (18 18
                      (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
                  (16 16 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
                  (16 6 (:REWRITE RP::RP-TERMP-CADR))
                  (12 2 (:DEFINITION ALL-NILS))
                  (10 10 (:TYPE-PRESCRIPTION ALL-NILS))
                  (10 4 (:REWRITE DEFAULT-<-2))
                  (10 2
                      (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
                  (8 8 (:TYPE-PRESCRIPTION QUOTEP))
                  (8 4 (:REWRITE RP::RP-TERMP-CADDR))
                  (8 4 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
                  (8 4
                     (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
                  (8 2 (:DEFINITION WEAK-APPLY$-BADGE-P))
                  (6 6 (:TYPE-PRESCRIPTION BITP))
                  (6 6
                     (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
                  (4 4 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
                  (4 4 (:REWRITE DEFAULT-<-1))
                  (4 4 (:LINEAR LEN-WHEN-PREFIXP))
                  (4 2
                     (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                  (4 2
                     (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
                  (4 2
                     (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
                  (2 2 (:TYPE-PRESCRIPTION ZP))
                  (2 2
                     (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
                  (2 2
                     (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
                  (2 2 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                  (2 2
                     (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                  (2 2
                     (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
                  (2 2 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                  (2 2 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::APPEND-EQUAL2 (240 96
                        (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
                   (144 96 (:TYPE-PRESCRIPTION BINARY-APPEND))
                   (96 96 (:TYPE-PRESCRIPTION TRUE-LISTP)))
(RP::BITP-OF-EVAL-OF-PP-LISTS-TO-TERM-AUX
     (1648 1474 (:REWRITE DEFAULT-CDR))
     (1323 1015 (:REWRITE DEFAULT-CAR))
     (1248 860 (:REWRITE O-P-O-INFP-CAR))
     (1208 81 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (1052 73 (:DEFINITION RP::IS-SYNP$INLINE))
     (792 44 (:DEFINITION RP::TRANS-LIST))
     (572 44
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (440 44 (:DEFINITION RP::INCLUDE-FNC))
     (337 79 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (273 81
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (236 76 (:REWRITE O-P-DEF-O-FINP-1))
     (170 31 (:REWRITE O-INFP->NEQ-0))
     (168 168
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (148 148
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (145 145 (:TYPE-PRESCRIPTION O-FINP))
     (145 81 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (145 81
          (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (145 81
          (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (145 81 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (144 12
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (137 73
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (108 12
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (88 44 (:REWRITE RP::EVAL-OF-BIT-OF))
     (88 44 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (88 44 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (88 44 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (88 44 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (88 44 (:REWRITE RP::EVAL-OF-BINARY-?))
     (88 44 (:REWRITE RP::EVAL-OF----))
     (81 27 (:REWRITE O-FIRST-EXPT-O-INFP))
     (78 13
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (75 75
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (73 73
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (72 18 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (54 27 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (44 44 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (44 44 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (44 44 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (42 24
         (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (39 39
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (26 26
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (2 2
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF)))
(RP::EVAL-OF-APPEND-OF-PP-LISTS-TO-TERM-AUX
     (1001 893 (:REWRITE DEFAULT-CDR))
     (839 629 (:REWRITE DEFAULT-CAR))
     (630 35 (:DEFINITION RP::TRANS-LIST))
     (439 41 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (362 30 (:DEFINITION RP::IS-SYNP$INLINE))
     (338 338
          (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (288 29
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (215 22 (:DEFINITION RP::INCLUDE-FNC))
     (158 79
          (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (150 150 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (128 16 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
     (120 10
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (97 37 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (96 96 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (94 94
         (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (90 10
         (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (88 22 (:REWRITE O-P-O-INFP-CAR))
     (79 79 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (79 79 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (51 29 (:REWRITE RP::EVAL-OF-BIT-OF))
     (51 29 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (51 29 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (51 29 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (51 29 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (51 29 (:REWRITE RP::EVAL-OF-BINARY-?))
     (51 29 (:REWRITE RP::EVAL-OF----))
     (49 16 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (48 8
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (41 41 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (41 41
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (41 41
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (41 41 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (38 38
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (35 35 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (32 16 (:REWRITE CAR-OF-APPEND))
     (30 30
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (30 30
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (29 29 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (29 29 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (24 24
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (22 22 (:REWRITE O-P-DEF-O-FINP-1))
     (22 22
         (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
     (16 16
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (4 4
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF)))
(RP::INTEGERP-OF-EVAL-OF-PP-LISTS-TO-TERM-AUX
     (2128 21 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (801 728 (:REWRITE DEFAULT-CDR))
     (795 6 (:DEFINITION RP::BIT-LISTP))
     (792 3
          (:REWRITE RP::BITP-OF-EVAL-OF-PP-LISTS-TO-TERM-AUX))
     (705 1 (:REWRITE RP::BIT-LISTP-LEMMA-2))
     (643 469 (:REWRITE O-P-O-INFP-CAR))
     (556 450 (:REWRITE DEFAULT-CAR))
     (556 4 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (544 4 (:DEFINITION RP::PP-TERM-P))
     (486 35 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (423 27 (:DEFINITION RP::IS-SYNP$INLINE))
     (198 11 (:DEFINITION RP::TRANS-LIST))
     (151 34 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (143 35
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (141 11
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (132 11
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (118 28 (:REWRITE O-P-DEF-O-FINP-1))
     (112 112 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (108 11 (:DEFINITION RP::INCLUDE-FNC))
     (99 11
         (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (88 88
         (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (77 77
         (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (72 18 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (71 35 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (71 35
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (71 35
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (71 35 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (66 66 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (64 33
         (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (63 27
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (56 56 (:TYPE-PRESCRIPTION O-P))
     (42 7
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (36 36 (:TYPE-PRESCRIPTION O-FINP))
     (28 28
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (27 27
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (27 27 (:DEFINITION BITP))
     (24 24 (:TYPE-PRESCRIPTION RP::BIT-LISTP))
     (22 11 (:REWRITE RP::EVAL-OF-BIT-OF))
     (22 11 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (22 11 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (22 11 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (22 11 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (22 11 (:REWRITE RP::EVAL-OF-BINARY-?))
     (22 11 (:REWRITE RP::EVAL-OF----))
     (21 21
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (21 21 (:TYPE-PRESCRIPTION BITP))
     (21 21
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (14 14
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (12 4 (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (11 11 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (11 11 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (11 11 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (1 1
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF)))
(RP::INTEGERP-OF-EVAL-OF-PP-LISTS-TO-TERM
     (814 569 (:REWRITE DEFAULT-CDR))
     (541 408 (:REWRITE DEFAULT-CAR))
     (420 10 (:REWRITE RP::BIT-LISTP-LEMMA))
     (418 31
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (398 125 (:REWRITE O-P-O-INFP-CAR))
     (325 31
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (298 24 (:DEFINITION RP::BIT-LISTP))
     (278 2 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (272 2 (:DEFINITION RP::PP-TERM-P))
     (253 253
          (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (233 151 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (212 16 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (182 182 (:TYPE-PRESCRIPTION O-P))
     (182 31 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (180 15 (:DEFINITION RP::IS-SYNP$INLINE))
     (179 57
          (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (171 171
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (144 8 (:DEFINITION RP::TRANS-LIST))
     (140 31 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (105 105
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (91 91 (:REWRITE O-P-DEF-O-FINP-1))
     (88 8
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (64 8 (:DEFINITION RP::INCLUDE-FNC))
     (56 56 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (45 15 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (45 1
         (:REWRITE RP::INTEGERP-OF-EVAL-OF-PP-LISTS-TO-TERM-AUX))
     (44 44
         (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (42 7
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (21 21
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (19 1 (:DEFINITION INTEGER-LISTP))
     (16 16
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (16 16 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (16 16
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (16 16
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (16 16 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (16 8 (:REWRITE RP::EVAL-OF-BIT-OF))
     (16 8 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (16 8 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (16 8 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (16 8 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (16 8 (:REWRITE RP::EVAL-OF-BINARY-?))
     (16 8 (:REWRITE RP::EVAL-OF----))
     (15 15
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (15 15
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (14 14
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (8 8 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (8 8 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (8 8 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (6 2 (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (5 5 (:TYPE-PRESCRIPTION INTEGER-LISTP))
     (3 3
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (1 1
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF)))
(RP::INTEGERP-OF-EVAL-OF-PP-LISTS-TO-TERM-FORWARD-CHAINING
     (60 45 (:REWRITE DEFAULT-CDR))
     (41 1 (:DEFINITION RP::RP-EVLT-LST-LST))
     (38 30 (:REWRITE DEFAULT-CAR))
     (37 1 (:DEFINITION RP::RP-TRANS))
     (31 10 (:REWRITE O-P-O-INFP-CAR))
     (28 2 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (24 2 (:DEFINITION RP::IS-SYNP$INLINE))
     (22 1 (:DEFINITION RP::PP-LISTS-TO-TERM-P+))
     (20 1 (:DEFINITION RP::BIT-LIST-LISTP))
     (18 1 (:DEFINITION RP::TRANS-LIST))
     (16 1
         (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (14 14 (:TYPE-PRESCRIPTION O-P))
     (14 1 (:DEFINITION RP::BIT-LISTP))
     (13 13
         (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (13 1
         (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (11 6 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (11 1
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (8 1 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (8 1 (:DEFINITION STRIP-CDRS))
     (8 1 (:DEFINITION RP::IS-FALIST))
     (8 1 (:DEFINITION RP::INCLUDE-FNC))
     (7 7
        (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (7 7 (:REWRITE O-P-DEF-O-FINP-1))
     (7 1 (:DEFINITION RP::RP-TRANS-LST))
     (7 1 (:DEFINITION BITP))
     (6 6 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (6 2 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (6 1 (:REWRITE O-INFP->NEQ-0))
     (6 1
        (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (5 2 (:DEFINITION QUOTEP))
     (5 1 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (3 3 (:TYPE-PRESCRIPTION O-FINP))
     (3 3 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (3 1 (:REWRITE O-FIRST-EXPT-O-INFP))
     (2 2 (:TYPE-PRESCRIPTION STRIP-CDRS))
     (2 2
        (:TYPE-PRESCRIPTION RP::RP-EVLT-LST-LST))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (2 2
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (2 2
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (2 2 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (2 2
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (2 2
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (2 2
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (2 2 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (2 2
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (2 1 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (2 1 (:REWRITE RP::EVAL-OF-BIT-OF))
     (2 1 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (2 1 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (2 1 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (2 1 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (2 1 (:REWRITE RP::EVAL-OF-BINARY-?))
     (2 1 (:REWRITE RP::EVAL-OF----))
     (1 1 (:TYPE-PRESCRIPTION RP::BIT-LISTP))
     (1 1 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (1 1 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (1 1 (:REWRITE FN-CHECK-DEF-NOT-QUOTE)))
(RP::PP-LISTS-TO-TERM-OF-APPLY-SIGN-TO-PP-LISTS
     (1931 1314 (:REWRITE DEFAULT-CDR))
     (1524 1048 (:REWRITE DEFAULT-CAR))
     (922 316 (:REWRITE O-P-O-INFP-CAR))
     (642 14 (:REWRITE RP::BIT-LISTP-LEMMA))
     (614 34 (:DEFINITION RP::TRANS-LIST))
     (590 36 (:DEFINITION RP::BIT-LISTP))
     (556 556
          (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (535 47 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (518 38
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (446 37 (:DEFINITION RP::IS-SYNP$INLINE))
     (404 38
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (381 278 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (311 32
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (242 242
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (242 42 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (227 26 (:DEFINITION RP::INCLUDE-FNC))
     (222 78
          (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (202 202 (:REWRITE O-P-DEF-O-FINP-1))
     (196 38 (:DEFINITION BITP))
     (188 42 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (180 180
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (148 26 (:REWRITE O-INFP->NEQ-0))
     (117 43 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (72 72 (:TYPE-PRESCRIPTION O-FINP))
     (72 24 (:REWRITE O-FIRST-EXPT-O-INFP))
     (66 11
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (58 32 (:REWRITE RP::EVAL-OF-BIT-OF))
     (58 32 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (58 32 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (58 32 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (58 32 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (58 32 (:REWRITE RP::EVAL-OF-BINARY-?))
     (58 32 (:REWRITE RP::EVAL-OF----))
     (48 24 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (47 47 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (47 47
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (47 47
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (47 47 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (44 44
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (37 37
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (37 37
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (34 34 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (33 33
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (32 32 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (32 32 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (22 22
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (12 1 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (4 4
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF)))
(RP::PP-LISTS-TO-TERM-OF-APPEND
     (1873 643 (:REWRITE O-P-O-INFP-CAR))
     (1800 100 (:DEFINITION RP::TRANS-LIST))
     (1417 122 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (1315 1315
           (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (1190 99 (:DEFINITION RP::IS-SYNP$INLINE))
     (1065 68 (:DEFINITION RP::BIT-LISTP))
     (938 66
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (876 96
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (864 18 (:REWRITE RP::BIT-LISTP-LEMMA))
     (826 619 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (740 66
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (624 78 (:DEFINITION RP::INCLUDE-FNC))
     (552 72 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
     (486 486
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (454 74 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (420 420
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (410 410 (:REWRITE O-P-DEF-O-FINP-1))
     (397 71 (:DEFINITION BITP))
     (337 74 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (315 117 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (312 52 (:REWRITE O-INFP->NEQ-0))
     (301 111
          (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (192 96 (:REWRITE CAR-OF-APPEND))
     (174 96 (:REWRITE RP::EVAL-OF-BIT-OF))
     (174 96 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (174 96 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (174 96 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (174 96 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (174 96 (:REWRITE RP::EVAL-OF-BINARY-?))
     (174 96 (:REWRITE RP::EVAL-OF----))
     (156 156 (:TYPE-PRESCRIPTION O-FINP))
     (156 52 (:REWRITE O-FIRST-EXPT-O-INFP))
     (139 1 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (136 1 (:DEFINITION RP::PP-TERM-P))
     (126 21
          (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (122 122 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (122 122
          (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (122 122
          (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (122 122 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (120 60
          (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (107 107
          (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (104 52 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (100 100 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (99 99
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (99 99
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (96 96 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (96 96 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (63 63
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (60 60 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (60 60 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (48 48
         (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
     (42 42
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (28 28 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (22 22
         (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (12 1 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (5 5
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (3 1
        (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES)))
(RP::APPLY-SIGN-TO-PP-LISTS-OF-SIGN=NIL
     (5471 15
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (4865 5 (:DEFINITION TRUE-LISTP))
     (3647 16 (:DEFINITION RP::RP-TERM-LISTP))
     (3533 47
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (3285 47 (:DEFINITION QUOTEP))
     (3145 46
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (3118 26 (:DEFINITION APPLY$-BADGEP))
     (2470 20 (:DEFINITION SUBSETP-EQUAL))
     (2070 150 (:DEFINITION MEMBER-EQUAL))
     (1842 15 (:DEFINITION RP::RP-TERMP))
     (1745 47
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (1425 1423 (:REWRITE DEFAULT-CDR))
     (1335 50 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (1300 80
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (1035 5 (:DEFINITION RP::FALIST-CONSISTENT))
     (899 891 (:REWRITE DEFAULT-CAR))
     (805 5
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (300 300 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (260 260 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (248 71 (:REWRITE O-P-O-INFP-CAR))
     (240 240
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (175 10 (:DEFINITION NATP))
     (172 51 (:REWRITE RP::IS-IF-RP-TERMP))
     (160 160
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (140 140 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (125 15 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (122 122
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (109 109
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (96 96 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (95 15 (:DEFINITION BITP))
     (77 26 (:REWRITE RP::RP-TERMP-CADR))
     (75 30
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (62 26 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (60 5 (:REWRITE RP::LEN-TO-CONSP))
     (59 59 (:REWRITE O-P-DEF-O-FINP-1))
     (50 50
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (50 10 (:REWRITE RP::RP-TERMP-CADDDR))
     (50 5 (:REWRITE ZP-OPEN))
     (47 47 (:TYPE-PRESCRIPTION QUOTEP))
     (46 46 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (45 45
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (45 15 (:REWRITE RP::RP-TERMP-CADDR))
     (45 15 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (30 30 (:TYPE-PRESCRIPTION LEN))
     (30 5 (:DEFINITION ALL-NILS))
     (25 25 (:TYPE-PRESCRIPTION ALL-NILS))
     (25 10 (:REWRITE DEFAULT-<-2))
     (25 5
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (20 10
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (15 15 (:TYPE-PRESCRIPTION BITP))
     (15 15
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (10 10
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (10 10 (:REWRITE DEFAULT-<-1))
     (10 10 (:LINEAR LEN-WHEN-PREFIXP))
     (10 5
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (10 5
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (10 5
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (5 5 (:TYPE-PRESCRIPTION ZP))
     (5 5
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (5 5
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (5 5 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (5 5
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (5 5
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (5 5 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (5 5 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::APPLY-SIGN-TO-PP-LISTS-OF-APPEND
     (116 62 (:REWRITE DEFAULT-CAR))
     (76 34 (:REWRITE DEFAULT-CDR))
     (59 23 (:REWRITE O-P-O-INFP-CAR))
     (24 8 (:REWRITE CAR-OF-APPEND))
     (12 12 (:REWRITE O-P-DEF-O-FINP-1))
     (8 8 (:REWRITE CONSP-OF-APPEND))
     (4 4 (:REWRITE CDR-OF-APPEND-WHEN-CONSP)))
(RP::APPLY-SIGN-TO-PP-LISTS-OF-APPLY-SIGN-TO-PP-LISTS
     (123170 750
             (:REWRITE RP::APPLY-SIGN-TO-PP-LISTS-OF-SIGN=NIL))
     (122925 84 (:DEFINITION RP::PP-LISTS-P))
     (120839 264
             (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (100259 88 (:DEFINITION TRUE-LISTP))
     (83219 786
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (74745 184 (:DEFINITION RP::RP-TERM-LISTP))
     (68162 778 (:DEFINITION QUOTEP))
     (65806 712
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (65460 360 (:DEFINITION APPLY$-BADGEP))
     (53842 352 (:DEFINITION SUBSETP-EQUAL))
     (46802 2640 (:DEFINITION MEMBER-EQUAL))
     (42816 434 (:DEFINITION RP::RP-TERMP))
     (31658 31202 (:REWRITE DEFAULT-CDR))
     (31353 786
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (29338 1408
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (28114 880 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (22556 250 (:DEFINITION RP::FALIST-CONSISTENT))
     (20316 18570 (:REWRITE DEFAULT-CAR))
     (15094 136
            (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (13503 11
            (:REWRITE RP::PP-LISTS-P-OF-APPLY-SIGN-TO-PP-LISTS))
     (11742 2003 (:REWRITE RP::IS-IF-RP-TERMP))
     (7543 2419 (:REWRITE O-P-O-INFP-CAR))
     (6437 1193 (:REWRITE RP::RP-TERMP-CADR))
     (5280 5280 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (4576 4576 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (4224 4224
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (3881 602 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (3443 602 (:REWRITE RP::RP-TERMP-CADDR))
     (3410 176 (:DEFINITION NATP))
     (3285 3285
           (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (2816 2816
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (2464 2464 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (2420 264
           (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (2004 2004
           (:TYPE-PRESCRIPTION RP::PP-LISTS-P))
     (1892 264 (:DEFINITION BITP))
     (1836 1836
           (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (1708 1708 (:REWRITE O-P-DEF-O-FINP-1))
     (1592 1592 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (1502 208 (:REWRITE RP::RP-TERMP-CADDDR))
     (1452 528
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (1250 250
           (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (1078 88 (:REWRITE RP::LEN-TO-CONSP))
     (922 922 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (918 360 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (902 88 (:REWRITE ZP-OPEN))
     (880 880
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (792 792
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (778 778 (:TYPE-PRESCRIPTION QUOTEP))
     (528 528 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (528 528 (:TYPE-PRESCRIPTION LEN))
     (528 88 (:DEFINITION ALL-NILS))
     (500 500
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (440 440 (:TYPE-PRESCRIPTION ALL-NILS))
     (440 176 (:REWRITE DEFAULT-<-2))
     (396 176
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (264 264 (:TYPE-PRESCRIPTION BITP))
     (264 264
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (250 250
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (198 88
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (198 88
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (176 176 (:REWRITE DEFAULT-<-1))
     (176 176 (:LINEAR LEN-WHEN-PREFIXP))
     (176 88
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (88 88 (:TYPE-PRESCRIPTION ZP))
     (88 88
         (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (88 88 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (88 88
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (88 88
         (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (88 88 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (88 88 (:LINEAR BOUNDS-POSITION-EQUAL))
     (84 84 (:TYPE-PRESCRIPTION BOOLEANP)))
(RP::BIT-LIST-LISTP-OF-APPLY-SIGN-TO-PP-LISTS
     (305 21
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (276 87 (:REWRITE O-P-O-INFP-CAR))
     (248 158 (:REWRITE DEFAULT-CDR))
     (242 21
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (215 4 (:REWRITE RP::BIT-LISTP-LEMMA))
     (152 109 (:REWRITE DEFAULT-CAR))
     (137 21 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (126 126 (:TYPE-PRESCRIPTION O-P))
     (116 21 (:DEFINITION RP::RP-TRANS-LST))
     (105 105
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (98 21 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (70 5 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (66 11 (:REWRITE O-INFP->NEQ-0))
     (63 63 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (63 63 (:REWRITE O-P-DEF-O-FINP-1))
     (60 5 (:DEFINITION RP::IS-SYNP$INLINE))
     (33 33 (:TYPE-PRESCRIPTION O-FINP))
     (33 11 (:REWRITE O-FIRST-EXPT-O-INFP))
     (30 5
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (22 11 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (15 15
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (15 5 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (10 10
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (5 5
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (5 5
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (5 5 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (5 5
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (5 5
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (5 5 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (5 5
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP)))
(RP::SIGN-CONVERT-APPLY-SIGN-TO-PP-LISTS
     (101122 77
             (:REWRITE RP::APPLY-SIGN-TO-PP-LISTS-OF-SIGN=NIL))
     (100917 66 (:DEFINITION RP::PP-LISTS-P))
     (99402 198
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (72133 66 (:DEFINITION TRUE-LISTP))
     (68438 705
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (52328 132 (:DEFINITION RP::RP-TERM-LISTP))
     (45872 443 (:DEFINITION RP::RP-TERMP))
     (44322 500
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (44124 264 (:DEFINITION APPLY$-BADGEP))
     (35836 264 (:DEFINITION SUBSETP-EQUAL))
     (30556 1980 (:DEFINITION MEMBER-EQUAL))
     (30068 29106 (:REWRITE DEFAULT-CDR))
     (25058 705
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (23172 309 (:DEFINITION RP::FALIST-CONSISTENT))
     (19180 1056
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (19036 660 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (18466 17620 (:REWRITE DEFAULT-CAR))
     (15445 2277 (:REWRITE RP::IS-IF-RP-TERMP))
     (13479 183
            (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (7324 2284 (:REWRITE O-P-O-INFP-CAR))
     (6985 1217 (:REWRITE RP::RP-TERMP-CADR))
     (6842 854 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (6242 854 (:REWRITE RP::RP-TERMP-CADDR))
     (3960 3960 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (3432 3432 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (3310 3310
           (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (3168 3168
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (2366 132 (:DEFINITION NATP))
     (2112 2112
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (1848 1848 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (1680 1680 (:REWRITE O-P-DEF-O-FINP-1))
     (1636 206 (:REWRITE RP::RP-TERMP-CADDDR))
     (1608 1608
           (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (1597 355
           (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (1534 200
           (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (1325 225 (:DEFINITION BITP))
     (1276 2 (:REWRITE RP::RP-EVL-OF-RP-EQUAL2))
     (1202 1202 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (966 966 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (936 52 (:DEFINITION RP::TRANS-LIST))
     (934 368
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (708 66 (:REWRITE RP::LEN-TO-CONSP))
     (705 705 (:TYPE-PRESCRIPTION QUOTEP))
     (702 702
          (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (678 2
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-LOOSE))
     (660 660
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (660 264 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (654 654
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (648 648
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (603 11 (:REWRITE RP::BIT-LISTP-LEMMA))
     (602 4 (:REWRITE RP::RP-TERMP-OF-RP-TRANS))
     (589 58 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (576 66 (:REWRITE ZP-OPEN))
     (556 4 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (544 4 (:DEFINITION RP::PP-TERM-P))
     (509 33 (:DEFINITION RP::BIT-LISTP))
     (482 40 (:DEFINITION RP::IS-SYNP$INLINE))
     (441 31
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (402 312 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (396 396 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (396 396 (:TYPE-PRESCRIPTION LEN))
     (396 66 (:DEFINITION ALL-NILS))
     (355 355
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (348 31
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (330 330 (:TYPE-PRESCRIPTION ALL-NILS))
     (326 36
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (323 323 (:TYPE-PRESCRIPTION RP::PP-LISTS-P))
     (288 132 (:REWRITE DEFAULT-<-2))
     (264 132
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (234 28 (:DEFINITION RP::INCLUDE-FNC))
     (225 39 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (211 211
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (202 94
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (198 198
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (188 94
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (177 177
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (174 39 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (161 66
          (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (134 25 (:REWRITE O-INFP->NEQ-0))
     (132 132 (:REWRITE DEFAULT-<-1))
     (132 132 (:LINEAR LEN-WHEN-PREFIXP))
     (128 48 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (112 112 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (104 52
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (94 94
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (88 88
         (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (76 4 (:DEFINITION RP::RP-EQUAL))
     (72 12
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (66 66 (:TYPE-PRESCRIPTION ZP))
     (66 66 (:TYPE-PRESCRIPTION BOOLEANP))
     (66 66 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (66 66 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (66 66 (:LINEAR BOUNDS-POSITION-EQUAL))
     (64 36 (:REWRITE RP::EVAL-OF-BIT-OF))
     (64 36 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (64 36 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (64 36 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (64 36 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (64 36 (:REWRITE RP::EVAL-OF-BINARY-?))
     (64 36 (:REWRITE RP::EVAL-OF----))
     (63 63 (:TYPE-PRESCRIPTION O-FINP))
     (63 21 (:REWRITE O-FIRST-EXPT-O-INFP))
     (58 58 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (58 58
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (58 58
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (58 58 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (52 52
         (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (52 52
         (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (51 51
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (46 2 (:REWRITE RP::RP-EVLT-OF-RP-EQUAL))
     (46 2 (:REWRITE RP::RP-EVL-OF-RP-EQUAL))
     (42 21 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (36 36 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (36 36 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (24 24
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (12 12 (:TYPE-PRESCRIPTION RP::RP-EQUAL))
     (12 4 (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (10 10
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (8 8
        (:TYPE-PRESCRIPTION RP::RP-EQUAL-SUBTERMS))
     (4 4
        (:REWRITE RP::RP-EQUAL-SUBTERMS-REFLEXIVE))
     (4 4 (:REWRITE RP::RP-EQUAL-REFLEXIVE)))
(RP::BIT-LIST-P-WITH-CONSTANTS-1 (14 2 (:DEFINITION BITP))
                                 (12 2 (:REWRITE O-INFP->NEQ-0))
                                 (6 6 (:TYPE-PRESCRIPTION O-FINP))
                                 (6 2 (:REWRITE O-FIRST-EXPT-O-INFP))
                                 (4 2 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
                                 (3 3 (:REWRITE DEFAULT-CDR))
                                 (3 3 (:REWRITE DEFAULT-CAR)))
(RP::BIT-LIST-P-DEF (30 5 (:REWRITE O-INFP->NEQ-0))
                    (15 15 (:TYPE-PRESCRIPTION O-FINP))
                    (15 5 (:REWRITE O-FIRST-EXPT-O-INFP))
                    (10 5 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
                    (3 3 (:REWRITE DEFAULT-CDR))
                    (3 3 (:REWRITE DEFAULT-CAR)))
(RP::PP-LISTS-TO-TERM-AND$-DEF-1 (6 6 (:REWRITE DEFAULT-CDR))
                                 (5 5 (:REWRITE DEFAULT-CAR)))
(RP::PP-LISTS-TO-TERM-AND$-DEF-2
     (1 1
        (:REWRITE RP::PP-LISTS-TO-TERM-AND$-DEF-1))
     (1 1 (:REWRITE DEFAULT-CDR))
     (1 1 (:REWRITE DEFAULT-CAR)))
(RP::PP-LISTS-TO-TERM-AND$-DEF
     (6 6 (:REWRITE DEFAULT-CDR))
     (6 6 (:REWRITE DEFAULT-CAR))
     (1 1
        (:REWRITE RP::PP-LISTS-TO-TERM-AND$-DEF-2))
     (1 1
        (:REWRITE RP::PP-LISTS-TO-TERM-AND$-DEF-1)))
(RP::PP-LISTS-TO-TERM-P+-DEF (63 31 (:REWRITE DEFAULT-CDR))
                             (42 34 (:REWRITE DEFAULT-CAR))
                             (40 16 (:REWRITE O-P-O-INFP-CAR))
                             (16 16 (:TYPE-PRESCRIPTION O-P))
                             (8 8 (:REWRITE O-P-DEF-O-FINP-1)))
(RP::ATOM-MERGE-SORTED-AND$-LISTS
     (726 363
          (:TYPE-PRESCRIPTION RP::TRUE-LISTP-OF-MERGE-SORTED-AND$-LISTS))
     (363 363 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (138 12 (:REWRITE <<-IMPLIES-LEXORDER))
     (90 23 (:REWRITE <<-TRICHOTOMY))
     (68 68 (:TYPE-PRESCRIPTION <<))
     (57 57 (:REWRITE DEFAULT-CAR))
     (37 37 (:REWRITE DEFAULT-CDR))
     (23 23 (:REWRITE <<-TRANSITIVE))
     (22 11 (:REWRITE <<-ASYMMETRIC))
     (1 1 (:REWRITE <<-IRREFLEXIVE)))
(RP::DUMMY-LEMMA1)
(RP::EVAL-OF-LIST-TO-TERM-OF-MERGE-SORTED-AND$-LIST
     (18324 62
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (18206 88 (:DEFINITION RP::RP-TERM-LISTP))
     (12558 11740 (:REWRITE DEFAULT-CDR))
     (10034 58 (:DEFINITION RP::RP-TERMP))
     (8881 7454 (:REWRITE DEFAULT-CAR))
     (7269 143
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (6648 40 (:DEFINITION RP::FALIST-CONSISTENT))
     (6431 31
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (6393 19 (:DEFINITION APPLY$-BADGEP))
     (5863 3466 (:REWRITE O-P-O-INFP-CAR))
     (5160 48 (:DEFINITION SUBSETP-EQUAL))
     (5152 32
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (4200 360 (:DEFINITION MEMBER-EQUAL))
     (4143 143
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (4102 315 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (3654 203 (:DEFINITION RP::TRANS-LIST))
     (3516 240 (:DEFINITION RP::IS-SYNP$INLINE))
     (2868 120 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (2640 192
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (2530 46 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (2448 18 (:DEFINITION RP::PP-TERM-P))
     (1919 199
           (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (1416 152 (:DEFINITION RP::INCLUDE-FNC))
     (1179 609 (:REWRITE O-P-DEF-O-FINP-1))
     (1167 288 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (999 315
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (878 86
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (808 308
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (720 720 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (672 672
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (664 664
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (648 72
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (624 624 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (576 576
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (543 315 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (543 315
          (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (543 315
          (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (543 315 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (532 147 (:REWRITE RP::IS-IF-RP-TERMP))
     (504 504 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (468 468
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (456 456 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (396 396
          (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (384 384
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (351 199 (:REWRITE RP::EVAL-OF-BIT-OF))
     (351 199 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (351 199 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (351 199 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (351 199 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (351 199 (:REWRITE RP::EVAL-OF-BINARY-?))
     (351 199 (:REWRITE RP::EVAL-OF----))
     (350 350
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (342 29 (:REWRITE <<-IMPLIES-LEXORDER))
     (338 95 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (336 336 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (312 24 (:DEFINITION NATP))
     (308 308
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (288 288
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (284 83 (:REWRITE RP::RP-TERMP-CADR))
     (280 280
          (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (248 64 (:REWRITE RP::RP-TERMP-CADDR))
     (248 64 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (228 228 (:TYPE-PRESCRIPTION O-FINP))
     (226 57 (:REWRITE <<-TRICHOTOMY))
     (199 199 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (199 199 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (186 31
          (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (173 173
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (170 170 (:TYPE-PRESCRIPTION <<))
     (143 143 (:TYPE-PRESCRIPTION QUOTEP))
     (120 120
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (115 115 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (84 36 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (82 46
         (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (72 72 (:TYPE-PRESCRIPTION LEN))
     (72 36
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (72 12 (:REWRITE RP::LEN-TO-CONSP))
     (72 12 (:DEFINITION ALL-NILS))
     (62 62
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (62 62
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (62 19 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (60 60 (:TYPE-PRESCRIPTION ALL-NILS))
     (57 57 (:REWRITE <<-TRANSITIVE))
     (56 28 (:REWRITE <<-ASYMMETRIC))
     (48 24
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (48 12 (:REWRITE ZP-OPEN))
     (36 36
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (27 27
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (24 24 (:REWRITE DEFAULT-<-2))
     (24 24 (:REWRITE DEFAULT-<-1))
     (24 24 (:LINEAR LEN-WHEN-PREFIXP))
     (24 12
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (24 12
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (12 12 (:TYPE-PRESCRIPTION ZP))
     (12 12 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (12 12 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (12 12 (:LINEAR BOUNDS-POSITION-EQUAL))
     (1 1 (:REWRITE <<-IRREFLEXIVE)))
(RP::BIT-LISTP-OF-MERGE-SORTED-AND$-LISTS
     (2319 1710 (:REWRITE O-P-O-INFP-CAR))
     (1555 1137 (:REWRITE DEFAULT-CDR))
     (1080 614 (:REWRITE DEFAULT-CAR))
     (997 58 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (891 44 (:DEFINITION RP::IS-SYNP$INLINE))
     (788 63
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (656 16 (:DEFINITION RP::RP-TRANS))
     (619 53
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (560 8 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (544 4 (:DEFINITION RP::PP-TERM-P))
     (454 58
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (423 93 (:REWRITE O-P-DEF-O-FINP-1))
     (369 50 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (288 16 (:DEFINITION RP::TRANS-LIST))
     (287 287
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (278 139
          (:TYPE-PRESCRIPTION RP::TRUE-LISTP-OF-MERGE-SORTED-AND$-LISTS))
     (222 63 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (192 192
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (190 58 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (190 58
          (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (190 58
          (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (190 58 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (176 44
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (170 16
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (139 139 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (132 132 (:TYPE-PRESCRIPTION O-FINP))
     (132 11 (:DEFINITION RP::INCLUDE-FNC))
     (128 16 (:DEFINITION RP::IS-FALIST))
     (112 112 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (88 88
         (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (70 27 (:DEFINITION QUOTEP))
     (54 5 (:REWRITE <<-IMPLIES-LEXORDER))
     (48 48
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (44 44
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (34 9 (:REWRITE <<-TRICHOTOMY))
     (26 26 (:TYPE-PRESCRIPTION <<))
     (16 16 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (16 16 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (16 16 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (16 16 (:REWRITE RP::EVAL-OF-BIT-OF))
     (16 16 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (16 16 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (16 16 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (16 16 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (16 16 (:REWRITE RP::EVAL-OF-BINARY-?))
     (16 16 (:REWRITE RP::EVAL-OF----))
     (16 8 (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (9 9 (:REWRITE <<-TRANSITIVE))
     (8 8
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (8 4 (:REWRITE <<-ASYMMETRIC))
     (1 1 (:REWRITE <<-IRREFLEXIVE)))
(RP::BITP-BITLISTP-LEMMA
     (566 14 (:DEFINITION RP::RP-TRANS))
     (458 396 (:REWRITE DEFAULT-CDR))
     (431 279 (:REWRITE O-P-O-INFP-CAR))
     (321 19 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (289 183 (:REWRITE DEFAULT-CAR))
     (283 19 (:DEFINITION RP::IS-SYNP$INLINE))
     (252 14 (:DEFINITION RP::TRANS-LIST))
     (202 14
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (160 14 (:DEFINITION RP::INCLUDE-FNC))
     (112 14 (:DEFINITION RP::IS-FALIST))
     (92 19 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (84 34 (:REWRITE O-P-DEF-O-FINP-1))
     (84 14 (:REWRITE O-INFP->NEQ-0))
     (79 19
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (75 5 (:DEFINITION RP::BIT-LISTP))
     (70 28 (:DEFINITION QUOTEP))
     (62 62 (:TYPE-PRESCRIPTION O-FINP))
     (45 45 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (42 14 (:REWRITE O-FIRST-EXPT-O-INFP))
     (39 19 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (39 19
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (39 19
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (39 19
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (39 19 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (39 19
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (33 33
         (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (28 14 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (20 15
         (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (20 5 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (19 19
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (19 19
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (14 14 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (14 14 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (14 14 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (14 14 (:REWRITE RP::EVAL-OF-BIT-OF))
     (14 14 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (14 14 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (14 14 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (14 14 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (14 14 (:REWRITE RP::EVAL-OF-BINARY-?))
     (14 14 (:REWRITE RP::EVAL-OF----))
     (12 1
         (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (9 1
        (:DEFINITION RP::INCLUDE-FNC-SUBTERMS)))
(RP::CONSP-BIT-LISTP-LEMMA (2 2 (:LINEAR LEN-WHEN-PREFIXP))
                           (1 1 (:REWRITE ZP-OPEN))
                           (1 1 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                           (1 1 (:REWRITE DEFAULT-<-2))
                           (1 1 (:REWRITE DEFAULT-<-1))
                           (1 1 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                           (1 1 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::BIT-LISTP-OF-CUT-LIST-BY-HALF
     (552 412 (:REWRITE O-P-O-INFP-CAR))
     (290 214 (:REWRITE DEFAULT-CDR))
     (228 10 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (208 10 (:DEFINITION RP::IS-SYNP$INLINE))
     (204 17
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (194 112 (:REWRITE DEFAULT-CAR))
     (153 17
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (106 10
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (100 20 (:REWRITE O-P-DEF-O-FINP-1))
     (89 89
         (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (86 10 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (84 21 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (82 2 (:DEFINITION RP::RP-TRANS))
     (57 57 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (42 10 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (42 10
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (42 10
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (42 10
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (42 10 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (42 10
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (40 40 (:TYPE-PRESCRIPTION O-P))
     (36 2 (:DEFINITION RP::TRANS-LIST))
     (32 32 (:TYPE-PRESCRIPTION O-FINP))
     (30 2
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (28 16 (:REWRITE DEFAULT-<-2))
     (24 2 (:DEFINITION RP::INCLUDE-FNC))
     (22 10 (:REWRITE ZP-OPEN))
     (20 20 (:LINEAR LEN-WHEN-PREFIXP))
     (19 16 (:REWRITE DEFAULT-<-1))
     (16 2 (:DEFINITION RP::IS-FALIST))
     (13 13 (:REWRITE DEFAULT-+-2))
     (13 13 (:REWRITE DEFAULT-+-1))
     (12 12 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (12 4 (:REWRITE FOLD-CONSTS-IN-+))
     (10 10
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (10 10
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (10 10 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (10 10 (:LINEAR BOUNDS-POSITION-EQUAL))
     (10 4 (:DEFINITION QUOTEP))
     (2 2 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (2 2 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (2 2 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (2 2 (:REWRITE RP::EVAL-OF-BIT-OF))
     (2 2 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (2 2 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (2 2 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (2 2 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (2 2 (:REWRITE RP::EVAL-OF-BINARY-?))
     (2 2 (:REWRITE RP::EVAL-OF----))
     (2 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1 1
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (1 1
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP)))
(RP::BIT-LIST-LISTP-OF-CUT-LIST-BY-HALF
     (718 50
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (584 185 (:REWRITE O-P-O-INFP-CAR))
     (568 50
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (465 259 (:REWRITE DEFAULT-CDR))
     (375 11 (:REWRITE RP::BIT-LISTP-LEMMA))
     (318 50 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (268 50 (:DEFINITION RP::RP-TRANS-LST))
     (266 266 (:TYPE-PRESCRIPTION O-P))
     (252 100 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (250 250
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (234 50 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (218 208 (:REWRITE DEFAULT-CAR))
     (200 200
          (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (150 150
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (133 133 (:REWRITE O-P-DEF-O-FINP-1))
     (28 16 (:REWRITE DEFAULT-<-2))
     (22 10 (:REWRITE ZP-OPEN))
     (20 20 (:LINEAR LEN-WHEN-PREFIXP))
     (19 16 (:REWRITE DEFAULT-<-1))
     (13 13 (:REWRITE DEFAULT-+-2))
     (13 13 (:REWRITE DEFAULT-+-1))
     (12 12 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (12 4 (:REWRITE FOLD-CONSTS-IN-+))
     (10 10 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (10 10 (:LINEAR BOUNDS-POSITION-EQUAL))
     (2 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1 1
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (1 1
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP)))
(RP::LEMMA1 (7 7 (:REWRITE ZP-OPEN))
            (6 6 (:REWRITE DEFAULT-CAR))
            (5 5 (:REWRITE DEFAULT-CDR))
            (4 4 (:REWRITE DEFAULT-+-2))
            (4 4 (:REWRITE DEFAULT-+-1)))
(RP::EVAL-OF-CUT-LIST-BY-HALF
     (11115 25
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (11076 39 (:DEFINITION RP::RP-TERM-LISTP))
     (7435 6970 (:REWRITE DEFAULT-CDR))
     (6650 28 (:DEFINITION RP::RP-TERMP))
     (5887 61 (:REWRITE RP::BITP-BITLISTP-LEMMA))
     (5236 4396 (:REWRITE DEFAULT-CAR))
     (4368 28 (:DEFINITION RP::FALIST-CONSISTENT))
     (4138 73
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (3731 14
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (3717 7 (:DEFINITION APPLY$-BADGEP))
     (3381 21
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (3010 28 (:DEFINITION SUBSETP-EQUAL))
     (2455 73
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (2450 210 (:DEFINITION MEMBER-EQUAL))
     (2423 1151 (:REWRITE O-P-O-INFP-CAR))
     (2367 61 (:REWRITE RP::BIT-LISTP-LEMMA-2))
     (2250 125 (:DEFINITION RP::TRANS-LIST))
     (2132 62 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (2040 15 (:DEFINITION RP::PP-TERM-P))
     (1699 166 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (1673 70 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (1540 112
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (1418 104 (:DEFINITION RP::IS-SYNP$INLINE))
     (929 117
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (672 70 (:DEFINITION RP::INCLUDE-FNC))
     (524 374 (:REWRITE O-P-DEF-O-FINP-1))
     (472 159 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (420 420 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (420 420 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (409 153
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (364 364 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (346 166
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (336 336
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (336 91 (:REWRITE RP::IS-IF-RP-TERMP))
     (330 330
          (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (297 297
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (282 282 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (261 78 (:REWRITE ZP-OPEN))
     (255 255
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (252 24 (:DEFINITION RP::BIT-LISTP))
     (226 166 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (226 166
          (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (226 166
          (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (226 166 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (224 224
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (215 215
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (196 196 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (189 189
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (188 23
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (187 117 (:REWRITE RP::EVAL-OF-BIT-OF))
     (187 117 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (187 117 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (187 117 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (187 117 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (187 117 (:REWRITE RP::EVAL-OF-BINARY-?))
     (187 117 (:REWRITE RP::EVAL-OF----))
     (182 14 (:DEFINITION NATP))
     (168 49 (:REWRITE RP::RP-TERMP-CADR))
     (168 42 (:REWRITE RP::RP-TERMP-CADDR))
     (168 42 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (162 54 (:REWRITE FOLD-CONSTS-IN-+))
     (153 153
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (149 149
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (135 15
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (120 120
          (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (119 96 (:REWRITE DEFAULT-<-2))
     (117 117 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (117 117 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (115 115 (:REWRITE DEFAULT-+-2))
     (115 115 (:REWRITE DEFAULT-+-1))
     (114 19
          (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (113 113
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (108 96 (:REWRITE DEFAULT-<-1))
     (101 72
          (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (92 62
         (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (76 25 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (73 73 (:TYPE-PRESCRIPTION QUOTEP))
     (70 70
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (63 63 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (60 60 (:TYPE-PRESCRIPTION O-FINP))
     (60 60 (:LINEAR LEN-WHEN-PREFIXP))
     (49 21 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (42 21
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (42 7 (:REWRITE RP::LEN-TO-CONSP))
     (42 7 (:DEFINITION ALL-NILS))
     (38 38
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (35 35 (:TYPE-PRESCRIPTION ALL-NILS))
     (30 30 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (30 30 (:LINEAR BOUNDS-POSITION-EQUAL))
     (29 29 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (28 14
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (28 7 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (25 25
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (21 21
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (14 7
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (14 7
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (8 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (7 7
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (4 4
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (4 4
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP)))
(RP::PP-LISTS-TO-TERM-P+-WHEN-NOT-CONSP)
(RP::EVAL-OF-CUT-LIST-BY-HALF-WITH-PP-SUM
     (6000 5047 (:REWRITE DEFAULT-CDR))
     (5983 59
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (5911 4698 (:REWRITE DEFAULT-CAR))
     (3216 57 (:REWRITE RP::BIT-LISTP-LEMMA))
     (3145 95 (:DEFINITION RP::RP-TERM-LISTP))
     (3053 274
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (2918 152 (:DEFINITION RP::RP-TERMP))
     (2736 152 (:DEFINITION RP::TRANS-LIST))
     (2375 144 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (2166 231 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (2023 2023
           (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (1895 274
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (1745 145 (:DEFINITION RP::IS-SYNP$INLINE))
     (1229 149
           (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (1131 110
           (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (1125 967 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (1080 312 (:REWRITE O-P-O-INFP-CAR))
     (1064 89 (:DEFINITION RP::BIT-LISTP))
     (864 108 (:DEFINITION RP::INCLUDE-FNC))
     (857 82
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (644 214 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (634 167 (:REWRITE RP::IS-IF-RP-TERMP))
     (629 165 (:REWRITE RP::RP-TERMP-CADR))
     (626 626
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (616 213
          (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (607 607
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (570 570
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (500 500
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (499 151 (:REWRITE ZP-OPEN))
     (475 95
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (418 4 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (412 116 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (408 3 (:DEFINITION RP::PP-TERM-P))
     (348 116 (:REWRITE FOLD-CONSTS-IN-+))
     (308 28 (:REWRITE RP::BIT-LIST-P-DEF))
     (285 95 (:DEFINITION APPLY$-BADGEP))
     (257 149 (:REWRITE RP::EVAL-OF-BIT-OF))
     (257 149 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (257 149 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (257 149 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (257 149 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (257 149 (:REWRITE RP::EVAL-OF-BINARY-?))
     (257 149 (:REWRITE RP::EVAL-OF----))
     (256 256 (:REWRITE O-P-DEF-O-FINP-1))
     (251 251 (:REWRITE DEFAULT-+-2))
     (251 251 (:REWRITE DEFAULT-+-1))
     (249 249 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (238 238 (:TYPE-PRESCRIPTION QUOTEP))
     (231 231 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (231 231
          (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (231 231
          (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (231 231 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (222 37
          (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (221 172 (:REWRITE DEFAULT-<-2))
     (195 195
          (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (190 172 (:REWRITE DEFAULT-<-1))
     (190 95 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (155 147
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (149 149 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (149 149 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (147 147
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (126 14 (:DEFINITION ASSOC-EQUAL))
     (115 115
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (98 98 (:LINEAR LEN-WHEN-PREFIXP))
     (95 95 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (84 84 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (74 74
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (66 66
         (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (59 59
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (49 49 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (49 49 (:LINEAR BOUNDS-POSITION-EQUAL))
     (48 48 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (45 1
         (:REWRITE RP::INTEGERP-OF-EVAL-OF-PP-LISTS-TO-TERM-AUX))
     (22 2 (:DEFINITION RP::FALIST-CONSISTENT))
     (19 1 (:DEFINITION INTEGER-LISTP))
     (17 17
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (12 6
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (10 4 (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (8 4 (:REWRITE O-INFP->NEQ-0))
     (6 6
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (6 6
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (5 5 (:TYPE-PRESCRIPTION INTEGER-LISTP))
     (4 2 (:REWRITE RP::RP-TERMP-CADDR))
     (4 2 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (3 3
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP)))
(RP::POS-LEN-IMPLIES-FC (2 2 (:LINEAR LEN-WHEN-PREFIXP))
                        (1 1 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                        (1 1 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                        (1 1 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::BIT-LISTP-OF-SORT-AND$-LIST
     (4434 34 (:REWRITE RP::BIT-LISTP-LEMMA-2))
     (2552 2094 (:REWRITE DEFAULT-CDR))
     (1966 34 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (1904 14 (:DEFINITION RP::PP-TERM-P))
     (1819 1232 (:REWRITE DEFAULT-CAR))
     (1763 43 (:DEFINITION RP::RP-TRANS))
     (1194 778 (:REWRITE O-P-O-INFP-CAR))
     (782 54
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (774 43 (:DEFINITION RP::TRANS-LIST))
     (682 59 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (628 50
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (578 35 (:DEFINITION RP::IS-SYNP$INLINE))
     (392 392 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (344 43 (:DEFINITION RP::IS-FALIST))
     (329 35
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (308 308
          (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (292 292
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (284 82
          (:REWRITE RP::ATOM-MERGE-SORTED-AND$-LISTS))
     (252 54 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (252 21 (:DEFINITION RP::INCLUDE-FNC))
     (232 92 (:REWRITE O-P-DEF-O-FINP-1))
     (228 114
          (:TYPE-PRESCRIPTION RP::TRUE-LISTP-OF-MERGE-SORTED-AND$-LISTS))
     (227 59
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (221 53 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (207 207
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (171 64 (:DEFINITION QUOTEP))
     (115 59 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (115 59
          (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (115 59
          (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (115 59 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (114 114 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (97 97 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (91 35
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (90 8 (:REWRITE <<-IMPLIES-LEXORDER))
     (62 34
         (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (58 15 (:REWRITE <<-TRICHOTOMY))
     (56 56 (:TYPE-PRESCRIPTION O-FINP))
     (56 8
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (49 49
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (48 30 (:REWRITE DEFAULT-<-2))
     (44 44 (:TYPE-PRESCRIPTION <<))
     (44 44 (:LINEAR LEN-WHEN-PREFIXP))
     (43 43 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (40 8 (:DEFINITION APPLY$-BADGEP))
     (36 30 (:REWRITE DEFAULT-<-1))
     (35 35 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (35 35 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (35 35
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (35 35 (:REWRITE RP::EVAL-OF-BIT-OF))
     (35 35 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (35 35 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (35 35 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (35 35 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (35 35 (:REWRITE RP::EVAL-OF-BINARY-?))
     (35 35 (:REWRITE RP::EVAL-OF----))
     (32 8 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (24 6 (:REWRITE RP::FLOOR-OF-TWO-IS-LESS))
     (22 22 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (22 22 (:LINEAR BOUNDS-POSITION-EQUAL))
     (18 9 (:REWRITE DEFAULT-UNARY-MINUS))
     (18 9 (:REWRITE DEFAULT-+-2))
     (15 15 (:REWRITE <<-TRANSITIVE))
     (14 7 (:REWRITE <<-ASYMMETRIC))
     (9 9 (:REWRITE DEFAULT-+-1))
     (8 8 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (6 6
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (1 1 (:REWRITE <<-IRREFLEXIVE)))
(RP::EVAL-OF-LIST-TO-TERM-OF-SORT-AND$-LIST
     (1430 198
           (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (1010 202 (:DEFINITION RP::TRANS-LIST))
     (883 281 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (880 176 (:DEFINITION RP::INCLUDE-FNC))
     (869 293 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (636 636
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (523 523
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (520 52 (:REWRITE RP::RP-EQUAL-IS-SYMMETRIC))
     (507 17 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (470 10 (:DEFINITION RP::PP-TERM-P))
     (426 71 (:REWRITE O-INFP->NEQ-0))
     (420 37 (:REWRITE <<-IMPLIES-LEXORDER))
     (414 69
          (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (364 52 (:DEFINITION RP::RP-EQUAL))
     (349 35
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (335 293 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (335 293
          (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (335 293
          (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (335 293 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (312 26 (:REWRITE RP::RP-EVLT-OF-RP-EQUAL))
     (312 26 (:REWRITE RP::RP-EVL-OF-RP-EQUAL))
     (306 306 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (301 259
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (297 259 (:DEFINITION RP::IS-SYNP$INLINE))
     (289 289
          (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (280 280 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (272 70 (:REWRITE <<-TRICHOTOMY))
     (259 259
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (244 35
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (220 220
          (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (213 213 (:TYPE-PRESCRIPTION O-FINP))
     (213 71 (:REWRITE O-FIRST-EXPT-O-INFP))
     (207 207
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (206 206 (:TYPE-PRESCRIPTION <<))
     (198 198 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (198 198 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (198 198 (:REWRITE RP::EVAL-OF-BIT-OF))
     (198 198 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (198 198 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (198 198 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (198 198 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (198 198 (:REWRITE RP::EVAL-OF-BINARY-?))
     (198 198 (:REWRITE RP::EVAL-OF----))
     (188 188
          (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (156 156 (:TYPE-PRESCRIPTION RP::RP-EQUAL))
     (156 39 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (156 26 (:REWRITE RP::RP-EVL-OF-RP-EQUAL2))
     (142 71 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (138 138
          (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (126 68 (:REWRITE DEFAULT-<-2))
     (104 104
          (:TYPE-PRESCRIPTION RP::RP-EQUAL-SUBTERMS))
     (104 52 (:REWRITE RP::RP-TERMP-OF-RP-TRANS))
     (104 26
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-LOOSE))
     (78 78 (:LINEAR LEN-WHEN-PREFIXP))
     (73 68 (:REWRITE DEFAULT-<-1))
     (70 70 (:REWRITE <<-TRANSITIVE))
     (66 33 (:REWRITE <<-ASYMMETRIC))
     (54 54
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (52 52
         (:REWRITE RP::RP-EQUAL-SUBTERMS-REFLEXIVE))
     (52 52 (:REWRITE RP::RP-EQUAL-REFLEXIVE))
     (39 39 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (39 39 (:LINEAR BOUNDS-POSITION-EQUAL))
     (37 17
         (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (28 14 (:REWRITE DEFAULT-UNARY-MINUS))
     (28 14 (:REWRITE DEFAULT-+-2))
     (20 5 (:REWRITE RP::FLOOR-OF-TWO-IS-LESS))
     (14 14 (:REWRITE DEFAULT-+-1))
     (12 12
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (4 4 (:REWRITE <<-IRREFLEXIVE)))
(RP::TWO-PP-LIST-CANCEL-EACH-OTHER
     (52 25 (:REWRITE DEFAULT-+-2))
     (36 25 (:REWRITE DEFAULT-+-1))
     (30 1 (:REWRITE O<=-O-FINP-DEF))
     (24 6 (:REWRITE COMMUTATIVITY-OF-+))
     (24 6 (:DEFINITION INTEGER-ABS))
     (20 5 (:REWRITE O-P-O-INFP-CAR))
     (19 11 (:REWRITE DEFAULT-CAR))
     (16 8 (:REWRITE DEFAULT-CDR))
     (12 3 (:DEFINITION LENGTH))
     (9 7 (:REWRITE DEFAULT-<-2))
     (9 3 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (8 8 (:REWRITE FOLD-CONSTS-IN-+))
     (8 7 (:REWRITE DEFAULT-<-1))
     (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
     (6 3
        (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
     (5 5 (:REWRITE O-P-DEF-O-FINP-1))
     (4 4
        (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-3))
     (4 1 (:REWRITE AC-<))
     (3 3 (:TYPE-PRESCRIPTION BITP))
     (3 3
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (3 3 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (3 3 (:REWRITE INTEGERP==>NUMERATOR-=-X))
     (3 3 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
     (3 3
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (3 3
        (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
     (3 3 (:REWRITE DEFAULT-REALPART))
     (3 3 (:REWRITE DEFAULT-NUMERATOR))
     (3 3 (:REWRITE DEFAULT-IMAGPART))
     (3 3 (:REWRITE DEFAULT-DENOMINATOR))
     (3 3
        (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-2))
     (3 3 (:DEFINITION BITP))
     (2 2
        (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-1))
     (2 2
        (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-0))
     (2 1 (:REWRITE O-INFP-O-FINP-O<=))
     (1 1
        (:REWRITE |a < b & b < c  =>  a < c|)))
(RP::WHEN-SORT-AND$-LIST-IS-EQUAL-WITH-OPPOSITE-SIGNS
     (2074 7 (:DEFINITION RP::RP-TERMP))
     (1449 7 (:DEFINITION RP::FALIST-CONSISTENT))
     (1188 2 (:REWRITE RP::RP-EVL-OF-RP-EQUAL2))
     (1150 1105 (:REWRITE DEFAULT-CDR))
     (1127 7
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (875 3
          (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (856 1 (:DEFINITION TRUE-LISTP))
     (788 707 (:REWRITE DEFAULT-CAR))
     (634 2
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-LOOSE))
     (611 27 (:DEFINITION QUOTEP))
     (592 10
          (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (589 2 (:DEFINITION RP::RP-TERM-LISTP))
     (558 4 (:REWRITE RP::RP-TERMP-OF-RP-TRANS))
     (542 4
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (540 1 (:DEFINITION APPLY$-BADGEP))
     (448 12 (:DEFINITION RP::RP-TRANS))
     (430 4 (:DEFINITION SUBSETP-EQUAL))
     (350 30 (:DEFINITION MEMBER-EQUAL))
     (295 10
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (294 84 (:REWRITE O-P-O-INFP-CAR))
     (239 10 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (220 16
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (216 12 (:DEFINITION RP::TRANS-LIST))
     (157 157 (:TYPE-PRESCRIPTION RP::RP-TERMP))
     (115 11 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (96 12 (:DEFINITION RP::IS-FALIST))
     (96 8 (:DEFINITION RP::IS-SYNP$INLINE))
     (88 4 (:REWRITE RP::RP-EQUAL-IS-SYMMETRIC))
     (76 4 (:DEFINITION RP::RP-EQUAL))
     (70 70 (:REWRITE O-P-DEF-O-FINP-1))
     (63 63
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (60 60 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (60 29 (:REWRITE RP::IS-IF-RP-TERMP))
     (58 58 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (58 8
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (55 21
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (52 52 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (48 48
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (48 2 (:REWRITE RP::RP-EVLT-OF-RP-EQUAL))
     (48 2 (:REWRITE RP::RP-EVL-OF-RP-EQUAL))
     (45 45
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (40 5 (:DEFINITION RP::INCLUDE-FNC))
     (36 3
         (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (34 2 (:DEFINITION NATP))
     (32 32
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (32 15 (:REWRITE RP::RP-TERMP-CADR))
     (28 28 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (28 14 (:REWRITE RP::RP-TERMP-CADDR))
     (28 14 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (27 11 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (27 3
         (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (25 25
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (25 25
         (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (24 24 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (23 23
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (21 21
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (18 3 (:REWRITE O-INFP->NEQ-0))
     (18 3
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (15 3 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (13 13 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (13 8 (:REWRITE RP::EVAL-OF-BIT-OF))
     (13 8 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (13 8 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (13 8 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (13 8 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (13 8 (:REWRITE RP::EVAL-OF-BINARY-?))
     (13 8 (:REWRITE RP::EVAL-OF----))
     (12 12 (:TYPE-PRESCRIPTION RP::RP-EQUAL))
     (12 3 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (12 3 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (11 11 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (11 11
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (11 11
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (11 11
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (11 11 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (10 10 (:TYPE-PRESCRIPTION QUOTEP))
     (10 10
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (9 9 (:TYPE-PRESCRIPTION O-FINP))
     (9 3 (:REWRITE O-FIRST-EXPT-O-INFP))
     (9 3 (:DEFINITION RP::RP-TRANS-LST))
     (8 8
        (:TYPE-PRESCRIPTION RP::RP-EQUAL-SUBTERMS))
     (8 8
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (8 8 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (8 8 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (6 6 (:TYPE-PRESCRIPTION LEN))
     (6 6
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (6 3 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (6 3
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (6 3
        (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (6 1 (:REWRITE RP::LEN-TO-CONSP))
     (6 1 (:DEFINITION ALL-NILS))
     (5 5 (:TYPE-PRESCRIPTION ALL-NILS))
     (4 4
        (:REWRITE RP::RP-EQUAL-SUBTERMS-REFLEXIVE))
     (4 4 (:REWRITE RP::RP-EQUAL-REFLEXIVE))
     (4 2
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (4 1 (:REWRITE ZP-OPEN))
     (4 1 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (3 3
        (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (3 3
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (2 2 (:TYPE-PRESCRIPTION BITP))
     (2 2 (:REWRITE DEFAULT-<-2))
     (2 2 (:REWRITE DEFAULT-<-1))
     (2 2 (:LINEAR LEN-WHEN-PREFIXP))
     (2 1
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (1 1 (:TYPE-PRESCRIPTION ZP))
     (1 1 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (1 1 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (1 1 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::TWO-PP-LIST-CANCEL-EACH-OTHER-IMPLIES
     (20287 54
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (18007 18 (:DEFINITION TRUE-LISTP))
     (13351 50 (:DEFINITION RP::RP-TERM-LISTP))
     (13088 154
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (11552 138
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (11470 86 (:DEFINITION APPLY$-BADGEP))
     (9180 72 (:DEFINITION SUBSETP-EQUAL))
     (7978 7241 (:REWRITE DEFAULT-CDR))
     (7740 540 (:DEFINITION MEMBER-EQUAL))
     (6716 72 (:DEFINITION RP::RP-TERMP))
     (6251 154
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (5110 4624 (:REWRITE DEFAULT-CAR))
     (4932 180 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (4860 288
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (3770 22 (:DEFINITION RP::FALIST-CONSISTENT))
     (2898 18
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (2048 617 (:REWRITE O-P-O-INFP-CAR))
     (1411 19 (:REWRITE RP::BIT-LISTP-LEMMA))
     (1080 1080 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (985 283 (:REWRITE RP::IS-IF-RP-TERMP))
     (936 936 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (870 6 (:REWRITE RP::TYPE-FIX-WHEN-BITP))
     (864 864
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (834 6 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (816 6 (:DEFINITION RP::PP-TERM-P))
     (670 36 (:DEFINITION NATP))
     (668 52
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (666 37 (:DEFINITION RP::TRANS-LIST))
     (604 69 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (576 576
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (567 189 (:REWRITE RP::RP-TERMP-CADR))
     (535 535
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (520 48
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (504 504 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (484 52 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (477 477 (:REWRITE O-P-DEF-O-FINP-1))
     (386 32 (:DEFINITION RP::IS-SYNP$INLINE))
     (362 362
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (350 54 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (348 348 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (280 280
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (270 65 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (234 36 (:REWRITE RP::RP-TERMP-CADDDR))
     (230 88
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (224 24
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (209 58 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (208 86 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (204 204
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (199 199 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (197 58 (:REWRITE RP::RP-TERMP-CADDR))
     (192 38 (:REWRITE O-INFP->NEQ-0))
     (180 180
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (168 168 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (162 162
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (160 20 (:DEFINITION RP::INCLUDE-FNC))
     (156 18 (:REWRITE RP::LEN-TO-CONSP))
     (150 150 (:TYPE-PRESCRIPTION QUOTEP))
     (142 54
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (132 132
          (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (124 40 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (120 18 (:REWRITE ZP-OPEN))
     (108 108 (:TYPE-PRESCRIPTION LEN))
     (108 18 (:DEFINITION ALL-NILS))
     (90 90 (:TYPE-PRESCRIPTION O-FINP))
     (90 90 (:TYPE-PRESCRIPTION ALL-NILS))
     (90 30 (:REWRITE O-FIRST-EXPT-O-INFP))
     (86 38
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (80 80
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (76 38
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (72 36
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (72 12
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (60 36 (:REWRITE DEFAULT-<-2))
     (60 30 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (54 54
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (54 54
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (52 52 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (52 52
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (52 52
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (52 52 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (50 50 (:TYPE-PRESCRIPTION BITP))
     (48 48
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (44 24 (:REWRITE RP::EVAL-OF-BIT-OF))
     (44 24 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (44 24 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (44 24 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (44 24 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (44 24 (:REWRITE RP::EVAL-OF-BINARY-?))
     (44 24 (:REWRITE RP::EVAL-OF----))
     (44 4 (:REWRITE RP::BIT-LIST-P-DEF))
     (38 38
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (36 36 (:REWRITE DEFAULT-<-1))
     (36 36 (:LINEAR LEN-WHEN-PREFIXP))
     (24 24
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (24 24 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (24 24 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (18 18 (:TYPE-PRESCRIPTION ZP))
     (18 18 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (18 18 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (18 18 (:LINEAR BOUNDS-POSITION-EQUAL))
     (18 6 (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (18 2 (:DEFINITION ASSOC-EQUAL))
     (16 8
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (12 12
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (8 8
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (8 8
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP)))
(RP::TWO-PP-LIST-CANCEL-EACH-OTHER-IMPLIES-2
     (11495 30
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (10011 10 (:DEFINITION TRUE-LISTP))
     (7479 30 (:DEFINITION RP::RP-TERM-LISTP))
     (7442 94
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (6747 111 (:DEFINITION QUOTEP))
     (6420 70
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (6370 50 (:DEFINITION APPLY$-BADGEP))
     (5100 40 (:DEFINITION SUBSETP-EQUAL))
     (4300 300 (:DEFINITION MEMBER-EQUAL))
     (4088 3691 (:REWRITE DEFAULT-CDR))
     (3952 40 (:DEFINITION RP::RP-TERMP))
     (3557 94
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (2740 100 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (2700 160
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (2582 2314 (:REWRITE DEFAULT-CAR))
     (2114 14 (:DEFINITION RP::FALIST-CONSISTENT))
     (1610 10
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (1304 377 (:REWRITE O-P-O-INFP-CAR))
     (1055 13 (:REWRITE RP::BIT-LISTP-LEMMA))
     (948 66 (:DEFINITION RP::RP-TRANS-LST))
     (902 902 (:TYPE-PRESCRIPTION RP::RP-TERMP))
     (621 163 (:REWRITE RP::IS-IF-RP-TERMP))
     (607 15 (:DEFINITION RP::RP-TRANS))
     (600 600 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (552 40
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (520 520 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (480 480
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (432 40
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (390 20 (:DEFINITION NATP))
     (379 109 (:REWRITE RP::RP-TERMP-CADR))
     (320 320
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (309 309 (:REWRITE O-P-DEF-O-FINP-1))
     (307 307
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (284 53 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (280 280 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (270 15 (:DEFINITION RP::TRANS-LIST))
     (230 53 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (218 218
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (204 204
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (200 200 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (150 30 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (144 12 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (138 23 (:REWRITE O-INFP->NEQ-0))
     (130 20 (:REWRITE RP::RP-TERMP-CADDDR))
     (126 126
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (125 34 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (120 50 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (120 15 (:DEFINITION RP::IS-FALIST))
     (120 10 (:DEFINITION RP::IS-SYNP$INLINE))
     (113 34 (:REWRITE RP::RP-TERMP-CADDR))
     (110 40
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (109 109 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (100 100
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (94 94 (:TYPE-PRESCRIPTION QUOTEP))
     (90 90
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (80 24
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (70 30
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (69 69 (:TYPE-PRESCRIPTION O-FINP))
     (69 23 (:REWRITE O-FIRST-EXPT-O-INFP))
     (60 60 (:TYPE-PRESCRIPTION LEN))
     (60 30
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (60 10 (:REWRITE RP::LEN-TO-CONSP))
     (60 10 (:DEFINITION ALL-NILS))
     (52 52
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (50 50 (:TYPE-PRESCRIPTION ALL-NILS))
     (48 8
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (46 23 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (44 2 (:DEFINITION RP::PP-LISTS-TO-TERM-P+))
     (40 20
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (40 10 (:REWRITE ZP-OPEN))
     (38 8 (:DEFINITION ACONS))
     (30 30
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (30 30
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (30 10 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (30 6 (:REWRITE CONS-CAR-CDR))
     (24 24
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (22 2
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (20 20 (:TYPE-PRESCRIPTION BITP))
     (20 20 (:REWRITE DEFAULT-<-2))
     (20 20 (:REWRITE DEFAULT-<-1))
     (20 20 (:LINEAR LEN-WHEN-PREFIXP))
     (16 16
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (16 2 (:DEFINITION RP::INCLUDE-FNC))
     (12 12
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (12 12 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (12 12
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (12 12
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (12 12 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (10 10 (:TYPE-PRESCRIPTION ZP))
     (10 10 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (10 10 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (10 10 (:LINEAR BOUNDS-POSITION-EQUAL))
     (4 4 (:REWRITE RP::PP-LIST-ORDER-SANITY))
     (4 2 (:REWRITE RP::EVAL-OF-BIT-OF))
     (4 2 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (4 2 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (4 2 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (4 2 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (4 2 (:REWRITE RP::EVAL-OF-BINARY-?))
     (4 2 (:REWRITE RP::EVAL-OF----))
     (2 2 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (2 2 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (2 2
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF)))
(RP::ATOM-MERGE-SORTED-PP-LISTS (402 120 (:REWRITE O-P-O-INFP-CAR))
                                (392 168 (:REWRITE DEFAULT-CAR))
                                (228 76 (:REWRITE DEFAULT-CDR))
                                (94 94 (:REWRITE O-P-DEF-O-FINP-1))
                                (16 16 (:REWRITE RP::PP-LIST-ORDER-SANITY)))
(RP::PP-SUM-EQUALS-2 (11 5 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
                     (5 5
                        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
                     (5 5 (:REWRITE DEFAULT-+-2))
                     (5 5 (:REWRITE DEFAULT-+-1))
                     (3 3 (:TYPE-PRESCRIPTION BITP))
                     (3 3 (:DEFINITION BITP))
                     (2 2 (:REWRITE FOLD-CONSTS-IN-+))
                     (1 1 (:REWRITE O-INFP->NEQ-0)))
(RP::EVAL-OF-LIST-TO-TERM-OF-MERGE-SORTED-PP-LISTS
     (38227 456
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (20332 674 (:DEFINITION RP::RP-TERM-LISTP))
     (19374 1785
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (19048 1058 (:DEFINITION RP::TRANS-LIST))
     (18530 802 (:DEFINITION RP::RP-TERMP))
     (14015 1234 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (12299 1785
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (11717 971 (:DEFINITION RP::IS-SYNP$INLINE))
     (11579 3531 (:REWRITE O-P-O-INFP-CAR))
     (9308 1015
           (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (7912 625
           (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (7809 135 (:REWRITE RP::BIT-LISTP-LEMMA))
     (6645 824 (:DEFINITION RP::INCLUDE-FNC))
     (6173 557
           (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (4433 4433
           (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (4276 4276
           (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (4143 4143
           (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (3624 873 (:REWRITE RP::IS-IF-RP-TERMP))
     (3569 851 (:REWRITE RP::RP-TERMP-CADR))
     (3540 1230 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (2893 2893
           (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (2745 549
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (2718 658 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (2716 2666 (:REWRITE O-P-DEF-O-FINP-1))
     (1839 1015 (:REWRITE RP::EVAL-OF-BIT-OF))
     (1839 1015 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (1839 1015 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (1839 1015 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (1839 1015 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (1839 1015 (:REWRITE RP::EVAL-OF-BINARY-?))
     (1839 1015 (:REWRITE RP::EVAL-OF----))
     (1754 1754 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (1659 1659 (:TYPE-PRESCRIPTION QUOTEP))
     (1647 549 (:DEFINITION APPLY$-BADGEP))
     (1282 1234
           (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (1250 1234
           (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (1250 1234 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (1112 8 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (1098 549 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (1097 993
           (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (1088 8 (:DEFINITION RP::PP-TERM-P))
     (1085 1085
           (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (1015 1015
           (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (1015 1015
           (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (993 993
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (858 143
          (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (549 549 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (546 546 (:REWRITE RP::PP-LIST-ORDER-SANITY))
     (473 473
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (456 456
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (306 34 (:DEFINITION ASSOC-EQUAL))
     (286 286
          (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (242 22 (:DEFINITION RP::FALIST-CONSISTENT))
     (225 5
          (:REWRITE RP::INTEGERP-OF-EVAL-OF-PP-LISTS-TO-TERM-AUX))
     (224 224 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (176 176
          (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (95 5 (:DEFINITION INTEGER-LISTP))
     (45 15
         (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (44 22 (:REWRITE RP::RP-TERMP-CADDR))
     (44 22 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (26 26 (:TYPE-PRESCRIPTION O-FINP))
     (25 25 (:TYPE-PRESCRIPTION INTEGER-LISTP))
     (24 8 (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (10 6 (:REWRITE O-INFP->NEQ-0))
     (5 5
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (4 4
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF)))
(RP::BIT-LIST-LIST-OF-MERGE-SORTED-PP-LISTS
     (3441 1000 (:REWRITE O-P-O-INFP-CAR))
     (3156 30 (:REWRITE RP::BIT-LISTP-LEMMA))
     (1982 156 (:DEFINITION RP::RP-TRANS-LST))
     (1806 63
           (:REWRITE RP::ATOM-MERGE-SORTED-PP-LISTS))
     (1701 63
           (:DEFINITION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (1595 136 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (1557 110
           (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (1229 109
           (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (996 24 (:DEFINITION RP::RP-TRANS))
     (863 789 (:REWRITE O-P-DEF-O-FINP-1))
     (587 132 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (549 549
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (432 24 (:DEFINITION RP::TRANS-LIST))
     (365 4 (:REWRITE RP::BIT-LIST-P-DEF))
     (333 333
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (279 3 (:REWRITE RP::PP-TERM-P-IS-BITP))
     (272 2 (:DEFINITION RP::PP-TERM-P))
     (192 24 (:DEFINITION RP::IS-FALIST))
     (78 4 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (76 26 (:DEFINITION QUOTEP))
     (70 4 (:DEFINITION RP::IS-SYNP$INLINE))
     (62 62 (:TYPE-PRESCRIPTION O-FINP))
     (56 56 (:TYPE-PRESCRIPTION RP::PP-TERM-P))
     (44 44
         (:TYPE-PRESCRIPTION RP::PP-HAS-BITP-RP))
     (42 42
         (:TYPE-PRESCRIPTION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (37 37 (:REWRITE RP::PP-LIST-ORDER-SANITY))
     (32 32 (:TYPE-PRESCRIPTION BITP))
     (30 2
         (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (28 4
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (26 4 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (24 24 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (24 2 (:DEFINITION RP::INCLUDE-FNC))
     (12 4 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (12 4
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (12 4
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (12 4
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (12 4 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (12 4
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (7 3 (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (6 3 (:REWRITE RP::BIT-LISTP-LEMMA-2))
     (4 4
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (4 4
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (2 2 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (2 2 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (2 2 (:REWRITE RP::EVAL-OF-BIT-OF))
     (2 2 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (2 2 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (2 2 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (2 2 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (2 2 (:REWRITE RP::EVAL-OF-BINARY-?))
     (2 2 (:REWRITE RP::EVAL-OF----)))
(RP::BIT-LIST-LISTP-OF-SORT-PP-LISTS
     (45441 123
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (40515 41 (:DEFINITION TRUE-LISTP))
     (30285 124 (:DEFINITION RP::RP-TERM-LISTP))
     (29373 371
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (27349 381 (:DEFINITION QUOTEP))
     (26207 312
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (26000 206 (:DEFINITION APPLY$-BADGEP))
     (20766 164 (:DEFINITION SUBSETP-EQUAL))
     (17486 1230 (:DEFINITION MEMBER-EQUAL))
     (15038 139 (:DEFINITION RP::RP-TERMP))
     (14297 371
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (14207 13134 (:REWRITE DEFAULT-CDR))
     (11171 410 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (10980 656
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (8838 8172 (:REWRITE DEFAULT-CAR))
     (8487 41 (:DEFINITION RP::FALIST-CONSISTENT))
     (6601 41
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (4262 1256 (:REWRITE O-P-O-INFP-CAR))
     (2681 36 (:REWRITE RP::BIT-LISTP-LEMMA))
     (2460 2460 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (2132 2132 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (2098 142 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (1968 1968
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (1653 120
           (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (1596 499 (:REWRITE RP::IS-IF-RP-TERMP))
     (1551 82 (:DEFINITION NATP))
     (1312 1312
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (1303 115
           (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (1293 151 (:DEFINITION RP::RP-TRANS-LST))
     (1148 1148 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (1074 1074
           (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (1030 988 (:REWRITE O-P-DEF-O-FINP-1))
     (865 865
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (809 809 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (774 27
          (:REWRITE RP::ATOM-MERGE-SORTED-PP-LISTS))
     (769 294 (:REWRITE RP::RP-TERMP-CADR))
     (735 123
          (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (729 27
          (:DEFINITION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (576 131 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (575 575
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (499 188
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (494 206 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (458 82 (:REWRITE RP::RP-TERMP-CADDDR))
     (444 444
          (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (432 72 (:REWRITE O-INFP->NEQ-0))
     (420 20 (:DEFINITION RP::RP-TRANS))
     (410 410
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (393 123 (:REWRITE RP::RP-TERMP-CADDR))
     (393 123 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (380 380 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (371 371 (:TYPE-PRESCRIPTION QUOTEP))
     (369 369
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (345 345
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (246 41 (:DEFINITION ALL-NILS))
     (242 242 (:TYPE-PRESCRIPTION O-FINP))
     (227 99
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (219 11 (:REWRITE RP::BIT-LIST-P-DEF))
     (216 72 (:REWRITE O-FIRST-EXPT-O-INFP))
     (215 43
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (205 205 (:TYPE-PRESCRIPTION ALL-NILS))
     (198 99
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (192 135 (:REWRITE DEFAULT-<-2))
     (180 10 (:DEFINITION RP::TRANS-LIST))
     (164 82
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (151 135 (:REWRITE DEFAULT-<-1))
     (144 72 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (123 123
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (119 11 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (118 118 (:LINEAR LEN-WHEN-PREFIXP))
     (100 100 (:TYPE-PRESCRIPTION BITP))
     (99 99
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (82 82
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (81 9 (:DEFINITION ASSOC-EQUAL))
     (80 10 (:DEFINITION RP::IS-FALIST))
     (77 11 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (64 16 (:REWRITE RP::FLOOR-OF-TWO-IS-LESS))
     (59 59 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (59 59 (:LINEAR BOUNDS-POSITION-EQUAL))
     (55 11 (:DEFINITION RP::IS-SYNP$INLINE))
     (43 43
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (35 11
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (24 12
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (22 11 (:REWRITE DEFAULT-UNARY-MINUS))
     (22 11 (:REWRITE DEFAULT-+-2))
     (19 11 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (19 11
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (19 11
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (19 11
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (19 11 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (18 18
         (:TYPE-PRESCRIPTION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (16 16 (:REWRITE RP::PP-LIST-ORDER-SANITY))
     (12 12
         (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (12 12
         (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (11 11
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (11 11 (:REWRITE DEFAULT-+-1)))
(RP::EVAL-OF-SORT-PP-LISTS-IS-CORRECT
     (89752 334 (:DEFINITION APPLY$-BADGEP))
     (84385 270
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (74969 108 (:DEFINITION TRUE-LISTP))
     (59963 415 (:DEFINITION RP::RP-TERMP))
     (54790 398
            (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (52840 432 (:DEFINITION SUBSETP-EQUAL))
     (46803 260 (:DEFINITION RP::RP-TERM-LISTP))
     (46646 42252 (:REWRITE DEFAULT-CDR))
     (44200 3240 (:DEFINITION MEMBER-EQUAL))
     (42060 785
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (36440 638
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (35566 785
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (35397 171 (:DEFINITION RP::FALIST-CONSISTENT))
     (29488 25540 (:REWRITE DEFAULT-CAR))
     (28612 1080 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (27760 1728
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (27531 171
            (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (16004 21 (:REWRITE RP::RP-EVL-OF-RP-EQUAL2))
     (14071 4202 (:REWRITE O-P-O-INFP-CAR))
     (8425 21
           (:REWRITE RP::RP-EVL-OF-RP-EQUAL-LOOSE))
     (7621 42 (:REWRITE RP::RP-TERMP-OF-RP-TRANS))
     (6480 6480 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (5616 5616 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (5184 5184
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (5106 185
           (:DEFINITION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (5055 148
           (:REWRITE RP::ATOM-MERGE-SORTED-PP-LISTS))
     (4828 1584 (:REWRITE RP::IS-IF-RP-TERMP))
     (4032 38 (:REWRITE RP::BIT-LISTP-LEMMA))
     (3456 3456
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (3451 3209 (:REWRITE O-P-DEF-O-FINP-1))
     (3351 163 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (3078 216 (:DEFINITION NATP))
     (3024 3024 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (2456 2456
           (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (2448 136 (:DEFINITION RP::TRANS-LIST))
     (1941 745 (:REWRITE RP::RP-TERMP-CADR))
     (1900 1900 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (1840 1840
           (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (1830 914 (:REWRITE DEFAULT-+-2))
     (1809 137
           (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (1554 131 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (1539 1539
           (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (1490 324 (:REWRITE RP::RP-TERMP-CADDDR))
     (1445 515 (:REWRITE RP::RP-TERMP-CADDR))
     (1445 515 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (1443 1443 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (1418 127
           (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (1300 102 (:DEFINITION RP::IS-SYNP$INLINE))
     (1103 334
           (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (1080 1080
           (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (918 914 (:REWRITE DEFAULT-+-1))
     (884 334 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (880 40 (:REWRITE RP::RP-EQUAL-IS-SYMMETRIC))
     (810 324
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (798 42 (:DEFINITION RP::RP-EQUAL))
     (769 769 (:TYPE-PRESCRIPTION QUOTEP))
     (765 765
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (733 83
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (702 270
          (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (648 162 (:REWRITE RP::RP-TERMP-CADDDDR))
     (648 108 (:DEFINITION ALL-NILS))
     (629 147 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (603 603
          (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (576 576
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (540 540 (:TYPE-PRESCRIPTION ALL-NILS))
     (540 270
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (520 65 (:DEFINITION RP::INCLUDE-FNC))
     (503 21 (:REWRITE RP::RP-EVLT-OF-RP-EQUAL))
     (503 21 (:REWRITE RP::RP-EVL-OF-RP-EQUAL))
     (486 216
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (436 130 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (435 435
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (404 404 (:LINEAR LEN-WHEN-PREFIXP))
     (386 369 (:REWRITE DEFAULT-<-2))
     (383 369 (:REWRITE DEFAULT-<-1))
     (334 334
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (297 9
          (:REWRITE RP::TWO-PP-LIST-CANCEL-EACH-OTHER-IMPLIES-2))
     (270 270
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (270 270
          (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (232 232
          (:TYPE-PRESCRIPTION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (221 16 (:REWRITE RP::BIT-LIST-P-DEF))
     (209 209 (:TYPE-PRESCRIPTION O-FINP))
     (203 131
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (202 202 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (202 202 (:LINEAR BOUNDS-POSITION-EQUAL))
     (186 31
          (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (155 131 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (155 131
          (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (155 131
          (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (155 131 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (148 83 (:REWRITE RP::EVAL-OF-BIT-OF))
     (148 83 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (148 83 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (148 83 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (148 83 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (148 83 (:REWRITE RP::EVAL-OF-BINARY-?))
     (148 83 (:REWRITE RP::EVAL-OF----))
     (133 133
          (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (126 126 (:TYPE-PRESCRIPTION RP::RP-EQUAL))
     (84 84
         (:TYPE-PRESCRIPTION RP::RP-EQUAL-SUBTERMS))
     (83 83 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (83 83 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (62 62
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (54 6 (:DEFINITION ASSOC-EQUAL))
     (42 42
         (:REWRITE RP::RP-EQUAL-SUBTERMS-REFLEXIVE))
     (42 42 (:REWRITE RP::RP-EQUAL-REFLEXIVE))
     (34 17 (:REWRITE DEFAULT-UNARY-MINUS))
     (33 1
         (:REWRITE RP::TWO-PP-LIST-CANCEL-EACH-OTHER-IMPLIES))
     (28 28 (:REWRITE RP::PP-LIST-ORDER-SANITY))
     (14 14
         (:REWRITE RP::FLOOR-OF-LEN-IS-LESS-THAN-LST))
     (8 2 (:REWRITE O-INFP->NEQ-0))
     (3 1 (:REWRITE O-FIRST-EXPT-O-INFP))
     (2 1 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (1 1
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF)))
(RP::CONSP-OF-APPLY-SIGN (21 9 (:REWRITE DEFAULT-CAR))
                         (15 6 (:REWRITE O-P-O-INFP-CAR))
                         (9 6 (:REWRITE DEFAULT-CDR))
                         (3 3 (:REWRITE O-P-DEF-O-FINP-1)))
(RP::LEN-OF-APPLY-SIGN (62 3 (:REWRITE RP::LEN-TO-CONSP))
                       (50 3 (:REWRITE ZP-OPEN))
                       (32 32 (:LINEAR LEN-WHEN-PREFIXP))
                       (26 11 (:REWRITE DEFAULT-CDR))
                       (21 9 (:REWRITE DEFAULT-CAR))
                       (16 16 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
                       (16 16 (:LINEAR BOUNDS-POSITION-EQUAL))
                       (16 8 (:REWRITE DEFAULT-+-2))
                       (15 6 (:REWRITE O-P-O-INFP-CAR))
                       (12 6 (:REWRITE DEFAULT-<-2))
                       (8 8 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                       (8 8 (:REWRITE DEFAULT-+-1))
                       (6 6 (:REWRITE DEFAULT-<-1))
                       (3 3 (:TYPE-PRESCRIPTION ZP))
                       (3 3 (:REWRITE O-P-DEF-O-FINP-1)))
(RP::MERGE-SORTED-PP-LISTS-SIMPLE-OF-APPLY-SIGN
     (285210 816
             (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (260823 272 (:DEFINITION TRUE-LISTP))
     (190260 704 (:DEFINITION RP::RP-TERM-LISTP))
     (183805 1993
             (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (173265 1925 (:DEFINITION QUOTEP))
     (167374 2134
             (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (166297 1071 (:DEFINITION APPLY$-BADGEP))
     (132160 1088 (:DEFINITION SUBSETP-EQUAL))
     (110400 8160 (:DEFINITION MEMBER-EQUAL))
     (91876 796 (:DEFINITION RP::RP-TERMP))
     (89189 1993
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (71658 2720 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (69340 4352
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (56480 288 (:DEFINITION RP::FALIST-CONSISTENT))
     (43792 272
            (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (28473 7648 (:REWRITE O-P-O-INFP-CAR))
     (16320 16320 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (14144 14144 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (13172 444
            (:REWRITE RP::ATOM-MERGE-SORTED-PP-LISTS))
     (13056 13056
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (12432 465
            (:DEFINITION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (9693 2943 (:REWRITE RP::IS-IF-RP-TERMP))
     (9688 544 (:DEFINITION NATP))
     (8704 8704
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (8419 6203 (:REWRITE O-P-DEF-O-FINP-1))
     (7616 7616 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (6380 816
           (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (6124 6124
           (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (5028 1744 (:REWRITE RP::RP-TERMP-CADR))
     (4921 4921 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (4920 4920
           (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (4790 774 (:DEFINITION BITP))
     (3617 1489
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (3012 272 (:REWRITE RP::LEN-TO-CONSP))
     (2720 2720
           (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (2686 1071 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (2468 272 (:REWRITE ZP-OPEN))
     (2448 2448
           (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (2424 426 (:REWRITE RP::RP-TERMP-CADDDR))
     (2380 773 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (2352 2352 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (2332 773 (:REWRITE RP::RP-TERMP-CADDR))
     (1925 1925 (:TYPE-PRESCRIPTION QUOTEP))
     (1632 1632 (:TYPE-PRESCRIPTION LEN))
     (1632 272 (:DEFINITION ALL-NILS))
     (1440 288
           (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (1360 1360 (:TYPE-PRESCRIPTION ALL-NILS))
     (1234 544 (:REWRITE DEFAULT-<-2))
     (1088 544
           (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (1064 1064 (:TYPE-PRESCRIPTION O-FINP))
     (816 816
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (774 774 (:TYPE-PRESCRIPTION BITP))
     (754 356
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (712 356
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (674 674 (:REWRITE RP::PP-LIST-ORDER-SANITY))
     (576 576
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (544 544 (:REWRITE DEFAULT-<-1))
     (544 544 (:LINEAR LEN-WHEN-PREFIXP))
     (460 230
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (356 356
          (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (296 296
          (:TYPE-PRESCRIPTION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (288 288
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (272 272 (:TYPE-PRESCRIPTION ZP))
     (272 272
          (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (272 272 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (272 272 (:LINEAR BOUNDS-POSITION-EQUAL))
     (230 230
          (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (230 230
          (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP)))
(RP::MERGE-SORTED-PP-LISTS-SIMPLE-OF-APPLY-SIGN-REVERSE
     (2132 2 (:DEFINITION RP::PP-LISTS-P))
     (2102 6
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (1946 2 (:DEFINITION TRUE-LISTP))
     (1394 4 (:DEFINITION RP::RP-TERM-LISTP))
     (1352 14
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (1290 14 (:DEFINITION QUOTEP))
     (1246 16
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (1240 8 (:DEFINITION APPLY$-BADGEP))
     (988 8 (:DEFINITION SUBSETP-EQUAL))
     (828 60 (:DEFINITION MEMBER-EQUAL))
     (650 14
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (648 6 (:DEFINITION RP::RP-TERMP))
     (562 562 (:REWRITE DEFAULT-CDR))
     (534 20 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (520 32
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (414 2 (:DEFINITION RP::FALIST-CONSISTENT))
     (330 330 (:REWRITE DEFAULT-CAR))
     (322 2
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (148 148 (:TYPE-PRESCRIPTION RP::RP-TERMP))
     (120 120 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (104 104 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (96 96
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (92 26 (:REWRITE O-P-O-INFP-CAR))
     (70 4 (:DEFINITION NATP))
     (64 64
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (64 18 (:REWRITE RP::IS-IF-RP-TERMP))
     (56 56 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (50 6 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (44 44 (:TYPE-PRESCRIPTION O-P))
     (44 44
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (38 6 (:DEFINITION BITP))
     (36 36 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (34 34
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (30 12
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (26 8 (:REWRITE RP::RP-TERMP-CADR))
     (24 2 (:REWRITE RP::LEN-TO-CONSP))
     (22 22 (:REWRITE O-P-DEF-O-FINP-1))
     (20 20
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (20 8 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (20 4 (:REWRITE RP::RP-TERMP-CADDDR))
     (20 2 (:REWRITE ZP-OPEN))
     (18 18
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (18 6 (:REWRITE RP::RP-TERMP-CADDR))
     (18 6 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (16 16 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (14 14 (:TYPE-PRESCRIPTION QUOTEP))
     (12 12 (:TYPE-PRESCRIPTION LEN))
     (12 2 (:DEFINITION ALL-NILS))
     (10 10 (:TYPE-PRESCRIPTION ALL-NILS))
     (10 4 (:REWRITE DEFAULT-<-2))
     (10 2
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (8 4
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (6 6 (:TYPE-PRESCRIPTION BITP))
     (6 6
        (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (4 4 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (4 4 (:REWRITE DEFAULT-<-1))
     (4 4 (:LINEAR LEN-WHEN-PREFIXP))
     (4 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (4 2
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (4 2
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (2 2 (:TYPE-PRESCRIPTION ZP))
     (2 2
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (2 2
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (2 2 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (2 2
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (2 2
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (2 2 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (2 2 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::MERGE-SORTED-PP-LISTS-SIMPLE-OF-APPLY-SIGN-2
     (2132 2 (:DEFINITION RP::PP-LISTS-P))
     (2102 6
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (1946 2 (:DEFINITION TRUE-LISTP))
     (1394 4 (:DEFINITION RP::RP-TERM-LISTP))
     (1352 14
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (1290 14 (:DEFINITION QUOTEP))
     (1246 16
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (1240 8 (:DEFINITION APPLY$-BADGEP))
     (988 8 (:DEFINITION SUBSETP-EQUAL))
     (828 60 (:DEFINITION MEMBER-EQUAL))
     (650 14
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (648 6 (:DEFINITION RP::RP-TERMP))
     (562 562 (:REWRITE DEFAULT-CDR))
     (534 20 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (520 32
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (414 2 (:DEFINITION RP::FALIST-CONSISTENT))
     (330 330 (:REWRITE DEFAULT-CAR))
     (322 2
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (148 148 (:TYPE-PRESCRIPTION RP::RP-TERMP))
     (120 120 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (104 104 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (96 96
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (92 26 (:REWRITE O-P-O-INFP-CAR))
     (70 4 (:DEFINITION NATP))
     (64 64
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (64 18 (:REWRITE RP::IS-IF-RP-TERMP))
     (56 56 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (50 6 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (44 44 (:TYPE-PRESCRIPTION O-P))
     (44 44
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (38 6 (:DEFINITION BITP))
     (36 36 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (34 34
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (30 12
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (26 8 (:REWRITE RP::RP-TERMP-CADR))
     (24 2 (:REWRITE RP::LEN-TO-CONSP))
     (22 22 (:REWRITE O-P-DEF-O-FINP-1))
     (20 20
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (20 8 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (20 4 (:REWRITE RP::RP-TERMP-CADDDR))
     (20 2 (:REWRITE ZP-OPEN))
     (18 18
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (18 6 (:REWRITE RP::RP-TERMP-CADDR))
     (18 6 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (16 16 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (14 14 (:TYPE-PRESCRIPTION QUOTEP))
     (12 12 (:TYPE-PRESCRIPTION LEN))
     (12 2 (:DEFINITION ALL-NILS))
     (10 10 (:TYPE-PRESCRIPTION ALL-NILS))
     (10 4 (:REWRITE DEFAULT-<-2))
     (10 2
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (8 4
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (6 6 (:TYPE-PRESCRIPTION BITP))
     (6 6
        (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (4 4 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (4 4 (:REWRITE DEFAULT-<-1))
     (4 4 (:LINEAR LEN-WHEN-PREFIXP))
     (4 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (4 2
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (4 2
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (2 2 (:TYPE-PRESCRIPTION ZP))
     (2 2
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (2 2
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (2 2 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (2 2
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (2 2
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (2 2 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (2 2 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::CUT-LIST-BY-HALF-OF-SIGNED-PP-LISTS-0
     (36721 93
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (33367 31 (:DEFINITION TRUE-LISTP))
     (25027 74 (:DEFINITION RP::RP-TERM-LISTP))
     (24562 241
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (22983 235 (:DEFINITION QUOTEP))
     (22253 260
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (22136 136 (:DEFINITION APPLY$-BADGEP))
     (18194 124 (:DEFINITION SUBSETP-EQUAL))
     (15714 930 (:DEFINITION MEMBER-EQUAL))
     (11004 117 (:DEFINITION RP::RP-TERMP))
     (10474 241
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (9860 496
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (9755 9692 (:REWRITE DEFAULT-CDR))
     (9537 310 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (6483 37 (:DEFINITION RP::FALIST-CONSISTENT))
     (5817 5676 (:REWRITE DEFAULT-CAR))
     (4991 31
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (1860 1860 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (1612 1612 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (1580 461 (:REWRITE O-P-O-INFP-CAR))
     (1550 435 (:REWRITE RP::IS-IF-RP-TERMP))
     (1488 1488
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (1179 261 (:REWRITE ZP-OPEN))
     (1085 62 (:DEFINITION NATP))
     (992 992
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (868 868 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (856 856
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (856 274 (:REWRITE RP::RP-TERMP-CADR))
     (775 93 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (639 213 (:REWRITE FOLD-CONSTS-IN-+))
     (589 93 (:DEFINITION BITP))
     (575 575
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (570 570 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (465 186
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (445 445 (:REWRITE DEFAULT-+-2))
     (445 445 (:REWRITE DEFAULT-+-1))
     (417 300 (:REWRITE DEFAULT-<-2))
     (382 62 (:REWRITE RP::RP-TERMP-CADDDR))
     (373 373 (:REWRITE O-P-DEF-O-FINP-1))
     (372 31 (:REWRITE RP::LEN-TO-CONSP))
     (345 99 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (334 136 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (327 99 (:REWRITE RP::RP-TERMP-CADDR))
     (312 300 (:REWRITE DEFAULT-<-1))
     (310 310
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (279 279
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (266 266 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (235 235 (:TYPE-PRESCRIPTION QUOTEP))
     (186 31 (:DEFINITION ALL-NILS))
     (185 37
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (155 155 (:TYPE-PRESCRIPTION ALL-NILS))
     (124 62
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (112 112 (:LINEAR LEN-WHEN-PREFIXP))
     (93 93 (:TYPE-PRESCRIPTION BITP))
     (93 93
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (74 74
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (70 35
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (62 31
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (62 31
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (56 56 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (56 56 (:LINEAR BOUNDS-POSITION-EQUAL))
     (55 55 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (37 37
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (35 35
         (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (35 35
         (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (31 31
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (20 20 (:REWRITE RP::CONSP-OF-APPLY-SIGN))
     (3 3
        (:REWRITE RP::CUT-LIST-BY-HALF-RETURNS-PP-LISTS)))
(RP::CUT-LIST-BY-HALF-OF-SIGNED-PP-LISTS-1
     (36721 93
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (33367 31 (:DEFINITION TRUE-LISTP))
     (25027 74 (:DEFINITION RP::RP-TERM-LISTP))
     (24562 241
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (22983 235 (:DEFINITION QUOTEP))
     (22253 260
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (22136 136 (:DEFINITION APPLY$-BADGEP))
     (18194 124 (:DEFINITION SUBSETP-EQUAL))
     (15714 930 (:DEFINITION MEMBER-EQUAL))
     (11004 117 (:DEFINITION RP::RP-TERMP))
     (10474 241
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (9860 496
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (9739 9679 (:REWRITE DEFAULT-CDR))
     (9537 310 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (6483 37 (:DEFINITION RP::FALIST-CONSISTENT))
     (5793 5655 (:REWRITE DEFAULT-CAR))
     (4991 31
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (1860 1860 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (1612 1612 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (1580 461 (:REWRITE O-P-O-INFP-CAR))
     (1550 435 (:REWRITE RP::IS-IF-RP-TERMP))
     (1488 1488
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (1179 261 (:REWRITE ZP-OPEN))
     (1085 62 (:DEFINITION NATP))
     (992 992
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (868 868 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (856 856
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (856 274 (:REWRITE RP::RP-TERMP-CADR))
     (775 93 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (639 213 (:REWRITE FOLD-CONSTS-IN-+))
     (589 93 (:DEFINITION BITP))
     (575 575
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (570 570 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (465 186
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (445 445 (:REWRITE DEFAULT-+-2))
     (445 445 (:REWRITE DEFAULT-+-1))
     (419 301 (:REWRITE DEFAULT-<-2))
     (382 62 (:REWRITE RP::RP-TERMP-CADDDR))
     (373 373 (:REWRITE O-P-DEF-O-FINP-1))
     (372 31 (:REWRITE RP::LEN-TO-CONSP))
     (345 99 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (334 136 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (327 99 (:REWRITE RP::RP-TERMP-CADDR))
     (313 301 (:REWRITE DEFAULT-<-1))
     (310 310
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (279 279
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (266 266 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (235 235 (:TYPE-PRESCRIPTION QUOTEP))
     (186 31 (:DEFINITION ALL-NILS))
     (185 37
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (155 155 (:TYPE-PRESCRIPTION ALL-NILS))
     (124 62
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (114 114 (:LINEAR LEN-WHEN-PREFIXP))
     (93 93 (:TYPE-PRESCRIPTION BITP))
     (93 93
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (74 74
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (70 35
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (62 31
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (62 31
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (57 57 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (57 57 (:LINEAR BOUNDS-POSITION-EQUAL))
     (56 56 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (37 37
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (35 35
         (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (35 35
         (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (31 31
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (20 20 (:REWRITE RP::CONSP-OF-APPLY-SIGN))
     (18 6
         (:REWRITE RP::CUT-LIST-BY-HALF-OF-SIGNED-PP-LISTS-0))
     (3 3
        (:REWRITE RP::CUT-LIST-BY-HALF-RETURNS-PP-LISTS)))
(RP::PP-LISTS-P-IMPLIES-FC
     (3368 9
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (2966 3 (:DEFINITION TRUE-LISTP))
     (2240 10 (:DEFINITION RP::RP-TERM-LISTP))
     (2171 29
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (2001 29 (:DEFINITION QUOTEP))
     (1915 22
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (1898 16 (:DEFINITION APPLY$-BADGEP))
     (1514 12 (:DEFINITION SUBSETP-EQUAL))
     (1274 90 (:DEFINITION MEMBER-EQUAL))
     (1142 11 (:DEFINITION RP::RP-TERMP))
     (1070 29
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (883 883 (:REWRITE DEFAULT-CDR))
     (815 30 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (800 48
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (621 3 (:DEFINITION RP::FALIST-CONSISTENT))
     (527 527 (:REWRITE DEFAULT-CAR))
     (483 3
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (180 180 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (156 156 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (144 144
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (138 39 (:REWRITE O-P-O-INFP-CAR))
     (129 42 (:REWRITE RP::IS-IF-RP-TERMP))
     (117 6 (:DEFINITION NATP))
     (96 96
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (85 85
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (84 84 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (67 67
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (66 27 (:REWRITE RP::RP-TERMP-CADR))
     (61 61 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (45 9 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (38 16 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (36 6 (:REWRITE RP::RP-TERMP-CADDDR))
     (33 33 (:REWRITE O-P-DEF-O-FINP-1))
     (33 12
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (30 30
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (30 9 (:REWRITE RP::RP-TERMP-CADDR))
     (30 9 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (30 6 (:DEFINITION BITP))
     (29 29 (:TYPE-PRESCRIPTION QUOTEP))
     (28 28 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (27 27
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (21 9
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (18 18 (:TYPE-PRESCRIPTION LEN))
     (18 9
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (18 3 (:REWRITE RP::LEN-TO-CONSP))
     (18 3 (:DEFINITION ALL-NILS))
     (15 15 (:TYPE-PRESCRIPTION ALL-NILS))
     (15 3
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (12 6
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (12 3 (:REWRITE ZP-OPEN))
     (9 9
        (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (9 9
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (6 6 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (6 6 (:TYPE-PRESCRIPTION BITP))
     (6 6 (:REWRITE DEFAULT-<-2))
     (6 6 (:REWRITE DEFAULT-<-1))
     (6 6 (:LINEAR LEN-WHEN-PREFIXP))
     (3 3 (:TYPE-PRESCRIPTION ZP))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::POS-LEN-IS (8 4 (:REWRITE DEFAULT-<-2))
                (6 3 (:REWRITE DEFAULT-+-2))
                (4 4 (:REWRITE DEFAULT-<-1))
                (3 3 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
                (3 3 (:REWRITE DEFAULT-CDR))
                (3 3 (:REWRITE DEFAULT-+-1)))
(RP::SORT-PP-LISTS-OF-APPLY-SIGN-DUMMY-LEMMA1
     (4486 12
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (3998 4 (:DEFINITION TRUE-LISTP))
     (2990 12 (:DEFINITION RP::RP-TERM-LISTP))
     (2884 36
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (2676 32 (:DEFINITION QUOTEP))
     (2576 36
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (2556 20 (:DEFINITION APPLY$-BADGEP))
     (2040 16 (:DEFINITION SUBSETP-EQUAL))
     (1720 120 (:DEFINITION MEMBER-EQUAL))
     (1472 16 (:DEFINITION RP::RP-TERMP))
     (1394 36
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (1213 1213 (:REWRITE DEFAULT-CDR))
     (1096 40 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (1080 64
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (828 4 (:DEFINITION RP::FALIST-CONSISTENT))
     (698 698 (:REWRITE DEFAULT-CAR))
     (644 4
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (240 240 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (208 208 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (192 192
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (186 62 (:REWRITE RP::IS-IF-RP-TERMP))
     (180 51 (:REWRITE O-P-O-INFP-CAR))
     (140 8 (:DEFINITION NATP))
     (128 128
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (118 118
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (112 112 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (100 12 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (98 42 (:REWRITE RP::RP-TERMP-CADR))
     (84 84
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (76 76 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (76 12 (:DEFINITION BITP))
     (60 24
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (52 8 (:REWRITE RP::RP-TERMP-CADDDR))
     (48 20 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (48 4 (:REWRITE RP::LEN-TO-CONSP))
     (43 43 (:REWRITE O-P-DEF-O-FINP-1))
     (42 12 (:REWRITE RP::RP-TERMP-CADDR))
     (42 12 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (40 40
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (40 4 (:REWRITE ZP-OPEN))
     (36 36
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (36 36 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (32 32 (:TYPE-PRESCRIPTION QUOTEP))
     (24 24 (:TYPE-PRESCRIPTION LEN))
     (24 4 (:DEFINITION ALL-NILS))
     (20 20 (:TYPE-PRESCRIPTION ALL-NILS))
     (20 8 (:REWRITE DEFAULT-<-2))
     (20 4
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (16 8
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (12 12 (:TYPE-PRESCRIPTION BITP))
     (12 12
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (8 8 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (8 8 (:REWRITE DEFAULT-<-1))
     (8 8 (:LINEAR LEN-WHEN-PREFIXP))
     (8 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (8 4
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (8 4
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (4 4 (:TYPE-PRESCRIPTION ZP))
     (4 4
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (4 4
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (4 4 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (4 4
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (4 4
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (4 4 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (4 4 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::SORT-PP-LISTS-OF-APPLY-SIGN-DUMMY-LEMMA2
     (3226 9
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (2972 3 (:DEFINITION TRUE-LISTP))
     (2138 6 (:DEFINITION RP::RP-TERM-LISTP))
     (2071 21
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (1965 20 (:DEFINITION QUOTEP))
     (1901 24
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (1892 12 (:DEFINITION APPLY$-BADGEP))
     (1514 12 (:DEFINITION SUBSETP-EQUAL))
     (1274 90 (:DEFINITION MEMBER-EQUAL))
     (990 11 (:DEFINITION RP::RP-TERMP))
     (986 21
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (878 878 (:REWRITE DEFAULT-CDR))
     (815 30 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (800 48
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (621 3 (:DEFINITION RP::FALIST-CONSISTENT))
     (514 506 (:REWRITE DEFAULT-CAR))
     (483 3
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (180 180 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (156 156 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (146 41 (:REWRITE O-P-O-INFP-CAR))
     (144 144
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (121 38 (:REWRITE RP::IS-IF-RP-TERMP))
     (105 6 (:DEFINITION NATP))
     (96 96
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (84 84 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (77 77
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (75 9 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (58 23 (:REWRITE RP::RP-TERMP-CADR))
     (57 9 (:DEFINITION BITP))
     (54 54 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (51 51
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (45 18
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (36 6 (:REWRITE RP::RP-TERMP-CADDDR))
     (36 3 (:REWRITE RP::LEN-TO-CONSP))
     (35 35 (:REWRITE O-P-DEF-O-FINP-1))
     (30 30
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (30 12 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (30 9 (:REWRITE RP::RP-TERMP-CADDR))
     (30 9 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (30 3 (:REWRITE ZP-OPEN))
     (27 27
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (24 24 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (20 20 (:TYPE-PRESCRIPTION QUOTEP))
     (18 18 (:TYPE-PRESCRIPTION LEN))
     (18 3 (:DEFINITION ALL-NILS))
     (15 15 (:TYPE-PRESCRIPTION ALL-NILS))
     (15 6 (:REWRITE DEFAULT-<-2))
     (15 3
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (12 6
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (9 9 (:TYPE-PRESCRIPTION BITP))
     (9 9
        (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (6 6 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (6 6 (:REWRITE DEFAULT-<-1))
     (6 6 (:LINEAR LEN-WHEN-PREFIXP))
     (6 3
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (6 3
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (6 3
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (3 3 (:TYPE-PRESCRIPTION ZP))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (3 3 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (3 3
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (3 3
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::SORT-PP-LISTS-OF-APPLY-SIGN-DUMMY-LEMMA3
     (5433 15
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (4971 5 (:DEFINITION TRUE-LISTP))
     (3633 12 (:DEFINITION RP::RP-TERM-LISTP))
     (3491 35
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (3301 35 (:DEFINITION QUOTEP))
     (3189 42
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (3170 22 (:DEFINITION APPLY$-BADGEP))
     (2534 20 (:DEFINITION SUBSETP-EQUAL))
     (2134 150 (:DEFINITION MEMBER-EQUAL))
     (1694 19 (:DEFINITION RP::RP-TERMP))
     (1667 35
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (1485 1481 (:REWRITE DEFAULT-CDR))
     (1363 50 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (1340 80
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (1035 5 (:DEFINITION RP::FALIST-CONSISTENT))
     (863 859 (:REWRITE DEFAULT-CAR))
     (805 5
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (300 300 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (260 260 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (240 240
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (238 67 (:REWRITE O-P-O-INFP-CAR))
     (214 69 (:REWRITE RP::IS-IF-RP-TERMP))
     (175 10 (:DEFINITION NATP))
     (160 160
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (140 140 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (136 136
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (125 15 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (107 44 (:REWRITE RP::RP-TERMP-CADR))
     (95 15 (:DEFINITION BITP))
     (92 92 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (85 85
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (75 30
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (62 10 (:REWRITE RP::RP-TERMP-CADDDR))
     (60 5 (:REWRITE RP::LEN-TO-CONSP))
     (57 57 (:REWRITE O-P-DEF-O-FINP-1))
     (54 22 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (51 15 (:REWRITE RP::RP-TERMP-CADDR))
     (51 15 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (50 50
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (50 5 (:REWRITE ZP-OPEN))
     (45 45
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (42 42 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (35 35 (:TYPE-PRESCRIPTION QUOTEP))
     (30 30 (:TYPE-PRESCRIPTION LEN))
     (30 5 (:DEFINITION ALL-NILS))
     (25 25 (:TYPE-PRESCRIPTION ALL-NILS))
     (25 10 (:REWRITE DEFAULT-<-2))
     (25 5
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (20 10
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (15 15 (:TYPE-PRESCRIPTION BITP))
     (15 15
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (10 10
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (10 10 (:REWRITE DEFAULT-<-1))
     (10 10 (:LINEAR LEN-WHEN-PREFIXP))
     (10 5
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (10 5
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (10 5
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (5 5 (:TYPE-PRESCRIPTION ZP))
     (5 5
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (5 5
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (5 5 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (5 5
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (5 5
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (5 5 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (5 5 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::SORT-PP-LISTS-OF-APPLY-SIGN-DUMMY-LEMMA4
     (5609 15
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (4971 5 (:DEFINITION TRUE-LISTP))
     (3741 16 (:DEFINITION RP::RP-TERM-LISTP))
     (3611 47
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (3341 43 (:DEFINITION QUOTEP))
     (3209 46
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (3182 26 (:DEFINITION APPLY$-BADGEP))
     (2534 20 (:DEFINITION SUBSETP-EQUAL))
     (2134 150 (:DEFINITION MEMBER-EQUAL))
     (1870 19 (:DEFINITION RP::RP-TERMP))
     (1759 47
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (1503 1499 (:REWRITE DEFAULT-CDR))
     (1363 50 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (1340 80
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (1035 5 (:DEFINITION RP::FALIST-CONSISTENT))
     (889 879 (:REWRITE DEFAULT-CAR))
     (805 5
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (300 300 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (260 260 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (244 68 (:REWRITE O-P-O-INFP-CAR))
     (240 240
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (222 73 (:REWRITE RP::IS-IF-RP-TERMP))
     (175 10 (:DEFINITION NATP))
     (160 160
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (144 144
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (140 140 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (125 15 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (115 48 (:REWRITE RP::RP-TERMP-CADR))
     (109 109
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (96 96 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (95 15 (:DEFINITION BITP))
     (75 30
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (62 26 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (62 10 (:REWRITE RP::RP-TERMP-CADDDR))
     (60 58 (:REWRITE O-P-DEF-O-FINP-1))
     (60 5 (:REWRITE RP::LEN-TO-CONSP))
     (51 15 (:REWRITE RP::RP-TERMP-CADDR))
     (51 15 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (50 50
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (50 5 (:REWRITE ZP-OPEN))
     (46 46 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (45 45
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (43 43 (:TYPE-PRESCRIPTION QUOTEP))
     (30 30 (:TYPE-PRESCRIPTION LEN))
     (30 5 (:DEFINITION ALL-NILS))
     (25 25 (:TYPE-PRESCRIPTION ALL-NILS))
     (25 10 (:REWRITE DEFAULT-<-2))
     (25 5
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (20 10
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (15 15 (:TYPE-PRESCRIPTION BITP))
     (15 15
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (10 10
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (10 10 (:REWRITE DEFAULT-<-1))
     (10 10 (:LINEAR LEN-WHEN-PREFIXP))
     (10 5
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (10 5
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (10 5
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (5 5 (:TYPE-PRESCRIPTION ZP))
     (5 5
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (5 5
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (5 5 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (5 5
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (5 5
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (5 5 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (5 5 (:LINEAR BOUNDS-POSITION-EQUAL))
     (4 2
        (:REWRITE RP::SORT-PP-LISTS-OF-APPLY-SIGN-DUMMY-LEMMA1))
     (2 2 (:TYPE-PRESCRIPTION O-FINP)))
(RP::SORT-PP-LISTS-OF-APPLY-SIGN-DUMMY-LEMMA5
     (4506 12
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (3998 4 (:DEFINITION TRUE-LISTP))
     (2990 12 (:DEFINITION RP::RP-TERM-LISTP))
     (2902 36
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (2684 36 (:DEFINITION QUOTEP))
     (2576 36
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (2556 20 (:DEFINITION APPLY$-BADGEP))
     (2040 16 (:DEFINITION SUBSETP-EQUAL))
     (1720 120 (:DEFINITION MEMBER-EQUAL))
     (1492 16 (:DEFINITION RP::RP-TERMP))
     (1412 36
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (1212 1212 (:REWRITE DEFAULT-CDR))
     (1096 40 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (1080 64
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (828 4 (:DEFINITION RP::FALIST-CONSISTENT))
     (712 708 (:REWRITE DEFAULT-CAR))
     (644 4
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (240 240 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (208 208 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (192 192
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (188 53 (:REWRITE O-P-O-INFP-CAR))
     (186 62 (:REWRITE RP::IS-IF-RP-TERMP))
     (140 8 (:DEFINITION NATP))
     (128 128
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (118 118
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (112 112 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (100 12 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (98 42 (:REWRITE RP::RP-TERMP-CADR))
     (84 84
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (76 76 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (76 12 (:DEFINITION BITP))
     (60 24
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (52 8 (:REWRITE RP::RP-TERMP-CADDDR))
     (48 20 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (48 4 (:REWRITE RP::LEN-TO-CONSP))
     (45 45 (:REWRITE O-P-DEF-O-FINP-1))
     (42 12 (:REWRITE RP::RP-TERMP-CADDR))
     (42 12 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (40 40
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (40 4 (:REWRITE ZP-OPEN))
     (36 36 (:TYPE-PRESCRIPTION QUOTEP))
     (36 36
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (36 36 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (24 24 (:TYPE-PRESCRIPTION LEN))
     (24 4 (:DEFINITION ALL-NILS))
     (20 20 (:TYPE-PRESCRIPTION ALL-NILS))
     (20 8 (:REWRITE DEFAULT-<-2))
     (20 4
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (16 8
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (12 12 (:TYPE-PRESCRIPTION BITP))
     (12 12
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (8 8 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (8 8 (:REWRITE DEFAULT-<-1))
     (8 8 (:LINEAR LEN-WHEN-PREFIXP))
     (8 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (8 4
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (8 4
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (4 4 (:TYPE-PRESCRIPTION ZP))
     (4 4
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (4 4
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (4 4 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (4 4
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (4 4
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (4 4 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (4 4 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::SORT-PP-LISTS-OF-APPLY-SIGN
     (3075 1835 (:REWRITE DEFAULT-CDR))
     (2835 1635 (:REWRITE DEFAULT-CAR))
     (2251 643 (:REWRITE O-P-O-INFP-CAR))
     (602 503 (:REWRITE O-P-DEF-O-FINP-1))
     (172 6
          (:REWRITE RP::ATOM-MERGE-SORTED-PP-LISTS))
     (162 6
          (:DEFINITION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (133 133 (:REWRITE RP::PP-LIST-ORDER-SANITY))
     (96 96 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (72 72 (:TYPE-PRESCRIPTION O-FINP))
     (20 10 (:REWRITE DEFAULT-+-2))
     (15 10 (:REWRITE DEFAULT-+-1))
     (10 5 (:REWRITE DEFAULT-UNARY-MINUS))
     (9 9 (:REWRITE RP::CONSP-OF-APPLY-SIGN))
     (8 8 (:LINEAR LEN-WHEN-PREFIXP))
     (4 4
        (:TYPE-PRESCRIPTION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (4 4 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (4 4 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::AND$-PP-LISTS-AUX-RETURNS-BIT-LIST-LISTP
     (377 24
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (322 166 (:REWRITE DEFAULT-CDR))
     (305 24
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (288 87 (:REWRITE O-P-O-INFP-CAR))
     (188 119 (:REWRITE DEFAULT-CAR))
     (161 24 (:DEFINITION RP::RP-TRANS-LST))
     (159 3 (:REWRITE RP::BIT-LISTP-LEMMA))
     (157 24 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (134 134 (:TYPE-PRESCRIPTION O-P))
     (121 24 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (120 120
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (90 15 (:REWRITE O-INFP->NEQ-0))
     (72 72 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (67 67 (:REWRITE O-P-DEF-O-FINP-1))
     (56 16
         (:REWRITE RP::ATOM-MERGE-SORTED-AND$-LISTS))
     (50 25
         (:TYPE-PRESCRIPTION RP::TRUE-LISTP-OF-MERGE-SORTED-AND$-LISTS))
     (45 45 (:TYPE-PRESCRIPTION O-FINP))
     (45 15 (:REWRITE O-FIRST-EXPT-O-INFP))
     (42 3 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (36 3 (:DEFINITION RP::IS-SYNP$INLINE))
     (30 15 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (25 25 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (18 3
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (12 12
         (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS-AUX))
     (9 9 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (9 3 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (6 6
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (3 3
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (3 3
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (3 3
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP)))
(RP::AND$-PP-LISTS-RETURNS-BIT-LIST-LISTP
     (344 104 (:REWRITE O-P-O-INFP-CAR))
     (313 21
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (280 165 (:REWRITE DEFAULT-CDR))
     (262 17 (:DEFINITION RP::BIT-LISTP))
     (250 21
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (160 160 (:TYPE-PRESCRIPTION O-P))
     (159 3 (:REWRITE RP::BIT-LISTP-LEMMA))
     (145 118 (:REWRITE DEFAULT-CAR))
     (145 21 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (140 60 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (124 21 (:DEFINITION RP::RP-TRANS-LST))
     (105 105
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (102 102
          (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (101 17 (:DEFINITION BITP))
     (100 21 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (84 14 (:REWRITE O-INFP->NEQ-0))
     (80 80 (:REWRITE O-P-DEF-O-FINP-1))
     (63 63 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (57 18
         (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (42 42 (:TYPE-PRESCRIPTION O-FINP))
     (42 14 (:REWRITE O-FIRST-EXPT-O-INFP))
     (42 3 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (36 3 (:DEFINITION RP::IS-SYNP$INLINE))
     (28 14 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (18 3
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (12 1 (:DEFINITION RP::AND$-PP-LISTS-AUX))
     (9 9 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (9 3 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (7 7
        (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS))
     (6 6
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (4 2
        (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS-AUX))
     (3 3
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (3 3
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (3 3
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP)))
(RP::PP-TERM-TO-PP-LISTS-RETURNS-BIT-LIST-LISTP
     (80655 121 (:DEFINITION RP::VALID-SC))
     (44684 40997 (:REWRITE DEFAULT-CDR))
     (40762 1462 (:DEFINITION RP::INCLUDE-FNC))
     (37003 850
            (:REWRITE RP::NOT-INCLUDE-RP-MEANS-VALID-SC))
     (32878 27554 (:REWRITE DEFAULT-CAR))
     (24840 92
            (:REWRITE RP::CAR-OF-EX-FROM-RP-IS-NOT-RP))
     (24564 92 (:DEFINITION RP::RP-TERMP))
     (22869 151 (:DEFINITION RP::EVAL-AND-ALL))
     (19044 92 (:DEFINITION RP::FALIST-CONSISTENT))
     (14812 92
            (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (11686 2775 (:REWRITE O-P-O-INFP-CAR))
     (8716 630 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (8640 480 (:DEFINITION RP::TRANS-LIST))
     (7456 626 (:DEFINITION RP::IS-SYNP$INLINE))
     (6912 480
           (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (6597 198
           (:REWRITE RP::ATOM-MERGE-SORTED-PP-LISTS))
     (6483 81
           (:DEFINITION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (4990 4990
           (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (3945 3945
           (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (3905 2503 (:REWRITE O-P-DEF-O-FINP-1))
     (2686 17 (:REWRITE RP::VALID-SC-EX-FROM-RP-2))
     (2536 2096 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (2460 410
           (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (2233 209
           (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (1870 626 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (1525 1525 (:TYPE-PRESCRIPTION O-FINP))
     (1452 121
           (:REWRITE RP::NOT-INCLUDE-RP-MEANS-VALID-SC-LST))
     (1443 1443
           (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (1408 88
           (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (1331 121 (:REWRITE RP::NOT-INCLUDE-RP))
     (1320 120
           (:REWRITE RP::NOT-INCLUDE-EX-FROM-RP))
     (1078 710
           (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (969 969 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (936 480 (:REWRITE RP::EVAL-OF----))
     (888 480 (:REWRITE RP::EVAL-OF-BIT-OF))
     (884 480 (:REWRITE RP::EVAL-OF-BINARY-?))
     (854 480 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (840 480 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (828 828
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (820 820
          (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (820 480 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (812 480 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (736 368 (:REWRITE RP::IS-IF-RP-TERMP))
     (710 710
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (670 630 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (670 630
          (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (670 630
          (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (670 630 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (635 46 (:DEFINITION RP::BIT-LISTP))
     (630 630
          (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (621 621
          (:TYPE-PRESCRIPTION RP::CONTEXT-FROM-RP))
     (552 552
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (540 540
          (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (540 108
          (:REWRITE RP::VALID-SC-OF-EX-FROM-RP))
     (480 480 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (480 480 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (460 92
          (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (440 88 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (436 109
          (:REWRITE RP::QUOTEP-TERM-WITH-EX-FROM-RP))
     (368 184 (:REWRITE RP::RP-TERMP-CADR))
     (368 184 (:REWRITE RP::RP-TERMP-CADDR))
     (368 184 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (248 42 (:REWRITE O-INFP->NEQ-0))
     (219 219
          (:TYPE-PRESCRIPTION RP::EVAL-AND-ALL))
     (201 201 (:TYPE-PRESCRIPTION QUOTEP))
     (184 184
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (184 92
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (176 176 (:TYPE-PRESCRIPTION STRIP-CDRS))
     (162 162
          (:TYPE-PRESCRIPTION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (123 41 (:REWRITE O-FIRST-EXPT-O-INFP))
     (121 121
          (:TYPE-PRESCRIPTION RP::IS-IF$INLINE))
     (110 110
          (:TYPE-PRESCRIPTION RP::RP-EVLT-LST-LST))
     (82 82 (:TYPE-PRESCRIPTION RP::BIT-LISTP))
     (82 41 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (36 36
         (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS))
     (12 12
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF)))
(RP::AND$-PP-LISTS-AUX-EXTRACT-ACC (75 75 (:TYPE-PRESCRIPTION BINARY-APPEND))
                                   (43 19 (:REWRITE DEFAULT-CAR))
                                   (29 11 (:REWRITE O-P-O-INFP-CAR))
                                   (17 12 (:REWRITE DEFAULT-CDR))
                                   (10 4 (:REWRITE APPEND-WHEN-NOT-CONSP))
                                   (6 6 (:REWRITE O-P-DEF-O-FINP-1)))
(RP::AND$-PP-LISTS-EXTRACT-ACC
     (71 71 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (68 48 (:REWRITE DEFAULT-CDR))
     (42 3 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (40 28 (:REWRITE DEFAULT-CAR))
     (40 16 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (36 3 (:DEFINITION RP::IS-SYNP$INLINE))
     (32 11 (:REWRITE O-P-O-INFP-CAR))
     (32 8
         (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
     (30 30
         (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS-AUX))
     (18 3
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (14 14 (:TYPE-PRESCRIPTION O-P))
     (9 9 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (9 3 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (7 7 (:REWRITE O-P-DEF-O-FINP-1))
     (6 6
        (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (3 3
        (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (3 3
        (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (3 3
        (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (3 3 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (3 3
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP)))
(RP::AND$-PP-LISTS-AUX-EXTRACT-SIGN-AND-ACC
     (4651 9
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (4620 3 (:DEFINITION TRUE-LISTP))
     (3723 5 (:DEFINITION RP::RP-TERM-LISTP))
     (3652 11
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (3621 11 (:DEFINITION QUOTEP))
     (3570 18
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (3560 3 (:DEFINITION APPLY$-BADGEP))
     (3304 2 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
     (3125 12 (:DEFINITION SUBSETP-EQUAL))
     (2885 90 (:DEFINITION MEMBER-EQUAL))
     (1808 48
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (1523 30 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (1420 795 (:REWRITE DEFAULT-CAR))
     (1408 1 (:REWRITE RP::APPEND-EQUAL))
     (1322 1138 (:REWRITE DEFAULT-CDR))
     (906 11
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (871 3 (:DEFINITION RP::RP-TERMP))
     (859 326 (:REWRITE O-P-O-INFP-CAR))
     (640 3 (:DEFINITION RP::FALIST-CONSISTENT))
     (498 3
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (181 176 (:REWRITE O-P-DEF-O-FINP-1))
     (180 180 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (156 156 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (150 6 (:DEFINITION NATP))
     (144 144
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (112 112 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (105 9 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (96 96
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (87 9 (:DEFINITION BITP))
     (84 84 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (47 14 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (45 45 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (45 15
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (39 3 (:REWRITE RP::LEN-TO-CONSP))
     (36 15 (:REWRITE RP::IS-IF-RP-TERMP))
     (35 2 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
     (34 34
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (33 3 (:REWRITE ZP-OPEN))
     (30 30
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (28 28 (:TYPE-PRESCRIPTION LEN))
     (28 14
         (:TYPE-PRESCRIPTION RP::TRUE-LISTP-OF-MERGE-SORTED-AND$-LISTS))
     (27 27
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (26 26
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (26 3 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (24 9 (:REWRITE RP::RP-TERMP-CADR))
     (23 23 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (23 3
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (18 6
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (18 3 (:DEFINITION ALL-NILS))
     (15 15 (:TYPE-PRESCRIPTION ALL-NILS))
     (15 6 (:REWRITE DEFAULT-<-2))
     (12 6 (:REWRITE RP::RP-TERMP-CADDR))
     (12 6 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (12 2 (:REWRITE RP::LEN-TO-CONSP-WHEN-O))
     (11 11 (:TYPE-PRESCRIPTION QUOTEP))
     (10 10 (:LINEAR LEN-WHEN-PREFIXP))
     (10 2 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
     (9 9 (:TYPE-PRESCRIPTION BITP))
     (9 9
        (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (9 3
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (9 3
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (6 6 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (6 6 (:REWRITE DEFAULT-<-1))
     (6 3
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (5 5 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (5 5 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (5 5 (:LINEAR BOUNDS-POSITION-EQUAL))
     (3 3 (:TYPE-PRESCRIPTION ZP))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (3 3
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (3 3
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (2 2 (:TYPE-PRESCRIPTION O-FINP))
     (2 1 (:REWRITE RP::LEN-OF-APPLY-SIGN)))
(RP::AND$-PP-LISTS-EXTRACT-SIGN-AND-ACC
     (5799 9
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (5762 3 (:DEFINITION TRUE-LISTP))
     (4769 5 (:DEFINITION RP::RP-TERM-LISTP))
     (4704 11
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (4664 11 (:DEFINITION QUOTEP))
     (4592 18
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (4580 3 (:DEFINITION APPLY$-BADGEP))
     (4115 12 (:DEFINITION SUBSETP-EQUAL))
     (3875 90 (:DEFINITION MEMBER-EQUAL))
     (3802 2 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
     (2417 48
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (2119 1095 (:REWRITE DEFAULT-CAR))
     (2072 1 (:REWRITE RP::APPEND-EQUAL))
     (1974 30 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (1514 1057 (:REWRITE DEFAULT-CDR))
     (1484 470 (:REWRITE O-P-O-INFP-CAR))
     (989 11
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (945 3 (:DEFINITION RP::RP-TERMP))
     (648 3 (:DEFINITION RP::FALIST-CONSISTENT))
     (498 3
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (348 333 (:REWRITE O-P-DEF-O-FINP-1))
     (180 180 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (156 156 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (150 6 (:DEFINITION NATP))
     (144 144
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (105 9 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (104 104 (:DEFINITION ACONS))
     (101 101
          (:REWRITE RP::AND$-PP-LISTS-AUX-EXTRACT-ACC))
     (96 96
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (87 9 (:DEFINITION BITP))
     (85 18 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (84 84 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (79 77 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (60 60
         (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS-AUX))
     (48 3 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (45 45 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (45 15
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (39 3 (:REWRITE RP::LEN-TO-CONSP))
     (39 3
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (36 15 (:REWRITE RP::IS-IF-RP-TERMP))
     (36 2 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
     (34 34
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (33 3 (:REWRITE ZP-OPEN))
     (30 30
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (28 28 (:TYPE-PRESCRIPTION LEN))
     (27 27
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (26 26
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (24 9 (:REWRITE RP::RP-TERMP-CADR))
     (23 23 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (18 6
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (18 3 (:DEFINITION ALL-NILS))
     (15 15 (:TYPE-PRESCRIPTION ALL-NILS))
     (15 6 (:REWRITE DEFAULT-<-2))
     (12 6 (:REWRITE RP::RP-TERMP-CADDR))
     (12 6 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (12 2 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
     (12 2 (:REWRITE RP::LEN-TO-CONSP-WHEN-O))
     (12 2
         (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
     (11 11 (:TYPE-PRESCRIPTION QUOTEP))
     (10 10 (:LINEAR LEN-WHEN-PREFIXP))
     (9 9 (:TYPE-PRESCRIPTION BITP))
     (9 9
        (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (9 3
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (9 3
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (6 6 (:TYPE-PRESCRIPTION O-FINP))
     (6 6 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (6 6 (:REWRITE DEFAULT-<-1))
     (6 6
        (:REWRITE RP::AND$-PP-LISTS-EXTRACT-ACC))
     (6 3
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (5 5 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (5 5 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (5 5 (:LINEAR BOUNDS-POSITION-EQUAL))
     (4 2 (:REWRITE RP::LEN-OF-APPLY-SIGN))
     (3 3 (:TYPE-PRESCRIPTION ZP))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (3 3
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (3 3
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP)))
(RP::TRUE-LIST-FIX-OF-APPLY-SIGN-TO-PP-LISTS
     (3919 9
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (3820 3 (:DEFINITION TRUE-LISTP))
     (2887 6 (:DEFINITION RP::RP-TERM-LISTP))
     (2800 12
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (2755 12 (:DEFINITION QUOTEP))
     (2674 18
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (2662 3 (:DEFINITION APPLY$-BADGEP))
     (2197 12 (:DEFINITION SUBSETP-EQUAL))
     (1957 90 (:DEFINITION MEMBER-EQUAL))
     (1228 48
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (1117 30 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (996 12
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (980 868 (:REWRITE DEFAULT-CDR))
     (945 3 (:DEFINITION RP::RP-TERMP))
     (859 546 (:REWRITE DEFAULT-CAR))
     (648 3 (:DEFINITION RP::FALIST-CONSISTENT))
     (498 3
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (476 170 (:REWRITE O-P-O-INFP-CAR))
     (194 194 (:TYPE-PRESCRIPTION O-P))
     (180 180 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (156 156 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (150 6 (:DEFINITION NATP))
     (144 144
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (112 97 (:REWRITE O-P-DEF-O-FINP-1))
     (105 9 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (96 96
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (87 9 (:DEFINITION BITP))
     (84 84 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (57 57 (:REWRITE RP::CONSP-OF-APPLY-SIGN))
     (48 3 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (45 45 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (45 15
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (39 39
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (39 3 (:REWRITE RP::LEN-TO-CONSP))
     (39 3
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (36 15 (:REWRITE RP::IS-IF-RP-TERMP))
     (33 3 (:REWRITE ZP-OPEN))
     (30 30
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (27 27
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (27 27
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (24 24 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (24 9 (:REWRITE RP::RP-TERMP-CADR))
     (18 18 (:TYPE-PRESCRIPTION LEN))
     (18 6
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (18 3 (:DEFINITION ALL-NILS))
     (15 15 (:TYPE-PRESCRIPTION ALL-NILS))
     (15 6 (:REWRITE DEFAULT-<-2))
     (12 12 (:TYPE-PRESCRIPTION QUOTEP))
     (12 6 (:REWRITE RP::RP-TERMP-CADDR))
     (12 6 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (9 9 (:TYPE-PRESCRIPTION BITP))
     (9 9
        (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (9 3
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (9 3
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (6 6 (:TYPE-PRESCRIPTION O-FINP))
     (6 6 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (6 6 (:REWRITE DEFAULT-<-1))
     (6 6 (:LINEAR LEN-WHEN-PREFIXP))
     (6 3
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (3 3 (:TYPE-PRESCRIPTION ZP))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (3 3 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (3 3
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (3 3
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::AND$-PP-LISTS-AUX-OF-APPLIED-SIGN
     (58972 109
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (53969 37 (:DEFINITION TRUE-LISTP))
     (52782 24
            (:REWRITE RP::APPLY-SIGN-TO-PP-LISTS-OF-SIGN=NIL))
     (52672 29 (:DEFINITION RP::PP-LISTS-P))
     (44211 260
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (43542 78 (:DEFINITION RP::RP-TERM-LISTP))
     (41007 260 (:DEFINITION QUOTEP))
     (39906 266
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (39726 119 (:DEFINITION APPLY$-BADGEP))
     (34485 140 (:DEFINITION SUBSETP-EQUAL))
     (31685 1050 (:DEFINITION MEMBER-EQUAL))
     (19842 560
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (16931 350 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (15855 13489 (:REWRITE DEFAULT-CDR))
     (14860 9204 (:REWRITE DEFAULT-CAR))
     (14311 125 (:DEFINITION RP::RP-TERMP))
     (12349 260
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (8084 65 (:DEFINITION RP::FALIST-CONSISTENT))
     (7922 2666 (:REWRITE O-P-O-INFP-CAR))
     (5892 41
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (4482 2 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
     (3274 3
           (:REWRITE RP::PP-LISTS-P-OF-APPLY-SIGN-TO-PP-LISTS))
     (3104 1 (:REWRITE RP::APPEND-EQUAL))
     (2614 516 (:REWRITE RP::IS-IF-RP-TERMP))
     (2140 1558 (:REWRITE O-P-DEF-O-FINP-1))
     (2100 2100 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (1820 1820 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (1690 70 (:DEFINITION NATP))
     (1680 1680
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (1514 306 (:REWRITE RP::RP-TERMP-CADR))
     (1284 642
           (:TYPE-PRESCRIPTION RP::TRUE-LISTP-OF-MERGE-SORTED-AND$-LISTS))
     (1185 105
           (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (1120 1120
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (980 980 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (975 105 (:DEFINITION BITP))
     (940 940
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (776 776
          (:REWRITE RP::AND$-PP-LISTS-AUX-EXTRACT-ACC))
     (731 150 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (665 665
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (665 203
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (647 150 (:REWRITE RP::RP-TERMP-CADDR))
     (609 609 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (498 458 (:REWRITE RP::CONSP-OF-APPLY-SIGN))
     (472 119 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (451 35 (:REWRITE RP::LEN-TO-CONSP))
     (405 65
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (390 60 (:REWRITE RP::RP-TERMP-CADDDR))
     (381 35 (:REWRITE ZP-OPEN))
     (350 350
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (322 322 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (315 315
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (310 100
          (:REWRITE RP::ATOM-MERGE-SORTED-AND$-LISTS))
     (260 260 (:TYPE-PRESCRIPTION QUOTEP))
     (228 228 (:TYPE-PRESCRIPTION O-FINP))
     (216 216 (:TYPE-PRESCRIPTION LEN))
     (210 35 (:DEFINITION ALL-NILS))
     (204 12 (:DEFINITION BINARY-APPEND))
     (202 70
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (175 175 (:TYPE-PRESCRIPTION ALL-NILS))
     (175 70 (:REWRITE DEFAULT-<-2))
     (155 155 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (139 139 (:TYPE-PRESCRIPTION RP::PP-LISTS-P))
     (130 130
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (109 109
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (105 105 (:TYPE-PRESCRIPTION BITP))
     (101 35
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (101 35
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (100 24 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (81 37
         (:TYPE-PRESCRIPTION RP::PP-LISTS-P-OF-AND$-PP-LISTS-AUX))
     (70 70 (:REWRITE DEFAULT-<-1))
     (70 70 (:LINEAR LEN-WHEN-PREFIXP))
     (70 35
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (65 65
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (37 37 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (35 35 (:TYPE-PRESCRIPTION ZP))
     (35 35
         (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (35 35
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (35 35
         (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (35 35 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (35 35 (:LINEAR BOUNDS-POSITION-EQUAL))
     (18 2 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
     (12 2 (:REWRITE RP::LEN-CONS))
     (4 2 (:REWRITE RP::LEN-OF-APPLY-SIGN))
     (4 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:REWRITE DEFAULT-+-1)))
(RP::AND$-PP-LISTS-OF-APPLIED-WITH-SAME-SIGN
     (93136 174
            (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (90004 22 (:DEFINITION TRUE-LISTP))
     (84112 210
            (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (83408 44 (:DEFINITION RP::RP-TERM-LISTP))
     (82048 166 (:DEFINITION QUOTEP))
     (81424 168
            (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (81300 76 (:DEFINITION APPLY$-BADGEP))
     (77998 88 (:DEFINITION SUBSETP-EQUAL))
     (76238 660 (:DEFINITION MEMBER-EQUAL))
     (68498 152
            (:REWRITE RP::APPLY-SIGN-TO-PP-LISTS-OF-SIGN=NIL))
     (67710 126 (:DEFINITION RP::PP-LISTS-P))
     (47614 352
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (35396 220 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (22757 12401 (:REWRITE DEFAULT-CDR))
     (21463 10990 (:REWRITE DEFAULT-CAR))
     (13326 4470 (:REWRITE O-P-O-INFP-CAR))
     (8916 82 (:DEFINITION RP::RP-TERMP))
     (7896 210
           (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (7726 1500 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (4944 46 (:DEFINITION RP::FALIST-CONSISTENT))
     (4632 1156
           (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
     (4406 4406
           (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS-AUX))
     (4052 2402 (:REWRITE O-P-DEF-O-FINP-1))
     (3652 22
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (1872 362 (:REWRITE RP::IS-IF-RP-TERMP))
     (1320 1320 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (1310 240 (:REWRITE RP::RP-TERMP-CADR))
     (1144 1144 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (1100 44 (:DEFINITION NATP))
     (1056 1056
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (780 780 (:TYPE-PRESCRIPTION RP::PP-LISTS-P))
     (770 66 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (727 727
          (:REWRITE RP::AND$-PP-LISTS-EXTRACT-ACC))
     (727 727
          (:REWRITE RP::AND$-PP-LISTS-AUX-EXTRACT-ACC))
     (704 704
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (680 680
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (660 660 (:TYPE-PRESCRIPTION O-FINP))
     (638 66 (:DEFINITION BITP))
     (616 616 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (602 602
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (576 150
          (:TYPE-PRESCRIPTION RP::PP-LISTS-P-OF-AND$-PP-LISTS))
     (438 128
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (384 384 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (334 86 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (298 298 (:TYPE-PRESCRIPTION QUOTEP))
     (286 22 (:REWRITE RP::LEN-TO-CONSP))
     (262 86 (:REWRITE RP::RP-TERMP-CADDR))
     (262 76 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (262 46
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (252 36 (:REWRITE RP::RP-TERMP-CADDDR))
     (242 22 (:REWRITE ZP-OPEN))
     (220 220
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (204 200 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (200 200 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (198 198
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (174 174
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (132 132 (:TYPE-PRESCRIPTION LEN))
     (132 44
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (132 22 (:DEFINITION ALL-NILS))
     (110 110 (:TYPE-PRESCRIPTION ALL-NILS))
     (110 44 (:REWRITE DEFAULT-<-2))
     (92 92
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (66 66 (:TYPE-PRESCRIPTION BITP))
     (66 22
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (66 22
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (46 46
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (44 44 (:REWRITE DEFAULT-<-1))
     (44 44 (:LINEAR LEN-WHEN-PREFIXP))
     (44 22
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (22 22 (:TYPE-PRESCRIPTION ZP))
     (22 22
         (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (22 22 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (22 22
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (22 22
         (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (22 22 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (22 22 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::PP-TERM-TO-PP-LISTS-EXTRACT-SIGN-LEMMA-DUMMY-LEMMA
     (38 38
         (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS))
     (2 2
        (:REWRITE RP::AND$-PP-LISTS-EXTRACT-ACC)))
(RP::PP-TERM-TO-PP-LISTS-EXTRACT-SIGN-LEMMA-DUMMY-LEMMA-2
     (3198 3 (:DEFINITION RP::PP-LISTS-P))
     (3153 9
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (2919 3 (:DEFINITION TRUE-LISTP))
     (2091 6 (:DEFINITION RP::RP-TERM-LISTP))
     (2028 21
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (1935 21 (:DEFINITION QUOTEP))
     (1869 24
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (1860 12 (:DEFINITION APPLY$-BADGEP))
     (1482 12 (:DEFINITION SUBSETP-EQUAL))
     (1242 90 (:DEFINITION MEMBER-EQUAL))
     (975 21
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (972 9 (:DEFINITION RP::RP-TERMP))
     (849 849 (:REWRITE DEFAULT-CDR))
     (801 30 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (780 48
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (621 3 (:DEFINITION RP::FALIST-CONSISTENT))
     (499 499 (:REWRITE DEFAULT-CAR))
     (483 3
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (222 222 (:TYPE-PRESCRIPTION RP::RP-TERMP))
     (180 180 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (156 156 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (144 144
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (138 39 (:REWRITE O-P-O-INFP-CAR))
     (105 6 (:DEFINITION NATP))
     (96 96
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (96 27 (:REWRITE RP::IS-IF-RP-TERMP))
     (84 84 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (75 9 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (66 66
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (57 9 (:DEFINITION BITP))
     (54 54 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (51 51
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (45 18
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (39 12 (:REWRITE RP::RP-TERMP-CADR))
     (36 3 (:REWRITE RP::LEN-TO-CONSP))
     (33 33 (:REWRITE O-P-DEF-O-FINP-1))
     (30 30
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (30 12 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (30 6 (:REWRITE RP::RP-TERMP-CADDDR))
     (30 3 (:REWRITE ZP-OPEN))
     (27 27
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (27 9 (:REWRITE RP::RP-TERMP-CADDR))
     (27 9 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (24 24 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (21 21 (:TYPE-PRESCRIPTION QUOTEP))
     (18 18 (:TYPE-PRESCRIPTION LEN))
     (18 3 (:DEFINITION ALL-NILS))
     (15 15 (:TYPE-PRESCRIPTION ALL-NILS))
     (15 6 (:REWRITE DEFAULT-<-2))
     (15 3
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (12 6
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (9 9 (:TYPE-PRESCRIPTION BITP))
     (9 9
        (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (6 6 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (6 6 (:REWRITE DEFAULT-<-1))
     (6 6 (:LINEAR LEN-WHEN-PREFIXP))
     (6 3
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (6 3
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (6 3
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (3 3 (:TYPE-PRESCRIPTION ZP))
     (3 3
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (3 3
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (3 3 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (3 3
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (3 3
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (3 3 (:LINEAR BOUNDS-POSITION-EQUAL))
     (1 1
        (:REWRITE RP::PP-LISTS-P-OF-APPLY-SIGN-TO-PP-LISTS)))
(RP::PP-TERM-TO-PP-LISTS-EXTRACT-SIGN-LEMMA-DUMMY-LEMMA-3
     (2102 6
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (1946 2 (:DEFINITION TRUE-LISTP))
     (1394 4 (:DEFINITION RP::RP-TERM-LISTP))
     (1352 14
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (1290 14 (:DEFINITION QUOTEP))
     (1246 16
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (1240 8 (:DEFINITION APPLY$-BADGEP))
     (988 8 (:DEFINITION SUBSETP-EQUAL))
     (828 60 (:DEFINITION MEMBER-EQUAL))
     (650 14
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (648 6 (:DEFINITION RP::RP-TERMP))
     (569 569 (:REWRITE DEFAULT-CDR))
     (534 20 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (520 32
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (414 2 (:DEFINITION RP::FALIST-CONSISTENT))
     (341 341 (:REWRITE DEFAULT-CAR))
     (322 2
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (148 148 (:TYPE-PRESCRIPTION RP::RP-TERMP))
     (120 120 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (104 104 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (96 96
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (92 26 (:REWRITE O-P-O-INFP-CAR))
     (70 4 (:DEFINITION NATP))
     (64 64
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (64 18 (:REWRITE RP::IS-IF-RP-TERMP))
     (56 56 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (50 6 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (44 44
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (38 6 (:DEFINITION BITP))
     (36 36 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (34 34
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (30 12
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (26 8 (:REWRITE RP::RP-TERMP-CADR))
     (24 2 (:REWRITE RP::LEN-TO-CONSP))
     (22 22 (:REWRITE O-P-DEF-O-FINP-1))
     (20 20
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (20 8 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (20 4 (:REWRITE RP::RP-TERMP-CADDDR))
     (20 2 (:REWRITE ZP-OPEN))
     (18 18
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (18 6 (:REWRITE RP::RP-TERMP-CADDR))
     (18 6 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (17 1
         (:REWRITE RP::MERGE-SORTED-PP-LISTS-SIMPLE-OF-APPLY-SIGN-2))
     (16 16 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (14 14 (:TYPE-PRESCRIPTION QUOTEP))
     (12 12 (:TYPE-PRESCRIPTION LEN))
     (12 2 (:DEFINITION ALL-NILS))
     (10 10 (:TYPE-PRESCRIPTION ALL-NILS))
     (10 4 (:REWRITE DEFAULT-<-2))
     (10 2
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (8 4
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (6 6 (:TYPE-PRESCRIPTION BITP))
     (6 6
        (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (4 4 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (4 4 (:REWRITE DEFAULT-<-1))
     (4 4 (:LINEAR LEN-WHEN-PREFIXP))
     (4 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (4 2
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (4 2
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (2 2 (:TYPE-PRESCRIPTION ZP))
     (2 2
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (2 2
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (2 2 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (2 2
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (2 2
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (2 2 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (2 2 (:LINEAR BOUNDS-POSITION-EQUAL))
     (1 1
        (:REWRITE RP::PP-LISTS-P-OF-APPLY-SIGN-TO-PP-LISTS)))
(RP::PP-TERM-TO-PP-LISTS-EXTRACT-SIGN-LEMMA-DUMMY-LEMMA-4
     (1066 1 (:DEFINITION RP::PP-LISTS-P))
     (1051 3
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (973 1 (:DEFINITION TRUE-LISTP))
     (697 2 (:DEFINITION RP::RP-TERM-LISTP))
     (676 7
          (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (645 7 (:DEFINITION QUOTEP))
     (623 8
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (620 4 (:DEFINITION APPLY$-BADGEP))
     (494 4 (:DEFINITION SUBSETP-EQUAL))
     (414 30 (:DEFINITION MEMBER-EQUAL))
     (325 7
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (324 3 (:DEFINITION RP::RP-TERMP))
     (283 283 (:REWRITE DEFAULT-CDR))
     (267 10 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (260 16
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (207 1 (:DEFINITION RP::FALIST-CONSISTENT))
     (167 167 (:REWRITE DEFAULT-CAR))
     (161 1
          (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (74 74 (:TYPE-PRESCRIPTION RP::RP-TERMP))
     (60 60 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (52 52 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (48 48
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (46 13 (:REWRITE O-P-O-INFP-CAR))
     (35 2 (:DEFINITION NATP))
     (32 32
         (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (32 9 (:REWRITE RP::IS-IF-RP-TERMP))
     (28 28 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (25 3 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (22 22
         (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (19 3 (:DEFINITION BITP))
     (18 18 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (17 17
         (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (15 6
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (13 4 (:REWRITE RP::RP-TERMP-CADR))
     (12 1 (:REWRITE RP::LEN-TO-CONSP))
     (11 11 (:REWRITE O-P-DEF-O-FINP-1))
     (10 10
         (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (10 4 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (10 2 (:REWRITE RP::RP-TERMP-CADDDR))
     (10 1 (:REWRITE ZP-OPEN))
     (9 9
        (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (9 3 (:REWRITE RP::RP-TERMP-CADDR))
     (9 3 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (8 8 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (7 7 (:TYPE-PRESCRIPTION QUOTEP))
     (6 6 (:TYPE-PRESCRIPTION LEN))
     (6 1 (:DEFINITION ALL-NILS))
     (5 5 (:TYPE-PRESCRIPTION ALL-NILS))
     (5 2 (:REWRITE DEFAULT-<-2))
     (5 1
        (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (4 2
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (3 3 (:TYPE-PRESCRIPTION BITP))
     (3 3
        (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (2 2 (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (2 2 (:REWRITE DEFAULT-<-1))
     (2 2 (:LINEAR LEN-WHEN-PREFIXP))
     (2 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 1
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (2 1
        (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (1 1 (:TYPE-PRESCRIPTION ZP))
     (1 1
        (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (1 1
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (1 1 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (1 1
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (1 1
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
     (1 1 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (1 1 (:LINEAR BOUNDS-POSITION-EQUAL)))
(RP::PP-TERM-TO-PP-LISTS-EXTRACT-SIGN-LEMMA
     (188595 85858 (:REWRITE DEFAULT-CAR))
     (188386 105893 (:REWRITE DEFAULT-CDR))
     (175123 49 (:DEFINITION RP::PP-LISTS-P))
     (172125 147
             (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (166926 49 (:DEFINITION TRUE-LISTP))
     (153432 347
             (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (152961 98 (:DEFINITION RP::RP-TERM-LISTP))
     (150649 347 (:DEFINITION QUOTEP))
     (149221 306
             (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (149062 196 (:DEFINITION APPLY$-BADGEP))
     (147294 7043
             (:REWRITE RP::ATOM-MERGE-SORTED-PP-LISTS))
     (142544 196 (:DEFINITION SUBSETP-EQUAL))
     (141908 3283
             (:DEFINITION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (138424 1470 (:DEFINITION MEMBER-EQUAL))
     (102012 25804 (:REWRITE O-P-O-INFP-CAR))
     (84940 784
            (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (68083 490 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (37664 19272 (:REWRITE O-P-DEF-O-FINP-1))
     (17640 151 (:DEFINITION RP::RP-TERMP))
     (16445 347
            (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (12240 5400 (:REWRITE RP::CONSP-OF-APPLY-SIGN))
     (10585 53 (:DEFINITION RP::FALIST-CONSISTENT))
     (9412 9412
           (:REWRITE RP::AND$-PP-LISTS-EXTRACT-ACC))
     (9170 9170 (:TYPE-PRESCRIPTION O-FINP))
     (8039 49
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (7469 7469
           (:TYPE-PRESCRIPTION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (4743 4743
           (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (2940 2940 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (2548 2548 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (2398 471 (:REWRITE RP::IS-IF-RP-TERMP))
     (2352 2352
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (2129 98 (:DEFINITION NATP))
     (1568 1568
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (1433 222 (:REWRITE RP::RP-TERMP-CADR))
     (1372 1372 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (1112 1112
           (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (939 147
          (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (925 925 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (841 841
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (688 104 (:DEFINITION BITP))
     (587 208
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (520 196 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (502 98 (:REWRITE RP::RP-TERMP-CADDDR))
     (490 490
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (467 151 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (455 151 (:REWRITE RP::RP-TERMP-CADDR))
     (441 441
          (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (396 396 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (369 135
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (360 49 (:REWRITE RP::LEN-TO-CONSP))
     (347 347 (:TYPE-PRESCRIPTION QUOTEP))
     (294 294 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (294 294 (:TYPE-PRESCRIPTION LEN))
     (294 49 (:DEFINITION ALL-NILS))
     (274 135
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (273 53
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (262 49 (:REWRITE ZP-OPEN))
     (245 245 (:TYPE-PRESCRIPTION ALL-NILS))
     (204 98
          (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (147 147
          (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (135 135
          (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (116 98 (:REWRITE DEFAULT-<-2))
     (106 106
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (104 104 (:TYPE-PRESCRIPTION BITP))
     (98 98 (:REWRITE DEFAULT-<-1))
     (98 98 (:LINEAR LEN-WHEN-PREFIXP))
     (53 53
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (49 49 (:TYPE-PRESCRIPTION ZP))
     (49 49 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (49 49 (:LINEAR BOUNDS-POSITION-EQUAL))
     (12 6
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (6 6
        (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
     (6 6
        (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP)))
(RP::PP-TERM-TO-PP-LISTS-EXTRACT-SIGN
     (39 3
         (:DEFINITION RP::APPLY-SIGN-TO-PP-LISTS))
     (21 9 (:REWRITE DEFAULT-CAR))
     (15 6 (:REWRITE O-P-O-INFP-CAR))
     (9 6 (:REWRITE DEFAULT-CDR))
     (3 3 (:REWRITE O-P-DEF-O-FINP-1))
     (3 3 (:DEFINITION ACONS)))
(RP::AND$-PP-LISTS-AUX-IS-CORRECT-LEMMA-2
     (9 4 (:REWRITE O-INFP->NEQ-0))
     (3 3 (:TYPE-PRESCRIPTION O-FINP))
     (3 1 (:REWRITE O-FIRST-EXPT-O-INFP))
     (2 2
        (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (2 2 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (2 1 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (1 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:REWRITE DEFAULT-+-1)))
(RP::AND$-PP-LISTS-AUX-IS-CORRECT
     (2827 2150 (:REWRITE DEFAULT-CAR))
     (2756 2236 (:REWRITE DEFAULT-CDR))
     (2101 30
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (1732 15 (:REWRITE RP::BIT-LISTP-LEMMA))
     (1632 55 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (1132 38 (:DEFINITION RP::RP-TERM-LISTP))
     (1121 145
           (:DEFINITION RP::PP-LISTS-TO-TERM-AND$))
     (1026 57 (:DEFINITION RP::TRANS-LIST))
     (982 95
          (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (846 52 (:DEFINITION RP::RP-TERMP))
     (840 86 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (683 54 (:DEFINITION RP::IS-SYNP$INLINE))
     (627 95
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (605 284 (:REWRITE O-P-O-INFP-CAR))
     (472 44
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (446 51
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (356 36
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (317 39 (:DEFINITION RP::INCLUDE-FNC))
     (258 258
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (243 74 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (242 242
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (234 72
          (:REWRITE RP::ATOM-MERGE-SORTED-AND$-LISTS))
     (225 225
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (195 55 (:REWRITE RP::RP-TERMP-CADR))
     (195 55 (:REWRITE RP::IS-IF-RP-TERMP))
     (169 169
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (166 166
          (:TYPE-PRESCRIPTION RP::TRUE-LISTP-OF-MERGE-SORTED-AND$-LISTS))
     (160 44 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (135 27
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (133 11 (:REWRITE RP::BIT-LIST-P-DEF))
     (127 97 (:REWRITE O-P-DEF-O-FINP-1))
     (122 86
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (98 86
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (98 86
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (98 86 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (95 95 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (90 51 (:REWRITE RP::EVAL-OF-BIT-OF))
     (90 51 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (90 51 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (90 51 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (90 51 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (90 51 (:REWRITE RP::EVAL-OF-BINARY-?))
     (90 51 (:REWRITE RP::EVAL-OF----))
     (87 87 (:TYPE-PRESCRIPTION QUOTEP))
     (81 27 (:DEFINITION APPLY$-BADGEP))
     (73 73
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (72 12
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (66 54
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (54 54
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (54 27 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (51 51 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (51 51 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (36 36
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (36 4 (:DEFINITION ASSOC-EQUAL))
     (30 30
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (27 27 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (26 26
         (:REWRITE RP::AND$-PP-LISTS-AUX-EXTRACT-SIGN-AND-ACC))
     (26 26
         (:REWRITE RP::AND$-PP-LISTS-AUX-EXTRACT-ACC))
     (24 24
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (12 12 (:TYPE-PRESCRIPTION O-FINP))
     (12 12
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (6 1 (:REWRITE RP::TYPE-FIX-WHEN-BITP))
     (6 1 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (4 2 (:REWRITE O-INFP->NEQ-0)))
(RP::AND$-PP-LISTS-IS-CORRECT
     (2445 1771 (:REWRITE DEFAULT-CDR))
     (2305 1785 (:REWRITE DEFAULT-CAR))
     (1897 21
           (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (1384 42 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (1376 9 (:REWRITE RP::BIT-LISTP-LEMMA))
     (1071 419 (:REWRITE O-P-O-INFP-CAR))
     (1063 1063
           (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (923 88
          (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (873 25 (:DEFINITION RP::RP-TERM-LISTP))
     (806 52 (:DEFINITION RP::RP-TERMP))
     (774 43 (:DEFINITION RP::TRANS-LIST))
     (610 59 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (595 88
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (554 106
          (:DEFINITION RP::PP-LISTS-TO-TERM-AND$))
     (502 39 (:DEFINITION RP::IS-SYNP$INLINE))
     (452 35
          (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (359 264 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (355 31
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (316 36
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (302 302
          (:TYPE-PRESCRIPTION RP::APPLY-SIGN-TO-PP-LISTS))
     (274 189 (:REWRITE O-P-DEF-O-FINP-1))
     (236 24 (:DEFINITION RP::BIT-LISTP))
     (224 28 (:DEFINITION RP::INCLUDE-FNC))
     (211 211
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (197 197
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (177 177
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (173 45 (:REWRITE RP::RP-TERMP-CADR))
     (173 45 (:REWRITE RP::IS-IF-RP-TERMP))
     (170 51 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (154 154
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (154 2
          (:REWRITE RP::TWO-PP-LIST-CANCEL-EACH-OTHER-IMPLIES))
     (148 2
          (:DEFINITION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (147 35 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (136 8 (:DEFINITION BINARY-APPEND))
     (125 25
          (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (113 67 (:REWRITE RP::CONSP-OF-APPLY-SIGN))
     (102 102
          (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS-AUX))
     (95 59
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (93 36
         (:REWRITE RP::CONSP-OF-RP-EVL-OF-TRANS-LIST))
     (89 7 (:REWRITE RP::BIT-LIST-P-DEF))
     (84 84 (:TYPE-PRESCRIPTION QUOTEP))
     (80 16 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (75 25 (:DEFINITION APPLY$-BADGEP))
     (71 59 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (71 59
         (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (71 59
         (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (71 59 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (68 68 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (64 36 (:REWRITE RP::EVAL-OF-BIT-OF))
     (64 36 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (64 36 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (64 36 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (64 36 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (64 36 (:REWRITE RP::EVAL-OF-BINARY-?))
     (64 36 (:REWRITE RP::EVAL-OF----))
     (52 4 (:REWRITE CAR-OF-APPEND))
     (51 39
         (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (50 50
         (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (50 25 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (48 8
         (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (39 39
         (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (36 36 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (36 36 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (34 34 (:TYPE-PRESCRIPTION O-FINP))
     (25 25 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (24 24
         (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (21 21
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (20 5
         (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (18 3 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
     (18 2 (:DEFINITION ASSOC-EQUAL))
     (16 16
         (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (14 14 (:TYPE-PRESCRIPTION BITP))
     (14 2 (:REWRITE CONSP-OF-APPEND))
     (12 12
         (:REWRITE RP::PP-TERM-TO-PP-LISTS-EXTRACT-SIGN-LEMMA-DUMMY-LEMMA))
     (12 12
         (:REWRITE RP::AND$-PP-LISTS-EXTRACT-SIGN-AND-ACC))
     (12 12
         (:REWRITE RP::AND$-PP-LISTS-EXTRACT-ACC))
     (12 12
         (:REWRITE RP::AND$-PP-LISTS-AUX-EXTRACT-ACC))
     (10 10
         (:TYPE-PRESCRIPTION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (8 8
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (6 1 (:REWRITE RP::TYPE-FIX-WHEN-BITP))
     (6 1 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (5 5 (:TYPE-PRESCRIPTION BINARY-APPEND)))
(RP::RP-EVLT_OF_PP-LISTS-TO-TERM_OF_PP-TERM-TO-PP-LISTS
     (5230 1046 (:DEFINITION RP::INCLUDE-FNC))
     (4497 787
           (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (4320 864 (:DEFINITION RP::TRANS-LIST))
     (4128 516
           (:REWRITE RP::NOT-INCLUDE-RP-MEANS-VALID-SC))
     (3951 3951
           (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
     (3676 3676
           (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (3447 3447
           (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (2780 1041 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (2710 271
           (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (2588 1034 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (1897 271
           (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (1482 247
           (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (1410 235 (:DEFINITION LEN))
     (1406 1406 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (1360 178
           (:REWRITE RP::ATOM-MERGE-SORTED-PP-LISTS))
     (1173 150
           (:DEFINITION RP::PP-LISTS-TO-TERM-P+))
     (1130 1130
           (:TYPE-PRESCRIPTION RP::AND$-PP-LISTS))
     (1084 271 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (1041 1041
           (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (1041 1041 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (972 155
          (:DEFINITION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (962 962
          (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (948 948 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (866 777 (:DEFINITION RP::IS-SYNP$INLINE))
     (851 851
          (:TYPE-PRESCRIPTION RP::APPLY-SIGN-TO-PP-LISTS))
     (791 791 (:REWRITE RP::EVAL-OF----))
     (789 789 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (777 777
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (777 777
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (741 741
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (644 271 (:DEFINITION STRIP-CDRS))
     (542 542 (:TYPE-PRESCRIPTION STRIP-CDRS))
     (494 494
          (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (470 235 (:REWRITE DEFAULT-+-2))
     (420 42 (:REWRITE RP::RP-EQUAL-IS-SYMMETRIC))
     (396 300
          (:DEFINITION RP::PP-LISTS-TO-TERM-AND$))
     (391 198 (:REWRITE RP::CONSP-OF-APPLY-SIGN))
     (379 379
          (:REWRITE RP::PP-TERM-TO-PP-LISTS-EXTRACT-SIGN-LEMMA-DUMMY-LEMMA))
     (294 42 (:DEFINITION RP::RP-EQUAL))
     (252 21 (:REWRITE RP::RP-EVLT-OF-RP-EQUAL))
     (252 21 (:REWRITE RP::RP-EVL-OF-RP-EQUAL))
     (250 250
          (:TYPE-PRESCRIPTION RP::TWO-PP-LIST-CANCEL-EACH-OTHER))
     (241 241
          (:REWRITE RP::AND$-PP-LISTS-EXTRACT-ACC))
     (235 235 (:TYPE-PRESCRIPTION LEN))
     (235 235
          (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (235 235 (:REWRITE DEFAULT-+-1))
     (126 126 (:TYPE-PRESCRIPTION RP::RP-EQUAL))
     (126 21 (:REWRITE RP::RP-EVL-OF-RP-EQUAL2))
     (84 84
         (:TYPE-PRESCRIPTION RP::RP-EQUAL-SUBTERMS))
     (84 42 (:REWRITE RP::RP-TERMP-OF-RP-TRANS))
     (84 21
         (:REWRITE RP::RP-EVL-OF-RP-EQUAL-LOOSE))
     (46 46
         (:REWRITE RP::PP-TERM-TO-PP-LISTS-EXTRACT-SIGN-LEMMA-DUMMY-LEMMA-3))
     (42 42
         (:REWRITE RP::RP-EQUAL-SUBTERMS-REFLEXIVE))
     (42 42 (:REWRITE RP::RP-EQUAL-REFLEXIVE))
     (39 13
         (:REWRITE RP::PP-HAS-BITP-RP-IMPLIES))
     (14 2
         (:REWRITE RP::TWO-PP-LIST-CANCEL-EACH-OTHER-IMPLIES))
     (12 2 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (7 7
        (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (6 2
        (:REWRITE RP::QUOTEP-TERM-WITH-EX-FROM-RP))
     (2 2 (:TYPE-PRESCRIPTION QUOTEP)))
(RP::EVAL-OF-SORT-PP-FLATTEN-MAIN-IS-CORRECT
     (24079 30 (:DEFINITION RP::VALID-SC))
     (12176 56 (:DEFINITION RP::RP-TERMP))
     (10807 30
            (:REWRITE RP::CAR-OF-EX-FROM-RP-IS-NOT-RP))
     (9612 52 (:DEFINITION RP::RP-TERM-LISTP))
     (8144 175
           (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
     (7329 69
           (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
     (7251 69 (:DEFINITION APPLY$-BADGEP))
     (6552 6260 (:REWRITE DEFAULT-CDR))
     (5544 48 (:DEFINITION SUBSETP-EQUAL))
     (5433 5433
           (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
     (5365 4247 (:REWRITE DEFAULT-CAR))
     (4590 30 (:DEFINITION RP::EVAL-AND-ALL))
     (4584 360 (:DEFINITION MEMBER-EQUAL))
     (3036 120 (:REWRITE SUBSETP-REFLEXIVE-LEMMA))
     (2880 192
           (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
     (1796 157 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
     (1704 386 (:REWRITE O-P-O-INFP-CAR))
     (1488 123 (:DEFINITION RP::IS-SYNP$INLINE))
     (1392 6 (:DEFINITION RP::FALIST-CONSISTENT))
     (1296 72 (:DEFINITION RP::TRANS-LIST))
     (1116 6
           (:DEFINITION RP::FALIST-CONSISTENT-AUX))
     (954 1 (:REWRITE RP::RP-EVL-OF-RP-EQUAL2))
     (915 55
          (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
     (720 720 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (715 715
          (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
     (669 157 (:REWRITE RP::RP-EVL-OF-VARIABLE))
     (646 336 (:REWRITE O-P-DEF-O-FINP-1))
     (624 624 (:REWRITE SUBSETP-IMPLIES-MEMBER))
     (579 2 (:REWRITE RP::RP-TERMP-OF-RP-TRANS))
     (576 576
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
     (540 91
          (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
     (485 55 (:REWRITE RP::EVAL-OF---1))
     (450 30 (:REWRITE RP::VALID-SC-EX-FROM-RP))
     (384 384
          (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
     (377 1
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-LOOSE))
     (376 143
          (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
     (372 24 (:DEFINITION NATP))
     (350 175
          (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
     (343 30
          (:REWRITE RP::NOT-INCLUDE-RP-MEANS-VALID-SC-LST))
     (336 336 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (334 334
          (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
     (330 30 (:REWRITE RP::NOT-INCLUDE-RP))
     (330 30
          (:REWRITE RP::NOT-INCLUDE-EX-FROM-RP))
     (310 310 (:TYPE-PRESCRIPTION O-FINP))
     (309 309
          (:TYPE-PRESCRIPTION RP::IS-RP$INLINE))
     (295 290 (:REWRITE RP::CONSP-RP-TRANS-LST))
     (268 31
          (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
     (265 108 (:REWRITE RP::IS-IF-RP-TERMP))
     (262 157 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-RP-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-QUOTE))
     (262 157
          (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-LAMBDA))
     (262 157
          (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-IF-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
     (262 157
          (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
     (262 157 (:REWRITE RP::RP-EVL-OF-<-CALL))
     (213 213 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
     (209 80 (:REWRITE RP::RP-TERMP-CADR))
     (205 205 (:TYPE-PRESCRIPTION QUOTEP))
     (192 24
          (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
     (192 12 (:DEFINITION TRUE-LISTP))
     (188 188
          (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
     (180 180
          (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
     (177 177
          (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
     (164 2 (:REWRITE RP::RP-EQUAL-IS-SYMMETRIC))
     (163 163 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
     (162 69 (:DEFINITION WEAK-APPLY$-BADGE-P))
     (150 150
          (:TYPE-PRESCRIPTION RP::CONTEXT-FROM-RP))
     (150 30
          (:REWRITE RP::VALID-SC-OF-EX-FROM-RP))
     (144 1 (:REWRITE RP::RP-EVLT-OF-RP-EQUAL))
     (143 143
          (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
     (122 2 (:REWRITE RP::RP-EQUAL-REFLEXIVE))
     (120 120
          (:REWRITE TRANSITIVITY-OF-SUBSETP-EQUAL))
     (120 30
          (:REWRITE RP::QUOTEP-TERM-WITH-EX-FROM-RP))
     (108 55 (:REWRITE RP::EVAL-OF-BIT-OF))
     (108 55 (:REWRITE RP::EVAL-OF-BINARY-XOR))
     (108 55 (:REWRITE RP::EVAL-OF-BINARY-OR))
     (108 55 (:REWRITE RP::EVAL-OF-BINARY-NOT))
     (108 55 (:REWRITE RP::EVAL-OF-BINARY-AND))
     (108 55 (:REWRITE RP::EVAL-OF-BINARY-?))
     (95 46 (:REWRITE RP::VALID-SC-CADDR))
     (84 36 (:REWRITE RP::BITP-IMPLIES-INTEGERP))
     (84 36
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
     (84 24
         (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
     (72 72 (:TYPE-PRESCRIPTION LEN))
     (72 36
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
     (72 36
         (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
     (72 12 (:REWRITE RP::LEN-TO-CONSP))
     (72 12 (:DEFINITION ALL-NILS))
     (60 60 (:TYPE-PRESCRIPTION ALL-NILS))
     (56 28 (:REWRITE RP::RP-TERMP-CADDR))
     (56 28 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
     (55 55 (:REWRITE RP::WHEN-EX-FROM-RP-IS-1))
     (55 55 (:REWRITE RP::WHEN-EX-FROM-RP-IS-0))
     (54 54
         (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT-AUX))
     (48 48 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (48 48 (:TYPE-PRESCRIPTION BITP))
     (48 12 (:REWRITE ZP-OPEN))
     (48 4 (:REWRITE <<-IMPLIES-LEXORDER))
     (46 23 (:REWRITE RP::VALID-SC-CADDDR))
     (41 1 (:DEFINITION RP::RP-EVLT-LST-LST))
     (38 2 (:DEFINITION RP::RP-EQUAL))
     (36 36
         (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
     (32 8 (:REWRITE <<-TRICHOTOMY))
     (30 30
         (:TYPE-PRESCRIPTION RP::IS-IF$INLINE))
     (30 30
         (:TYPE-PRESCRIPTION RP::EVAL-AND-ALL))
     (24 24 (:TYPE-PRESCRIPTION <<))
     (24 24
         (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP))
     (24 24 (:REWRITE DEFAULT-<-2))
     (24 24 (:REWRITE DEFAULT-<-1))
     (24 24 (:LINEAR LEN-WHEN-PREFIXP))
     (24 1 (:REWRITE RP::RP-EVL-OF-RP-EQUAL))
     (16 1
         (:REWRITE RP::RP-TRANS-LST-IS-LST-WHEN-LIST-IS-ABSENT))
     (12 12 (:TYPE-PRESCRIPTION ZP))
     (12 12 (:REWRITE RP::VALID-SC-NIL))
     (12 12 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
     (12 12 (:LINEAR BOUNDS-POSITION-EQUAL-AC))
     (12 12 (:LINEAR BOUNDS-POSITION-EQUAL))
     (10 10
         (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
     (8 8 (:REWRITE <<-TRANSITIVE))
     (8 4 (:REWRITE <<-ASYMMETRIC))
     (8 1 (:REWRITE RP::RP-EVL-LST-OF-CONS))
     (8 1 (:DEFINITION STRIP-CDRS))
     (6 6 (:TYPE-PRESCRIPTION RP::RP-EQUAL))
     (5 1 (:REWRITE RP::RP-EVL-LST-OF-ATOM))
     (4 4
        (:TYPE-PRESCRIPTION RP::RP-EQUAL-SUBTERMS))
     (4 4 (:REWRITE LEXORDER-TRANSITIVE))
     (2 2 (:TYPE-PRESCRIPTION STRIP-CDRS))
     (2 2
        (:REWRITE RP::RP-EQUAL-SUBTERMS-REFLEXIVE)))
