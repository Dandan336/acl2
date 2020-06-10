(EPC-NEXT (1 1 (:TYPE-PRESCRIPTION EPC-NEXT)))
(EPC-RUN (6 6 (:TYPE-PRESCRIPTION EPC-NEXT))
         (4 4
            (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(EPC-IN-SUB)
(EPC-PRE-SUB)
(EPC-MODIFY-SUB (1 1 (:TYPE-PRESCRIPTION EPC-MODIFY-SUB)))
(EPC-EXISTS-EXITPOINT-SUB)
(EPC-EXISTS-EXITPOINT-SUB-SUFF)
(EPC-STEPS-TO-EXITPOINT-TAIL-SUB)
(|EPC-STEPS-TO-EXITPOINT-TAIL-SUB-arity-1-defpun-test|)
(|EPC-STEPS-TO-EXITPOINT-TAIL-SUB-arity-1-defpun-base|)
(|EPC-STEPS-TO-EXITPOINT-TAIL-SUB-arity-1-step|
     (1 1 (:TYPE-PRESCRIPTION EPC-NEXT)))
(|EPC-STEPS-TO-EXITPOINT-TAIL-SUB-arity-1-defpun-stn|
     (4 4
        (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(|EPC-STEPS-TO-EXITPOINT-TAIL-SUB-arity-1-defpun-fn|
     (1 1 (:REWRITE DEFAULT-<-2))
     (1 1 (:REWRITE DEFAULT-<-1))
     (1 1 (:META CANCEL_PLUS-LESSP-CORRECT)))
(|EPC-STEPS-TO-EXITPOINT-TAIL-SUB-arity-1|
 (1
  1
  (:TYPE-PRESCRIPTION |EPC-STEPS-TO-EXITPOINT-TAIL-SUB-arity-1-defpun-stn|)))
(|EPC-STEPS-TO-EXITPOINT-TAIL-SUB-arity-1-DEF|)
(EPC-STEPS-TO-EXITPOINT-TAIL-SUB)
(EPC-STEPS-TO-EXITPOINT-TAIL-SUB-DEF (4 4 (:REWRITE DEFAULT-CAR))
                                     (2 2 (:REWRITE DEFAULT-CDR)))
(EPC-STEPS-TO-EXITPOINT-TAIL-SUB$DEF)
(EPC-STEPS-TO-EXITPOINT-SUB)
(EPC-NEXT-EXITPOINT-SUB)
(|correctness of epc-sub|)
(EPC-PRE-MAIN)
(EPC-IN-MAIN)
(EPC-CUTPOINT-MAIN)
(EPC-ASSERTION-MAIN)
(EPC-MODIFY-MAIN (1 1 (:TYPE-PRESCRIPTION EPC-MODIFY-MAIN)))
(EPC-NEXT-EPC-CUTPOINT-MAIN)
(|EPC-NEXT-EPC-CUTPOINT-MAIN-arity-1-defpun-test|)
(|EPC-NEXT-EPC-CUTPOINT-MAIN-arity-1-defpun-base|)
(|EPC-NEXT-EPC-CUTPOINT-MAIN-arity-1-step|
     (1 1 (:TYPE-PRESCRIPTION EPC-NEXT)))
(|EPC-NEXT-EPC-CUTPOINT-MAIN-arity-1-defpun-stn|
     (4 4
        (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(|EPC-NEXT-EPC-CUTPOINT-MAIN-arity-1-defpun-fn|
     (12 12
         (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (5 5 (:META CANCEL_PLUS-LESSP-CORRECT))
     (5 1 (:REWRITE O<=-O-FINP-DEF))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (2 1 (:REWRITE O-INFP-O-FINP-O<=))
     (2 1 (:REWRITE AC-<))
     (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:REWRITE DEFAULT-+-1)))
(|EPC-NEXT-EPC-CUTPOINT-MAIN-arity-1|
    (1 1
       (:TYPE-PRESCRIPTION |EPC-NEXT-EPC-CUTPOINT-MAIN-arity-1-defpun-stn|)))
(|EPC-NEXT-EPC-CUTPOINT-MAIN-arity-1-DEF|)
(EPC-NEXT-EPC-CUTPOINT-MAIN)
(EPC-NEXT-EPC-CUTPOINT-MAIN-DEF)
(EPC-NEXT-EPC-CUTPOINT-MAIN$DEF (1 1 (:TYPE-PRESCRIPTION EPC-NEXT)))
(EXISTS-EPC-NEXT-CUTPOINT)
(EXISTS-EPC-NEXT-CUTPOINT-SUFF)
(|no main cutpoint in epc-sub|)
(|epc-in-main implies in epc-sub|)
(|epc-pre-sub is epc-in-sub|)
(|epc-assertion implies cutpoint|)
(|epc-pre main implies assertion|)
(|epc-assertion main implies post|)
(|epc-assertions for cutpoint definition|)
(|definition of epc-next cutpoint| (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
                                   (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(DEFAULT-AUX-EPC-STATE)
(O-STEPS-TO-CUTPOINT-TAIL-MAIN)
(|O-STEPS-TO-CUTPOINT-TAIL-MAIN-arity-1-defpun-test|)
(|O-STEPS-TO-CUTPOINT-TAIL-MAIN-arity-1-defpun-base|)
(|O-STEPS-TO-CUTPOINT-TAIL-MAIN-arity-1-step|)
(|O-STEPS-TO-CUTPOINT-TAIL-MAIN-arity-1-defpun-stn|
     (4 4
        (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(|O-STEPS-TO-CUTPOINT-TAIL-MAIN-arity-1-defpun-fn|
     (12 12
         (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (5 5 (:META CANCEL_PLUS-LESSP-CORRECT))
     (5 1 (:REWRITE O<=-O-FINP-DEF))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (2 1 (:REWRITE O-INFP-O-FINP-O<=))
     (2 1 (:REWRITE AC-<))
     (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:REWRITE DEFAULT-+-1)))
(|O-STEPS-TO-CUTPOINT-TAIL-MAIN-arity-1|
 (1 1
    (:TYPE-PRESCRIPTION |O-STEPS-TO-CUTPOINT-TAIL-MAIN-arity-1-defpun-stn|)))
(|O-STEPS-TO-CUTPOINT-TAIL-MAIN-arity-1-DEF|)
(O-STEPS-TO-CUTPOINT-TAIL-MAIN)
(O-STEPS-TO-CUTPOINT-TAIL-MAIN-DEF
     (8 4
        (:REWRITE |no main cutpoint in epc-sub|))
     (7 7
        (:REWRITE |epc-pre-sub is epc-in-sub|))
     (6 6 (:REWRITE DEFAULT-CAR))
     (6 3
        (:REWRITE |epc-in-main implies in epc-sub|))
     (4 2 (:REWRITE DEFAULT-+-2))
     (3 3 (:REWRITE DEFAULT-CDR))
     (2 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 2 (:REWRITE DEFAULT-+-1))
     (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
     (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(O-STEPS-TO-CUTPOINT-TAIL-MAIN$DEF)
(O-STEPS-TO-EPC-CUTPOINT-MAIN)
(O-EPC-NEXT-EPC-CUTPOINT-MAIN)
(CUTPOINT-INDUCTION (3 3
                       (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(STEPS-TO-EXITPOINT-TAIL-INV (115 115
                                  (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
                             (82 34 (:REWRITE FOLD-CONSTS-IN-+))
                             (76 13 (:REWRITE ZP-OPEN))
                             (72 70 (:REWRITE DEFAULT-+-2))
                             (71 70 (:REWRITE DEFAULT-+-1))
                             (63 3 (:REWRITE NATP-POSP))
                             (48 12 (:REWRITE <-0-+-NEGATIVE-1))
                             (32 32
                                 (:REWRITE |epc-pre-sub is epc-in-sub|))
                             (31 31 (:REWRITE DEFAULT-<-2))
                             (31 31 (:REWRITE DEFAULT-<-1))
                             (29 5 (:REWRITE NATP-RW))
                             (27 3 (:REWRITE POSP-RW))
                             (24 6 (:REWRITE <-+-NEGATIVE-0-1))
                             (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
                             (2 2
                                (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(STEPS-TO-EXITPOINT-IS-ORDINAL (10 2 (:REWRITE ZP-OPEN))
                               (9 9
                                  (:REWRITE |epc-pre-sub is epc-in-sub|))
                               (4 1 (:REWRITE NATP-RW))
                               (2 2 (:REWRITE DEFAULT-<-2))
                               (2 2 (:REWRITE DEFAULT-<-1))
                               (2 2 (:REWRITE DEFAULT-+-2))
                               (2 2 (:REWRITE DEFAULT-+-1))
                               (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
                               (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
                               (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(STEPS-TO-EXITPOINT-IS-NATP
     (24 4 (:DEFINITION EPC-RUN))
     (12 4 (:REWRITE ZP-OPEN))
     (7 6 (:REWRITE DEFAULT-+-2))
     (7 6 (:REWRITE DEFAULT-+-1))
     (6 6
        (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
     (6 6
        (:REWRITE |epc-pre-sub is epc-in-sub|))
     (6 3 (:REWRITE NATP-RW))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (4 3 (:REWRITE DEFAULT-<-1))
     (4 2
        (:DEFINITION EPC-STEPS-TO-EXITPOINT-TAIL-SUB$DEF))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:META CANCEL_PLUS-LESSP-CORRECT)))
(STEPS-TO-EXITPOINT-PROVIDE-EXITPOINT
     (36 5 (:DEFINITION EPC-RUN))
     (19 5 (:REWRITE ZP-OPEN))
     (8 7 (:REWRITE DEFAULT-+-2))
     (8 7 (:REWRITE DEFAULT-+-1))
     (7 7
        (:REWRITE |epc-pre-sub is epc-in-sub|))
     (6 6
        (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
     (5 4 (:REWRITE DEFAULT-<-1))
     (4 4 (:TYPE-PRESCRIPTION OMEGA))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (4 4 (:REWRITE DEFAULT-<-2))
     (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
     (4 2
        (:DEFINITION EPC-STEPS-TO-EXITPOINT-TAIL-SUB$DEF))
     (2 2 (:REWRITE NATP-RW)))
(STEPS-TO-EXITPOINT-IS-MINIMAL
     (24 4 (:DEFINITION EPC-RUN))
     (12 4 (:REWRITE ZP-OPEN))
     (11 4 (:REWRITE DEFAULT-<-2))
     (7 6 (:REWRITE DEFAULT-+-2))
     (7 6 (:REWRITE DEFAULT-+-1))
     (7 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (6 6
        (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
     (6 6 (:TYPE-PRESCRIPTION OMEGA))
     (6 6
        (:REWRITE |epc-pre-sub is epc-in-sub|))
     (4 4 (:REWRITE DEFAULT-<-1))
     (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
     (4 2
        (:DEFINITION EPC-STEPS-TO-EXITPOINT-TAIL-SUB$DEF))
     (2 2 (:REWRITE NATP-RW)))
(NATP-IMPLIES-O<=< (4 4 (:REWRITE DEFAULT-<-2))
                   (4 4 (:REWRITE DEFAULT-<-1))
                   (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
                   (4 1 (:REWRITE O<=-O-FINP-DEF))
                   (4 1 (:REWRITE O-FIRST-EXPT-<))
                   (4 1 (:REWRITE O-FINP-<))
                   (2 2 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
                   (2 2 (:REWRITE NATP-RW))
                   (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
                   (1 1 (:REWRITE O-INFP-O-FINP-O<=))
                   (1 1 (:REWRITE O-FIRST-COEFF-<))
                   (1 1 (:REWRITE AC-<)))
(EXITSTEPS-NATP-IMPLIES-NOT-IN
     (24 3 (:DEFINITION EPC-RUN))
     (17 17
         (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (15 3 (:REWRITE ZP-OPEN))
     (4 1 (:REWRITE NATP-RW))
     (3 3
        (:REWRITE |epc-pre-sub is epc-in-sub|))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (3 3 (:REWRITE DEFAULT-+-2))
     (3 3 (:REWRITE DEFAULT-+-1))
     (3 3 (:META CANCEL_PLUS-LESSP-CORRECT))
     (1 1
        (:LINEAR STEPS-TO-EXITPOINT-IS-MINIMAL)))
(EXITSTEPS-0-IMPLIES-NOT-IN (1 1
                               (:REWRITE |epc-pre-sub is epc-in-sub|)))
(COMP-CUTPOINT-INDUCTION (40 5 (:DEFINITION EPC-RUN))
                         (34 19 (:REWRITE DEFAULT-<-1))
                         (34 1 (:REWRITE O<=-O-FINP-DEF))
                         (34 1 (:REWRITE O-FINP-<))
                         (29 9 (:REWRITE ZP-OPEN))
                         (24 12
                             (:LINEAR STEPS-TO-EXITPOINT-IS-MINIMAL))
                         (21 19 (:REWRITE DEFAULT-<-2))
                         (10 10
                             (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
                         (10 9 (:REWRITE DEFAULT-+-2))
                         (9 9 (:REWRITE DEFAULT-+-1))
                         (9 3 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
                         (9 1 (:REWRITE O-FIRST-EXPT-<))
                         (7 7 (:META CANCEL_TIMES-EQUAL-CORRECT))
                         (7 7 (:META CANCEL_PLUS-EQUAL-CORRECT))
                         (6 1 (:REWRITE O-INFP-O-FINP-O<=))
                         (6 1 (:REWRITE O-INFP->NEQ-0))
                         (6 1 (:REWRITE AC-<))
                         (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
                         (3 3 (:TYPE-PRESCRIPTION O-FINP))
                         (3 3
                            (:REWRITE |epc-pre-sub is epc-in-sub|))
                         (3 1 (:REWRITE O-FIRST-EXPT-O-INFP))
                         (2 2
                            (:REWRITE EPC-EXISTS-EXITPOINT-SUB-SUFF))
                         (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
                         (1 1 (:REWRITE O-FIRST-COEFF-<)))
(NO-CUTPOINT (6 6
                (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(NO-CUTPOINT-IMPLIES-NOT-CUTPOINT
     (171 18 (:DEFINITION EPC-RUN))
     (95 18 (:REWRITE ZP-OPEN))
     (44 11 (:REWRITE <-0-+-NEGATIVE-1))
     (33 33 (:REWRITE DEFAULT-+-2))
     (33 33 (:REWRITE DEFAULT-+-1))
     (24 24 (:META CANCEL_PLUS-LESSP-CORRECT))
     (20 10
         (:REWRITE |no main cutpoint in epc-sub|))
     (18 18
         (:REWRITE |epc-pre-sub is epc-in-sub|))
     (16 8
         (:REWRITE |epc-in-main implies in epc-sub|))
     (14 13 (:REWRITE DEFAULT-<-2))
     (13 13 (:REWRITE DEFAULT-<-1))
     (2 2 (:REWRITE NATP-RW)))
(NO-CUTPOINT-WITNESS (3 3
                        (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(CUTPOINT-IMPLIES-NO-CUT-2 (146 88
                                (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
                           (117 117
                                (:TYPE-PRESCRIPTION NO-CUTPOINT-WITNESS))
                           (113 113 (:REWRITE DEFAULT-+-2))
                           (113 113 (:REWRITE DEFAULT-+-1))
                           (98 49
                               (:REWRITE |epc-in-main implies in epc-sub|))
                           (93 93
                               (:REWRITE |epc-pre-sub is epc-in-sub|))
                           (88 44
                               (:REWRITE |no main cutpoint in epc-sub|))
                           (75 25 (:REWRITE FOLD-CONSTS-IN-+))
                           (71 71 (:META CANCEL_PLUS-LESSP-CORRECT))
                           (61 42 (:REWRITE DEFAULT-<-2))
                           (44 42 (:REWRITE DEFAULT-<-1)))
(NO-CUTPOINT-WITNESS-IS-<=-N (43 43
                                 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
                             (39 13 (:DEFINITION EPC-RUN))
                             (16 16 (:REWRITE DEFAULT-+-2))
                             (16 16 (:REWRITE DEFAULT-+-1))
                             (14 7
                                 (:REWRITE |no main cutpoint in epc-sub|))
                             (13 13
                                 (:REWRITE |epc-pre-sub is epc-in-sub|))
                             (13 13
                                 (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
                             (12 6
                                 (:REWRITE |epc-in-main implies in epc-sub|))
                             (10 6 (:REWRITE DEFAULT-<-2))
                             (7 6 (:REWRITE DEFAULT-<-1))
                             (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
                             (4 4 (:REWRITE ZP-OPEN))
                             (2 2 (:REWRITE NATP-RW)))
(NOT-CUTPOINT-EPC-PRE-SUB (36 9 (:DEFINITION EPC-RUN))
                          (21 3 (:REWRITE EXITSTEPS-0-IMPLIES-NOT-IN))
                          (9 9 (:REWRITE ZP-OPEN))
                          (9 9 (:REWRITE DEFAULT-+-2))
                          (9 9 (:REWRITE DEFAULT-+-1))
                          (6 6
                             (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
                          (4 4
                             (:REWRITE |epc-pre-sub is epc-in-sub|))
                          (4 3
                             (:REWRITE |epc-in-main implies in epc-sub|))
                          (4 2 (:REWRITE DEFAULT-<-2))
                          (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
                          (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
                          (2 2 (:REWRITE NATP-RW))
                          (2 2 (:REWRITE DEFAULT-<-1))
                          (2 2 (:META CANCEL_PLUS-LESSP-CORRECT)))
(NO-CUTPOINT-EPC-PRE-SUB (196 6 (:DEFINITION NO-CUTPOINT-WITNESS))
                         (123 17 (:DEFINITION EPC-RUN))
                         (78 12 (:REWRITE ZP-OPEN))
                         (66 66
                             (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
                         (54 54
                             (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
                         (43 15 (:REWRITE DEFAULT-<-2))
                         (42 14 (:REWRITE FOLD-CONSTS-IN-+))
                         (24 24 (:REWRITE DEFAULT-+-2))
                         (24 24 (:REWRITE DEFAULT-+-1))
                         (24 6 (:REWRITE <-0-+-NEGATIVE-1))
                         (23 15 (:REWRITE DEFAULT-<-1))
                         (21 21 (:META CANCEL_PLUS-LESSP-CORRECT))
                         (19 6
                             (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                         (6 3
                            (:REWRITE |no main cutpoint in epc-sub|))
                         (5 5
                            (:REWRITE |epc-pre-sub is epc-in-sub|))
                         (5 5
                            (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
                         (4 2
                            (:REWRITE |epc-in-main implies in epc-sub|))
                         (1 1 (:REWRITE NATP-RW))
                         (1 1
                            (:LINEAR STEPS-TO-EXITPOINT-IS-MINIMAL)))
(EPC-CUTPOINT-MAIN-IMPLIES-EPC-NEXT-CUTPOINT-S
     (30 6
         (:DEFINITION EPC-NEXT-EPC-CUTPOINT-MAIN$DEF))
     (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
     (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(EPC-NEXT-NO-CUTPOINT (5236 317 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
                      (2509 2509
                            (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
                      (1849 470 (:REWRITE DEFAULT-<-2))
                      (1518 28
                            (:LINEAR NO-CUTPOINT-WITNESS-IS-<=-N))
                      (1487 222 (:REWRITE ZP-OPEN))
                      (1182 1182
                            (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
                      (898 470 (:REWRITE DEFAULT-<-1))
                      (848 248
                           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                      (802 48 (:REWRITE NO-CUTPOINT-EPC-PRE-SUB))
                      (601 601 (:META CANCEL_PLUS-LESSP-CORRECT))
                      (550 550 (:REWRITE DEFAULT-+-2))
                      (550 550 (:REWRITE DEFAULT-+-1))
                      (524 131 (:REWRITE <-0-+-NEGATIVE-1))
                      (499 499
                           (:TYPE-PRESCRIPTION NO-CUTPOINT-WITNESS))
                      (402 205
                           (:REWRITE |no main cutpoint in epc-sub|))
                      (340 340
                           (:REWRITE |epc-pre-sub is epc-in-sub|))
                      (317 317
                           (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
                      (290 147
                           (:REWRITE |epc-in-main implies in epc-sub|))
                      (280 280
                           (:LINEAR STEPS-TO-EXITPOINT-IS-MINIMAL))
                      (24 12 (:REWRITE POSP-NATP))
                      (6 6 (:REWRITE NATP-RW))
                      (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
                      (4 4 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(CUTPOINT-IMPLIES-NOT-NOCUT
     (2292 16 (:REWRITE CUTPOINT-IMPLIES-NO-CUT-2))
     (1870 104 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (1666 32 (:DEFINITION NO-CUTPOINT-WITNESS))
     (920 920
          (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (676 172 (:REWRITE DEFAULT-<-2))
     (648 12
          (:LINEAR NO-CUTPOINT-WITNESS-IS-<=-N))
     (337 337
          (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (332 172 (:REWRITE DEFAULT-<-1))
     (302 98
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (286 16 (:REWRITE NO-CUTPOINT-EPC-PRE-SUB))
     (211 211 (:META CANCEL_PLUS-LESSP-CORRECT))
     (206 206
          (:TYPE-PRESCRIPTION NO-CUTPOINT-WITNESS))
     (186 62 (:REWRITE FOLD-CONSTS-IN-+))
     (152 152 (:REWRITE DEFAULT-+-2))
     (152 152 (:REWRITE DEFAULT-+-1))
     (132 66
          (:REWRITE |no main cutpoint in epc-sub|))
     (115 115
          (:REWRITE |epc-pre-sub is epc-in-sub|))
     (104 104
          (:LINEAR STEPS-TO-EXITPOINT-IS-MINIMAL))
     (98 49
         (:REWRITE |epc-in-main implies in epc-sub|))
     (10 10 (:REWRITE NATP-RW)))
(CUTPOINT-IMPLIES-EXISTS-EXITPOINT
     (12 3 (:DEFINITION EPC-RUN))
     (7 1 (:REWRITE EXITSTEPS-0-IMPLIES-NOT-IN))
     (5 2 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (4 4
        (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (3 3 (:REWRITE ZP-OPEN))
     (3 3 (:REWRITE DEFAULT-+-2))
     (3 3 (:REWRITE DEFAULT-+-1))
     (2 2 (:TYPE-PRESCRIPTION NATP))
     (2 2
        (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
     (1 1
        (:REWRITE |epc-pre-sub is epc-in-sub|))
     (1 1 (:REWRITE NATP-RW))
     (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
     (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(EPC-RUN-FNN (4 4
                (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(EPC-RUN-FNN-TRIGGER (6 6 (:REWRITE ZP-OPEN))
                     (4 4 (:REWRITE DEFAULT-+-2))
                     (4 4 (:REWRITE DEFAULT-+-1))
                     (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
                     (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(EPC-RUN-PLUS-REDUCTION (35 13 (:REWRITE ZP-OPEN))
                        (20 20 (:REWRITE DEFAULT-+-2))
                        (20 20 (:REWRITE DEFAULT-+-1))
                        (13 9 (:REWRITE FOLD-CONSTS-IN-+))
                        (8 2 (:REWRITE <-0-+-NEGATIVE-1))
                        (6 6 (:REWRITE NATP-RW))
                        (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
                        (5 5
                           (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
                        (4 4 (:REWRITE DEFAULT-<-2))
                        (4 4 (:REWRITE DEFAULT-<-1))
                        (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
                        (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(NOT-CUTPOINT-PLUS-REDUCTION
     (1968 6 (:REWRITE CUTPOINT-IMPLIES-NO-CUT-2))
     (1580 24 (:DEFINITION NO-CUTPOINT-WITNESS))
     (1189 64 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (1019 14
           (:LINEAR NO-CUTPOINT-WITNESS-IS-<=-N))
     (776 154 (:META CANCEL_PLUS-LESSP-CORRECT))
     (558 558
          (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (459 106 (:REWRITE DEFAULT-<-2))
     (456 72 (:DEFINITION EPC-RUN))
     (254 254
          (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (225 51 (:REWRITE ZP-OPEN))
     (222 138 (:REWRITE FOLD-CONSTS-IN-+))
     (218 56
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (194 190 (:REWRITE DEFAULT-+-2))
     (190 190 (:REWRITE DEFAULT-+-1))
     (177 106 (:REWRITE DEFAULT-<-1))
     (146 146
          (:TYPE-PRESCRIPTION NO-CUTPOINT-WITNESS))
     (111 6 (:REWRITE NO-CUTPOINT-EPC-PRE-SUB))
     (72 18 (:REWRITE <-0-+-NEGATIVE-1))
     (68 34
         (:REWRITE |no main cutpoint in epc-sub|))
     (62 62
         (:REWRITE |epc-pre-sub is epc-in-sub|))
     (57 57
         (:LINEAR STEPS-TO-EXITPOINT-IS-MINIMAL))
     (56 28
         (:REWRITE |epc-in-main implies in epc-sub|))
     (32 8 (:REWRITE <-+-NEGATIVE-0-1))
     (17 17
         (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
     (4 4 (:REWRITE DEFAULT-UNARY-MINUS)))
(NO-CUTPOINT-PLUS-REDUCTION
     (4152 218 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (2269 618 (:META CANCEL_PLUS-LESSP-CORRECT))
     (1934 1934
           (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (1643 431 (:REWRITE DEFAULT-<-2))
     (745 196
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (727 431 (:REWRITE DEFAULT-<-1))
     (720 400 (:REWRITE FOLD-CONSTS-IN-+))
     (558 548 (:REWRITE DEFAULT-+-2))
     (548 548 (:REWRITE DEFAULT-+-1))
     (420 23 (:REWRITE NO-CUTPOINT-EPC-PRE-SUB))
     (232 116
          (:REWRITE |no main cutpoint in epc-sub|))
     (210 210
          (:REWRITE |epc-pre-sub is epc-in-sub|))
     (197 197
          (:LINEAR STEPS-TO-EXITPOINT-IS-MINIMAL))
     (188 94
          (:REWRITE |epc-in-main implies in epc-sub|))
     (80 20 (:REWRITE <-+-NEGATIVE-0-1))
     (8 8 (:REWRITE NATP-RW)))
(NO-CUTPOINT-EPC-RUN-REDUCTION
     (870 12 (:DEFINITION NO-CUTPOINT-WITNESS))
     (633 33 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (314 34 (:DEFINITION EPC-RUN))
     (268 268
          (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (232 63 (:REWRITE DEFAULT-<-2))
     (106 63 (:REWRITE DEFAULT-<-1))
     (102 27
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (99 49 (:REWRITE FOLD-CONSTS-IN-+))
     (91 4 (:REWRITE NO-CUTPOINT-EPC-PRE-SUB))
     (88 88 (:META CANCEL_PLUS-LESSP-CORRECT))
     (72 65 (:REWRITE DEFAULT-+-2))
     (65 65 (:REWRITE DEFAULT-+-1))
     (28 28
         (:LINEAR STEPS-TO-EXITPOINT-IS-MINIMAL))
     (22 11
         (:REWRITE |no main cutpoint in epc-sub|))
     (19 19
         (:REWRITE |epc-pre-sub is epc-in-sub|))
     (16 8
         (:REWRITE |epc-in-main implies in epc-sub|))
     (14 5 (:REWRITE NATP-RW))
     (4 4 (:REWRITE NO-CUTPOINT-PLUS-REDUCTION))
     (1 1 (:REWRITE DEFAULT-UNARY-MINUS)))
(PRE-IMPLIES-NO-CUTPOINT-S
     (3354 69 (:DEFINITION NO-CUTPOINT-WITNESS))
     (2461 32
           (:REWRITE NO-CUTPOINT-PLUS-REDUCTION))
     (1230 1230
           (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (1158 408 (:META CANCEL_PLUS-LESSP-CORRECT))
     (847 75 (:REWRITE EPC-RUN-PLUS-REDUCTION))
     (803 273 (:REWRITE DEFAULT-<-2))
     (742 742
          (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (595 315 (:REWRITE FOLD-CONSTS-IN-+))
     (573 32 (:REWRITE NO-CUTPOINT-EPC-PRE-SUB))
     (568 273 (:REWRITE DEFAULT-<-1))
     (438 422 (:REWRITE DEFAULT-+-2))
     (422 422 (:REWRITE DEFAULT-+-1))
     (414 133
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (372 12 (:REWRITE NATP-POSP--1))
     (248 62 (:REWRITE <-0-+-NEGATIVE-1))
     (200 12 (:REWRITE NATP-POSP))
     (192 32 (:REWRITE COMMUTATIVITY-2-OF-+))
     (184 92
          (:REWRITE |no main cutpoint in epc-sub|))
     (176 19 (:REWRITE NATP-RW))
     (160 12 (:REWRITE POSP-RW))
     (156 156
          (:REWRITE |epc-pre-sub is epc-in-sub|))
     (147 85
          (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
     (142 142
          (:LINEAR STEPS-TO-EXITPOINT-IS-MINIMAL))
     (128 64
          (:REWRITE |epc-in-main implies in epc-sub|))
     (90 6 (:REWRITE <-+-NEGATIVE-0-2))
     (56 8 (:REWRITE INVERSE-OF-+-AS=0))
     (40 10 (:REWRITE <-+-NEGATIVE-0-1))
     (19 19 (:META CANCEL_TIMES-EQUAL-CORRECT))
     (19 19 (:META CANCEL_PLUS-EQUAL-CORRECT))
     (8 8 (:REWRITE EQUAL-CONSTANT-+))
     (3 3 (:TYPE-PRESCRIPTION ZP))
     (3 3
        (:REWRITE STEPS-TO-EXITPOINT-IS-NATP)))
(PRE-IMPLIES-EPC-RUN-PLUS (95 95
                              (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
                          (56 52 (:REWRITE DEFAULT-+-2))
                          (52 52 (:REWRITE DEFAULT-+-1))
                          (33 11
                              (:REWRITE EXITSTEPS-0-IMPLIES-NOT-IN))
                          (32 14 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
                          (24 24 (:META CANCEL_PLUS-LESSP-CORRECT))
                          (21 18 (:REWRITE DEFAULT-<-2))
                          (21 5 (:REWRITE <-0-+-NEGATIVE-2))
                          (19 19 (:META CANCEL_TIMES-EQUAL-CORRECT))
                          (19 19 (:META CANCEL_PLUS-EQUAL-CORRECT))
                          (19 18 (:REWRITE DEFAULT-<-1))
                          (15 15
                              (:REWRITE |epc-pre-sub is epc-in-sub|))
                          (14 14
                              (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
                          (11 10 (:REWRITE DEFAULT-UNARY-MINUS))
                          (5 5
                             (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                          (5 5 (:REWRITE FOLD-CONSTS-IN-+))
                          (4 1 (:REWRITE <-+-NEGATIVE-0-2)))
(ALTERNATIVE-EPC-NEXT-CUTPOINT-PROPERTY
     (4816 218 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (4574 41
           (:REWRITE NO-CUTPOINT-PLUS-REDUCTION))
     (2174 2174
           (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (1850 72 (:REWRITE EPC-RUN-PLUS-REDUCTION))
     (1635 1581
           (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (1474 421 (:REWRITE DEFAULT-<-2))
     (1119 567 (:REWRITE FOLD-CONSTS-IN-+))
     (925 625 (:META CANCEL_PLUS-LESSP-CORRECT))
     (847 421 (:REWRITE DEFAULT-<-1))
     (792 40 (:REWRITE NO-CUTPOINT-EPC-PRE-SUB))
     (710 200
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (686 638 (:REWRITE DEFAULT-+-1))
     (673 638 (:REWRITE DEFAULT-+-2))
     (672 88 (:REWRITE COMMUTATIVITY-2-OF-+))
     (333 186
          (:REWRITE |epc-in-main implies in epc-sub|))
     (320 40 (:REWRITE COMMUTATIVITY-OF-+))
     (288 288
          (:REWRITE |epc-pre-sub is epc-in-sub|))
     (284 143
          (:REWRITE |no main cutpoint in epc-sub|))
     (244 28 (:REWRITE NATP-RW))
     (222 222
          (:LINEAR STEPS-TO-EXITPOINT-IS-MINIMAL))
     (204 68
          (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
     (190 8 (:REWRITE NATP-POSP))
     (128 8 (:REWRITE POSP-RW))
     (120 8 (:REWRITE <-+-NEGATIVE-0-2))
     (104 7
          (:DEFINITION EPC-NEXT-EPC-CUTPOINT-MAIN$DEF))
     (92 92 (:TYPE-PRESCRIPTION NATP))
     (72 36 (:REWRITE POSP-NATP))
     (64 8 (:REWRITE ASSOCIATIVITY-OF-+))
     (30 5 (:REWRITE DEFAULT-UNARY-MINUS))
     (16 4 (:REWRITE <-+-NEGATIVE-0-1))
     (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
     (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(STEPS-TO-CUTPOINT-TAIL-INV
     (836 40 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (449 176 (:REWRITE DEFAULT-<-2))
     (413 413
          (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
     (394 162 (:REWRITE FOLD-CONSTS-IN-+))
     (388 388
          (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (334 54 (:REWRITE ZP-OPEN))
     (316 314 (:REWRITE DEFAULT-+-2))
     (315 314 (:REWRITE DEFAULT-+-1))
     (273 13 (:REWRITE NATP-POSP))
     (252 126
          (:REWRITE |no main cutpoint in epc-sub|))
     (244 244
          (:REWRITE |epc-pre-sub is epc-in-sub|))
     (236 118
          (:REWRITE |epc-in-main implies in epc-sub|))
     (215 176 (:REWRITE DEFAULT-<-1))
     (212 53 (:REWRITE <-0-+-NEGATIVE-1))
     (158 41
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (120 16 (:REWRITE NATP-RW))
     (117 13 (:REWRITE POSP-RW))
     (104 26 (:REWRITE <-+-NEGATIVE-0-1))
     (58 58 (:REWRITE DEFAULT-UNARY-MINUS))
     (40 40
         (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
     (37 37
         (:LINEAR STEPS-TO-EXITPOINT-IS-MINIMAL))
     (13 13 (:TYPE-PRESCRIPTION NATP)))
(STEPS-TO-CUTPOINT-IS-ORDINAL
     (36 18
         (:REWRITE |no main cutpoint in epc-sub|))
     (31 31
         (:REWRITE |epc-pre-sub is epc-in-sub|))
     (26 13
         (:REWRITE |epc-in-main implies in epc-sub|))
     (20 4 (:REWRITE ZP-OPEN))
     (13 4 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (7 4 (:REWRITE NATP-RW))
     (4 4
        (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
     (4 4 (:REWRITE DEFAULT-<-2))
     (4 4 (:REWRITE DEFAULT-<-1))
     (4 4 (:REWRITE DEFAULT-+-2))
     (4 4 (:REWRITE DEFAULT-+-1))
     (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
     (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
     (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(STEPS-TO-CUTPOINT-IS-NATP
     (64 10 (:DEFINITION EPC-RUN))
     (60 10 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (34 10 (:REWRITE ZP-OPEN))
     (23 9 (:REWRITE DEFAULT-<-2))
     (18 18
         (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (18 12 (:REWRITE NATP-RW))
     (16 16
         (:REWRITE |epc-pre-sub is epc-in-sub|))
     (16 8
         (:REWRITE |no main cutpoint in epc-sub|))
     (16 8
         (:REWRITE |epc-in-main implies in epc-sub|))
     (15 3
         (:DEFINITION O-STEPS-TO-CUTPOINT-TAIL-MAIN$DEF))
     (13 12 (:REWRITE DEFAULT-+-2))
     (13 12 (:REWRITE DEFAULT-+-1))
     (12 6
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (10 10
         (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
     (10 9 (:REWRITE DEFAULT-<-1))
     (9 9 (:META CANCEL_PLUS-LESSP-CORRECT))
     (6 6
        (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|)))
(STEPS-TO-CUTPOINT-PROVIDE-CUTPOINT
     (144 18 (:DEFINITION EPC-RUN))
     (116 18 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (82 18 (:REWRITE ZP-OPEN))
     (40 40 (:TYPE-PRESCRIPTION OMEGA))
     (32 32 (:TYPE-PRESCRIPTION NATP))
     (31 17 (:REWRITE DEFAULT-<-2))
     (30 18 (:REWRITE NATP-RW))
     (28 28
         (:REWRITE |epc-pre-sub is epc-in-sub|))
     (28 14
         (:REWRITE |no main cutpoint in epc-sub|))
     (28 14
         (:REWRITE |epc-in-main implies in epc-sub|))
     (25 5
         (:DEFINITION O-STEPS-TO-CUTPOINT-TAIL-MAIN$DEF))
     (21 20 (:REWRITE DEFAULT-+-2))
     (21 20 (:REWRITE DEFAULT-+-1))
     (18 18
         (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (18 18
         (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
     (18 17 (:REWRITE DEFAULT-<-1))
     (17 17 (:META CANCEL_PLUS-LESSP-CORRECT))
     (12 6
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (6 6
        (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|)))
(STEPS-TO-CUTPOINT-IS-MINIMAL
     (108 10 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (71 15 (:REWRITE DEFAULT-<-2))
     (64 10 (:DEFINITION EPC-RUN))
     (58 58
         (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (35 11
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (34 10 (:REWRITE ZP-OPEN))
     (16 16
         (:REWRITE |epc-pre-sub is epc-in-sub|))
     (16 8
         (:REWRITE |no main cutpoint in epc-sub|))
     (16 8
         (:REWRITE |epc-in-main implies in epc-sub|))
     (15 15 (:REWRITE DEFAULT-<-1))
     (15 15 (:META CANCEL_PLUS-LESSP-CORRECT))
     (15 3
         (:DEFINITION O-STEPS-TO-CUTPOINT-TAIL-MAIN$DEF))
     (13 12 (:REWRITE DEFAULT-+-2))
     (13 12 (:REWRITE DEFAULT-+-1))
     (12 12 (:TYPE-PRESCRIPTION OMEGA))
     (10 10
         (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
     (7 7 (:REWRITE NATP-RW))
     (6 6
        (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
     (4 4
        (:LINEAR STEPS-TO-EXITPOINT-IS-MINIMAL)))
(NOT-CUTPOINT-UNTIL-STEPS-TO-CUTPOINT)
(NO-CUTPOINT-UNTIL-STEPS-TO-CUTPOINT-AUX
     (7034 12
           (:REWRITE NO-CUTPOINT-PLUS-REDUCTION))
     (6294 12 (:REWRITE CUTPOINT-IMPLIES-NO-CUT-2))
     (5156 42 (:DEFINITION NO-CUTPOINT-WITNESS))
     (3686 130
           (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
     (2938 88 (:REWRITE EPC-RUN-PLUS-REDUCTION))
     (2731 507 (:META CANCEL_PLUS-LESSP-CORRECT))
     (2712 130 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (2520 18
           (:LINEAR NO-CUTPOINT-WITNESS-IS-<=-N))
     (1844 1766
           (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (1738 148 (:DEFINITION EPC-RUN))
     (1240 156 (:REWRITE COMMUTATIVITY-2-OF-+))
     (1226 158 (:REWRITE ZP-OPEN))
     (1160 674 (:REWRITE FOLD-CONSTS-IN-+))
     (896 896
          (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (833 305 (:REWRITE DEFAULT-<-2))
     (712 624 (:REWRITE DEFAULT-+-1))
     (650 624 (:REWRITE DEFAULT-+-2))
     (640 80 (:REWRITE COMMUTATIVITY-OF-+))
     (590 146 (:REWRITE <-0-+-NEGATIVE-1))
     (543 305 (:REWRITE DEFAULT-<-1))
     (350 89
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (272 272
          (:TYPE-PRESCRIPTION NO-CUTPOINT-WITNESS))
     (224 12 (:REWRITE NO-CUTPOINT-EPC-PRE-SUB))
     (144 72
          (:REWRITE |no main cutpoint in epc-sub|))
     (136 68 (:REWRITE POSP-NATP))
     (132 132
          (:REWRITE |epc-pre-sub is epc-in-sub|))
     (124 40 (:REWRITE NATP-RW))
     (120 120 (:TYPE-PRESCRIPTION NATP))
     (120 60
          (:REWRITE |epc-in-main implies in epc-sub|))
     (95 95
         (:LINEAR STEPS-TO-EXITPOINT-IS-MINIMAL))
     (64 8 (:REWRITE ASSOCIATIVITY-OF-+))
     (10 4
         (:LINEAR STEPS-TO-CUTPOINT-IS-MINIMAL)))
(CUTPOINT-IMPLIES-NO-CUTPOINT-STEPS
     (138 12 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (105 6 (:REWRITE NO-CUTPOINT-EPC-PRE-SUB))
     (102 102
          (:TYPE-PRESCRIPTION STEPS-TO-EXITPOINT-IS-NATP))
     (102 12 (:DEFINITION EPC-RUN))
     (68 20 (:REWRITE DEFAULT-<-1))
     (59 20 (:REWRITE DEFAULT-<-2))
     (57 57
         (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (42 12
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (26 26 (:META CANCEL_PLUS-LESSP-CORRECT))
     (24 6 (:REWRITE <-0-+-NEGATIVE-1))
     (18 6 (:REWRITE FOLD-CONSTS-IN-+))
     (15 15 (:REWRITE DEFAULT-+-2))
     (15 15 (:REWRITE DEFAULT-+-1))
     (12 12
         (:REWRITE |epc-pre-sub is epc-in-sub|))
     (12 12
         (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
     (12 12
         (:LINEAR STEPS-TO-CUTPOINT-IS-MINIMAL))
     (12 6
         (:REWRITE |no main cutpoint in epc-sub|))
     (12 6
         (:REWRITE |epc-in-main implies in epc-sub|))
     (7 7 (:REWRITE NATP-RW))
     (6 6
        (:REWRITE NO-CUTPOINT-PLUS-REDUCTION)))
(EPC-NEXT-CUTPOINT-IS-EPC-RUN-OF-STEPS)
(EPC-NEXT-HAS-A-CUTPOINT (10 3 (:REWRITE ZP-OPEN))
                         (4 2
                            (:REWRITE |epc-in-main implies in epc-sub|))
                         (4 1 (:REWRITE <-0-+-NEGATIVE-1))
                         (3 3 (:REWRITE DEFAULT-+-2))
                         (3 3 (:REWRITE DEFAULT-+-1))
                         (3 1 (:REWRITE FOLD-CONSTS-IN-+))
                         (2 2
                            (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
                         (2 2
                            (:REWRITE |epc-pre-sub is epc-in-sub|))
                         (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
                         (1 1 (:REWRITE DEFAULT-<-2))
                         (1 1 (:REWRITE DEFAULT-<-1)))
(EPC-NEXT-CUTPOINT-MATCHES
     (35 6 (:REWRITE ZP-OPEN))
     (25 15
         (:REWRITE |epc-in-main implies in epc-sub|))
     (25 5
         (:REWRITE EPC-CUTPOINT-MAIN-IMPLIES-EPC-NEXT-CUTPOINT-S))
     (22 4 (:REWRITE NATP-POSP--1))
     (22 2
         (:REWRITE NOT-CUTPOINT-UNTIL-STEPS-TO-CUTPOINT))
     (17 1
         (:DEFINITION |definition of epc-next cutpoint|))
     (17 1
         (:DEFINITION EPC-NEXT-EPC-CUTPOINT-MAIN$DEF))
     (16 2 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (14 14
         (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (14 3 (:REWRITE <-0-+-NEGATIVE-1))
     (13 13
         (:REWRITE |epc-pre-sub is epc-in-sub|))
     (10 8 (:REWRITE DEFAULT-+-2))
     (10 4 (:REWRITE NATP-POSP))
     (9 3 (:REWRITE FOLD-CONSTS-IN-+))
     (8 8 (:TYPE-PRESCRIPTION NATP))
     (8 8 (:REWRITE DEFAULT-+-1))
     (7 7 (:META CANCEL_PLUS-LESSP-CORRECT))
     (6 4 (:REWRITE DEFAULT-<-2))
     (6 3
        (:REWRITE |no main cutpoint in epc-sub|))
     (5 5
        (:REWRITE ALTERNATIVE-EPC-NEXT-CUTPOINT-PROPERTY))
     (4 4
        (:TYPE-PRESCRIPTION STEPS-TO-CUTPOINT-IS-NATP))
     (4 4 (:TYPE-PRESCRIPTION POSP))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (4 4 (:REWRITE POSP-RW))
     (4 4 (:REWRITE DEFAULT-<-1))
     (2 2
        (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
     (2 2 (:REWRITE NATP-RW)))
(|new cutpoint definition matches old|
     (52 31
         (:REWRITE |epc-in-main implies in epc-sub|))
     (50 10
         (:REWRITE EPC-CUTPOINT-MAIN-IMPLIES-EPC-NEXT-CUTPOINT-S))
     (38 2
         (:DEFINITION |definition of epc-next cutpoint|))
     (38 2
         (:DEFINITION EPC-NEXT-EPC-CUTPOINT-MAIN$DEF))
     (30 7 (:REWRITE ZP-OPEN))
     (30 4
         (:REWRITE NOT-CUTPOINT-UNTIL-STEPS-TO-CUTPOINT))
     (26 26
         (:REWRITE |epc-pre-sub is epc-in-sub|))
     (24 24
         (:TYPE-PRESCRIPTION STEPS-TO-CUTPOINT-IS-NATP))
     (24 4 (:REWRITE NOT-CUTPOINT-EPC-PRE-SUB))
     (22 4 (:REWRITE NATP-POSP--1))
     (14 14
         (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (14 8 (:REWRITE NATP-RW))
     (14 3 (:REWRITE <-0-+-NEGATIVE-1))
     (11 9 (:REWRITE DEFAULT-+-2))
     (10 10
         (:REWRITE EPC-NEXT-CUTPOINT-IS-EPC-RUN-OF-STEPS))
     (10 10
         (:REWRITE ALTERNATIVE-EPC-NEXT-CUTPOINT-PROPERTY))
     (10 5
         (:REWRITE |no main cutpoint in epc-sub|))
     (10 4 (:REWRITE NATP-POSP))
     (9 9 (:REWRITE DEFAULT-+-1))
     (9 3 (:REWRITE FOLD-CONSTS-IN-+))
     (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
     (5 3 (:REWRITE DEFAULT-<-2))
     (4 4 (:TYPE-PRESCRIPTION POSP))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (4 4 (:REWRITE POSP-RW))
     (4 4
        (:REWRITE NO-CUTPOINT-IMPLIES-NOT-CUTPOINT))
     (3 3 (:REWRITE DEFAULT-<-1))
     (2 2 (:REWRITE STEPS-TO-CUTPOINT-IS-NATP))
     (2 2
        (:LINEAR STEPS-TO-CUTPOINT-IS-MINIMAL)))
(EPC-EXITSTEPS-MAIN-TAIL)
(|EPC-EXITSTEPS-MAIN-TAIL-arity-1-defpun-test|)
(|EPC-EXITSTEPS-MAIN-TAIL-arity-1-defpun-base|)
(|EPC-EXITSTEPS-MAIN-TAIL-arity-1-step|)
(|EPC-EXITSTEPS-MAIN-TAIL-arity-1-defpun-stn|
     (4 4
        (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(|EPC-EXITSTEPS-MAIN-TAIL-arity-1-defpun-fn|
     (5 5
        (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:REWRITE DEFAULT-+-1)))
(|EPC-EXITSTEPS-MAIN-TAIL-arity-1|
     (1 1
        (:TYPE-PRESCRIPTION |EPC-EXITSTEPS-MAIN-TAIL-arity-1-defpun-stn|)))
(|EPC-EXITSTEPS-MAIN-TAIL-arity-1-DEF|)
(EPC-EXITSTEPS-MAIN-TAIL)
(EPC-EXITSTEPS-MAIN-TAIL-DEF (6 6 (:REWRITE DEFAULT-CAR))
                             (6 3
                                (:REWRITE |epc-in-main implies in epc-sub|))
                             (4 2 (:REWRITE DEFAULT-+-2))
                             (3 3
                                (:REWRITE |epc-pre-sub is epc-in-sub|))
                             (3 3 (:REWRITE DEFAULT-CDR))
                             (2 2
                                (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                             (2 2 (:REWRITE DEFAULT-+-1))
                             (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
                             (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(EPC-EXITSTEPS-MAIN-TAIL$DEF)
(EPC-EXITSTEPS-MAIN)
(EPC-EXISTS-EXITPOINT-MAIN)
(EPC-EXISTS-EXITPOINT-MAIN-SUFF)
(EPC-NEXT-EXITPOINT-MAIN)
(COMPOSITION-PARTIAL-AUX)
(|epc composite partial correctness|)
