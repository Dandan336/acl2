(EXPT2$INLINE (30 30
                  (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
              (30 30
                  (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
              (8 2
                 (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
              (8 2
                 (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
              (8 2
                 (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
              (8 2
                 (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
              (8 2 (:REWRITE FLOOR-WHEN-<))
              (3 3 (:REWRITE DEFAULT-<-2))
              (3 3 (:REWRITE DEFAULT-<-1))
              (2 2
                 (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT)))
(IFLOOR$INLINE (51 51
                   (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
               (51 51
                   (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
               (4 2 (:REWRITE FLOOR-WHEN-<))
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
               (1 1 (:REWRITE DEFAULT-<-2))
               (1 1 (:REWRITE DEFAULT-<-1)))
(LOGTAIL$INLINE (34 34
                    (:TYPE-PRESCRIPTION FLOOR-TYPE-NON-NEGATIVE))
                (34 34
                    (:TYPE-PRESCRIPTION FLOOR-TYPE-1-PART-1-BETTER))
                (19 2 (:REWRITE FLOOR-WHEN-<))
                (17 17 (:TYPE-PRESCRIPTION NATP-OF-EXPT))
                (12 3
                    (:REWRITE FLOOR-WHEN-NOT-RATIONALP-OF-QUOTIENT))
                (7 4 (:REWRITE DEFAULT-<-2))
                (7 1 (:REWRITE DEFAULT-UNARY-/))
                (4 4 (:REWRITE DEFAULT-<-1))
                (4 1 (:REWRITE DEFAULT-*-2))
                (2 2
                   (:REWRITE FLOOR-WHEN-NOT-RATIONALP-ARG1))
                (2 2
                   (:REWRITE FLOOR-WHEN-NEGATIVE-AND-SMALL-CHEAP))
                (2 2
                   (:REWRITE FLOOR-WHEN-I-IS-NOT-AN-ACL2-NUMBERP))
                (2 2
                   (:REWRITE FLOOR-MINUS-NEGATIVE-CONSTANT))
                (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
                (1 1 (:REWRITE DEFAULT-*-1)))
