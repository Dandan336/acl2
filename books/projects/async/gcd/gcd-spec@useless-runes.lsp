(ADE::V-<-CORRECT-INSTANCE
     (180 3 (:DEFINITION TAKE))
     (174 6 (:REWRITE TAKE-OF-TOO-MANY))
     (88 7 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (42 6 (:DEFINITION LEN))
     (25 16 (:REWRITE DEFAULT-+-2))
     (24 3 (:DEFINITION NTHCDR))
     (16 16
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (16 16 (:REWRITE DEFAULT-+-1))
     (15 2 (:REWRITE REV-WHEN-NOT-CONSP))
     (14 14 (:LINEAR LEN-WHEN-PREFIXP))
     (13 7
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (12 12 (:REWRITE DEFAULT-CDR))
     (8 8 (:REWRITE ZP-OPEN))
     (8 8
        (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
     (7 7 (:REWRITE |(< (- x) (- y))|))
     (7 7
        (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (7 4 (:REWRITE SIMPLIFY-SUMS-<))
     (7 4 (:REWRITE DEFAULT-<-2))
     (7 4 (:REWRITE |(+ c (+ d x))|))
     (6 6 (:REWRITE TAKE-WHEN-ATOM))
     (6 3
        (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (6 3 (:REWRITE |(< d (+ c x))|))
     (5 1 (:REWRITE CONSP-OF-TAKE))
     (4 4 (:TYPE-PRESCRIPTION NFIX))
     (4 4 (:REWRITE DEFAULT-<-1))
     (3 3 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (3 3 (:REWRITE DEFAULT-CAR))
     (3 3 (:REWRITE |(< (+ c x) d)|))
     (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
     (2 2 (:LINEAR ADE::V-<-CORRECT-2))
     (1 1 (:TYPE-PRESCRIPTION ZP))
     (1 1
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (1 1
        (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
     (1 1 (:REWRITE DEFAULT-*-2))
     (1 1 (:REWRITE DEFAULT-*-1))
     (1 1 (:REWRITE |(equal (- x) (- y))|))
     (1 1 (:REWRITE |(equal (+ c x) d)|)))
(ADE::V-TO-NAT-OF-V-ZP
     (88 44
         (:TYPE-PRESCRIPTION ADE::BOOLEANP-V-NZP))
     (44 44 (:TYPE-PRESCRIPTION ADE::BVP))
     (34 34 (:REWRITE ADE::V-NZP-AS-OR-CROCK))
     (22 12 (:REWRITE DEFAULT-*-2))
     (19 19 (:REWRITE DEFAULT-CDR))
     (17 17
         (:REWRITE ADE::NOT-V-NZP-TAKE-NTHCDR))
     (15 15 (:REWRITE DEFAULT-CAR))
     (12 12
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (12 12 (:REWRITE DEFAULT-*-1))
     (12 6 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (12 6
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (12 6
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (11 6 (:REWRITE DEFAULT-+-2))
     (8 8 (:LINEAR ADE::V-<-CORRECT-2))
     (8 8 (:LINEAR ADE::V-<-CORRECT-1))
     (6 6
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
     (6 6
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (6 6 (:REWRITE NORMALIZE-ADDENDS))
     (6 6 (:REWRITE DEFAULT-+-1))
     (6 6 (:REWRITE |(equal (- x) 0)|))
     (6 6 (:REWRITE |(equal (- x) (- y))|))
     (5 5 (:REWRITE ADE::V-ZP-AS-AND-CROCK)))
(ADE::MY-COUNT (3 3 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
               (3 3 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
               (3 3 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B)))
(ADE::GCD$OP (2955 63 (:REWRITE TAKE-OF-TOO-MANY))
             (1913 29 (:DEFINITION TAKE))
             (1414 202 (:DEFINITION LEN))
             (537 303 (:REWRITE DEFAULT-+-2))
             (304 303 (:REWRITE DEFAULT-+-1))
             (303 303
                  (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
             (270 31 (:DEFINITION NTHCDR))
             (266 266 (:REWRITE DEFAULT-CDR))
             (173 173
                  (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
             (173 173
                  (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
             (173 173
                  (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
             (143 137
                  (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
             (142 142 (:LINEAR LEN-WHEN-PREFIXP))
             (137 137
                  (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
             (132 132 (:REWRITE |(< (- x) (- y))|))
             (128 125 (:REWRITE DEFAULT-*-2))
             (125 125
                  (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
             (125 125 (:REWRITE DEFAULT-*-1))
             (110 62 (:REWRITE TAKE-WHEN-ATOM))
             (105 72 (:REWRITE DEFAULT-<-2))
             (102 2 (:REWRITE ADE::V-<-CORRECT-1))
             (92 20 (:REWRITE REV-WHEN-NOT-CONSP))
             (77 1 (:REWRITE |(< (if a b c) x)|))
             (74 72 (:REWRITE DEFAULT-<-1))
             (71 71
                 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
             (67 38 (:REWRITE |(+ c (+ d x))|))
             (62 62
                 (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
             (62 62 (:REWRITE DEFAULT-UNARY-/))
             (62 33 (:REWRITE |(< d (+ c x))|))
             (56 56 (:TYPE-PRESCRIPTION NFIX))
             (44 26 (:REWRITE SIMPLIFY-SUMS-EQUAL))
             (44 26
                 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
             (38 38
                 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
             (38 38 (:REWRITE |(< 0 (- x))|))
             (36 2 (:DEFINITION NATP))
             (34 34 (:REWRITE |(* (- x) y)|))
             (33 33 (:REWRITE DEFAULT-CAR))
             (32 32 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
             (32 32 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
             (32 32 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
             (31 31 (:REWRITE |(equal (- x) (- y))|))
             (31 31 (:REWRITE |(< (+ c x) d)|))
             (26 1 (:DEFINITION NFIX))
             (24 4 (:DEFINITION BINARY-APPEND))
             (20 8 (:REWRITE APPEND-WHEN-NOT-CONSP))
             (18 18 (:LINEAR ADE::V-<-CORRECT-2))
             (18 18 (:LINEAR ADE::V-<-CORRECT-1))
             (16 16
                 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
             (16 16 (:REWRITE |(equal (- x) 0)|))
             (16 8 (:TYPE-PRESCRIPTION NOT-INTEGERP-4E))
             (14 2 (:REWRITE CONSP-OF-APPEND))
             (9 9 (:REWRITE REDUCE-INTEGERP-+))
             (9 9 (:REWRITE INTEGERP-MINUS-X))
             (9 9 (:REWRITE |(integerp (* c x))|))
             (9 9 (:META META-INTEGERP-CORRECT))
             (8 8 (:TYPE-PRESCRIPTION NOT-INTEGERP-3E))
             (8 8 (:TYPE-PRESCRIPTION NOT-INTEGERP-2E))
             (8 8 (:TYPE-PRESCRIPTION NOT-INTEGERP-1E))
             (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
             (8 8 (:REWRITE CONSP-OF-TAKE))
             (7 7 (:REWRITE INSERT-0-*))
             (6 6 (:TYPE-PRESCRIPTION NOT-INTEGERP-4D))
             (6 6 (:TYPE-PRESCRIPTION NOT-INTEGERP-3D))
             (6 6 (:TYPE-PRESCRIPTION NOT-INTEGERP-2D))
             (6 6 (:TYPE-PRESCRIPTION NOT-INTEGERP-1D))
             (2 2 (:TYPE-PRESCRIPTION NATP))
             (2 2
                (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
             (2 2 (:REWRITE ADE::BVP-V-ADDER-OUTPUT))
             (2 2 (:REWRITE |(< (- x) 0)|))
             (1 1 (:REWRITE |(< (+ d x) (+ c y))|))
             (1 1 (:REWRITE |(< (+ c x) (+ d y))|)))
(ADE::BVP-GCD$OP (2831 249
                       (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
                 (1939 9 (:LINEAR ADE::V-<-CORRECT-INSTANCE))
                 (1878 201
                       (:REWRITE PREFER-POSITIVE-ADDENDS-<))
                 (1254 2 (:REWRITE |(< (if a b c) x)|))
                 (846 476 (:REWRITE DEFAULT-+-2))
                 (733 54 (:DEFINITION NTHCDR))
                 (630 450 (:REWRITE DEFAULT-CDR))
                 (476 476
                      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
                 (476 476 (:REWRITE DEFAULT-+-1))
                 (452 90
                      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
                 (400 80
                      (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
                 (327 108 (:REWRITE TAKE-WHEN-ATOM))
                 (326 326
                      (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
                 (326 326
                      (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
                 (326 326
                      (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
                 (285 86 (:REWRITE |(* y (* x z))|))
                 (281 279
                      (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
                 (279 279
                      (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
                 (270 54 (:REWRITE |(+ y x)|))
                 (269 2 (:REWRITE TAKE-OF-APPEND))
                 (249 249 (:REWRITE |(< (- x) (- y))|))
                 (242 242 (:LINEAR LEN-WHEN-PREFIXP))
                 (241 241 (:TYPE-PRESCRIPTION ADE::V-NOT))
                 (239 239
                      (:TYPE-PRESCRIPTION ADE::V-ADDER-OUTPUT))
                 (203 149 (:REWRITE SIMPLIFY-SUMS-<))
                 (203 149 (:REWRITE DEFAULT-<-2))
                 (179 165 (:REWRITE DEFAULT-*-2))
                 (172 26 (:DEFINITION BINARY-APPEND))
                 (165 165
                      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
                 (165 165 (:REWRITE DEFAULT-*-1))
                 (165 78 (:REWRITE DEFAULT-CAR))
                 (161 24 (:REWRITE CONSP-OF-TAKE))
                 (160 80 (:TYPE-PRESCRIPTION BINARY-APPEND))
                 (151 149 (:REWRITE DEFAULT-<-1))
                 (135 81
                      (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                 (134 13 (:REWRITE ADE::LEN-V-NOT))
                 (130 52 (:REWRITE APPEND-WHEN-NOT-CONSP))
                 (128 81 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                 (122 122
                      (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
                 (122 122
                      (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
                 (122 122
                      (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
                 (121 121
                      (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
                 (114 114
                      (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
                 (114 114 (:REWRITE DEFAULT-UNARY-/))
                 (114 114 (:REWRITE |(* a (/ a))|))
                 (104 52 (:REWRITE |(< d (+ c x))|))
                 (104 52 (:REWRITE |(+ c (+ d x))|))
                 (95 95 (:REWRITE |(* c (* d x))|))
                 (95 2 (:REWRITE ADE::NTHCDR-APPEND))
                 (90 90 (:REWRITE |(equal (- x) (- y))|))
                 (86 86
                     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
                 (86 86 (:REWRITE |(< 0 (- x))|))
                 (72 72
                     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
                 (72 72 (:REWRITE |(equal (- x) 0)|))
                 (72 36 (:TYPE-PRESCRIPTION NOT-INTEGERP-4E))
                 (53 53 (:REWRITE |(+ 0 x)|))
                 (52 52 (:REWRITE |(< (+ c x) d)|))
                 (52 2 (:DEFINITION NFIX))
                 (38 8
                     (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
                 (38 1 (:REWRITE TAKE-OF-TAKE-SPLIT))
                 (36 36 (:TYPE-PRESCRIPTION NOT-INTEGERP-3E))
                 (36 36 (:TYPE-PRESCRIPTION NOT-INTEGERP-2E))
                 (36 36 (:TYPE-PRESCRIPTION NOT-INTEGERP-1E))
                 (36 36 (:REWRITE |(* (- x) y)|))
                 (35 35 (:REWRITE INSERT-0-*))
                 (24 4 (:REWRITE CONSP-OF-APPEND))
                 (18 18 (:REWRITE REDUCE-INTEGERP-+))
                 (18 18 (:REWRITE INTEGERP-MINUS-X))
                 (18 18 (:REWRITE |(integerp (* c x))|))
                 (18 18 (:META META-INTEGERP-CORRECT))
                 (18 18 (:LINEAR ADE::V-<-CORRECT-2))
                 (18 18 (:LINEAR ADE::V-<-CORRECT-1))
                 (11 11
                     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
                 (11 11 (:REWRITE |(< (- x) 0)|))
                 (10 1 (:REWRITE ADE::NTHCDR-OF-NTHCDR))
                 (9 9 (:TYPE-PRESCRIPTION NATP))
                 (4 4 (:REWRITE |(* 0 x)|))
                 (2 2 (:REWRITE TAKE-OF-ZERO))
                 (2 2 (:REWRITE ADE::BVP-V-ADDER-OUTPUT)))
(ADE::LEN-GCD$OP (2831 249
                       (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
                 (1939 9 (:LINEAR ADE::V-<-CORRECT-INSTANCE))
                 (1878 201
                       (:REWRITE PREFER-POSITIVE-ADDENDS-<))
                 (1254 2 (:REWRITE |(< (if a b c) x)|))
                 (899 503 (:REWRITE DEFAULT-+-2))
                 (740 55 (:DEFINITION NTHCDR))
                 (657 477 (:REWRITE DEFAULT-CDR))
                 (503 503
                      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
                 (503 503 (:REWRITE DEFAULT-+-1))
                 (460 94
                      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
                 (400 80
                      (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
                 (379 379
                      (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
                 (379 379
                      (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
                 (379 379
                      (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
                 (327 108 (:REWRITE TAKE-WHEN-ATOM))
                 (296 296 (:LINEAR LEN-WHEN-PREFIXP))
                 (285 86 (:REWRITE |(* y (* x z))|))
                 (281 279
                      (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
                 (279 279
                      (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
                 (275 55 (:REWRITE |(+ y x)|))
                 (269 2 (:REWRITE TAKE-OF-APPEND))
                 (249 249 (:REWRITE |(< (- x) (- y))|))
                 (241 241 (:TYPE-PRESCRIPTION ADE::V-NOT))
                 (239 239
                      (:TYPE-PRESCRIPTION ADE::V-ADDER-OUTPUT))
                 (203 149 (:REWRITE SIMPLIFY-SUMS-<))
                 (203 149 (:REWRITE DEFAULT-<-2))
                 (199 182 (:REWRITE DEFAULT-*-2))
                 (182 182
                      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
                 (182 182 (:REWRITE DEFAULT-*-1))
                 (172 26 (:DEFINITION BINARY-APPEND))
                 (165 78 (:REWRITE DEFAULT-CAR))
                 (161 24 (:REWRITE CONSP-OF-TAKE))
                 (160 80 (:TYPE-PRESCRIPTION BINARY-APPEND))
                 (151 149 (:REWRITE DEFAULT-<-1))
                 (148 148
                      (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
                 (143 85
                      (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                 (136 85 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                 (134 134
                      (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
                 (134 134
                      (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
                 (134 134
                      (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
                 (134 13 (:REWRITE ADE::LEN-V-NOT))
                 (130 52 (:REWRITE APPEND-WHEN-NOT-CONSP))
                 (114 114
                      (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
                 (114 114 (:REWRITE DEFAULT-UNARY-/))
                 (114 114 (:REWRITE |(* a (/ a))|))
                 (104 52 (:REWRITE |(< d (+ c x))|))
                 (104 52 (:REWRITE |(+ c (+ d x))|))
                 (95 95 (:REWRITE |(* c (* d x))|))
                 (95 2 (:REWRITE ADE::NTHCDR-APPEND))
                 (94 94 (:REWRITE |(equal (- x) (- y))|))
                 (86 86
                     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
                 (86 86 (:REWRITE |(< 0 (- x))|))
                 (72 72
                     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
                 (72 72 (:REWRITE |(equal (- x) 0)|))
                 (72 36 (:TYPE-PRESCRIPTION NOT-INTEGERP-4E))
                 (53 53 (:REWRITE |(+ 0 x)|))
                 (52 52 (:REWRITE |(< (+ c x) d)|))
                 (52 2 (:DEFINITION NFIX))
                 (39 39 (:REWRITE |(* (- x) y)|))
                 (38 8
                     (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
                 (38 1 (:REWRITE TAKE-OF-TAKE-SPLIT))
                 (36 36 (:TYPE-PRESCRIPTION NOT-INTEGERP-3E))
                 (36 36 (:TYPE-PRESCRIPTION NOT-INTEGERP-2E))
                 (36 36 (:TYPE-PRESCRIPTION NOT-INTEGERP-1E))
                 (35 35 (:REWRITE INSERT-0-*))
                 (24 4 (:REWRITE CONSP-OF-APPEND))
                 (18 18 (:LINEAR ADE::V-<-CORRECT-2))
                 (18 18 (:LINEAR ADE::V-<-CORRECT-1))
                 (16 16 (:REWRITE REDUCE-INTEGERP-+))
                 (16 16 (:REWRITE INTEGERP-MINUS-X))
                 (16 16 (:REWRITE |(integerp (* c x))|))
                 (16 16 (:META META-INTEGERP-CORRECT))
                 (11 11
                     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
                 (11 11 (:REWRITE |(< (- x) 0)|))
                 (10 1 (:REWRITE ADE::NTHCDR-OF-NTHCDR))
                 (4 4 (:REWRITE |(* 0 x)|))
                 (2 2 (:REWRITE TAKE-OF-ZERO))
                 (2 2 (:REWRITE ADE::BVP-V-ADDER-OUTPUT)))
(ADE::GCD$OP-LEMMA-AUX
     (8 4 (:REWRITE DEFAULT-+-2))
     (4 4
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (4 4 (:REWRITE NORMALIZE-ADDENDS))
     (4 4 (:REWRITE DEFAULT-CDR))
     (4 4 (:REWRITE DEFAULT-+-1))
     (4 4 (:LINEAR LEN-WHEN-PREFIXP))
     (2 2 (:REWRITE REV-WHEN-NOT-CONSP))
     (2 2 (:LINEAR ADE::V-<-CORRECT-2))
     (2 2 (:LINEAR ADE::V-<-CORRECT-1))
     (2 2
        (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (2 1 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (2 1
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (2 1
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
     (1 1 (:REWRITE SIMPLIFY-SUMS-<))
     (1 1
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (1 1
        (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
     (1 1
        (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
     (1 1 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (1 1 (:REWRITE DEFAULT-<-2))
     (1 1 (:REWRITE DEFAULT-<-1))
     (1 1 (:REWRITE |(equal (- x) 0)|))
     (1 1 (:REWRITE |(equal (- x) (- y))|))
     (1 1 (:REWRITE |(< 0 (- x))|))
     (1 1 (:REWRITE |(< (- x) (- y))|)))
(ADE::V-ADDER-OUTPUT-LEMMA (5 1 (:REWRITE TAKE-OF-TOO-MANY))
                           (2 1 (:REWRITE TAKE-WHEN-ATOM))
                           (2 1 (:REWRITE ADE::LEN-OF-V-ADDER))
                           (1 1 (:TYPE-PRESCRIPTION ADE::V-ADDER))
                           (1 1 (:TYPE-PRESCRIPTION NFIX))
                           (1 1 (:TYPE-PRESCRIPTION LEN)))
(ADE::GCD$OP-LEMMA (9922 52 (:REWRITE |(< (if a b c) x)|))
                   (7839 1002
                         (:REWRITE PREFER-POSITIVE-ADDENDS-<))
                   (3540 2015 (:REWRITE DEFAULT-+-2))
                   (2305 478 (:REWRITE TAKE-WHEN-ATOM))
                   (2015 2015
                         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
                   (2015 2015 (:REWRITE DEFAULT-+-1))
                   (1744 1744 (:LINEAR LEN-WHEN-PREFIXP))
                   (1417 1417
                         (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
                   (1417 1417
                         (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
                   (1417 1417
                         (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
                   (1409 204 (:DEFINITION BINARY-APPEND))
                   (1314 435 (:REWRITE DEFAULT-CAR))
                   (1262 1254
                         (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
                   (1112 1112 (:REWRITE |(< (- x) (- y))|))
                   (1063 771 (:REWRITE SIMPLIFY-SUMS-<))
                   (1062 771 (:REWRITE DEFAULT-<-2))
                   (945 410
                        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                   (872 872
                        (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
                   (849 410 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                   (778 771 (:REWRITE DEFAULT-<-1))
                   (516 481 (:REWRITE DEFAULT-*-2))
                   (481 481
                        (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
                   (481 481 (:REWRITE DEFAULT-*-1))
                   (462 231 (:REWRITE |(< d (+ c x))|))
                   (462 231 (:REWRITE |(+ c (+ d x))|))
                   (422 422
                        (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
                   (422 422
                        (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
                   (422 422
                        (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
                   (422 422 (:REWRITE |(equal (- x) (- y))|))
                   (310 84
                        (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
                   (295 295
                        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
                   (295 295 (:REWRITE |(< 0 (- x))|))
                   (244 244
                        (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
                   (244 244 (:REWRITE DEFAULT-UNARY-/))
                   (241 241
                        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
                   (241 241 (:REWRITE |(equal (- x) 0)|))
                   (232 232 (:REWRITE REDUCE-INTEGERP-+))
                   (232 232 (:REWRITE INTEGERP-MINUS-X))
                   (232 232 (:META META-INTEGERP-CORRECT))
                   (231 231 (:REWRITE |(< (+ c x) d)|))
                   (177 177 (:REWRITE |(integerp (* c x))|))
                   (136 136 (:LINEAR ADE::V-<-CORRECT-2))
                   (136 136 (:LINEAR ADE::V-<-CORRECT-1))
                   (87 87 (:REWRITE |(* (- x) y)|))
                   (82 82
                       (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
                   (82 82 (:REWRITE |(< (- x) 0)|))
                   (72 9 (:REWRITE REPEAT-WHEN-ZP))
                   (62 6 (:REWRITE ADE::V-<-CORRECT-2))
                   (56 28 (:TYPE-PRESCRIPTION NOT-INTEGERP-4E))
                   (50 6 (:REWRITE ADE::V-<-CORRECT-1))
                   (42 6 (:REWRITE |(< x (if a b c))|))
                   (41 41 (:REWRITE INSERT-0-*))
                   (40 40 (:TYPE-PRESCRIPTION REV))
                   (37 37 (:TYPE-PRESCRIPTION NOT-INTEGERP-4D))
                   (37 37 (:TYPE-PRESCRIPTION NOT-INTEGERP-3D))
                   (37 37 (:TYPE-PRESCRIPTION NOT-INTEGERP-2D))
                   (37 37 (:TYPE-PRESCRIPTION NOT-INTEGERP-1D))
                   (31 11 (:REWRITE CONSP-OF-REPEAT))
                   (28 28 (:TYPE-PRESCRIPTION NOT-INTEGERP-3E))
                   (28 28 (:TYPE-PRESCRIPTION NOT-INTEGERP-2E))
                   (28 28 (:TYPE-PRESCRIPTION NOT-INTEGERP-1E))
                   (20 5 (:REWRITE CAR-OF-TAKE))
                   (17 15 (:REWRITE DEFAULT-UNARY-MINUS))
                   (16 16 (:REWRITE CONSP-OF-REV))
                   (2 2 (:REWRITE LIST-FIX-UNDER-LIST-EQUIV)))
(ADE::V-TO-NAT-OF-GCD$OP-IS-GCD-ALG
     (4604 50 (:DEFINITION POSP))
     (3856 2244 (:REWRITE DEFAULT-+-2))
     (2244 2244
           (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (2244 2244 (:REWRITE DEFAULT-+-1))
     (2149 67 (:DEFINITION NATP))
     (1911 1821 (:REWRITE DEFAULT-CDR))
     (1365 1330 (:REWRITE DEFAULT-*-2))
     (1330 1330
           (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (1330 1330 (:REWRITE DEFAULT-*-1))
     (1281 1281
           (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (1281 1281
           (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (1281 1281
           (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (1205 1191
           (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
     (1150 1150 (:LINEAR LEN-WHEN-PREFIXP))
     (1146 1146 (:REWRITE |(< (- x) (- y))|))
     (1006 736 (:REWRITE SIMPLIFY-SUMS-<))
     (928 687 (:REWRITE DEFAULT-<-2))
     (824 348 (:REWRITE TAKE-WHEN-ATOM))
     (722 687 (:REWRITE DEFAULT-<-1))
     (703 149
          (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (626 26 (:DEFINITION NFIX))
     (621 467 (:REWRITE |(+ c (+ d x))|))
     (598 362 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (575 575
          (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (463 463 (:REWRITE |(equal (- x) (- y))|))
     (462 6 (:REWRITE |(< (if a b c) x)|))
     (452 452 (:REWRITE |(* (- x) y)|))
     (427 273 (:REWRITE |(< d (+ c x))|))
     (374 61 (:DEFINITION BINARY-APPEND))
     (358 358 (:REWRITE |(< 0 (- x))|))
     (328 55 (:REWRITE BUBBLE-DOWN-+-MATCH-3))
     (310 82 (:REWRITE CONSP-OF-TAKE))
     (296 296
          (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
     (296 296 (:REWRITE DEFAULT-UNARY-/))
     (292 292
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
     (287 122 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (277 149 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (260 215 (:REWRITE DEFAULT-CAR))
     (242 242 (:REWRITE DEFAULT-UNARY-MINUS))
     (234 234 (:LINEAR ADE::V-<-CORRECT-2))
     (234 234 (:LINEAR ADE::V-<-CORRECT-1))
     (215 215 (:REWRITE REDUCE-INTEGERP-+))
     (215 215 (:REWRITE INTEGERP-MINUS-X))
     (215 215 (:META META-INTEGERP-CORRECT))
     (191 32 (:REWRITE CONSP-OF-APPEND))
     (187 187 (:REWRITE |(< (+ c x) d)|))
     (180 180 (:REWRITE |(integerp (* c x))|))
     (144 9 (:REWRITE |(+ x (if a b c))|))
     (143 143
          (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (143 143
          (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (143 143
          (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (108 9 (:REWRITE |(- (if a b c))|))
     (102 6 (:TYPE-PRESCRIPTION ADE::BVP-TAKE))
     (102 6 (:TYPE-PRESCRIPTION ADE::BVP-NTHCDR))
     (95 95 (:REWRITE |(equal (- x) 0)|))
     (87 87 (:REWRITE |(equal (+ c x) d)|))
     (84 84
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
     (56 28 (:TYPE-PRESCRIPTION NOT-INTEGERP-4E))
     (50 10 (:DEFINITION TRUE-LISTP))
     (45 9 (:REWRITE BUBBLE-DOWN-+-BUBBLE-DOWN))
     (40 40
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
     (40 40 (:REWRITE |(< (- x) 0)|))
     (35 35 (:TYPE-PRESCRIPTION NOT-INTEGERP-4D))
     (35 35 (:TYPE-PRESCRIPTION NOT-INTEGERP-3D))
     (35 35 (:TYPE-PRESCRIPTION NOT-INTEGERP-2D))
     (35 35 (:TYPE-PRESCRIPTION NOT-INTEGERP-1D))
     (28 28 (:TYPE-PRESCRIPTION NOT-INTEGERP-3E))
     (28 28 (:TYPE-PRESCRIPTION NOT-INTEGERP-2E))
     (28 28 (:TYPE-PRESCRIPTION NOT-INTEGERP-1E))
     (27 27 (:REWRITE INSERT-0-*))
     (25 25 (:TYPE-PRESCRIPTION POSP))
     (20 20 (:REWRITE FOLD-CONSTS-IN-+))
     (19 19 (:REWRITE ADE::BVP-V-ADDER-OUTPUT))
     (19 4
         (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV)))
(ADE::GCD$OP-COMMUTATIVE
     (230 2 (:DEFINITION ADE::GCD-ALG))
     (199 4 (:REWRITE TAKE-OF-TOO-MANY))
     (88 46 (:REWRITE DEFAULT-+-2))
     (72 4 (:REWRITE ZP-OPEN))
     (48 48 (:REWRITE DEFAULT-CDR))
     (46 46
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (46 46 (:REWRITE DEFAULT-+-1))
     (46 2 (:REWRITE ADE::V-<-CORRECT-2))
     (46 2 (:REWRITE ADE::V-<-CORRECT-1))
     (36 18 (:REWRITE DEFAULT-*-2))
     (24 6 (:DEFINITION BINARY-APPEND))
     (18 18
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (18 18 (:REWRITE DEFAULT-*-1))
     (18 12 (:REWRITE DEFAULT-<-2))
     (18 4 (:REWRITE TAKE-WHEN-ATOM))
     (16 16
         (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
     (16 16
         (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
     (16 16 (:REWRITE |(< (- x) (- y))|))
     (16 12 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (14 12 (:REWRITE SIMPLIFY-SUMS-<))
     (12 12 (:REWRITE DEFAULT-<-1))
     (12 12 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (12 8 (:REWRITE DEFAULT-UNARY-MINUS))
     (10 10
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
     (10 10 (:REWRITE |(< 0 (- x))|))
     (10 2 (:REWRITE |(+ y x)|))
     (8 8
        (:TYPE-PRESCRIPTION ADE::BOOLEANP-V-<))
     (8 8 (:REWRITE REV-WHEN-NOT-CONSP))
     (8 8
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
     (8 8 (:REWRITE DEFAULT-UNARY-/))
     (8 4
        (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (7 6 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (7 6
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (7 6
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (6 6 (:REWRITE DEFAULT-CAR))
     (6 6 (:REWRITE |(equal (- x) (- y))|))
     (6 2 (:REWRITE |(* y (* x z))|))
     (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (4 4 (:TYPE-PRESCRIPTION NFIX))
     (4 4 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (4 4
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
     (4 4 (:REWRITE |(equal (- x) 0)|))
     (4 4 (:LINEAR LEN-WHEN-PREFIXP))
     (2 2 (:REWRITE INSERT-0-*))
     (2 2 (:REWRITE CONSP-OF-APPEND))
     (2 2
        (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS)))
(ADE::GCD$OP-MAP)
(ADE::LEN-OF-GCD$OP-MAP
     (28 28 (:LINEAR LEN-WHEN-PREFIXP))
     (14 14
         (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (14 7 (:REWRITE DEFAULT-+-2))
     (9 8 (:REWRITE DEFAULT-CDR))
     (9 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (9 3
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (9 3
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (7 7
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (7 7 (:REWRITE NORMALIZE-ADDENDS))
     (7 7 (:REWRITE DEFAULT-+-1))
     (3 3 (:REWRITE DEFAULT-CAR))
     (3 3 (:REWRITE |(equal (- x) (- y))|)))
(ADE::GCD$OP-MAP-OF-APPEND
     (50 19 (:REWRITE DEFAULT-CDR))
     (29 26 (:REWRITE DEFAULT-CAR))
     (15 15 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (12 4 (:REWRITE CAR-OF-APPEND))
     (8 8 (:REWRITE CONSP-OF-APPEND))
     (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (6 3
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (6 3
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (4 4 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
     (3 3 (:REWRITE |(equal (- x) (- y))|)))