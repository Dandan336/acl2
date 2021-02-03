(APP)
(ASSOC-OF-APP (293 293 (:TYPE-PRESCRIPTION APP))
              (57 3
                  (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
              (51 9 (:REWRITE ACL2-NUMBERP-X))
              (21 20 (:REWRITE DEFAULT-CAR))
              (21 3 (:REWRITE RATIONALP-X))
              (17 16 (:REWRITE DEFAULT-CDR))
              (15 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
              (15 3
                  (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
              (3 3 (:REWRITE REDUCE-RATIONALP-+))
              (3 3 (:REWRITE REDUCE-RATIONALP-*))
              (3 3
                 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
              (3 3 (:REWRITE REDUCE-INTEGERP-+))
              (3 3
                 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
              (3 3 (:REWRITE RATIONALP-MINUS-X))
              (3 3 (:REWRITE INTEGERP-MINUS-X))
              (3 3
                 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
              (3 3 (:REWRITE |(equal c (/ x))|))
              (3 3 (:REWRITE |(equal c (- x))|))
              (3 3 (:REWRITE |(equal (/ x) c)|))
              (3 3 (:REWRITE |(equal (/ x) (/ y))|))
              (3 3 (:REWRITE |(equal (- x) c)|))
              (3 3 (:REWRITE |(equal (- x) (- y))|))
              (3 3 (:META META-RATIONALP-CORRECT))
              (3 3 (:META META-INTEGERP-CORRECT)))
(REV)
(TRUE-LISTP-REV (52 45 (:REWRITE DEFAULT-CDR))
                (30 30 (:REWRITE DEFAULT-CAR)))
(REV-APP-PROOF-BUILDER
     (122 112 (:REWRITE DEFAULT-CDR))
     (116 106 (:REWRITE DEFAULT-CAR))
     (18 9 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (18 9
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (18 9
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (9 9
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (9 9
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (9 9
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (9 9 (:REWRITE |(equal c (/ x))|))
     (9 9 (:REWRITE |(equal c (- x))|))
     (9 9 (:REWRITE |(equal (/ x) c)|))
     (9 9 (:REWRITE |(equal (/ x) (/ y))|))
     (9 9 (:REWRITE |(equal (- x) c)|))
     (9 9 (:REWRITE |(equal (- x) (- y))|)))
(REV-APP (156 140 (:REWRITE DEFAULT-CDR))
         (153 137 (:REWRITE DEFAULT-CAR))
         (33 18 (:REWRITE SIMPLIFY-SUMS-EQUAL))
         (33 18
             (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
         (33 18
             (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
         (18 18
             (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
         (18 18
             (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
         (18 18
             (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
         (18 18 (:REWRITE |(equal c (/ x))|))
         (18 18 (:REWRITE |(equal c (- x))|))
         (18 18 (:REWRITE |(equal (/ x) c)|))
         (18 18 (:REWRITE |(equal (/ x) (/ y))|))
         (18 18 (:REWRITE |(equal (- x) c)|))
         (18 18 (:REWRITE |(equal (- x) (- y))|)))
(REV-REV (19 19 (:REWRITE DEFAULT-CDR))
         (17 17 (:REWRITE DEFAULT-CAR))
         (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
         (6 3
            (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
         (6 3
            (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
         (3 3
            (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
         (3 3
            (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
         (3 3
            (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
         (3 3 (:REWRITE |(equal c (/ x))|))
         (3 3 (:REWRITE |(equal c (- x))|))
         (3 3 (:REWRITE |(equal (/ x) c)|))
         (3 3 (:REWRITE |(equal (/ x) (/ y))|))
         (3 3 (:REWRITE |(equal (- x) c)|))
         (3 3 (:REWRITE |(equal (- x) (- y))|)))
(LT)
(LT-NON-SYMMETRIC)
(INSERT)
(INSERT-SORT)
(DEL)
(MEM)
(PERM)
(PERM-REFLEXIVE (16 16 (:REWRITE DEFAULT-CAR))
                (6 6 (:REWRITE DEFAULT-CDR)))
(PERM-CONS (1452 396 (:REWRITE ACL2-NUMBERP-X))
           (1338 143
                 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
           (528 132 (:REWRITE RATIONALP-X))
           (321 321 (:REWRITE DEFAULT-CAR))
           (282 143 (:REWRITE SIMPLIFY-SUMS-EQUAL))
           (282 143
                (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
           (260 260 (:REWRITE DEFAULT-CDR))
           (143 143
                (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
           (143 143
                (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
           (143 143
                (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
           (143 143 (:REWRITE |(equal c (/ x))|))
           (143 143 (:REWRITE |(equal c (- x))|))
           (143 143 (:REWRITE |(equal (/ x) c)|))
           (143 143 (:REWRITE |(equal (/ x) (/ y))|))
           (143 143 (:REWRITE |(equal (- x) c)|))
           (143 143 (:REWRITE |(equal (- x) (- y))|))
           (132 132 (:REWRITE REDUCE-RATIONALP-+))
           (132 132 (:REWRITE REDUCE-RATIONALP-*))
           (132 132 (:REWRITE REDUCE-INTEGERP-+))
           (132 132 (:REWRITE RATIONALP-MINUS-X))
           (132 132 (:REWRITE INTEGERP-MINUS-X))
           (132 132 (:META META-RATIONALP-CORRECT))
           (132 132 (:META META-INTEGERP-CORRECT)))
(PERM-SYMMETRIC (644 23 (:DEFINITION DEL))
                (517 141 (:REWRITE ACL2-NUMBERP-X))
                (470 47
                     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
                (188 47 (:REWRITE RATIONALP-X))
                (113 113 (:REWRITE DEFAULT-CAR))
                (94 47 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                (94 47
                    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                (90 90 (:REWRITE DEFAULT-CDR))
                (47 47 (:REWRITE REDUCE-RATIONALP-+))
                (47 47 (:REWRITE REDUCE-RATIONALP-*))
                (47 47
                    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
                (47 47 (:REWRITE REDUCE-INTEGERP-+))
                (47 47
                    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
                (47 47 (:REWRITE RATIONALP-MINUS-X))
                (47 47 (:REWRITE INTEGERP-MINUS-X))
                (47 47
                    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
                (47 47 (:REWRITE |(equal c (/ x))|))
                (47 47 (:REWRITE |(equal c (- x))|))
                (47 47 (:REWRITE |(equal (/ x) c)|))
                (47 47 (:REWRITE |(equal (/ x) (/ y))|))
                (47 47 (:REWRITE |(equal (- x) c)|))
                (47 47 (:REWRITE |(equal (- x) (- y))|))
                (47 47 (:META META-RATIONALP-CORRECT))
                (47 47 (:META META-INTEGERP-CORRECT)))
(MEM-DEL (231 63 (:REWRITE ACL2-NUMBERP-X))
         (210 21
              (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
         (84 21 (:REWRITE RATIONALP-X))
         (42 21 (:REWRITE SIMPLIFY-SUMS-EQUAL))
         (42 21
             (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
         (40 40 (:REWRITE DEFAULT-CAR))
         (24 24 (:REWRITE DEFAULT-CDR))
         (21 21 (:REWRITE REDUCE-RATIONALP-+))
         (21 21 (:REWRITE REDUCE-RATIONALP-*))
         (21 21
             (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
         (21 21 (:REWRITE REDUCE-INTEGERP-+))
         (21 21
             (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
         (21 21 (:REWRITE RATIONALP-MINUS-X))
         (21 21 (:REWRITE INTEGERP-MINUS-X))
         (21 21
             (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
         (21 21 (:REWRITE |(equal c (/ x))|))
         (21 21 (:REWRITE |(equal c (- x))|))
         (21 21 (:REWRITE |(equal (/ x) c)|))
         (21 21 (:REWRITE |(equal (/ x) (/ y))|))
         (21 21 (:REWRITE |(equal (- x) c)|))
         (21 21 (:REWRITE |(equal (- x) (- y))|))
         (21 21 (:META META-RATIONALP-CORRECT))
         (21 21 (:META META-INTEGERP-CORRECT)))
(PERM-MEM (470 24 (:REWRITE PERM-SYMMETRIC))
          (341 93 (:REWRITE ACL2-NUMBERP-X))
          (310 31
               (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
          (252 9 (:DEFINITION DEL))
          (124 31 (:REWRITE RATIONALP-X))
          (67 67 (:REWRITE DEFAULT-CAR))
          (62 31 (:REWRITE SIMPLIFY-SUMS-EQUAL))
          (62 31
              (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
          (45 45 (:REWRITE DEFAULT-CDR))
          (31 31 (:REWRITE REDUCE-RATIONALP-+))
          (31 31 (:REWRITE REDUCE-RATIONALP-*))
          (31 31
              (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
          (31 31 (:REWRITE REDUCE-INTEGERP-+))
          (31 31
              (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
          (31 31 (:REWRITE RATIONALP-MINUS-X))
          (31 31 (:REWRITE INTEGERP-MINUS-X))
          (31 31
              (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
          (31 31 (:REWRITE |(equal c (/ x))|))
          (31 31 (:REWRITE |(equal c (- x))|))
          (31 31 (:REWRITE |(equal (/ x) c)|))
          (31 31 (:REWRITE |(equal (/ x) (/ y))|))
          (31 31 (:REWRITE |(equal (- x) c)|))
          (31 31 (:REWRITE |(equal (- x) (- y))|))
          (31 31 (:META META-RATIONALP-CORRECT))
          (31 31 (:META META-INTEGERP-CORRECT)))
(MEM-DEL2 (187 51 (:REWRITE ACL2-NUMBERP-X))
          (171 18
               (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
          (68 17 (:REWRITE RATIONALP-X))
          (35 18 (:REWRITE SIMPLIFY-SUMS-EQUAL))
          (35 18
              (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
          (28 28 (:REWRITE DEFAULT-CAR))
          (20 20 (:REWRITE PERM-MEM))
          (20 20 (:REWRITE MEM-DEL))
          (18 18
              (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
          (18 18
              (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
          (18 18
              (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
          (18 18 (:REWRITE |(equal c (/ x))|))
          (18 18 (:REWRITE |(equal c (- x))|))
          (18 18 (:REWRITE |(equal (/ x) c)|))
          (18 18 (:REWRITE |(equal (/ x) (/ y))|))
          (18 18 (:REWRITE |(equal (- x) c)|))
          (18 18 (:REWRITE |(equal (- x) (- y))|))
          (17 17 (:REWRITE REDUCE-RATIONALP-+))
          (17 17 (:REWRITE REDUCE-RATIONALP-*))
          (17 17 (:REWRITE REDUCE-INTEGERP-+))
          (17 17 (:REWRITE RATIONALP-MINUS-X))
          (17 17 (:REWRITE INTEGERP-MINUS-X))
          (17 17 (:META META-RATIONALP-CORRECT))
          (17 17 (:META META-INTEGERP-CORRECT))
          (12 12 (:REWRITE DEFAULT-CDR)))
(COMM-DEL (451 123 (:REWRITE ACL2-NUMBERP-X))
          (411 42
               (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
          (164 41 (:REWRITE RATIONALP-X))
          (83 42 (:REWRITE SIMPLIFY-SUMS-EQUAL))
          (83 42
              (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
          (79 79 (:REWRITE DEFAULT-CAR))
          (68 68 (:REWRITE DEFAULT-CDR))
          (42 42
              (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
          (42 42
              (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
          (42 42
              (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
          (42 42 (:REWRITE |(equal c (/ x))|))
          (42 42 (:REWRITE |(equal c (- x))|))
          (42 42 (:REWRITE |(equal (/ x) c)|))
          (42 42 (:REWRITE |(equal (/ x) (/ y))|))
          (42 42 (:REWRITE |(equal (- x) c)|))
          (42 42 (:REWRITE |(equal (- x) (- y))|))
          (41 41 (:REWRITE REDUCE-RATIONALP-+))
          (41 41 (:REWRITE REDUCE-RATIONALP-*))
          (41 41 (:REWRITE REDUCE-INTEGERP-+))
          (41 41 (:REWRITE RATIONALP-MINUS-X))
          (41 41 (:REWRITE INTEGERP-MINUS-X))
          (41 41 (:META META-RATIONALP-CORRECT))
          (41 41 (:META META-INTEGERP-CORRECT)))
(PERM-DEL (811 28 (:DEFINITION MEM))
          (649 177 (:REWRITE ACL2-NUMBERP-X))
          (590 59
               (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
          (236 59 (:REWRITE RATIONALP-X))
          (154 55 (:REWRITE PERM-MEM))
          (126 126 (:REWRITE DEFAULT-CAR))
          (118 59 (:REWRITE SIMPLIFY-SUMS-EQUAL))
          (118 59
               (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
          (101 101 (:REWRITE DEFAULT-CDR))
          (59 59 (:REWRITE REDUCE-RATIONALP-+))
          (59 59 (:REWRITE REDUCE-RATIONALP-*))
          (59 59
              (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
          (59 59 (:REWRITE REDUCE-INTEGERP-+))
          (59 59
              (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
          (59 59 (:REWRITE RATIONALP-MINUS-X))
          (59 59 (:REWRITE INTEGERP-MINUS-X))
          (59 59
              (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
          (59 59 (:REWRITE |(equal c (/ x))|))
          (59 59 (:REWRITE |(equal c (- x))|))
          (59 59 (:REWRITE |(equal (/ x) c)|))
          (59 59 (:REWRITE |(equal (/ x) (/ y))|))
          (59 59 (:REWRITE |(equal (- x) c)|))
          (59 59 (:REWRITE |(equal (- x) (- y))|))
          (59 59 (:META META-RATIONALP-CORRECT))
          (59 59 (:META META-INTEGERP-CORRECT))
          (55 55 (:REWRITE MEM-DEL)))
(PERM-TRANSITIVE (1129 40 (:DEFINITION MEM))
                 (671 183 (:REWRITE ACL2-NUMBERP-X))
                 (644 23 (:DEFINITION DEL))
                 (610 61
                      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
                 (244 61 (:REWRITE RATIONALP-X))
                 (143 143 (:REWRITE DEFAULT-CAR))
                 (122 61 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                 (122 61
                      (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                 (105 105 (:REWRITE DEFAULT-CDR))
                 (78 78 (:REWRITE MEM-DEL))
                 (61 61 (:REWRITE REDUCE-RATIONALP-+))
                 (61 61 (:REWRITE REDUCE-RATIONALP-*))
                 (61 61
                     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
                 (61 61 (:REWRITE REDUCE-INTEGERP-+))
                 (61 61
                     (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
                 (61 61 (:REWRITE RATIONALP-MINUS-X))
                 (61 61 (:REWRITE INTEGERP-MINUS-X))
                 (61 61
                     (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
                 (61 61 (:REWRITE |(equal c (/ x))|))
                 (61 61 (:REWRITE |(equal c (- x))|))
                 (61 61 (:REWRITE |(equal (/ x) c)|))
                 (61 61 (:REWRITE |(equal (/ x) (/ y))|))
                 (61 61 (:REWRITE |(equal (- x) c)|))
                 (61 61 (:REWRITE |(equal (- x) (- y))|))
                 (61 61 (:META META-RATIONALP-CORRECT))
                 (61 61 (:META META-INTEGERP-CORRECT)))
(PERM-IS-AN-EQUIVALENCE
     (467 6 (:DEFINITION PERM))
     (208 7 (:DEFINITION MEM))
     (168 6 (:DEFINITION DEL))
     (143 39 (:REWRITE ACL2-NUMBERP-X))
     (130 13
          (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (52 13 (:REWRITE RATIONALP-X))
     (47 14 (:REWRITE PERM-MEM))
     (31 31 (:REWRITE DEFAULT-CAR))
     (26 13 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (26 13
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (25 25 (:REWRITE DEFAULT-CDR))
     (23 23 (:TYPE-PRESCRIPTION MEM))
     (14 14 (:REWRITE MEM-DEL))
     (13 13 (:REWRITE REDUCE-RATIONALP-+))
     (13 13 (:REWRITE REDUCE-RATIONALP-*))
     (13 13
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (13 13 (:REWRITE REDUCE-INTEGERP-+))
     (13 13
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (13 13 (:REWRITE RATIONALP-MINUS-X))
     (13 13 (:REWRITE INTEGERP-MINUS-X))
     (13 13
         (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (13 13 (:REWRITE |(equal c (/ x))|))
     (13 13 (:REWRITE |(equal c (- x))|))
     (13 13 (:REWRITE |(equal (/ x) c)|))
     (13 13 (:REWRITE |(equal (/ x) (/ y))|))
     (13 13 (:REWRITE |(equal (- x) c)|))
     (13 13 (:REWRITE |(equal (- x) (- y))|))
     (13 13 (:META META-RATIONALP-CORRECT))
     (13 13 (:META META-INTEGERP-CORRECT)))
(PERM-IMPLIES-PERM-CONS-2 (2 2 (:REWRITE DEFAULT-CAR))
                          (1 1 (:REWRITE PERM-MEM))
                          (1 1 (:REWRITE MEM-DEL))
                          (1 1 (:REWRITE DEFAULT-CDR)))
(PERM-IMPLIES-IFF-MEM-2
     (87 3 (:DEFINITION MEM))
     (33 9 (:REWRITE ACL2-NUMBERP-X))
     (30 3
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (12 3 (:REWRITE RATIONALP-X))
     (6 6 (:REWRITE MEM-DEL))
     (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (6 3
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (3 3 (:REWRITE REDUCE-RATIONALP-+))
     (3 3 (:REWRITE REDUCE-RATIONALP-*))
     (3 3
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (3 3 (:REWRITE REDUCE-INTEGERP-+))
     (3 3
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (3 3 (:REWRITE RATIONALP-MINUS-X))
     (3 3 (:REWRITE INTEGERP-MINUS-X))
     (3 3
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (3 3 (:REWRITE DEFAULT-CDR))
     (3 3 (:REWRITE DEFAULT-CAR))
     (3 3 (:REWRITE |(equal c (/ x))|))
     (3 3 (:REWRITE |(equal c (- x))|))
     (3 3 (:REWRITE |(equal (/ x) c)|))
     (3 3 (:REWRITE |(equal (/ x) (/ y))|))
     (3 3 (:REWRITE |(equal (- x) c)|))
     (3 3 (:REWRITE |(equal (- x) (- y))|))
     (3 3 (:META META-RATIONALP-CORRECT))
     (3 3 (:META META-INTEGERP-CORRECT)))
(ATOM-PERM)
(INSERT-IS-CONS (77 21 (:REWRITE ACL2-NUMBERP-X))
                (70 7
                    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
                (34 31 (:REWRITE DEFAULT-CAR))
                (28 7 (:REWRITE RATIONALP-X))
                (22 19 (:REWRITE DEFAULT-CDR))
                (21 21 (:TYPE-PRESCRIPTION INSERT))
                (14 7 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                (14 7
                    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                (12 12 (:REWRITE MEM-DEL))
                (8 8 (:REWRITE LT-NON-SYMMETRIC))
                (7 7 (:REWRITE REDUCE-RATIONALP-+))
                (7 7 (:REWRITE REDUCE-RATIONALP-*))
                (7 7
                   (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
                (7 7 (:REWRITE REDUCE-INTEGERP-+))
                (7 7
                   (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
                (7 7 (:REWRITE RATIONALP-MINUS-X))
                (7 7 (:REWRITE INTEGERP-MINUS-X))
                (7 7
                   (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
                (7 7 (:REWRITE |(equal c (/ x))|))
                (7 7 (:REWRITE |(equal c (- x))|))
                (7 7 (:REWRITE |(equal (/ x) c)|))
                (7 7 (:REWRITE |(equal (/ x) (/ y))|))
                (7 7 (:REWRITE |(equal (- x) c)|))
                (7 7 (:REWRITE |(equal (- x) (- y))|))
                (7 7 (:META META-RATIONALP-CORRECT))
                (7 7 (:META META-INTEGERP-CORRECT)))
(INSERT-SORT-IS-ID (3 3 (:REWRITE DEFAULT-CDR))
                   (3 3 (:REWRITE DEFAULT-CAR)))
(PERM-IMPLIES-PERM-APP-2 (10 8 (:REWRITE DEFAULT-CAR))
                         (6 5 (:REWRITE DEFAULT-CDR))
                         (5 5 (:TYPE-PRESCRIPTION APP))
                         (1 1 (:REWRITE PERM-MEM))
                         (1 1 (:REWRITE MEM-DEL)))
(APP-CONS (341 93 (:REWRITE ACL2-NUMBERP-X))
          (310 31
               (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
          (284 54 (:REWRITE PERM-MEM))
          (152 152 (:TYPE-PRESCRIPTION APP))
          (124 31 (:REWRITE RATIONALP-X))
          (98 69 (:REWRITE DEFAULT-CAR))
          (94 67 (:REWRITE DEFAULT-CDR))
          (62 31 (:REWRITE SIMPLIFY-SUMS-EQUAL))
          (62 31
              (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
          (54 54 (:REWRITE MEM-DEL))
          (31 31 (:REWRITE REDUCE-RATIONALP-+))
          (31 31 (:REWRITE REDUCE-RATIONALP-*))
          (31 31
              (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
          (31 31 (:REWRITE REDUCE-INTEGERP-+))
          (31 31
              (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
          (31 31 (:REWRITE RATIONALP-MINUS-X))
          (31 31 (:REWRITE INTEGERP-MINUS-X))
          (31 31
              (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
          (31 31 (:REWRITE |(equal c (/ x))|))
          (31 31 (:REWRITE |(equal c (- x))|))
          (31 31 (:REWRITE |(equal (/ x) c)|))
          (31 31 (:REWRITE |(equal (/ x) (/ y))|))
          (31 31 (:REWRITE |(equal (- x) c)|))
          (31 31 (:REWRITE |(equal (- x) (- y))|))
          (31 31 (:META META-RATIONALP-CORRECT))
          (31 31 (:META META-INTEGERP-CORRECT)))
(APP-COMMUTES (28 28 (:REWRITE DEFAULT-CDR))
              (24 24 (:REWRITE DEFAULT-CAR)))
(PERM-IMPLIES-PERM-APP-1 (24 23 (:REWRITE DEFAULT-CDR))
                         (20 18 (:REWRITE DEFAULT-CAR))
                         (8 8 (:TYPE-PRESCRIPTION APP))
                         (1 1 (:REWRITE PERM-MEM))
                         (1 1 (:REWRITE MEM-DEL)))
(REV-IS-ID (3 3 (:REWRITE DEFAULT-CDR))
           (3 3 (:REWRITE DEFAULT-CAR)))
(==)
(==-SYMMETRIC (6 6 (:REWRITE DEFAULT-CAR))
              (4 4 (:REWRITE DEFAULT-CDR)))
(==-REFLEXIVE (77 21 (:REWRITE ACL2-NUMBERP-X))
              (70 7
                  (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
              (28 7 (:REWRITE RATIONALP-X))
              (22 22 (:REWRITE DEFAULT-CAR))
              (14 7 (:REWRITE SIMPLIFY-SUMS-EQUAL))
              (14 7
                  (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
              (8 8 (:REWRITE DEFAULT-CDR))
              (7 7 (:REWRITE REDUCE-RATIONALP-+))
              (7 7 (:REWRITE REDUCE-RATIONALP-*))
              (7 7
                 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
              (7 7 (:REWRITE REDUCE-INTEGERP-+))
              (7 7
                 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
              (7 7 (:REWRITE RATIONALP-MINUS-X))
              (7 7 (:REWRITE INTEGERP-MINUS-X))
              (7 7
                 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
              (7 7 (:REWRITE |(equal c (/ x))|))
              (7 7 (:REWRITE |(equal c (- x))|))
              (7 7 (:REWRITE |(equal (/ x) c)|))
              (7 7 (:REWRITE |(equal (/ x) (/ y))|))
              (7 7 (:REWRITE |(equal (- x) c)|))
              (7 7 (:REWRITE |(equal (- x) (- y))|))
              (7 7 (:META META-RATIONALP-CORRECT))
              (7 7 (:META META-INTEGERP-CORRECT)))
(==-IS-AN-EQUIVALENCE
     (374 102 (:REWRITE ACL2-NUMBERP-X))
     (340 34
          (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (136 34 (:REWRITE RATIONALP-X))
     (84 84 (:REWRITE DEFAULT-CAR))
     (68 34 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (68 34
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (50 50 (:REWRITE DEFAULT-CDR))
     (34 34 (:REWRITE REDUCE-RATIONALP-+))
     (34 34 (:REWRITE REDUCE-RATIONALP-*))
     (34 34
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (34 34 (:REWRITE REDUCE-INTEGERP-+))
     (34 34
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (34 34 (:REWRITE RATIONALP-MINUS-X))
     (34 34 (:REWRITE INTEGERP-MINUS-X))
     (34 34
         (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (34 34 (:REWRITE |(equal c (/ x))|))
     (34 34 (:REWRITE |(equal c (- x))|))
     (34 34 (:REWRITE |(equal (/ x) c)|))
     (34 34 (:REWRITE |(equal (/ x) (/ y))|))
     (34 34 (:REWRITE |(equal (- x) c)|))
     (34 34 (:REWRITE |(equal (- x) (- y))|))
     (34 34 (:META META-RATIONALP-CORRECT))
     (34 34 (:META META-INTEGERP-CORRECT)))
(==-IMPLIES-==-CONS-2
     (11 3 (:REWRITE ACL2-NUMBERP-X))
     (10 1
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (4 4 (:REWRITE DEFAULT-CDR))
     (4 4 (:REWRITE DEFAULT-CAR))
     (4 1 (:REWRITE RATIONALP-X))
     (2 1 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (2 1
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (1 1 (:REWRITE REDUCE-RATIONALP-+))
     (1 1 (:REWRITE REDUCE-RATIONALP-*))
     (1 1
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (1 1 (:REWRITE REDUCE-INTEGERP-+))
     (1 1
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (1 1 (:REWRITE RATIONALP-MINUS-X))
     (1 1 (:REWRITE INTEGERP-MINUS-X))
     (1 1
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (1 1 (:REWRITE |(equal c (/ x))|))
     (1 1 (:REWRITE |(equal c (- x))|))
     (1 1 (:REWRITE |(equal (/ x) c)|))
     (1 1 (:REWRITE |(equal (/ x) (/ y))|))
     (1 1 (:REWRITE |(equal (- x) c)|))
     (1 1 (:REWRITE |(equal (- x) (- y))|))
     (1 1 (:META META-RATIONALP-CORRECT))
     (1 1 (:META META-INTEGERP-CORRECT)))
(==-IMPLIES-IFF-CONSP-1
     (11 3 (:REWRITE ACL2-NUMBERP-X))
     (10 1
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (4 1 (:REWRITE RATIONALP-X))
     (2 2 (:REWRITE DEFAULT-CDR))
     (2 2 (:REWRITE DEFAULT-CAR))
     (2 1 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (2 1
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (1 1 (:REWRITE REDUCE-RATIONALP-+))
     (1 1 (:REWRITE REDUCE-RATIONALP-*))
     (1 1
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (1 1 (:REWRITE REDUCE-INTEGERP-+))
     (1 1
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (1 1 (:REWRITE RATIONALP-MINUS-X))
     (1 1 (:REWRITE INTEGERP-MINUS-X))
     (1 1
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (1 1 (:REWRITE |(equal c (/ x))|))
     (1 1 (:REWRITE |(equal c (- x))|))
     (1 1 (:REWRITE |(equal (/ x) c)|))
     (1 1 (:REWRITE |(equal (/ x) (/ y))|))
     (1 1 (:REWRITE |(equal (- x) c)|))
     (1 1 (:REWRITE |(equal (- x) (- y))|))
     (1 1 (:META META-RATIONALP-CORRECT))
     (1 1 (:META META-INTEGERP-CORRECT)))
(==-IMPLIES-==-APP-2 (77 21 (:REWRITE ACL2-NUMBERP-X))
                     (70 7
                         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
                     (28 7 (:REWRITE RATIONALP-X))
                     (26 24 (:REWRITE DEFAULT-CAR))
                     (24 24 (:TYPE-PRESCRIPTION APP))
                     (24 22 (:REWRITE DEFAULT-CDR))
                     (14 7 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                     (14 7
                         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                     (7 7 (:REWRITE REDUCE-RATIONALP-+))
                     (7 7 (:REWRITE REDUCE-RATIONALP-*))
                     (7 7
                        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
                     (7 7 (:REWRITE REDUCE-INTEGERP-+))
                     (7 7
                        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
                     (7 7 (:REWRITE RATIONALP-MINUS-X))
                     (7 7 (:REWRITE INTEGERP-MINUS-X))
                     (7 7
                        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
                     (7 7 (:REWRITE |(equal c (/ x))|))
                     (7 7 (:REWRITE |(equal c (- x))|))
                     (7 7 (:REWRITE |(equal (/ x) c)|))
                     (7 7 (:REWRITE |(equal (/ x) (/ y))|))
                     (7 7 (:REWRITE |(equal (- x) c)|))
                     (7 7 (:REWRITE |(equal (- x) (- y))|))
                     (7 7 (:META META-RATIONALP-CORRECT))
                     (7 7 (:META META-INTEGERP-CORRECT)))
(==-IMPLIES-==-APP-1 (77 21 (:REWRITE ACL2-NUMBERP-X))
                     (70 7
                         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
                     (28 7 (:REWRITE RATIONALP-X))
                     (26 24 (:REWRITE DEFAULT-CAR))
                     (24 24 (:TYPE-PRESCRIPTION APP))
                     (20 18 (:REWRITE DEFAULT-CDR))
                     (14 7 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                     (14 7
                         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                     (7 7 (:REWRITE REDUCE-RATIONALP-+))
                     (7 7 (:REWRITE REDUCE-RATIONALP-*))
                     (7 7
                        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
                     (7 7 (:REWRITE REDUCE-INTEGERP-+))
                     (7 7
                        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
                     (7 7 (:REWRITE RATIONALP-MINUS-X))
                     (7 7 (:REWRITE INTEGERP-MINUS-X))
                     (7 7
                        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
                     (7 7 (:REWRITE |(equal c (/ x))|))
                     (7 7 (:REWRITE |(equal c (- x))|))
                     (7 7 (:REWRITE |(equal (/ x) c)|))
                     (7 7 (:REWRITE |(equal (/ x) (/ y))|))
                     (7 7 (:REWRITE |(equal (- x) c)|))
                     (7 7 (:REWRITE |(equal (- x) (- y))|))
                     (7 7 (:META META-RATIONALP-CORRECT))
                     (7 7 (:META META-INTEGERP-CORRECT)))
(REV-REV-AGAIN (33 9 (:REWRITE ACL2-NUMBERP-X))
               (32 4 (:REWRITE REV-REV))
               (30 3
                   (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
               (29 29 (:REWRITE DEFAULT-CDR))
               (25 25 (:REWRITE DEFAULT-CAR))
               (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
               (20 4 (:DEFINITION TRUE-LISTP))
               (12 3 (:REWRITE RATIONALP-X))
               (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
               (6 3
                  (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
               (3 3 (:REWRITE REDUCE-RATIONALP-+))
               (3 3 (:REWRITE REDUCE-RATIONALP-*))
               (3 3
                  (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
               (3 3 (:REWRITE REDUCE-INTEGERP-+))
               (3 3
                  (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
               (3 3 (:REWRITE RATIONALP-MINUS-X))
               (3 3 (:REWRITE INTEGERP-MINUS-X))
               (3 3
                  (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
               (3 3 (:REWRITE |(equal c (/ x))|))
               (3 3 (:REWRITE |(equal c (- x))|))
               (3 3 (:REWRITE |(equal (/ x) c)|))
               (3 3 (:REWRITE |(equal (/ x) (/ y))|))
               (3 3 (:REWRITE |(equal (- x) c)|))
               (3 3 (:REWRITE |(equal (- x) (- y))|))
               (3 3 (:META META-RATIONALP-CORRECT))
               (3 3 (:META META-INTEGERP-CORRECT)))
(ENDS-IN-A-0)
(APP0 (630 12 (:DEFINITION INTEGER-ABS))
      (241 87 (:REWRITE DEFAULT-PLUS-1))
      (222 87 (:REWRITE DEFAULT-PLUS-2))
      (210 6 (:REWRITE |(+ (if a b c) x)|))
      (186 6 (:REWRITE NUMERATOR-NEGATIVE))
      (60 6 (:DEFINITION LENGTH))
      (57 23 (:REWRITE DEFAULT-LESS-THAN-1))
      (54 54 (:TYPE-PRESCRIPTION NUMERATOR-ZERO))
      (54 54
          (:TYPE-PRESCRIPTION NUMERATOR-POSITIVE . 2))
      (54 54
          (:TYPE-PRESCRIPTION NUMERATOR-POSITIVE . 1))
      (54 54
          (:TYPE-PRESCRIPTION NUMERATOR-NEGATIVE . 2))
      (54 54
          (:TYPE-PRESCRIPTION NUMERATOR-NEGATIVE . 1))
      (53 53
          (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
      (42 12 (:REWRITE DEFAULT-MINUS))
      (42 6 (:DEFINITION LEN))
      (40 10 (:REWRITE RATIONALP-X))
      (40 8 (:REWRITE ACL2-NUMBERP-X))
      (40 4
          (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
      (29 23 (:REWRITE DEFAULT-LESS-THAN-2))
      (28 28 (:REWRITE DEFAULT-CDR))
      (27 17
          (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
      (27 17 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
      (23 23 (:REWRITE THE-FLOOR-BELOW))
      (23 23 (:REWRITE THE-FLOOR-ABOVE))
      (23 23 (:REWRITE REMOVE-WEAK-INEQUALITIES))
      (23 23
          (:REWRITE REMOVE-STRICT-INEQUALITIES))
      (23 23
          (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
      (23 23
          (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
      (23 23
          (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
      (23 23 (:REWRITE INTEGERP-<-CONSTANT))
      (23 23 (:REWRITE CONSTANT-<-INTEGERP))
      (23 23
          (:REWRITE |(< c (/ x)) positive c --- present in goal|))
      (23 23
          (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
      (23 23
          (:REWRITE |(< c (/ x)) negative c --- present in goal|))
      (23 23
          (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
      (23 23 (:REWRITE |(< c (- x))|))
      (23 23
          (:REWRITE |(< (/ x) c) positive c --- present in goal|))
      (23 23
          (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
      (23 23
          (:REWRITE |(< (/ x) c) negative c --- present in goal|))
      (23 23
          (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
      (23 23 (:REWRITE |(< (/ x) (/ y))|))
      (23 23 (:REWRITE |(< (- x) c)|))
      (23 23 (:REWRITE |(< (- x) (- y))|))
      (18 18 (:REWRITE |(< (/ x) 0)|))
      (18 18 (:REWRITE |(< (* x y) 0)|))
      (17 17 (:REWRITE FOLD-CONSTS-IN-+))
      (17 17 (:REWRITE |(+ c (+ d x))|))
      (16 16 (:REWRITE REDUCE-INTEGERP-+))
      (16 16 (:REWRITE INTEGERP-MINUS-X))
      (16 16 (:META META-INTEGERP-CORRECT))
      (12 12
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
      (12 12
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
      (10 10 (:REWRITE REDUCE-RATIONALP-+))
      (10 10 (:REWRITE REDUCE-RATIONALP-*))
      (10 10 (:REWRITE RATIONALP-MINUS-X))
      (10 10 (:REWRITE DEFAULT-CAR))
      (10 10 (:META META-RATIONALP-CORRECT))
      (8 4
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
      (6 6 (:TYPE-PRESCRIPTION LEN))
      (6 6 (:REWRITE INTEGERP==>NUMERATOR-=-X))
      (6 6 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
      (6 6 (:REWRITE DEFAULT-REALPART))
      (6 6 (:REWRITE DEFAULT-RATIONAL-NUMERATOR))
      (6 6
         (:REWRITE DEFAULT-RATIONAL-DENOMINATOR))
      (6 6 (:REWRITE DEFAULT-IMAGPART))
      (6 6 (:REWRITE DEFAULT-COERCE-2))
      (6 6 (:REWRITE DEFAULT-COERCE-1))
      (4 4
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
      (4 4 (:REWRITE SIMPLIFY-SUMS-EQUAL))
      (4 4
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
      (4 4
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
      (4 4
         (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
      (4 4 (:REWRITE |(equal c (/ x))|))
      (4 4 (:REWRITE |(equal c (- x))|))
      (4 4 (:REWRITE |(equal (/ x) c)|))
      (4 4 (:REWRITE |(equal (/ x) (/ y))|))
      (4 4 (:REWRITE |(equal (- x) c)|))
      (4 4 (:REWRITE |(equal (- x) (- y))|))
      (4 2 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
      (2 2 (:REWRITE |(< y (+ (- c) x))|))
      (2 2 (:REWRITE |(< x (+ c/d y))|))
      (1 1
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
      (1 1
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
      (1 1 (:REWRITE |(< 0 (/ x))|))
      (1 1 (:REWRITE |(< 0 (* x y))|)))
(REV0 (1250 92
            (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
      (1140 184 (:REWRITE ACL2-NUMBERP-X))
      (630 12 (:DEFINITION INTEGER-ABS))
      (502 98 (:REWRITE RATIONALP-X))
      (294 92
           (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
      (241 87 (:REWRITE DEFAULT-PLUS-1))
      (222 87 (:REWRITE DEFAULT-PLUS-2))
      (210 6 (:REWRITE |(+ (if a b c) x)|))
      (186 6 (:REWRITE NUMERATOR-NEGATIVE))
      (176 139 (:REWRITE DEFAULT-CDR))
      (104 104 (:REWRITE REDUCE-INTEGERP-+))
      (104 104 (:REWRITE INTEGERP-MINUS-X))
      (104 104 (:META META-INTEGERP-CORRECT))
      (98 98 (:REWRITE REDUCE-RATIONALP-+))
      (98 98 (:REWRITE REDUCE-RATIONALP-*))
      (98 98 (:REWRITE RATIONALP-MINUS-X))
      (98 98 (:META META-RATIONALP-CORRECT))
      (92 92
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
      (92 92 (:REWRITE SIMPLIFY-SUMS-EQUAL))
      (92 92
          (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
      (92 92
          (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
      (92 92
          (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
      (92 92 (:REWRITE |(equal c (/ x))|))
      (92 92 (:REWRITE |(equal c (- x))|))
      (92 92 (:REWRITE |(equal (/ x) c)|))
      (92 92 (:REWRITE |(equal (/ x) (/ y))|))
      (92 92 (:REWRITE |(equal (- x) c)|))
      (92 92 (:REWRITE |(equal (- x) (- y))|))
      (83 47 (:REWRITE DEFAULT-CAR))
      (60 6 (:DEFINITION LENGTH))
      (57 23 (:REWRITE DEFAULT-LESS-THAN-1))
      (54 54 (:TYPE-PRESCRIPTION NUMERATOR-ZERO))
      (54 54
          (:TYPE-PRESCRIPTION NUMERATOR-POSITIVE . 2))
      (54 54
          (:TYPE-PRESCRIPTION NUMERATOR-POSITIVE . 1))
      (54 54
          (:TYPE-PRESCRIPTION NUMERATOR-NEGATIVE . 2))
      (54 54
          (:TYPE-PRESCRIPTION NUMERATOR-NEGATIVE . 1))
      (53 53
          (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
      (42 12 (:REWRITE DEFAULT-MINUS))
      (42 6 (:DEFINITION LEN))
      (29 23 (:REWRITE DEFAULT-LESS-THAN-2))
      (27 17
          (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
      (27 17 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
      (23 23 (:REWRITE THE-FLOOR-BELOW))
      (23 23 (:REWRITE THE-FLOOR-ABOVE))
      (23 23 (:REWRITE REMOVE-WEAK-INEQUALITIES))
      (23 23
          (:REWRITE REMOVE-STRICT-INEQUALITIES))
      (23 23
          (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
      (23 23
          (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
      (23 23
          (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
      (23 23 (:REWRITE INTEGERP-<-CONSTANT))
      (23 23 (:REWRITE CONSTANT-<-INTEGERP))
      (23 23
          (:REWRITE |(< c (/ x)) positive c --- present in goal|))
      (23 23
          (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
      (23 23
          (:REWRITE |(< c (/ x)) negative c --- present in goal|))
      (23 23
          (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
      (23 23 (:REWRITE |(< c (- x))|))
      (23 23
          (:REWRITE |(< (/ x) c) positive c --- present in goal|))
      (23 23
          (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
      (23 23
          (:REWRITE |(< (/ x) c) negative c --- present in goal|))
      (23 23
          (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
      (23 23 (:REWRITE |(< (/ x) (/ y))|))
      (23 23 (:REWRITE |(< (- x) c)|))
      (23 23 (:REWRITE |(< (- x) (- y))|))
      (18 18 (:REWRITE |(< (/ x) 0)|))
      (18 18 (:REWRITE |(< (* x y) 0)|))
      (17 17 (:REWRITE FOLD-CONSTS-IN-+))
      (17 17 (:REWRITE |(+ c (+ d x))|))
      (12 12
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
      (12 12
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
      (6 6 (:TYPE-PRESCRIPTION LEN))
      (6 6 (:REWRITE INTEGERP==>NUMERATOR-=-X))
      (6 6 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
      (6 6 (:REWRITE DEFAULT-REALPART))
      (6 6 (:REWRITE DEFAULT-RATIONAL-NUMERATOR))
      (6 6
         (:REWRITE DEFAULT-RATIONAL-DENOMINATOR))
      (6 6 (:REWRITE DEFAULT-IMAGPART))
      (6 6 (:REWRITE DEFAULT-COERCE-2))
      (6 6 (:REWRITE DEFAULT-COERCE-1))
      (4 2 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
      (2 2 (:REWRITE |(< y (+ (- c) x))|))
      (2 2 (:REWRITE |(< x (+ c/d y))|))
      (1 1
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
      (1 1
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
      (1 1 (:REWRITE |(< 0 (/ x))|))
      (1 1 (:REWRITE |(< 0 (* x y))|)))
(APP0-RIGHT-ID (117 9
                    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
               (111 21 (:REWRITE ACL2-NUMBERP-X))
               (45 9 (:REWRITE RATIONALP-X))
               (27 9
                   (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
               (21 9 (:REWRITE SIMPLIFY-SUMS-EQUAL))
               (9 9 (:REWRITE REDUCE-RATIONALP-+))
               (9 9 (:REWRITE REDUCE-RATIONALP-*))
               (9 9
                  (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
               (9 9 (:REWRITE REDUCE-INTEGERP-+))
               (9 9
                  (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
               (9 9 (:REWRITE RATIONALP-MINUS-X))
               (9 9 (:REWRITE INTEGERP-MINUS-X))
               (9 9
                  (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
               (9 9 (:REWRITE |(equal c (/ x))|))
               (9 9 (:REWRITE |(equal c (- x))|))
               (9 9 (:REWRITE |(equal (/ x) c)|))
               (9 9 (:REWRITE |(equal (/ x) (/ y))|))
               (9 9 (:REWRITE |(equal (- x) c)|))
               (9 9 (:REWRITE |(equal (- x) (- y))|))
               (9 9 (:META META-RATIONALP-CORRECT))
               (9 9 (:META META-INTEGERP-CORRECT))
               (7 7 (:REWRITE DEFAULT-CDR))
               (6 6
                  (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
               (3 3 (:REWRITE DEFAULT-CAR)))
(ENDS-IN-A-ZERO)
(ENDS-IN-A-ZERO-APP0 (60 12 (:REWRITE ACL2-NUMBERP-X))
                     (60 6
                         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
                     (24 6 (:REWRITE RATIONALP-X))
                     (12 11 (:REWRITE DEFAULT-CDR))
                     (12 6
                         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
                     (6 6
                        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
                     (6 6 (:REWRITE SIMPLIFY-SUMS-EQUAL))
                     (6 6 (:REWRITE REDUCE-RATIONALP-+))
                     (6 6 (:REWRITE REDUCE-RATIONALP-*))
                     (6 6
                        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
                     (6 6 (:REWRITE REDUCE-INTEGERP-+))
                     (6 6
                        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
                     (6 6 (:REWRITE RATIONALP-MINUS-X))
                     (6 6 (:REWRITE INTEGERP-MINUS-X))
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
                     (3 3 (:REWRITE DEFAULT-CAR)))
(FORCE-TEST (1039 13 (:DEFINITION APP0))
            (945 69
                 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
            (860 138 (:REWRITE ACL2-NUMBERP-X))
            (361 69 (:REWRITE RATIONALP-X))
            (223 69
                 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
            (95 69 (:REWRITE DEFAULT-CDR))
            (69 69
                (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
            (69 69 (:REWRITE SIMPLIFY-SUMS-EQUAL))
            (69 69 (:REWRITE REDUCE-RATIONALP-+))
            (69 69 (:REWRITE REDUCE-RATIONALP-*))
            (69 69
                (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
            (69 69 (:REWRITE REDUCE-INTEGERP-+))
            (69 69
                (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
            (69 69 (:REWRITE RATIONALP-MINUS-X))
            (69 69 (:REWRITE INTEGERP-MINUS-X))
            (69 69
                (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
            (69 69 (:REWRITE |(equal c (/ x))|))
            (69 69 (:REWRITE |(equal c (- x))|))
            (69 69 (:REWRITE |(equal (/ x) c)|))
            (69 69 (:REWRITE |(equal (/ x) (/ y))|))
            (69 69 (:REWRITE |(equal (- x) c)|))
            (69 69 (:REWRITE |(equal (- x) (- y))|))
            (69 69 (:META META-RATIONALP-CORRECT))
            (69 69 (:META META-INTEGERP-CORRECT))
            (52 26 (:REWRITE DEFAULT-CAR)))
(PROPER-CONS-NEST-P
     (1365 26 (:DEFINITION INTEGER-ABS))
     (539 209 (:REWRITE DEFAULT-PLUS-2))
     (522 209 (:REWRITE DEFAULT-PLUS-1))
     (455 13 (:REWRITE |(+ (if a b c) x)|))
     (403 13 (:REWRITE NUMERATOR-NEGATIVE))
     (328 31 (:DEFINITION LENGTH))
     (259 37 (:DEFINITION LEN))
     (236 32
          (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (200 40 (:REWRITE ACL2-NUMBERP-X))
     (133 133 (:TYPE-PRESCRIPTION LEN))
     (132 132
          (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (132 33 (:REWRITE RATIONALP-X))
     (117 117 (:TYPE-PRESCRIPTION NUMERATOR-ZERO))
     (117 117
          (:TYPE-PRESCRIPTION NUMERATOR-POSITIVE . 2))
     (117 117
          (:TYPE-PRESCRIPTION NUMERATOR-POSITIVE . 1))
     (117 117
          (:TYPE-PRESCRIPTION NUMERATOR-NEGATIVE . 2))
     (117 117
          (:TYPE-PRESCRIPTION NUMERATOR-NEGATIVE . 1))
     (116 47 (:REWRITE DEFAULT-LESS-THAN-1))
     (91 26 (:REWRITE DEFAULT-MINUS))
     (76 32
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (60 47 (:REWRITE DEFAULT-LESS-THAN-2))
     (50 32 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (48 46
         (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (48 33
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (48 33 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (47 47 (:REWRITE THE-FLOOR-BELOW))
     (47 47 (:REWRITE THE-FLOOR-ABOVE))
     (47 47
         (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (47 47
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (46 46 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (46 46
         (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (46 46 (:REWRITE REDUCE-INTEGERP-+))
     (46 46 (:REWRITE INTEGERP-MINUS-X))
     (46 46 (:REWRITE INTEGERP-<-CONSTANT))
     (46 46 (:REWRITE CONSTANT-<-INTEGERP))
     (46 46
         (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (46 46
         (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (46 46
         (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (46 46 (:REWRITE |(< c (- x))|))
     (46 46
         (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (46 46
         (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (46 46
         (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (46 46
         (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (46 46 (:REWRITE |(< (/ x) (/ y))|))
     (46 46 (:REWRITE |(< (- x) c)|))
     (46 46 (:REWRITE |(< (- x) (- y))|))
     (46 46 (:META META-INTEGERP-CORRECT))
     (39 39 (:REWRITE |(< (/ x) 0)|))
     (39 39 (:REWRITE |(< (* x y) 0)|))
     (34 34 (:REWRITE FOLD-CONSTS-IN-+))
     (33 33 (:REWRITE REDUCE-RATIONALP-+))
     (33 33 (:REWRITE REDUCE-RATIONALP-*))
     (33 33 (:REWRITE RATIONALP-MINUS-X))
     (33 33 (:META META-RATIONALP-CORRECT))
     (32 32
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (32 32
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (32 32
         (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (32 32 (:REWRITE |(equal c (/ x))|))
     (32 32 (:REWRITE |(equal c (- x))|))
     (32 32 (:REWRITE |(equal (/ x) c)|))
     (32 32 (:REWRITE |(equal (/ x) (/ y))|))
     (32 32 (:REWRITE |(equal (- x) c)|))
     (32 32 (:REWRITE |(equal (- x) (- y))|))
     (26 26
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (26 26
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (24 24
         (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
     (22 22
         (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
     (19 19 (:REWRITE DEFAULT-COERCE-2))
     (19 19 (:REWRITE DEFAULT-COERCE-1))
     (18 6 (:DEFINITION SYMBOL-LISTP))
     (13 13 (:REWRITE INTEGERP==>NUMERATOR-=-X))
     (13 13
         (:REWRITE INTEGERP==>DENOMINATOR-=-1))
     (13 13 (:REWRITE DEFAULT-REALPART))
     (13 13
         (:REWRITE DEFAULT-RATIONAL-NUMERATOR))
     (13 13
         (:REWRITE DEFAULT-RATIONAL-DENOMINATOR))
     (13 13 (:REWRITE DEFAULT-IMAGPART))
     (6 6 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
     (6 6 (:REWRITE |(equal x (if a b c))|))
     (6 6 (:REWRITE |(equal (if a b c) x)|))
     (5 5 (:REWRITE |(< x (+ c/d y))|))
     (4 4 (:REWRITE |(< y (+ (- c) x))|))
     (4 2 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (3 3 (:REWRITE |(< 0 (* x y))|))
     (2 2
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (2 2
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (2 2 (:REWRITE |(< 0 (/ x))|)))
(ORDERED-SYMBOL-ALISTP-REMOVE1-ASSOC-EQ-TEST)
