(MILAWA::SYMBOL-LISTP
     (17 2
         (:REWRITE MILAWA::RANK-WHEN-NOT-CONSP))
     (8 3
        (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (8 2
        (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (5 5 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (4 1
        (:REWRITE MILAWA::SYMBOLP-WHEN-NATP-CHEAP))
     (4 1
        (:REWRITE MILAWA::SYMBOLP-WHEN-CONSP-CHEAP))
     (4 1
        (:REWRITE MILAWA::RANK-WHEN-MEMBERP-WEAK))
     (4 1 (:REWRITE MILAWA::RANK-WHEN-MEMBERP))
     (3 3 (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (3 3
        (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (2 2
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (2 2
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (2 2
        (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
     (2 2
        (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
     (2 2
        (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
     (1 1 (:REWRITE MILAWA::TRUE-LISTP-OF-CDR))
     (1 1
        (:REWRITE MILAWA::SYMBOLP-WHEN-BOOLEANP-CHEAP))
     (1 1
        (:REWRITE MILAWA::CONSP-OF-CDR-WITH-LEN-FREE))
     (1 1
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-3-CHEAP))
     (1 1
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-2-CHEAP))
     (1 1
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-MEMBERP-NOT-CAR-CHEAP))
     (1 1
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-LEN-TWO-CHEAP))
     (1 1
        (:REWRITE MILAWA::CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END))
     (1 1 (:REWRITE MILAWA::CDR-WHEN-NOT-CONSP))
     (1 1 (:REWRITE MILAWA::CAR-WHEN-NOT-CONSP))
     (1 1
        (:REWRITE MILAWA::CAR-WHEN-MEMBERP-OF-SINGLETON-LIST-CHEAP))
     (1 1
        (:REWRITE MILAWA::CAR-WHEN-MEMBERP-AND-NOT-MEMBERP-OF-CDR-CHEAP)))
(MILAWA::SYMBOL-LISTP-WHEN-NOT-CONSP
     (4 1
        (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (3 1
        (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (1 1
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (1 1
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (1 1 (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (1 1
        (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (1 1 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (1 1
        (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (1 1
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP)))
(MILAWA::SYMBOL-LISTP-OF-CONS
     (63 6
         (:REWRITE MILAWA::SYMBOL-LISTP-WHEN-NOT-CONSP))
     (24 12
         (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (22 7
         (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (20 5
         (:REWRITE MILAWA::SYMBOLP-WHEN-NATP-CHEAP))
     (20 5
         (:REWRITE MILAWA::SYMBOLP-WHEN-CONSP-CHEAP))
     (12 12
         (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (12 12
         (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (10 10
         (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (10 10
         (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (10 10 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (5 5
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (5 5
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (5 5
        (:REWRITE MILAWA::SYMBOLP-WHEN-BOOLEANP-CHEAP))
     (3 3
        (:REWRITE MILAWA::CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END))
     (3 3
        (:REWRITE MILAWA::CAR-WHEN-MEMBERP-OF-SINGLETON-LIST-CHEAP))
     (3 3
        (:REWRITE MILAWA::CAR-WHEN-MEMBERP-AND-NOT-MEMBERP-OF-CDR-CHEAP))
     (2 2 (:REWRITE MILAWA::TRUE-LISTP-OF-CDR))
     (2 2
        (:REWRITE MILAWA::CONSP-OF-CDR-WITH-LEN-FREE))
     (2 2
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-3-CHEAP))
     (2 2
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-2-CHEAP))
     (2 2
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-MEMBERP-NOT-CAR-CHEAP))
     (2 2
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-LEN-TWO-CHEAP))
     (2 2 (:REWRITE MILAWA::CDR-WHEN-NOT-CONSP))
     (2 2
        (:REWRITE MILAWA::CAR-WHEN-NOT-CONSP)))
(MILAWA::BOOLEANP-OF-SYMBOL-LISTP
     (61 30
         (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (56 17
         (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (48 12
         (:REWRITE MILAWA::BOOLEANP-WHEN-NATP-CHEAP))
     (48 12
         (:REWRITE MILAWA::BOOLEANP-WHEN-CONSP-CHEAP))
     (30 30
         (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (30 30
         (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (26 26
         (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (26 26
         (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (26 26 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (24 2
         (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
     (20 2
         (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (13 13
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (13 13
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (12 2
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
     (12 2
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
     (5 5 (:REWRITE MILAWA::TRUE-LISTP-OF-CDR))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WITH-LEN-FREE))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-3-CHEAP))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-2-CHEAP))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-MEMBERP-NOT-CAR-CHEAP))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-LEN-TWO-CHEAP))
     (5 5
        (:REWRITE MILAWA::CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END))
     (5 5 (:REWRITE MILAWA::CDR-WHEN-NOT-CONSP))
     (4 4 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
     (4 4
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
     (4 4
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
     (4 4 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
     (4 4
        (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
     (4 1
        (:REWRITE MILAWA::SYMBOLP-WHEN-NATP-CHEAP))
     (4 1
        (:REWRITE MILAWA::SYMBOLP-WHEN-CONSP-CHEAP))
     (2 2
        (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
     (1 1
        (:REWRITE MILAWA::SYMBOLP-WHEN-BOOLEANP-CHEAP)))
(MILAWA::SYMBOL-LISTP-OF-LIST-FIX
     (393 39
          (:REWRITE MILAWA::LIST-FIX-WHEN-TRUE-LISTP))
     (338 113
          (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (269 98
          (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (248 101
          (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (203 38 (:REWRITE MILAWA::CONSP-OF-LIST-FIX))
     (139 139
          (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (139 139
          (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (113 113
          (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (84 50 (:REWRITE MILAWA::TRUE-LISTP-OF-CDR))
     (68 68
         (:REWRITE MILAWA::CONSP-OF-CDR-WITH-LEN-FREE))
     (68 68
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-3-CHEAP))
     (68 68
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-2-CHEAP))
     (68 68
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-MEMBERP-NOT-CAR-CHEAP))
     (68 68
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-LEN-TWO-CHEAP))
     (60 60
         (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (60 60
         (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (60 60 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (34 34
         (:REWRITE MILAWA::CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END))
     (34 34
         (:REWRITE MILAWA::CDR-WHEN-NOT-CONSP))
     (18 3
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
     (18 3
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
     (12 3
         (:REWRITE MILAWA::SYMBOLP-WHEN-NATP-CHEAP))
     (12 3
         (:REWRITE MILAWA::SYMBOLP-WHEN-CONSP-CHEAP))
     (12 3
         (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
     (6 6 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
     (6 6
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
     (6 6
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
     (6 6 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
     (6 6
        (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
     (3 3
        (:REWRITE MILAWA::SYMBOLP-WHEN-BOOLEANP-CHEAP))
     (3 3
        (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (3 3
        (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-ONE))
     (3 3
        (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY)))
(MILAWA::SYMBOL-LISTP-OF-APP
     (1017 288
           (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (842 291
          (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (730 73
          (:REWRITE MILAWA::APP-WHEN-NOT-CONSP-TWO))
     (705 72 (:REWRITE MILAWA::CONSP-OF-APP))
     (291 291
          (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (291 291
          (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (248 244
          (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (246 246
          (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (246 246
          (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (246 246 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (244 244
          (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (99 99
         (:REWRITE MILAWA::CONSP-OF-CDR-WITH-LEN-FREE))
     (99 99
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-3-CHEAP))
     (99 99
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-2-CHEAP))
     (99 99
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-MEMBERP-NOT-CAR-CHEAP))
     (99 99
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-LEN-TWO-CHEAP))
     (73 73
         (:REWRITE MILAWA::APP-OF-SINGLETON-LIST-CHEAP))
     (66 66
         (:REWRITE MILAWA::CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END))
     (66 66
         (:REWRITE MILAWA::CDR-WHEN-NOT-CONSP))
     (65 65 (:REWRITE MILAWA::TRUE-LISTP-OF-CDR))
     (42 7
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
     (42 7
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
     (28 7
         (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
     (14 14 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
     (14 14
         (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
     (14 14
         (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
     (14 14 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
     (14 14
         (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
     (12 3
         (:REWRITE MILAWA::SYMBOLP-WHEN-NATP-CHEAP))
     (12 3
         (:REWRITE MILAWA::SYMBOLP-WHEN-CONSP-CHEAP))
     (7 7
        (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (7 7
        (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-ONE))
     (7 7
        (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
     (7 1
        (:REWRITE MILAWA::LIST-FIX-WHEN-TRUE-LISTP))
     (5 1
        (:REWRITE MILAWA::LIST-FIX-WHEN-NOT-CONSP))
     (3 3
        (:REWRITE MILAWA::SYMBOLP-WHEN-BOOLEANP-CHEAP)))
(MILAWA::SYMBOL-LISTP-OF-REV
     (702 142
          (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (271 100
          (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (208 39 (:REWRITE MILAWA::REV-UNDER-IFF))
     (142 142
          (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (142 142
          (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (96 96
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (68 68
         (:REWRITE MILAWA::CONSP-OF-CDR-WITH-LEN-FREE))
     (68 68
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-3-CHEAP))
     (68 68
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-2-CHEAP))
     (68 68
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-MEMBERP-NOT-CAR-CHEAP))
     (68 68
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-LEN-TWO-CHEAP))
     (60 60
         (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (60 60
         (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (60 60 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (57 57
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (39 39 (:REWRITE MILAWA::TRUE-LISTP-OF-REV))
     (34 34
         (:REWRITE MILAWA::CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END))
     (34 34
         (:REWRITE MILAWA::CDR-WHEN-NOT-CONSP))
     (33 33 (:REWRITE MILAWA::TRUE-LISTP-OF-CDR))
     (18 3
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
     (18 3
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
     (15 1 (:REWRITE MILAWA::APP-WHEN-NOT-CONSP))
     (12 3
         (:REWRITE MILAWA::SYMBOLP-WHEN-NATP-CHEAP))
     (12 3
         (:REWRITE MILAWA::SYMBOLP-WHEN-CONSP-CHEAP))
     (12 3
         (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
     (6 6 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
     (6 6
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
     (6 6
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
     (6 6 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
     (6 6
        (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
     (3 3
        (:REWRITE MILAWA::SYMBOLP-WHEN-BOOLEANP-CHEAP))
     (3 3
        (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (3 3
        (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-ONE))
     (3 3
        (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
     (1 1
        (:REWRITE MILAWA::APP-WHEN-NOT-CONSP-TWO))
     (1 1
        (:REWRITE MILAWA::APP-OF-SINGLETON-LIST-CHEAP))
     (1 1
        (:REWRITE MILAWA::APP-OF-CONS-WHEN-NOT-CONSP-RIGHT)))
(MILAWA::SYMBOLP-OF-CAR-WHEN-SYMBOL-LISTP
     (31 13
         (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (30 18
         (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (20 5
         (:REWRITE MILAWA::SYMBOLP-WHEN-NATP-CHEAP))
     (20 5
         (:REWRITE MILAWA::SYMBOLP-WHEN-CONSP-CHEAP))
     (18 18
         (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (18 18
         (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (12 1
         (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
     (11 11
         (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (11 11
         (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (11 11 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (10 1
         (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (6 6
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (6 6
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (6 6
        (:REWRITE MILAWA::CAR-WHEN-MEMBERP-OF-SINGLETON-LIST-CHEAP))
     (6 6
        (:REWRITE MILAWA::CAR-WHEN-MEMBERP-AND-NOT-MEMBERP-OF-CDR-CHEAP))
     (6 1
        (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
     (6 1
        (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
     (5 5
        (:REWRITE MILAWA::SYMBOLP-WHEN-BOOLEANP-CHEAP))
     (2 2 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
     (2 2
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
     (2 2
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
     (2 2 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
     (2 2
        (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
     (1 1
        (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY)))
(MILAWA::SYMBOL-LISTP-OF-CDR-WHEN-SYMBOL-LISTP
     (51 18
         (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (45 18
         (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (18 18
         (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (18 18
         (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (12 1
         (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
     (11 11
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (11 11
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (11 11
         (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (11 11
         (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (11 11 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (10 1
         (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (6 6
        (:REWRITE MILAWA::CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END))
     (6 1
        (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
     (6 1
        (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
     (5 5 (:REWRITE MILAWA::TRUE-LISTP-OF-CDR))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WITH-LEN-FREE))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-3-CHEAP))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-2-CHEAP))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-MEMBERP-NOT-CAR-CHEAP))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-LEN-TWO-CHEAP))
     (2 2 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
     (2 2
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
     (2 2
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
     (2 2 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
     (2 2
        (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
     (1 1
        (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY)))
(MILAWA::SYMBOLP-WHEN-MEMBERP-OF-SYMBOL-LISTP
 (330 25
      (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
 (284 25
      (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
 (256 16
      (:REWRITE MILAWA::SUBSETP-WHEN-NOT-CONSP-TWO))
 (109 50
      (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
 (108 42
      (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
 (88 22
     (:REWRITE MILAWA::SUBSETP-WHEN-PREFIXP-CHEAP))
 (80 16
     (:REWRITE MILAWA::SUBSETP-WHEN-NOT-CONSP))
 (80 11
     (:REWRITE MILAWA::MEMBERP-WHEN-NOT-CONSP))
 (78 15
     (:REWRITE MILAWA::CDR-WHEN-NOT-CONSP))
 (69 69
     (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
 (66 3 (:REWRITE MILAWA::SUBSETP-OF-CONS))
 (33 24
     (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
 (32 8
     (:REWRITE MILAWA::SYMBOLP-WHEN-NATP-CHEAP))
 (32 8
     (:REWRITE MILAWA::SYMBOLP-WHEN-CONSP-CHEAP))
 (30 30
     (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
 (30 30
     (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
 (30 30 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
 (26 26
     (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-3-CHEAP))
 (26 26
     (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-2-CHEAP))
 (26 26
     (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-MEMBERP-NOT-CAR-CHEAP))
 (25 25
     (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
 (25 25
     (:REWRITE MILAWA::CONSP-OF-CDR-WITH-LEN-FREE))
 (25 25
     (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-LEN-TWO-CHEAP))
 (25 6
     (:REWRITE MILAWA::SYMBOL-LISTP-WHEN-NOT-CONSP))
 (24 24
     (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
 (23 23
     (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-ONE))
 (22 22
     (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
 (22 22
     (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
 (22 22
     (:REWRITE MILAWA::SUBSETP-TRANSITIVE-TWO))
 (22 22
     (:REWRITE MILAWA::SUBSETP-TRANSITIVE-ONE))
 (17 3
     (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
 (16 16
     (:REWRITE MILAWA::CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END))
 (15 15 (:REWRITE MILAWA::TRUE-LISTP-OF-CDR))
 (13 13
     (:REWRITE MILAWA::NOT-IN-SUBSET-WHEN-NOT-IN-SUPERSET-TWO))
 (13 13
     (:REWRITE MILAWA::MEMBERP-WHEN-DISJOINTP-TWO))
 (13 13
     (:REWRITE MILAWA::MEMBERP-WHEN-DISJOINTP-ONE))
 (13 3
     (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
 (13 3
     (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
 (8 8
    (:REWRITE MILAWA::SYMBOLP-WHEN-BOOLEANP-CHEAP))
 (5 5
    (:REWRITE MILAWA::CONSP-OF-CDR-OF-CDR-WITH-LEN-FREE))
 (5 5
    (:REWRITE MILAWA::CONSP-OF-CDR-OF-CDR-WHEN-TUPLEP-3-CHEAP))
 (5 5
    (:REWRITE MILAWA::CDR-OF-CDR-WITH-LEN-FREE-PAST-THE-END))
 (5 5
    (:REWRITE MILAWA::CDR-OF-CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END))
 (4 4 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
 (4 4
    (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
 (4 4
    (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
 (4 4 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
 (4 4
    (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
 (1 1 (:REWRITE MILAWA::CDR-OF-CONS)))
(MILAWA::SYMBOLP-WHEN-MEMBERP-OF-SYMBOL-LISTP-ALT
     (10 2
         (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
     (10 1
         (:REWRITE MILAWA::MEMBERP-WHEN-NOT-CONSP))
     (5 2
        (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (5 1 (:REWRITE MILAWA::CDR-WHEN-NOT-CONSP))
     (4 2
        (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (3 1
        (:REWRITE MILAWA::SYMBOL-LISTP-WHEN-NOT-CONSP))
     (2 2
        (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
     (2 2
        (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
     (1 1
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (1 1
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (1 1
        (:REWRITE MILAWA::NOT-IN-SUBSET-WHEN-NOT-IN-SUPERSET-TWO))
     (1 1
        (:REWRITE MILAWA::NOT-IN-SUBSET-WHEN-NOT-IN-SUPERSET-ONE))
     (1 1 (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (1 1
        (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (1 1 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (1 1
        (:REWRITE MILAWA::MEMBERP-WHEN-DISJOINTP-TWO))
     (1 1
        (:REWRITE MILAWA::MEMBERP-WHEN-DISJOINTP-ONE))
     (1 1
        (:REWRITE MILAWA::CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END)))
(MILAWA::SYMBOL-LISTP-OF-REMOVE-ALL-WHEN-SYMBOL-LISTP
     (151 54
          (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (98 38
         (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (93 28
         (:REWRITE MILAWA::REMOVE-ALL-WHEN-NOT-CONSP))
     (73 3
         (:REWRITE MILAWA::SYMBOLP-WHEN-MEMBERP-OF-SYMBOL-LISTP))
     (61 3
         (:REWRITE MILAWA::MEMBERP-OF-REMOVE-ALL))
     (60 28
         (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
     (54 54
         (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (54 54
         (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (44 1 (:REWRITE MILAWA::MEMBERP-OF-CONS))
     (38 7
         (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
     (34 34
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (32 7
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
     (32 7
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
     (28 28
         (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
     (28 28
         (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
     (26 10
         (:REWRITE MILAWA::CDR-WHEN-NOT-CONSP))
     (23 23
         (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (23 23
         (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (23 23 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (23 5
         (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (21 21
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (18 18
         (:REWRITE MILAWA::NOT-IN-SUBSET-WHEN-NOT-IN-SUPERSET-TWO))
     (18 18
         (:REWRITE MILAWA::NOT-IN-SUBSET-WHEN-NOT-IN-SUPERSET-ONE))
     (18 18
         (:REWRITE MILAWA::MEMBERP-WHEN-DISJOINTP-TWO))
     (18 18
         (:REWRITE MILAWA::MEMBERP-WHEN-DISJOINTP-ONE))
     (13 13
         (:REWRITE MILAWA::TRUE-LISTP-OF-REMOVE-ALL))
     (12 3
         (:REWRITE MILAWA::SYMBOLP-WHEN-NATP-CHEAP))
     (12 3
         (:REWRITE MILAWA::SYMBOLP-WHEN-CONSP-CHEAP))
     (10 10 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
     (10 10
         (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
     (10 10
         (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
     (10 10 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
     (10 10
         (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
     (10 10
         (:REWRITE MILAWA::CONSP-OF-CDR-WITH-LEN-FREE))
     (10 10
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-3-CHEAP))
     (10 10
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-2-CHEAP))
     (10 10
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-MEMBERP-NOT-CAR-CHEAP))
     (10 10
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-LEN-TWO-CHEAP))
     (10 10
         (:REWRITE MILAWA::CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END))
     (5 5 (:REWRITE MILAWA::TRUE-LISTP-OF-CDR))
     (5 5
        (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
     (3 3
        (:REWRITE MILAWA::SYMBOLP-WHEN-MEMBERP-OF-SYMBOL-LISTP-ALT))
     (3 3
        (:REWRITE MILAWA::SYMBOLP-WHEN-BOOLEANP-CHEAP))
     (3 3
        (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-ONE))
     (3 1
        (:REWRITE MILAWA::LIST-FIX-WHEN-TRUE-LISTP)))
(MILAWA::SYMBOL-LISTP-OF-REMOVE-DUPLICATES
     (422 135
          (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (284 98
          (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (249 76
          (:REWRITE MILAWA::REMOVE-DUPLICATES-WHEN-NOT-CONSP))
     (177 3 (:REWRITE MILAWA::UNIQUEP-OF-CONS))
     (142 142
          (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (142 142
          (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (114 66
          (:REWRITE MILAWA::UNIQUEP-WHEN-UNIQUEP-OF-DOMAIN))
     (98 98
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (68 20
         (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
     (64 64
         (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (64 64
         (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (64 64 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (63 63
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (56 32
         (:REWRITE MILAWA::CDR-WHEN-NOT-CONSP))
     (46 10
         (:REWRITE MILAWA::MEMBERP-WHEN-NOT-CONSP))
     (45 15
         (:REWRITE MILAWA::UNIQUEP-OF-CDR-WHEN-UNIQUEP))
     (39 39
         (:REWRITE MILAWA::CONSP-OF-CDR-WITH-LEN-FREE))
     (39 39
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-3-CHEAP))
     (39 39
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-2-CHEAP))
     (39 39
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-MEMBERP-NOT-CAR-CHEAP))
     (39 39
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-LEN-TWO-CHEAP))
     (35 35
         (:REWRITE MILAWA::TRUE-LISTP-OF-REMOVE-DUPLICATES))
     (32 32
         (:REWRITE MILAWA::CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END))
     (30 3
         (:REWRITE MILAWA::DOMAIN-WHEN-NOT-CONSP))
     (26 2
         (:REWRITE MILAWA::MEMBERP-OF-REMOVE-DUPLICATES))
     (23 23 (:REWRITE MILAWA::TRUE-LISTP-OF-CDR))
     (20 20
         (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
     (20 20
         (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
     (18 3
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
     (18 3
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
     (15 3 (:REWRITE MILAWA::CONSP-OF-DOMAIN))
     (12 3
         (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
     (10 10
         (:REWRITE MILAWA::NOT-IN-SUBSET-WHEN-NOT-IN-SUPERSET-TWO))
     (10 10
         (:REWRITE MILAWA::NOT-IN-SUBSET-WHEN-NOT-IN-SUPERSET-ONE))
     (10 10
         (:REWRITE MILAWA::MEMBERP-WHEN-DISJOINTP-TWO))
     (10 10
         (:REWRITE MILAWA::MEMBERP-WHEN-DISJOINTP-ONE))
     (8 2
        (:REWRITE MILAWA::SYMBOLP-WHEN-NATP-CHEAP))
     (8 2
        (:REWRITE MILAWA::SYMBOLP-WHEN-CONSP-CHEAP))
     (6 6 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
     (6 6
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
     (6 6
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
     (6 6 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
     (6 6
        (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
     (3 3
        (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (3 3
        (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-ONE))
     (3 3
        (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
     (3 1
        (:REWRITE MILAWA::LIST-FIX-WHEN-TRUE-LISTP))
     (2 2
        (:REWRITE MILAWA::SYMBOLP-WHEN-BOOLEANP-CHEAP)))
(MILAWA::SYMBOL-LISTP-OF-DIFFERENCE-WHEN-SYMBOL-LISTP
     (209 75
          (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (177 23
          (:REWRITE MILAWA::SUBSETP-WHEN-NOT-CONSP-TWO))
     (173 59
          (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (154 23
          (:REWRITE MILAWA::SUBSETP-WHEN-NOT-CONSP))
     (145 3
          (:REWRITE MILAWA::SYMBOLP-WHEN-MEMBERP-OF-SYMBOL-LISTP))
     (133 3
          (:REWRITE MILAWA::MEMBERP-OF-DIFFERENCE))
     (93 28
         (:REWRITE MILAWA::DIFFERENCE-WHEN-NOT-CONSP))
     (90 5 (:REWRITE MILAWA::SUBSETP-OF-CDR))
     (88 17
         (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
     (78 78
         (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (78 78
         (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (59 17
         (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
     (51 51
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (47 29
         (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (41 41
         (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (41 41
         (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (41 41 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (38 38
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (36 12
         (:REWRITE MILAWA::CDR-WHEN-NOT-CONSP))
     (32 1 (:REWRITE MILAWA::SUBSETP-OF-CONS))
     (29 29
         (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
     (26 26
         (:REWRITE MILAWA::SUBSETP-TRANSITIVE-TWO))
     (26 26
         (:REWRITE MILAWA::SUBSETP-TRANSITIVE-ONE))
     (26 4
         (:REWRITE MILAWA::MEMBERP-WHEN-NOT-CONSP))
     (24 2
         (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
     (20 6
         (:REWRITE MILAWA::NOT-IN-SUBSET-WHEN-NOT-IN-SUPERSET-ONE))
     (17 17
         (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
     (13 13
         (:REWRITE MILAWA::TRUE-LISTP-OF-DIFFERENCE))
     (12 12
         (:REWRITE MILAWA::CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END))
     (12 3
         (:REWRITE MILAWA::SYMBOLP-WHEN-NATP-CHEAP))
     (12 3
         (:REWRITE MILAWA::SYMBOLP-WHEN-CONSP-CHEAP))
     (12 2
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
     (12 2
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
     (11 11
         (:REWRITE MILAWA::CONSP-OF-CDR-WITH-LEN-FREE))
     (11 11
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-3-CHEAP))
     (11 11
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-2-CHEAP))
     (11 11
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-MEMBERP-NOT-CAR-CHEAP))
     (11 11
         (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-LEN-TWO-CHEAP))
     (6 6 (:REWRITE MILAWA::TRUE-LISTP-OF-CDR))
     (6 6
        (:REWRITE MILAWA::NOT-IN-SUBSET-WHEN-NOT-IN-SUPERSET-TWO))
     (6 6
        (:REWRITE MILAWA::MEMBERP-WHEN-DISJOINTP-TWO))
     (6 6
        (:REWRITE MILAWA::MEMBERP-WHEN-DISJOINTP-ONE))
     (4 4 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
     (4 4
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
     (4 4
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
     (4 4 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
     (4 4
        (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
     (3 3
        (:REWRITE MILAWA::SYMBOLP-WHEN-MEMBERP-OF-SYMBOL-LISTP-ALT))
     (3 3
        (:REWRITE MILAWA::SYMBOLP-WHEN-BOOLEANP-CHEAP))
     (2 2 (:REWRITE MILAWA::SUBSETP-REFLEXIVE)))
(MILAWA::SYMBOL-LISTP-OF-SUBSETP-WHEN-SYMBOL-LISTP
     (89 26
         (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (73 26
         (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (54 7
         (:REWRITE MILAWA::SUBSETP-WHEN-NOT-CONSP-TWO))
     (35 35
         (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (31 13
         (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (28 28
         (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (24 2
         (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
     (21 21
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (21 21
         (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (21 21
         (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (21 21
         (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (21 21 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (17 9
         (:REWRITE MILAWA::SUBSETP-TRANSITIVE-ONE))
     (17 7
         (:REWRITE MILAWA::SUBSETP-WHEN-NOT-CONSP))
     (13 13
         (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
     (12 2
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
     (12 2
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
     (11 7 (:REWRITE MILAWA::CDR-WHEN-NOT-CONSP))
     (11 3
         (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
     (10 1
         (:REWRITE MILAWA::MEMBERP-WHEN-NOT-CONSP))
     (7 7
        (:REWRITE MILAWA::CDR-WHEN-TRUE-LISTP-WITH-LEN-FREE-PAST-THE-END))
     (6 5
        (:REWRITE MILAWA::SYMBOL-LISTP-OF-CDR-WHEN-SYMBOL-LISTP))
     (5 5 (:REWRITE MILAWA::TRUE-LISTP-OF-CDR))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WITH-LEN-FREE))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-3-CHEAP))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-TUPLEP-2-CHEAP))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-MEMBERP-NOT-CAR-CHEAP))
     (5 5
        (:REWRITE MILAWA::CONSP-OF-CDR-WHEN-LEN-TWO-CHEAP))
     (5 3
        (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
     (4 4 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
     (4 4
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
     (4 4
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
     (4 4 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
     (4 4
        (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
     (3 3
        (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
     (1 1
        (:REWRITE MILAWA::NOT-IN-SUBSET-WHEN-NOT-IN-SUPERSET-TWO))
     (1 1
        (:REWRITE MILAWA::NOT-IN-SUBSET-WHEN-NOT-IN-SUPERSET-ONE))
     (1 1
        (:REWRITE MILAWA::MEMBERP-WHEN-DISJOINTP-TWO))
     (1 1
        (:REWRITE MILAWA::MEMBERP-WHEN-DISJOINTP-ONE)))
(MILAWA::SYMBOL-LISTP-OF-SUBSETP-WHEN-SYMBOL-LISTP-ALT
     (12 3
         (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (10 1
         (:REWRITE MILAWA::SYMBOL-LISTP-WHEN-NOT-CONSP))
     (10 1
         (:REWRITE MILAWA::SUBSETP-WHEN-NOT-CONSP-TWO))
     (10 1
         (:REWRITE MILAWA::SUBSETP-WHEN-NOT-CONSP))
     (9 3
        (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (4 1
        (:REWRITE MILAWA::SUBSETP-WHEN-PREFIXP-CHEAP))
     (3 3
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (3 3
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (3 3 (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (3 3
        (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (3 3 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (1 1
        (:REWRITE MILAWA::SUBSETP-TRANSITIVE-TWO))
     (1 1
        (:REWRITE MILAWA::SUBSETP-TRANSITIVE-ONE))
     (1 1
        (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (1 1
        (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-ONE))
     (1 1
        (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY)))
(MILAWA::SYMBOL-LISTP-OF-REPEAT
     (541 15 (:REWRITE MILAWA::LESS-OF-ONE-LEFT))
     (329 7
          (:REWRITE MILAWA::MINUS-WHEN-NOT-LESS))
     (313 48
          (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
     (236 29
          (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (216 8
          (:REWRITE MILAWA::SYMBOL-LISTP-WHEN-NOT-CONSP))
     (208 8 (:REWRITE MILAWA::CONSP-OF-REPEAT))
     (187 4 (:REWRITE MILAWA::|(< a (- b c))|))
     (166 65
          (:REWRITE MILAWA::ZP-WHEN-NOT-NATP-CHEAP))
     (93 81
         (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (90 1 (:REWRITE MILAWA::SUBSETP-OF-CONS))
     (88 88 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (73 1 (:REWRITE MILAWA::|(= c (- a b))|))
     (59 59
         (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (59 59
         (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (59 59
         (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (52 13
         (:REWRITE MILAWA::SYMBOLP-WHEN-NATP-CHEAP))
     (52 13
         (:REWRITE MILAWA::SYMBOLP-WHEN-CONSP-CHEAP))
     (46 46
         (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (42 42
         (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
     (42 42
         (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
     (29 29
         (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
     (20 20 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
     (15 5 (:REWRITE MILAWA::LESS-OF-ONE-RIGHT))
     (14 14
         (:REWRITE MILAWA::SYMBOLP-WHEN-MEMBERP-OF-SYMBOL-LISTP-ALT))
     (14 7
         (:REWRITE MILAWA::NFIX-WHEN-NOT-NATP-CHEAP))
     (13 13
         (:REWRITE MILAWA::SYMBOLP-WHEN-BOOLEANP-CHEAP))
     (12 1 (:REWRITE MILAWA::|(< (- a b) c)|))
     (11 7 (:REWRITE MILAWA::NFIX-WHEN-ZP-CHEAP))
     (10 10
         (:REWRITE MILAWA::TRANSITIVITY-OF-<-FOUR))
     (10 10
         (:REWRITE MILAWA::SYMBOL-LISTP-OF-SUBSETP-WHEN-SYMBOL-LISTP-ALT))
     (9 3
        (:REWRITE MILAWA::SUBSETP-WHEN-PREFIXP-CHEAP))
     (7 7 (:REWRITE MILAWA::NATP-OF-MINUS))
     (7 7
        (:REWRITE MILAWA::MINUS-WHEN-ZP-RIGHT-CHEAP))
     (7 7
        (:REWRITE MILAWA::MINUS-WHEN-ZP-LEFT-CHEAP))
     (6 6
        (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-ONE))
     (3 3
        (:REWRITE MILAWA::SUBSETP-TRANSITIVE-TWO))
     (3 3
        (:REWRITE MILAWA::SUBSETP-TRANSITIVE-ONE)))