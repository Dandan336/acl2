(INTEGERP-OF-*-OF---ARG2 (3 2 (:REWRITE DEFAULT-*-2))
                         (3 2 (:REWRITE DEFAULT-*-1))
                         (2 2
                            (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                         (1 1 (:REWRITE INTEGERP-OF-*))
                         (1 1 (:REWRITE DEFAULT-UNARY-MINUS)))
(CEILING-OF-0)
(CEILING-IN-TERMS-OF-FLOOR
     (488 24
          (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (134 124 (:REWRITE DEFAULT-<-2))
     (133 61 (:REWRITE DEFAULT-UNARY-/))
     (132 92 (:REWRITE DEFAULT-+-2))
     (128 12
          (:REWRITE <-OF-NUMERATOR-AND-DENOMINATOR-SAME))
     (124 124 (:REWRITE DEFAULT-<-1))
     (100 92 (:REWRITE DEFAULT-+-1))
     (84 84
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (83 59 (:REWRITE DEFAULT-*-1))
     (72 24 (:DEFINITION NFIX))
     (71 55 (:REWRITE DEFAULT-UNARY-MINUS))
     (59 59 (:REWRITE DEFAULT-*-2))
     (57 17 (:REWRITE <-OF-*-OF-/-ARG1-ARG2))
     (34 10 (:REWRITE <-OF-*-OF-/-ARG2-ARG2))
     (24 24 (:DEFINITION IFIX))
     (24 16 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
     (24 16
         (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
     (24 8 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
     (22 20 (:REWRITE DEFAULT-NUMERATOR))
     (20 18 (:REWRITE DEFAULT-DENOMINATOR))
     (19 19 (:REWRITE INTEGERP-OF-*))
     (16 16 (:REWRITE RATIONALP-*))
     (16 16 (:LINEAR <-OF-*-AND-*))
     (8 8 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
     (8 8 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
     (8 8 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
     (8 8 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
     (6 6
        (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
     (6 6
        (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
     (3 3 (:REWRITE EQUAL-OF---WHEN-VARIABLE))
     (3 3 (:REWRITE EQUAL-OF---AND-CONSTANT))
     (3 2
        (:LINEAR FLOOR-UPPER-BOUND-STRONG-LINEAR)))
(CEILING-WHEN-<= (9 3 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
                 (6 6
                    (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
                 (6 6 (:LINEAR <-OF-*-AND-*))
                 (5 5 (:REWRITE DEFAULT-*-2))
                 (5 5 (:REWRITE DEFAULT-*-1))
                 (4 4
                    (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
                 (4 4
                    (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
                 (4 4
                    (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
                 (4 4
                    (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
                 (4 4 (:REWRITE FLOOR-WHEN-<))
                 (4 4
                    (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
                 (4 4 (:REWRITE DEFAULT-UNARY-/))
                 (3 3 (:REWRITE DEFAULT-<-2))
                 (3 3 (:REWRITE DEFAULT-<-1))
                 (3 3 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
                 (3 3 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
                 (3 3 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
                 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
                 (2 2 (:LINEAR FLOOR-BOUND-ARG1-LINEAR))
                 (1 1 (:REWRITE DEFAULT-+-2))
                 (1 1 (:REWRITE DEFAULT-+-1)))
(CEILING-OF-+-OF-MINUS-8
     (792 792
          (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
     (792 792
          (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
     (568 96 (:REWRITE FLOOR-WHEN-<))
     (312 66 (:REWRITE <-OF-MINUS-AND-CONSTANT))
     (306 4 (:REWRITE FLOOR-UNIQUE-EQUAL-VERSION))
     (298 52 (:LINEAR FLOOR-BOUND-ARG1-LINEAR))
     (275 123 (:REWRITE DEFAULT-+-2))
     (242 176 (:REWRITE DEFAULT-*-2))
     (236 4 (:REWRITE FLOOR-OF-*-SAME))
     (210 176 (:REWRITE DEFAULT-*-1))
     (180 140 (:REWRITE DEFAULT-<-2))
     (169 105
          (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
     (161 69 (:REWRITE DEFAULT-UNARY-MINUS))
     (160 140 (:REWRITE DEFAULT-<-1))
     (153 105
          (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
     (135 101
          (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
     (123 123 (:REWRITE DEFAULT-+-1))
     (118 86
          (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
     (101 101
          (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
     (60 2 (:REWRITE <-OF-*-AND-0))
     (55 1 (:REWRITE <-OF-*-OF-/-ARG1-ARG1))
     (42 6
         (:REWRITE *-OF-FLOOR-OF-SAME-WHEN-MULTIPLE))
     (36 36 (:TYPE-PRESCRIPTION MOD))
     (20 4 (:REWRITE FLOOR-OF-1-WHEN-INTEGERP))
     (18 2 (:REWRITE <-OF-FLOOR-AND-0))
     (10 10
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (10 10 (:REWRITE FLOOR-PEEL-OFF-CONSTANT))
     (8 2 (:REWRITE <-OF-FLOOR-AND-0-2))
     (6 6
        (:REWRITE <-OF-FLOOR-OF-CONSTANT-AND-CONSTANT-GEN))
     (4 4 (:REWRITE FLOOR-OF-FLOOR))
     (4 4 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
     (4 4
        (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
     (4 4 (:LINEAR <-OF-*-AND-*))
     (3 3 (:REWRITE EQUAL-OF-*-AND-CONSTANT))
     (2 2 (:REWRITE RATIONALP-*))
     (2 2 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
     (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
     (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
     (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
     (2 2 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
     (1 1 (:REWRITE EQUAL-OF---WHEN-VARIABLE))
     (1 1 (:REWRITE EQUAL-OF---AND-CONSTANT)))
(CEILING-IN-TERMS-OF-FLOOR-CASES
     (86 4
         (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (25 17 (:REWRITE DEFAULT-+-2))
     (24 24 (:REWRITE DEFAULT-<-2))
     (24 24 (:REWRITE DEFAULT-<-1))
     (24 2
         (:REWRITE <-OF-NUMERATOR-AND-DENOMINATOR-SAME))
     (19 17 (:REWRITE DEFAULT-+-1))
     (12 4 (:REWRITE <-OF-*-OF-/-ARG1-ARG2))
     (12 4 (:DEFINITION NFIX))
     (10 8 (:REWRITE DEFAULT-UNARY-MINUS))
     (6 2 (:REWRITE <-OF-*-OF-/-ARG2-ARG2))
     (4 4 (:REWRITE INTEGERP-OF-*))
     (4 4 (:REWRITE DEFAULT-UNARY-/))
     (4 4 (:REWRITE DEFAULT-*-2))
     (4 4 (:REWRITE DEFAULT-*-1))
     (4 4 (:DEFINITION IFIX))
     (3 3
        (:TYPE-PRESCRIPTION FLOOR-TYPE-WHEN-NONPOSITIVE-AND-NONNEGATIVE))
     (3 3
        (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
     (3 3
        (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
     (3 2 (:REWRITE NUMERATOR-WHEN-INTEGERP))
     (3 2 (:REWRITE DENOMINATOR-WHEN-INTEGERP))
     (2 2 (:REWRITE DEFAULT-NUMERATOR))
     (2 2 (:REWRITE DEFAULT-DENOMINATOR))
     (2 2 (:REWRITE <-OF-MINUS-AND-CONSTANT)))
(CEILING-UPPER-BOUND (27 27
                         (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
                     (27 27
                         (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
                     (6 2 (:REWRITE FLOOR-WHEN-<))
                     (4 1 (:LINEAR FLOOR-BOUND-ARG1-LINEAR))
                     (3 3 (:REWRITE DEFAULT-<-2))
                     (3 3 (:REWRITE DEFAULT-<-1))
                     (3 1 (:REWRITE <-OF-MINUS-AND-CONSTANT))
                     (2 2
                        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
                     (2 2
                        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
                     (2 2
                        (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
                     (2 2
                        (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
                     (2 2
                        (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
                     (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
                     (2 2 (:REWRITE DEFAULT-UNARY-/))
                     (2 2 (:REWRITE DEFAULT-*-2))
                     (2 2 (:REWRITE DEFAULT-*-1))
                     (1 1 (:REWRITE DEFAULT-+-2))
                     (1 1 (:REWRITE DEFAULT-+-1)))
(CEILING-LOWER-BOUND (25 25
                         (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
                     (25 25
                         (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
                     (4 1 (:LINEAR FLOOR-BOUND-ARG1-LINEAR))
                     (3 1 (:REWRITE FLOOR-WHEN-<))
                     (3 1 (:REWRITE <-OF-MINUS-AND-CONSTANT))
                     (2 2 (:REWRITE DEFAULT-<-2))
                     (2 2 (:REWRITE DEFAULT-<-1))
                     (1 1
                        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
                     (1 1
                        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
                     (1 1
                        (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
                     (1 1
                        (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
                     (1 1
                        (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
                     (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
                     (1 1 (:REWRITE DEFAULT-UNARY-/))
                     (1 1 (:REWRITE DEFAULT-*-2))
                     (1 1 (:REWRITE DEFAULT-*-1)))
(CEILING-LOWER-BOUND-LINEAR (3 1 (:REWRITE CEILING-WHEN-<=))
                            (2 2 (:REWRITE DEFAULT-<-2))
                            (2 2 (:REWRITE DEFAULT-<-1))
                            (1 1 (:REWRITE DEFAULT-UNARY-/))
                            (1 1 (:REWRITE DEFAULT-*-2))
                            (1 1 (:REWRITE DEFAULT-*-1)))
(<-OF-CEILING-ARG1 (245 245
                        (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
                   (245 245
                        (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
                   (121 26 (:LINEAR <-OF-*-AND-*))
                   (94 54 (:REWRITE DEFAULT-*-2))
                   (85 21 (:REWRITE DEFAULT-UNARY-MINUS))
                   (79 13 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
                   (70 54 (:REWRITE DEFAULT-*-1))
                   (46 26 (:REWRITE DEFAULT-<-2))
                   (28 4
                       (:REWRITE *-OF-FLOOR-OF-SAME-WHEN-MULTIPLE))
                   (26 26 (:REWRITE DEFAULT-<-1))
                   (24 24 (:TYPE-PRESCRIPTION MOD))
                   (19 19 (:REWRITE *-OF-*-COMBINE-CONSTANTS))
                   (15 5 (:REWRITE FLOOR-WHEN-<))
                   (12 3 (:LINEAR FLOOR-BOUND-ARG1-LINEAR))
                   (9 3 (:REWRITE <-OF-MINUS-AND-CONSTANT))
                   (5 5
                      (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
                   (5 5
                      (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
                   (5 5
                      (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
                   (5 5
                      (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
                   (5 5
                      (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
                   (5 5 (:REWRITE DEFAULT-UNARY-/))
                   (2 2 (:REWRITE DEFAULT-+-2))
                   (2 2 (:REWRITE DEFAULT-+-1))
                   (2 2
                      (:LINEAR FLOOR-UPPER-BOUND-STRONG-LINEAR)))
(<-OF-CEILING-ARG2 (7 6 (:REWRITE DEFAULT-<-1))
                   (6 6 (:REWRITE DEFAULT-<-2))
                   (6 2 (:REWRITE CEILING-WHEN-<=))
                   (3 3 (:REWRITE DEFAULT-UNARY-/))
                   (3 3 (:REWRITE DEFAULT-*-2))
                   (3 3 (:REWRITE DEFAULT-*-1))
                   (3 1 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
                   (2 2 (:REWRITE DEFAULT-+-2))
                   (2 2 (:REWRITE DEFAULT-+-1))
                   (2 2 (:LINEAR <=-OF-*-AND-*-SAME-LINEAR))
                   (2 2
                      (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
                   (2 2 (:LINEAR <-OF-*-AND-*))
                   (1 1 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
                   (1 1 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
                   (1 1 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-2))
                   (1 1 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1)))
(CEILING-OF-*-SAME (2 2 (:REWRITE DEFAULT-*-2))
                   (2 2 (:REWRITE DEFAULT-*-1))
                   (1 1 (:REWRITE DEFAULT-UNARY-/))
                   (1 1 (:REWRITE DEFAULT-<-2))
                   (1 1 (:REWRITE DEFAULT-<-1)))
(CEILING-WHEN-MULTIPLE
     (11 11 (:REWRITE DEFAULT-*-2))
     (11 11 (:REWRITE DEFAULT-*-1))
     (10 10 (:REWRITE DEFAULT-UNARY-/))
     (10 2 (:REWRITE DEFAULT-+-2))
     (6 6
        (:TYPE-PRESCRIPTION FLOOR-TYPE-WHEN-NONPOSITIVE-AND-NONNEGATIVE))
     (6 6
        (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
     (6 6
        (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
     (6 2 (:REWRITE FLOOR-WHEN-<))
     (3 3 (:REWRITE INTEGERP-OF-*))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (2 2
        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
     (2 2
        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
     (2 2
        (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
     (2 2
        (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
     (2 2
        (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
     (2 2 (:REWRITE DEFAULT-+-1)))
(CEILING-OF-+-WHEN-MULTIPLE
     (61 61 (:REWRITE DEFAULT-*-2))
     (61 61 (:REWRITE DEFAULT-*-1))
     (55 23 (:REWRITE DEFAULT-+-2))
     (38 4 (:REWRITE CEILING-WHEN-MULTIPLE))
     (35 23 (:REWRITE DEFAULT-+-1))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-TYPE-WHEN-NONPOSITIVE-AND-NONNEGATIVE))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
     (26 26
         (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
     (24 3 (:REWRITE FLOOR-OF-+-WHEN-MULT-ARG2))
     (22 22 (:REWRITE DEFAULT-UNARY-/))
     (21 7 (:REWRITE FLOOR-WHEN-<))
     (8 8 (:REWRITE DEFAULT-<-2))
     (8 8 (:REWRITE DEFAULT-<-1))
     (7 7
        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
     (7 7
        (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
     (7 7
        (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
     (7 7
        (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
     (6 6 (:REWRITE INTEGERP-OF-*))
     (4 4
        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
     (3 3 (:REWRITE FOLD-CONSTS-IN-+))
     (3 3 (:REWRITE FLOOR-PEEL-OFF-CONSTANT))
     (3 3
        (:REWRITE FLOOR-OF-PLUS-NORMALIZE-NEGATIVE-CONSTANT)))
(EQUAL-OF-0-AND-CEILING (33 1
                            (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
                        (19 1
                            (:REWRITE <-OF-NUMERATOR-AND-DENOMINATOR-SAME))
                        (12 12 (:REWRITE DEFAULT-<-2))
                        (12 12 (:REWRITE DEFAULT-<-1))
                        (12 4 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
                        (9 9 (:REWRITE DEFAULT-*-2))
                        (9 9 (:REWRITE DEFAULT-*-1))
                        (8 8
                           (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
                        (8 8 (:LINEAR <-OF-*-AND-*))
                        (7 5 (:REWRITE DEFAULT-+-2))
                        (7 1 (:REWRITE <-OF-*-OF-/-ARG2-ARG2))
                        (6 5 (:REWRITE DEFAULT-+-1))
                        (4 4 (:REWRITE INTEGERP-OF-*))
                        (4 4 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-4))
                        (4 4 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-3))
                        (4 4 (:LINEAR <-OF-*-AND-*-SAME-LINEAR-1))
                        (3 3 (:REWRITE DEFAULT-UNARY-/))
                        (3 1 (:DEFINITION NFIX))
                        (2 1 (:REWRITE UNICITY-OF-1))
                        (2 1 (:REWRITE DENOMINATOR-WHEN-INTEGERP))
                        (1 1 (:REWRITE EQUAL-OF-*-AND-CONSTANT))
                        (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
                        (1 1 (:REWRITE DEFAULT-NUMERATOR))
                        (1 1 (:REWRITE DEFAULT-DENOMINATOR))
                        (1 1 (:DEFINITION IFIX)))
(<-OF-0-AND-CEILING)
(CEILING-MONOTONE (140 140
                       (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
                  (140 140
                       (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
                  (84 12 (:REWRITE FLOOR-WHEN-MULTIPLE))
                  (36 12 (:REWRITE FLOOR-WHEN-<))
                  (31 23 (:REWRITE DEFAULT-<-2))
                  (31 23 (:REWRITE DEFAULT-<-1))
                  (22 22 (:REWRITE DEFAULT-*-2))
                  (22 22 (:REWRITE DEFAULT-*-1))
                  (20 20 (:REWRITE DEFAULT-UNARY-/))
                  (18 6 (:REWRITE INTEGERP-OF--))
                  (14 4 (:LINEAR FLOOR-BOUND-ARG1-LINEAR))
                  (12 12 (:REWRITE INTEGERP-OF-*))
                  (12 12
                      (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
                  (12 12
                      (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
                  (12 12
                      (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
                  (12 12
                      (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
                  (12 12
                      (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
                  (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
                  (6 2 (:REWRITE <-OF-MINUS-AND-CONSTANT))
                  (4 4 (:REWRITE DEFAULT-+-2))
                  (4 4 (:REWRITE DEFAULT-+-1))
                  (3 1 (:LINEAR <-OF-*-SAME-LINEAR-SPECIAL))
                  (2 2
                     (:REWRITE <-OF-FLOOR-OF-CONSTANT-AND-CONSTANT-GEN))
                  (2 2
                     (:LINEAR <=-OF-*-AND-*-SAME-ALT-LINEAR))
                  (2 2 (:LINEAR <-OF-*-AND-*)))
(CEILING-UPPER-BOUND-WHEN-<-CONSTANT-LINEAR
     (52 4 (:REWRITE CEILING-WHEN-MULTIPLE))
     (27 27 (:REWRITE DEFAULT-*-2))
     (27 27 (:REWRITE DEFAULT-*-1))
     (26 2 (:REWRITE CEILING-OF-+-WHEN-MULTIPLE))
     (12 4 (:REWRITE CEILING-WHEN-<=))
     (9 9 (:REWRITE DEFAULT-UNARY-/))
     (8 8 (:REWRITE DEFAULT-+-2))
     (8 8 (:REWRITE DEFAULT-+-1))
     (7 7 (:REWRITE DEFAULT-<-2))
     (7 7 (:REWRITE DEFAULT-<-1))
     (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
     (4 2 (:REWRITE INTEGERP-OF--))
     (2 2 (:REWRITE INTEGERP-OF-*))
     (1 1 (:REWRITE FOLD-CONSTS-IN-+)))
