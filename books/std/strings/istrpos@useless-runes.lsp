(STR::ISTRPOS-IMPL (741 39 (:DEFINITION LEN))
                   (706 5 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
                   (496 4 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
                   (408 78 (:REWRITE LEN-WHEN-ATOM))
                   (287 4 (:REWRITE LEN-OF-NTHCDR))
                   (274 8 (:REWRITE CONSP-OF-NTHCDR))
                   (225 44 (:REWRITE DEFAULT-CDR))
                   (205 122 (:REWRITE STR::CONSP-OF-EXPLODE))
                   (166 166 (:REWRITE CONSP-BY-LEN))
                   (158 5
                        (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
                   (157 4
                        (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
                   (155 5 (:DEFINITION NTHCDR))
                   (126 81 (:REWRITE DEFAULT-+-2))
                   (87 81 (:REWRITE DEFAULT-+-1))
                   (80 66 (:REWRITE DEFAULT-<-1))
                   (77 66 (:REWRITE DEFAULT-<-2))
                   (77 10 (:REWRITE NTHCDR-WHEN-ZP))
                   (55 10 (:REWRITE NTHCDR-WHEN-ATOM))
                   (46 46 (:LINEAR LEN-WHEN-PREFIXP))
                   (44 44 (:REWRITE CONSP-OF-CDR-BY-LEN))
                   (33 33
                       (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
                   (25 5
                       (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-LEFT))
                   (24 4
                       (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
                   (23 23
                       (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
                   (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
                   (10 2 (:REWRITE <-+-NEGATIVE-0-2))
                   (8 8 (:TYPE-PRESCRIPTION PREFIXP))
                   (4 4 (:REWRITE PREFIXP-TRANSITIVE . 2))
                   (4 4 (:REWRITE PREFIXP-TRANSITIVE . 1))
                   (4 4
                      (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
                   (4 4
                      (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
                   (3 3 (:REWRITE EQUAL-CONSTANT-+))
                   (2 2 (:REWRITE FOLD-CONSTS-IN-+))
                   (1 1
                      (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(STR::ISTRPOS$INLINE (171 9 (:DEFINITION LEN))
                     (78 18 (:REWRITE LEN-WHEN-ATOM))
                     (45 9 (:REWRITE DEFAULT-CDR))
                     (33 21 (:REWRITE STR::CONSP-OF-EXPLODE))
                     (30 30 (:REWRITE CONSP-BY-LEN))
                     (18 9 (:REWRITE DEFAULT-+-2))
                     (9 9
                        (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
                     (9 9 (:REWRITE DEFAULT-+-1))
                     (9 9 (:REWRITE CONSP-OF-CDR-BY-LEN))
                     (4 4 (:LINEAR LEN-WHEN-PREFIXP))
                     (2 2
                        (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE)))
(STR::ISTRPOS-TYPE)
(STR::LEMMA (2570 26
                  (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
            (2450 130 (:DEFINITION LEN))
            (1297 21 (:REWRITE LEN-OF-NTHCDR))
            (1195 31 (:DEFINITION NTHCDR))
            (1145 260 (:REWRITE LEN-WHEN-ATOM))
            (991 171 (:REWRITE DEFAULT-CDR))
            (578 578 (:REWRITE CONSP-BY-LEN))
            (476 62 (:REWRITE NTHCDR-WHEN-ZP))
            (454 282 (:REWRITE DEFAULT-+-2))
            (360 5 (:REWRITE NTHCDR-OF-CDR))
            (347 62 (:REWRITE NTHCDR-WHEN-ATOM))
            (316 282 (:REWRITE DEFAULT-+-1))
            (302 20 (:REWRITE NATP-RW))
            (207 146 (:REWRITE DEFAULT-<-2))
            (181 181 (:REWRITE CONSP-OF-CDR-BY-LEN))
            (180 146 (:REWRITE DEFAULT-<-1))
            (126 21
                 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
            (126 21
                 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-LEFT))
            (121 22 (:REWRITE <-+-NEGATIVE-0-1))
            (65 5 (:REWRITE COMMUTATIVITY-2-OF-+))
            (52 8 (:REWRITE <-+-NEGATIVE-0-2))
            (50 20 (:REWRITE FOLD-CONSTS-IN-+))
            (46 46 (:LINEAR LEN-WHEN-PREFIXP))
            (36 34 (:REWRITE DEFAULT-UNARY-MINUS))
            (31 31 (:REWRITE OPEN-SMALL-NTHCDR))
            (26 26 (:REWRITE PREFIXP-TRANSITIVE . 2))
            (26 26 (:REWRITE PREFIXP-TRANSITIVE . 1))
            (26 26
                (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
            (26 26
                (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
            (20 5
                (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
            (13 13
                (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
            (10 5 (:REWRITE UNICITY-OF-0))
            (6 6 (:REWRITE EQUAL-CONSTANT-+))
            (5 5 (:REWRITE CONSP-OF-CDDR-BY-LEN))
            (5 5 (:DEFINITION FIX)))
(STR::IPREFIXP-OF-ISTRPOS
     (242 2 (:DEFINITION STR::ISTRPOS-IMPL))
     (160 2 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
     (152 8 (:DEFINITION LEN))
     (122 2 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
     (81 81
         (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
     (76 16 (:REWRITE LEN-WHEN-ATOM))
     (56 32 (:REWRITE STR::CONSP-OF-EXPLODE))
     (46 9 (:REWRITE DEFAULT-CDR))
     (41 41 (:REWRITE CONSP-BY-LEN))
     (38 5 (:REWRITE ZP-OPEN))
     (35 1 (:DEFINITION NTHCDR))
     (24 14 (:REWRITE DEFAULT-+-2))
     (23 2 (:REWRITE NTHCDR-WHEN-ZP))
     (17 3 (:REWRITE COMMUTATIVITY-OF-+))
     (16 14 (:REWRITE DEFAULT-+-1))
     (12 12 (:LINEAR LEN-WHEN-PREFIXP))
     (12 2
         (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
     (12 2
         (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
     (12 2 (:REWRITE NTHCDR-WHEN-ATOM))
     (12 2
         (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
     (12 2
         (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-LEFT))
     (10 10
         (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
     (10 2 (:REWRITE |(< 0 (len x))|))
     (9 9 (:REWRITE CONSP-OF-CDR-BY-LEN))
     (8 2 (:DEFINITION NFIX))
     (6 6
        (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
     (6 2 (:REWRITE UNICITY-OF-0))
     (5 5 (:REWRITE DEFAULT-<-2))
     (5 5 (:REWRITE DEFAULT-<-1))
     (4 4 (:TYPE-PRESCRIPTION PREFIXP))
     (4 2 (:REWRITE NEGATIVE-WHEN-NATP))
     (4 2 (:DEFINITION FIX))
     (3 3
        (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (3 3 (:REWRITE OPEN-SMALL-NTHCDR))
     (3 1 (:REWRITE <-0-+-NEGATIVE-1))
     (2 2 (:TYPE-PRESCRIPTION ZP))
     (2 2 (:REWRITE PREFIXP-TRANSITIVE . 2))
     (2 2 (:REWRITE PREFIXP-TRANSITIVE . 1))
     (2 2
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
     (2 2
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
     (2 2
        (:REWRITE LEN-OF-NONEMPTY-STRING-IS-POSITIVE)))
(STR::MY-INDUCTION (192 1 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
                   (133 1 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
                   (82 2 (:REWRITE CONSP-OF-NTHCDR))
                   (77 1 (:REWRITE LEN-OF-NTHCDR))
                   (76 4 (:DEFINITION LEN))
                   (53 53 (:TYPE-PRESCRIPTION LEN))
                   (46 1
                       (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
                   (46 1
                       (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
                   (45 37 (:REWRITE DEFAULT-<-1))
                   (40 37 (:REWRITE DEFAULT-<-2))
                   (38 8 (:REWRITE LEN-WHEN-ATOM))
                   (33 28 (:REWRITE DEFAULT-+-2))
                   (31 1 (:DEFINITION NTHCDR))
                   (29 28 (:REWRITE DEFAULT-+-1))
                   (26 5 (:REWRITE DEFAULT-CDR))
                   (24 14 (:REWRITE STR::CONSP-OF-EXPLODE))
                   (19 19 (:REWRITE CONSP-BY-LEN))
                   (16 2 (:REWRITE NTHCDR-WHEN-ZP))
                   (12 2 (:REWRITE NTHCDR-WHEN-ATOM))
                   (10 2 (:REWRITE <-+-NEGATIVE-0-2))
                   (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
                   (6 1
                      (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
                   (6 1
                      (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-LEFT))
                   (5 5 (:REWRITE CONSP-OF-CDR-BY-LEN))
                   (4 4 (:LINEAR LEN-WHEN-PREFIXP))
                   (2 2 (:TYPE-PRESCRIPTION PREFIXP))
                   (2 2 (:REWRITE FOLD-CONSTS-IN-+))
                   (2 2
                      (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
                   (2 2
                      (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
                   (1 1
                      (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                   (1 1 (:REWRITE PREFIXP-TRANSITIVE . 2))
                   (1 1 (:REWRITE PREFIXP-TRANSITIVE . 1))
                   (1 1
                      (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
                   (1 1
                      (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
                   (1 1 (:REWRITE OPEN-SMALL-NTHCDR)))
(STR::LEMMA (5962 41
                  (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
            (4262 41
                  (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
            (4241 225 (:DEFINITION LEN))
            (2100 33 (:REWRITE LEN-OF-NTHCDR))
            (2066 450 (:REWRITE LEN-WHEN-ATOM))
            (1858 49 (:DEFINITION NTHCDR))
            (1667 290 (:REWRITE DEFAULT-CDR))
            (1200 41
                  (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
            (1006 1006 (:REWRITE CONSP-BY-LEN))
            (767 476 (:REWRITE DEFAULT-+-2))
            (700 98 (:REWRITE NTHCDR-WHEN-ZP))
            (576 8 (:REWRITE NTHCDR-OF-CDR))
            (543 98 (:REWRITE NTHCDR-WHEN-ATOM))
            (527 476 (:REWRITE DEFAULT-+-1))
            (509 46 (:REWRITE NATP-RW))
            (334 241 (:REWRITE DEFAULT-<-2))
            (306 306 (:REWRITE CONSP-OF-CDR-BY-LEN))
            (291 241 (:REWRITE DEFAULT-<-1))
            (264 48 (:REWRITE <-+-NEGATIVE-0-1))
            (217 37
                 (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
            (217 37
                 (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-LEFT))
            (159 159
                 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
            (104 8 (:REWRITE COMMUTATIVITY-2-OF-+))
            (80 32 (:REWRITE FOLD-CONSTS-IN-+))
            (78 78 (:TYPE-PRESCRIPTION PREFIXP))
            (70 70 (:LINEAR LEN-WHEN-PREFIXP))
            (51 51 (:REWRITE DEFAULT-UNARY-MINUS))
            (49 49 (:REWRITE OPEN-SMALL-NTHCDR))
            (41 41 (:REWRITE PREFIXP-TRANSITIVE . 2))
            (41 41 (:REWRITE PREFIXP-TRANSITIVE . 1))
            (41 41
                (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
            (41 41
                (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
            (32 8
                (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
            (19 19
                (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
            (16 8 (:REWRITE UNICITY-OF-0))
            (10 2 (:REWRITE <-+-NEGATIVE-0-2))
            (8 8 (:REWRITE EQUAL-CONSTANT-+))
            (8 8 (:REWRITE CONSP-OF-CDDR-BY-LEN))
            (8 8 (:DEFINITION FIX)))
(STR::COMPLETENESS-OF-ISTRPOS
     (346 3 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
     (258 3 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
     (242 2 (:DEFINITION STR::ISTRPOS-IMPL))
     (228 12 (:DEFINITION LEN))
     (117 117
          (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
     (114 24 (:REWRITE LEN-WHEN-ATOM))
     (80 1 (:REWRITE LEN-OF-NTHCDR))
     (76 44 (:REWRITE STR::CONSP-OF-EXPLODE))
     (66 13 (:REWRITE DEFAULT-CDR))
     (64 2 (:REWRITE CONSP-OF-NTHCDR))
     (58 6 (:DEFINITION NFIX))
     (57 57 (:REWRITE CONSP-BY-LEN))
     (49 3
         (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
     (49 3
         (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
     (41 7 (:REWRITE NEGATIVE-WHEN-NATP))
     (35 20 (:REWRITE DEFAULT-+-2))
     (31 1 (:DEFINITION NTHCDR))
     (29 16
         (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (28 5 (:REWRITE ZP-OPEN))
     (26 2 (:REWRITE NATP-RW))
     (23 20 (:REWRITE DEFAULT-+-1))
     (21 4 (:REWRITE COMMUTATIVITY-OF-+))
     (20 20 (:LINEAR LEN-WHEN-PREFIXP))
     (18 3
         (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
     (18 3
         (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-LEFT))
     (16 2 (:REWRITE NTHCDR-WHEN-ZP))
     (14 2 (:REWRITE <-+-NEGATIVE-0-1))
     (13 13 (:REWRITE CONSP-OF-CDR-BY-LEN))
     (12 2 (:REWRITE NTHCDR-WHEN-ATOM))
     (10 10
         (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
     (10 10
         (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
     (10 2 (:REWRITE |(< 0 (len x))|))
     (8 6 (:REWRITE DEFAULT-<-2))
     (8 6 (:REWRITE DEFAULT-<-1))
     (8 4
        (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (6 6 (:TYPE-PRESCRIPTION PREFIXP))
     (6 2 (:REWRITE UNICITY-OF-0))
     (4 2 (:DEFINITION FIX))
     (3 3 (:TYPE-PRESCRIPTION ZP))
     (3 3 (:REWRITE PREFIXP-TRANSITIVE . 2))
     (3 3 (:REWRITE PREFIXP-TRANSITIVE . 1))
     (3 3
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
     (3 3
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
     (3 3 (:REWRITE OPEN-SMALL-NTHCDR))
     (3 1 (:REWRITE <-0-+-NEGATIVE-1))
     (2 2
        (:REWRITE LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
     (1 1 (:REWRITE DEFAULT-UNARY-MINUS)))
(STR::ISTREQV-IMPLIES-EQUAL-ISTRPOS-IMPL-1
     (6038 56
           (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
     (4425 48
           (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
     (3058 166 (:DEFINITION LEN))
     (1964 1964
           (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
     (1794 332 (:REWRITE LEN-WHEN-ATOM))
     (1608 42 (:REWRITE CONSP-OF-NTHCDR))
     (1557 1557 (:TYPE-PRESCRIPTION LEN))
     (1401 18 (:REWRITE LEN-OF-NTHCDR))
     (1304 236 (:REWRITE DEFAULT-CDR))
     (1136 642 (:REWRITE STR::CONSP-OF-EXPLODE))
     (989 56
          (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
     (981 48
          (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
     (938 14
          (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-SAME-LENS))
     (914 914 (:REWRITE CONSP-BY-LEN))
     (717 93 (:REWRITE NATP-RW))
     (546 369 (:REWRITE DEFAULT-+-2))
     (422 82 (:REWRITE NTHCDR-WHEN-ATOM))
     (387 369 (:REWRITE DEFAULT-+-1))
     (380 332 (:REWRITE DEFAULT-<-2))
     (369 332 (:REWRITE DEFAULT-<-1))
     (340 340 (:LINEAR LEN-WHEN-PREFIXP))
     (300 150
          (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (296 56
          (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-LEFT))
     (288 48
          (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
     (278 278 (:TYPE-PRESCRIPTION NATP))
     (272 272 (:REWRITE CONSP-OF-CDR-BY-LEN))
     (146 146
          (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
     (134 134
          (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
     (130 26 (:REWRITE <-+-NEGATIVE-0-2))
     (96 96 (:TYPE-PRESCRIPTION PREFIXP))
     (84 14
         (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-RIGHT))
     (84 14
         (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT))
     (70 10 (:REWRITE <-+-NEGATIVE-0-1))
     (48 48 (:REWRITE PREFIXP-TRANSITIVE . 2))
     (48 48 (:REWRITE PREFIXP-TRANSITIVE . 1))
     (48 48
         (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
     (48 48
         (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
     (42 42 (:REWRITE DEFAULT-UNARY-MINUS))
     (18 18 (:REWRITE CONSP-OF-CDDR-BY-LEN))
     (1 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(STR::ISTREQV-IMPLIES-EQUAL-ISTRPOS-IMPL-2
     (6038 56
           (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
     (4425 48
           (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
     (3058 166 (:DEFINITION LEN))
     (1964 1964
           (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
     (1794 332 (:REWRITE LEN-WHEN-ATOM))
     (1608 42 (:REWRITE CONSP-OF-NTHCDR))
     (1557 1557 (:TYPE-PRESCRIPTION LEN))
     (1401 18 (:REWRITE LEN-OF-NTHCDR))
     (1304 236 (:REWRITE DEFAULT-CDR))
     (1136 642 (:REWRITE STR::CONSP-OF-EXPLODE))
     (989 56
          (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
     (981 48
          (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
     (938 14
          (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-SAME-LENS))
     (914 914 (:REWRITE CONSP-BY-LEN))
     (717 93 (:REWRITE NATP-RW))
     (546 369 (:REWRITE DEFAULT-+-2))
     (422 82 (:REWRITE NTHCDR-WHEN-ATOM))
     (387 369 (:REWRITE DEFAULT-+-1))
     (380 332 (:REWRITE DEFAULT-<-2))
     (369 332 (:REWRITE DEFAULT-<-1))
     (340 340 (:LINEAR LEN-WHEN-PREFIXP))
     (300 150
          (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (296 56
          (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-LEFT))
     (288 48
          (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
     (278 278 (:TYPE-PRESCRIPTION NATP))
     (272 272 (:REWRITE CONSP-OF-CDR-BY-LEN))
     (146 146
          (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
     (134 134
          (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
     (130 26 (:REWRITE <-+-NEGATIVE-0-2))
     (96 96 (:TYPE-PRESCRIPTION PREFIXP))
     (84 14
         (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-RIGHT))
     (84 14
         (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT))
     (70 10 (:REWRITE <-+-NEGATIVE-0-1))
     (48 48 (:REWRITE PREFIXP-TRANSITIVE . 2))
     (48 48 (:REWRITE PREFIXP-TRANSITIVE . 1))
     (48 48
         (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
     (48 48
         (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
     (42 42 (:REWRITE DEFAULT-UNARY-MINUS))
     (18 18 (:REWRITE CONSP-OF-CDDR-BY-LEN))
     (1 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(STR::ISTREQV-IMPLIES-EQUAL-ISTRPOS-1
     (242 2 (:DEFINITION STR::ISTRPOS-IMPL))
     (160 2 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
     (152 8 (:DEFINITION LEN))
     (122 2 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
     (76 16 (:REWRITE LEN-WHEN-ATOM))
     (74 74
         (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
     (52 30 (:REWRITE STR::CONSP-OF-EXPLODE))
     (44 44 (:TYPE-PRESCRIPTION LEN))
     (40 8 (:REWRITE DEFAULT-CDR))
     (38 38 (:REWRITE CONSP-BY-LEN))
     (22 12 (:REWRITE DEFAULT-+-2))
     (18 2 (:REWRITE ZP-OPEN))
     (14 12 (:REWRITE DEFAULT-+-1))
     (14 2 (:REWRITE COMMUTATIVITY-OF-+))
     (12 12 (:LINEAR LEN-WHEN-PREFIXP))
     (12 2
         (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
     (12 2
         (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
     (12 2
         (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
     (12 2
         (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-LEFT))
     (10 2 (:REWRITE |(< 0 (len x))|))
     (8 8
        (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
     (8 8 (:REWRITE CONSP-OF-CDR-BY-LEN))
     (8 2 (:DEFINITION NFIX))
     (6 6
        (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
     (6 2 (:REWRITE UNICITY-OF-0))
     (4 4 (:TYPE-PRESCRIPTION PREFIXP))
     (4 2 (:REWRITE NEGATIVE-WHEN-NATP))
     (4 2 (:DEFINITION FIX))
     (2 2 (:TYPE-PRESCRIPTION STR::IPREFIXP))
     (2 2 (:REWRITE PREFIXP-TRANSITIVE . 2))
     (2 2 (:REWRITE PREFIXP-TRANSITIVE . 1))
     (2 2
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
     (2 2
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
     (2 2 (:REWRITE OPEN-SMALL-NTHCDR))
     (2 2
        (:REWRITE LEN-OF-NONEMPTY-STRING-IS-POSITIVE)))
(STR::ISTREQV-IMPLIES-EQUAL-ISTRPOS-2
     (242 2 (:DEFINITION STR::ISTRPOS-IMPL))
     (160 2 (:REWRITE STR::IPREFIXP-WHEN-PREFIXP))
     (152 8 (:DEFINITION LEN))
     (122 2 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
     (76 16 (:REWRITE LEN-WHEN-ATOM))
     (74 74
         (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
     (52 30 (:REWRITE STR::CONSP-OF-EXPLODE))
     (44 44 (:TYPE-PRESCRIPTION LEN))
     (40 8 (:REWRITE DEFAULT-CDR))
     (38 38 (:REWRITE CONSP-BY-LEN))
     (22 12 (:REWRITE DEFAULT-+-2))
     (18 2 (:REWRITE ZP-OPEN))
     (14 12 (:REWRITE DEFAULT-+-1))
     (14 2 (:REWRITE COMMUTATIVITY-OF-+))
     (12 12 (:LINEAR LEN-WHEN-PREFIXP))
     (12 2
         (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
     (12 2
         (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
     (12 2
         (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-RIGHT))
     (12 2
         (:REWRITE STR::IPREFIXP-WHEN-NOT-CONSP-LEFT))
     (10 2 (:REWRITE |(< 0 (len x))|))
     (8 8
        (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
     (8 8 (:REWRITE CONSP-OF-CDR-BY-LEN))
     (8 2 (:DEFINITION NFIX))
     (6 6
        (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
     (6 2 (:REWRITE UNICITY-OF-0))
     (4 4 (:TYPE-PRESCRIPTION PREFIXP))
     (4 2 (:REWRITE NEGATIVE-WHEN-NATP))
     (4 2 (:DEFINITION FIX))
     (2 2 (:TYPE-PRESCRIPTION STR::IPREFIXP))
     (2 2 (:REWRITE PREFIXP-TRANSITIVE . 2))
     (2 2 (:REWRITE PREFIXP-TRANSITIVE . 1))
     (2 2
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
     (2 2
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
     (2 2 (:REWRITE OPEN-SMALL-NTHCDR))
     (2 2
        (:REWRITE LEN-OF-NONEMPTY-STRING-IS-POSITIVE)))