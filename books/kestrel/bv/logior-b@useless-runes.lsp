(LOGTAIL-OF-LOGIOR (2420 80 (:DEFINITION NATP))
                   (1433 72 (:LINEAR LOGIOR-BOUND-LINEAR-2))
                   (1433 72 (:LINEAR LOGIOR-BOUND-LINEAR))
                   (1156 1156
                         (:TYPE-PRESCRIPTION <-OF-LOGIOR-AND-0-TYPE))
                   (619 619
                        (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
                   (619 619
                        (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
                   (559 1 (:REWRITE FLOOR-UNIQUE-EQUAL-VERSION))
                   (432 260 (:REWRITE DEFAULT-<-1))
                   (391 260 (:REWRITE DEFAULT-<-2))
                   (364 101
                        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
                   (326 10 (:REWRITE <-OF-FLOOR-AND-0))
                   (308 121 (:REWRITE DEFAULT-*-2))
                   (272 121 (:REWRITE DEFAULT-*-1))
                   (243 101
                        (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
                   (243 101
                        (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
                   (242 100
                        (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
                   (211 29 (:REWRITE DEFAULT-UNARY-/))
                   (152 40 (:REWRITE UNICITY-OF-1))
                   (126 18 (:REWRITE NATP-OF-FLOOR))
                   (122 32 (:REWRITE DEFAULT-+-2))
                   (112 40 (:DEFINITION FIX))
                   (101 101
                        (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
                   (98 50 (:LINEAR EXPT-BOUND-LINEAR-WEAK))
                   (80 80 (:TYPE-PRESCRIPTION NATP))
                   (50 50 (:LINEAR EXPT-BOUND-LINEAR))
                   (50 10 (:REWRITE <-OF-FLOOR-AND-0-2))
                   (42 6
                       (:LINEAR FLOOR-UPPER-BOUND-STRONG-LINEAR))
                   (34 18
                       (:REWRITE <-OF-FLOOR-OF-CONSTANT-AND-CONSTANT-GEN))
                   (32 32 (:REWRITE DEFAULT-+-1))
                   (14 14 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
                   (6 6 (:REWRITE <-OF-0-AND-EXPT))
                   (4 4
                      (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(BVCHOP-OF-LOGIOR
     (1375 43 (:REWRITE MOD-WHEN-MULTIPLE))
     (1089 43 (:REWRITE MOD-WHEN-<))
     (810 810
          (:TYPE-PRESCRIPTION <-OF-LOGIOR-AND-0-TYPE))
     (570 78 (:REWRITE DEFAULT-UNARY-/))
     (444 110 (:REWRITE DEFAULT-*-2))
     (312 110 (:REWRITE DEFAULT-*-1))
     (284 32 (:REWRITE COMMUTATIVITY-OF-*))
     (262 32 (:REWRITE MULTIPLE-WHEN-MOD-0-CHEAP))
     (229 43
          (:REWRITE MOD-WHEN-RATIONALP-ARG1-AND-NOT-RATIONALP-ARG2))
     (224 101 (:REWRITE DEFAULT-<-2))
     (178 43
          (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG2))
     (157 101 (:REWRITE DEFAULT-<-1))
     (94 43
         (:REWRITE MOD-WHEN-NOT-RATIONALP-ARG1-AND-RATIONALP-ARG2))
     (94 43
         (:REWRITE MOD-WHEN-NOT-ACL2-NUMBERP-ARG1))
     (84 28 (:DEFINITION NATP))
     (74 74
         (:REWRITE MOD-WHEN-EQUAL-OF-MOD-AND-0-FREE-CHEAP))
     (55 13 (:REWRITE DEFAULT-+-2))
     (32 32 (:LINEAR EXPT-BOUND-LINEAR))
     (28 28 (:TYPE-PRESCRIPTION NATP))
     (14 14
         (:TYPE-PRESCRIPTION NONNEG-OF-MOD-TYPE))
     (14 14 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
     (13 13 (:REWRITE DEFAULT-+-1))
     (2 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
