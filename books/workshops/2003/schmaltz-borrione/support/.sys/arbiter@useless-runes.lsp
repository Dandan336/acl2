(STAGE_P)
(STAGE_P_<=_LEN_L-1
 (115 39 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (57 19 (:REWRITE CAR_NO_REQUESTP))
 (38 19 (:REWRITE DEFAULT-+-2))
 (30 30 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE DEFAULT-CAR))
 (19 19 (:REWRITE DEFAULT-+-1))
 (19 8 (:REWRITE DEFAULT-<-1))
 (15 8 (:REWRITE DEFAULT-<-2))
 (1 1 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(STAGE_P_<_LEN_L
 (115 39 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (57 19 (:REWRITE CAR_NO_REQUESTP))
 (30 30 (:REWRITE DEFAULT-CDR))
 (20 11 (:REWRITE DEFAULT-+-2))
 (19 19 (:REWRITE DEFAULT-CAR))
 (15 8 (:REWRITE DEFAULT-<-1))
 (14 8 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE DEFAULT-+-1))
 (1 1 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(PRIOR_SCHEME
 (166 8 (:REWRITE NTH-WITH-LARGE-INDEX))
 (144 48 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (66 22 (:REWRITE CAR_NO_REQUESTP))
 (56 56 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (51 51 (:REWRITE DEFAULT-CDR))
 (51 28 (:REWRITE DEFAULT-<-2))
 (49 9 (:DEFINITION LEN))
 (41 28 (:REWRITE DEFAULT-<-1))
 (38 21 (:REWRITE DEFAULT-+-2))
 (28 8 (:DEFINITION NFIX))
 (24 8 (:REWRITE NO_REQUESTP_TH1))
 (22 22 (:REWRITE DEFAULT-CAR))
 (21 21 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (9 3 (:REWRITE <-+-NEGATIVE-0-1))
 (8 8 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (6 6 (:REWRITE ZP-OPEN))
 )
(CHOSEN_STAGE_NOT_EMPTY
 (325 13 (:REWRITE NTH-WITH-LARGE-INDEX))
 (144 48 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (74 14 (:DEFINITION LEN))
 (72 24 (:REWRITE CAR_NO_REQUESTP))
 (67 12 (:DEFINITION NFIX))
 (56 56 (:REWRITE DEFAULT-CDR))
 (49 30 (:REWRITE DEFAULT-<-1))
 (48 30 (:REWRITE DEFAULT-<-2))
 (45 25 (:REWRITE DEFAULT-+-2))
 (40 5 (:REWRITE ZP-OPEN))
 (39 13 (:REWRITE NO_REQUESTP_TH1))
 (25 25 (:REWRITE DEFAULT-+-1))
 (24 24 (:REWRITE DEFAULT-CAR))
 (20 20 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (15 5 (:REWRITE <-+-NEGATIVE-0-1))
 (13 13 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (6 6 (:REWRITE STAGE_P_<_LEN_L))
 (5 5 (:REWRITE PRIOR_SCHEME))
 )
(ROUND_ROBIN)
(INTEGERP_ROUND_ROBIN
 (77 4 (:REWRITE FIRSTN-WITH-LARGE-INDEX))
 (24 24 (:TYPE-PRESCRIPTION LEN))
 (21 14 (:REWRITE DEFAULT-+-2))
 (20 4 (:DEFINITION LEN))
 (15 4 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (14 14 (:REWRITE DEFAULT-+-1))
 (14 10 (:REWRITE DEFAULT-<-2))
 (14 4 (:DEFINITION NFIX))
 (12 9 (:REWRITE DEFAULT-CDR))
 (11 10 (:REWRITE DEFAULT-<-1))
 (5 3 (:REWRITE CAR_NO_REQUESTP))
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (4 4 (:TYPE-PRESCRIPTION NFIX))
 (4 4 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (3 3 (:TYPE-PRESCRIPTION LASTN))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 1 (:REWRITE <-+-NEGATIVE-0-1))
 (1 1 (:REWRITE LASTN_NO_REQUESTP))
 )
(ROUND_ROBIN_>=_0
 (77 4 (:REWRITE FIRSTN-WITH-LARGE-INDEX))
 (26 14 (:REWRITE DEFAULT-+-2))
 (24 24 (:TYPE-PRESCRIPTION LEN))
 (20 4 (:DEFINITION LEN))
 (18 12 (:REWRITE DEFAULT-<-1))
 (16 12 (:REWRITE DEFAULT-<-2))
 (15 14 (:REWRITE DEFAULT-+-1))
 (15 4 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (14 4 (:DEFINITION NFIX))
 (12 9 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 3 (:REWRITE CAR_NO_REQUESTP))
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (4 4 (:TYPE-PRESCRIPTION NFIX))
 (4 4 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (3 3 (:TYPE-PRESCRIPTION LASTN))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 1 (:REWRITE <-+-NEGATIVE-0-1))
 (1 1 (:REWRITE LASTN_NO_REQUESTP))
 )
(NO_REQ_=>_ROUND_ROBIN_=_0
 (12 4 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(LEMMA_FOR_ROUND_ROBIN_<_CASE_2
 (461 143 (:REWRITE CAR_NO_REQUESTP))
 (406 112 (:REWRITE DEFAULT-CDR))
 (217 9 (:REWRITE FIRSTN-WITH-LARGE-INDEX))
 (144 97 (:REWRITE DEFAULT-CAR))
 (90 14 (:DEFINITION LEN))
 (77 45 (:REWRITE LASTN_NO_REQUESTP))
 (64 64 (:TYPE-PRESCRIPTION LEN))
 (51 42 (:REWRITE DEFAULT-<-2))
 (44 42 (:REWRITE DEFAULT-<-1))
 (42 23 (:REWRITE DEFAULT-+-2))
 (31 9 (:DEFINITION NFIX))
 (23 23 (:REWRITE DEFAULT-+-1))
 (9 9 (:TYPE-PRESCRIPTION NFIX))
 (9 9 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (6 2 (:REWRITE <-+-NEGATIVE-0-1))
 )
(LEMMA1_CASE_2
 (759 44 (:REWRITE FIRSTN-WITH-LARGE-INDEX))
 (688 22 (:DEFINITION FIRSTN))
 (225 45 (:DEFINITION LEN))
 (218 103 (:REWRITE DEFAULT-CDR))
 (208 10 (:REWRITE LIST_REQ_=>_LIST_FIRST))
 (188 128 (:TYPE-PRESCRIPTION CONSP-FIRSTN))
 (172 66 (:REWRITE DEFAULT-CAR))
 (158 66 (:REWRITE CAR_NO_REQUESTP))
 (131 92 (:REWRITE DEFAULT-<-2))
 (117 92 (:REWRITE DEFAULT-<-1))
 (112 67 (:REWRITE DEFAULT-+-2))
 (90 18 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (88 88 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (75 31 (:REWRITE CONSP-FIRSTN))
 (71 71 (:TYPE-PRESCRIPTION ZP))
 (67 67 (:REWRITE DEFAULT-+-1))
 (66 22 (:REWRITE <-+-NEGATIVE-0-1))
 (38 38 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (37 37 (:TYPE-PRESCRIPTION NFIX))
 (30 6 (:REWRITE LEMMA_FOR_ROUND_ROBIN_<_CASE_2))
 (28 28 (:REWRITE ZP-OPEN))
 (18 6 (:REWRITE LASTN_NO_REQUESTP))
 )
(LEMMA2_CASE_2)
(LEMMA3_CASE_2
 (45 2 (:REWRITE FIRSTN-WITH-LARGE-INDEX))
 (35 1 (:DEFINITION FIRSTN))
 (30 6 (:DEFINITION LEN))
 (18 10 (:REWRITE DEFAULT-<-1))
 (14 10 (:REWRITE DEFAULT-<-2))
 (13 7 (:REWRITE DEFAULT-+-2))
 (11 11 (:REWRITE LEMMA2_CASE_2))
 (7 7 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (4 1 (:REWRITE <-+-NEGATIVE-0-1))
 (3 3 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (3 1 (:REWRITE CAR_NO_REQUESTP))
 (2 2 (:TYPE-PRESCRIPTION NO_REQUESTP))
 (2 2 (:TYPE-PRESCRIPTION NFIX))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(LEMMA4_CASE_2
 (486 24 (:REWRITE FIRSTN-WITH-LARGE-INDEX))
 (420 12 (:DEFINITION FIRSTN))
 (186 63 (:REWRITE DEFAULT-CDR))
 (175 88 (:TYPE-PRESCRIPTION CONSP-FIRSTN))
 (152 42 (:REWRITE DEFAULT-CAR))
 (143 27 (:DEFINITION LEN))
 (136 6 (:REWRITE LIST_REQ_=>_LIST_FIRST))
 (120 21 (:DEFINITION NFIX))
 (108 108 (:TYPE-PRESCRIPTION ZP))
 (108 22 (:REWRITE CONSP-FIRSTN))
 (98 42 (:REWRITE CAR_NO_REQUESTP))
 (76 12 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (74 49 (:REWRITE DEFAULT-<-2))
 (68 49 (:REWRITE DEFAULT-<-1))
 (66 39 (:REWRITE DEFAULT-+-2))
 (55 55 (:REWRITE ZP-OPEN))
 (48 48 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (48 12 (:REWRITE <-+-NEGATIVE-0-1))
 (39 39 (:REWRITE DEFAULT-+-1))
 (21 21 (:TYPE-PRESCRIPTION NFIX))
 (20 4 (:REWRITE LEMMA_FOR_ROUND_ROBIN_<_CASE_2))
 (15 15 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (12 4 (:REWRITE LASTN_NO_REQUESTP))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(ROUND_ROBIN_<_N_CASE_2
 (163 2 (:DEFINITION LIST_OF_1_AND_0))
 (57 15 (:REWRITE DEFAULT-CDR))
 (56 8 (:REWRITE DEFAULT-CAR))
 (54 3 (:REWRITE FIRSTN-WITH-LARGE-INDEX))
 (42 7 (:REWRITE CONSP-FIRSTN))
 (40 20 (:TYPE-PRESCRIPTION CONSP-FIRSTN))
 (32 3 (:REWRITE LIST_REQ_=>_LIST_FIRST))
 (30 8 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (28 7 (:REWRITE ZP-OPEN))
 (25 5 (:DEFINITION LEN))
 (21 11 (:REWRITE DEFAULT-+-2))
 (20 20 (:TYPE-PRESCRIPTION ZP))
 (20 20 (:TYPE-PRESCRIPTION FIRSTN))
 (20 8 (:REWRITE CAR_NO_REQUESTP))
 (20 4 (:REWRITE LIST_OF_1_AND_0_CDR))
 (19 15 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE LEMMA2_CASE_2))
 (15 15 (:REWRITE DEFAULT-<-1))
 (12 3 (:DEFINITION NFIX))
 (11 11 (:REWRITE DEFAULT-+-1))
 (6 6 (:TYPE-PRESCRIPTION LASTN))
 (6 6 (:REWRITE LASTN_NO_REQUESTP))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:TYPE-PRESCRIPTION NFIX))
 (1 1 (:REWRITE NO_REQ_=>_ROUND_ROBIN_=_0))
 (1 1 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(LEMMA1_CASE_3)
(LEMMA4_CASE_3
 (26 8 (:REWRITE DEFAULT-CAR))
 (19 7 (:REWRITE DEFAULT-CDR))
 (10 2 (:DEFINITION LEN))
 (9 2 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (8 8 (:REWRITE CAR_NO_REQUESTP))
 (6 4 (:REWRITE DEFAULT-+-2))
 (5 3 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE LEMMA2_CASE_2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE LASTN_NO_REQUESTP))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(LEMMA5_CASE_3
 (26 8 (:REWRITE DEFAULT-CAR))
 (23 8 (:REWRITE DEFAULT-CDR))
 (15 3 (:DEFINITION LEN))
 (9 2 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (8 8 (:REWRITE CAR_NO_REQUESTP))
 (8 5 (:REWRITE DEFAULT-+-2))
 (7 5 (:REWRITE DEFAULT-<-2))
 (6 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE LEMMA2_CASE_2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE LASTN_NO_REQUESTP))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(ROUND_ROBIN_<_N_CASE_3
 (84 28 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (58 44 (:REWRITE DEFAULT-+-2))
 (44 44 (:REWRITE DEFAULT-+-1))
 (33 33 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE CAR_NO_REQUESTP))
 (16 13 (:REWRITE DEFAULT-<-1))
 (15 13 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE LASTN_NO_REQUESTP))
 (3 3 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE NO_REQ_=>_ROUND_ROBIN_=_0))
 (1 1 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(LIST_REQ_=>_LIST_LAST
 (712 174 (:REWRITE CAR_NO_REQUESTP))
 (466 466 (:TYPE-PRESCRIPTION NO_REQUESTP))
 (216 72 (:REWRITE LASTN_NO_REQUESTP))
 (118 118 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (70 47 (:REWRITE DEFAULT-<-2))
 (69 39 (:REWRITE DEFAULT-+-2))
 (49 49 (:REWRITE LEMMA2_CASE_2))
 (48 47 (:REWRITE DEFAULT-<-1))
 (39 39 (:REWRITE DEFAULT-+-1))
 (25 25 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (16 2 (:REWRITE ZP-OPEN))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(ROUND_ROBIN_<_N
 (109 11 (:REWRITE FIRSTN-WITH-LARGE-INDEX))
 (90 18 (:DEFINITION LEN))
 (86 26 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (80 4 (:DEFINITION LIST_OF_1_AND_0))
 (75 49 (:REWRITE DEFAULT-+-2))
 (54 42 (:REWRITE DEFAULT-CDR))
 (49 49 (:REWRITE DEFAULT-+-1))
 (34 27 (:REWRITE DEFAULT-<-1))
 (32 8 (:REWRITE LIST_OF_1_AND_0_CDR))
 (31 27 (:REWRITE DEFAULT-<-2))
 (28 7 (:DEFINITION NFIX))
 (27 27 (:REWRITE LEMMA2_CASE_2))
 (16 16 (:REWRITE DEFAULT-CAR))
 (16 16 (:REWRITE CAR_NO_REQUESTP))
 (7 7 (:TYPE-PRESCRIPTION NFIX))
 (5 5 (:REWRITE LASTN_NO_REQUESTP))
 (4 4 (:REWRITE NO_REQ_=>_ROUND_ROBIN_=_0))
 (3 3 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(ROUND_ROBIN_<=N-1
 (106 31 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (70 47 (:REWRITE DEFAULT-+-2))
 (70 14 (:DEFINITION LEN))
 (56 41 (:REWRITE DEFAULT-CDR))
 (47 47 (:REWRITE DEFAULT-+-1))
 (45 3 (:REWRITE FIRSTN-WITH-LARGE-INDEX))
 (31 24 (:REWRITE DEFAULT-<-2))
 (31 24 (:REWRITE DEFAULT-<-1))
 (24 24 (:REWRITE LEMMA2_CASE_2))
 (20 20 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE CAR_NO_REQUESTP))
 (15 15 (:TYPE-PRESCRIPTION LASTN))
 (12 3 (:DEFINITION NFIX))
 (5 5 (:REWRITE NO_REQ_=>_ROUND_ROBIN_=_0))
 (5 5 (:REWRITE LASTN_NO_REQUESTP))
 (3 3 (:TYPE-PRESCRIPTION NFIX))
 (3 3 (:REWRITE FOLD-CONSTS-IN-+))
 (1 1 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 )
(FIND_NOT_EQUAL_LAST_GRANTED
 (113 113 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (78 78 (:TYPE-PRESCRIPTION NO_REQUESTP))
 (73 39 (:REWRITE DEFAULT-+-2))
 (57 19 (:REWRITE CAR_NO_REQUESTP))
 (51 34 (:REWRITE DEFAULT-<-2))
 (39 39 (:REWRITE DEFAULT-+-1))
 (39 13 (:REWRITE NO_REQUESTP_TH1))
 (38 34 (:REWRITE DEFAULT-<-1))
 (37 37 (:REWRITE LEMMA2_CASE_2))
 (32 32 (:REWRITE DEFAULT-CDR))
 (21 7 (:REWRITE NO_REQUESTP_TH2))
 (19 19 (:REWRITE DEFAULT-CAR))
 (12 12 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (12 3 (:REWRITE <-+-NEGATIVE-0-1))
 (6 6 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 )
(LEMMA1_NO_DEADLOCK
 (138 6 (:REWRITE NTH-WITH-LARGE-INDEX))
 (41 3 (:REWRITE FIRSTN-WITH-LARGE-INDEX))
 (40 8 (:DEFINITION LEN))
 (32 24 (:REWRITE DEFAULT-<-2))
 (32 21 (:REWRITE DEFAULT-+-2))
 (28 1 (:DEFINITION LIST_OF_1_AND_0))
 (27 27 (:REWRITE LEMMA2_CASE_2))
 (27 24 (:REWRITE DEFAULT-<-1))
 (24 7 (:REWRITE NO_REQUESTP_TH1))
 (21 21 (:REWRITE DEFAULT-+-1))
 (21 7 (:REWRITE CAR_NO_REQUESTP))
 (19 16 (:REWRITE DEFAULT-CDR))
 (15 4 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (12 12 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (12 3 (:REWRITE <-+-NEGATIVE-0-1))
 (8 8 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (8 2 (:REWRITE LIST_OF_1_AND_0_CDR))
 (7 7 (:REWRITE DEFAULT-CAR))
 (6 2 (:REWRITE NO_REQUESTP_TH2))
 (4 2 (:REWRITE LASTN_NO_REQUESTP))
 (3 3 (:TYPE-PRESCRIPTION LASTN))
 (3 3 (:REWRITE ZP-OPEN))
 (3 1 (:REWRITE NO_REQ_=>_ROUND_ROBIN_=_0))
 (1 1 (:REWRITE FOLD-CONSTS-IN-+))
 )
(LEMMA2_NO_DEADLOCK
 (311 105 (:REWRITE CAR_NO_REQUESTP))
 (264 45 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (202 22 (:REWRITE LASTN_NO_REQUESTP))
 (196 14 (:REWRITE NO_REQUESTP_TH1))
 (121 97 (:REWRITE DEFAULT-CDR))
 (86 86 (:REWRITE DEFAULT-CAR))
 (67 67 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (61 55 (:REWRITE LEMMA2_CASE_2))
 (56 43 (:REWRITE DEFAULT-<-2))
 (52 43 (:REWRITE DEFAULT-<-1))
 (41 26 (:REWRITE DEFAULT-+-2))
 (33 3 (:REWRITE ZP-OPEN))
 (26 26 (:REWRITE DEFAULT-+-1))
 (13 13 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 )
(NO_DEADLOCK
 (1751 35 (:REWRITE NTH-WITH-LARGE-INDEX))
 (626 194 (:REWRITE LEMMA2_CASE_2))
 (299 178 (:REWRITE DEFAULT-<-2))
 (282 6 (:REWRITE FIRSTN-WITH-LARGE-INDEX))
 (271 39 (:DEFINITION NFIX))
 (205 41 (:DEFINITION LEN))
 (194 178 (:REWRITE DEFAULT-<-1))
 (176 104 (:REWRITE DEFAULT-+-2))
 (121 121 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (120 32 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (115 91 (:REWRITE DEFAULT-CDR))
 (109 104 (:REWRITE DEFAULT-+-1))
 (96 96 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (81 35 (:REWRITE NO_REQUESTP_TH1))
 (80 16 (:REWRITE <-+-NEGATIVE-0-1))
 (49 49 (:REWRITE DEFAULT-CAR))
 (24 24 (:TYPE-PRESCRIPTION LASTN))
 (18 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (16 16 (:REWRITE ZP-OPEN))
 (16 8 (:REWRITE NO_REQ_=>_ROUND_ROBIN_=_0))
 (8 8 (:REWRITE LASTN_NO_REQUESTP))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 )
(MASTER_NUM)
(INT+INT=INT)
(INTEGERP_MASTER_NUM
 (90 2 (:REWRITE NTH-WITH-LARGE-INDEX))
 (81 1 (:DEFINITION NTH))
 (48 9 (:REWRITE LEMMA2_NO_DEADLOCK))
 (28 28 (:TYPE-PRESCRIPTION LEN))
 (22 1 (:REWRITE ZP-OPEN))
 (19 2 (:DEFINITION NFIX))
 (14 8 (:REWRITE DEFAULT-<-2))
 (11 8 (:REWRITE DEFAULT-<-1))
 (10 2 (:DEFINITION LEN))
 (9 9 (:REWRITE LEMMA2_CASE_2))
 (8 8 (:TYPE-PRESCRIPTION NO_REQUESTP))
 (7 4 (:REWRITE DEFAULT-+-2))
 (6 6 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (6 2 (:REWRITE NO_REQUESTP_TH1))
 (5 4 (:REWRITE DEFAULT-+-1))
 (5 1 (:REWRITE <-+-NEGATIVE-0-1))
 (4 4 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (4 1 (:REWRITE NO_REQ_=>_ROUND_ROBIN_=_0))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 2 (:REWRITE DEFAULT-*-2))
 (3 2 (:REWRITE DEFAULT-*-1))
 (3 1 (:REWRITE CAR_NO_REQUESTP))
 (2 2 (:TYPE-PRESCRIPTION NFIX))
 (1 1 (:REWRITE STAGE_P_<_LEN_L))
 (1 1 (:REWRITE PRIOR_SCHEME))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(POS+POS=POS)
(MASTER_NUM_>=0
 (115 2 (:REWRITE NTH-WITH-LARGE-INDEX))
 (105 1 (:DEFINITION NTH))
 (97 17 (:REWRITE LEMMA2_NO_DEADLOCK))
 (52 17 (:REWRITE LEMMA2_CASE_2))
 (42 42 (:TYPE-PRESCRIPTION LEN))
 (33 1 (:REWRITE ZP-OPEN))
 (24 15 (:REWRITE DEFAULT-<-2))
 (20 2 (:DEFINITION NFIX))
 (18 15 (:REWRITE DEFAULT-<-1))
 (10 2 (:DEFINITION LEN))
 (8 8 (:TYPE-PRESCRIPTION NO_REQUESTP))
 (7 4 (:REWRITE DEFAULT-+-2))
 (6 6 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (6 6 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (6 2 (:REWRITE NO_REQUESTP_TH1))
 (5 4 (:REWRITE DEFAULT-+-1))
 (5 1 (:REWRITE <-+-NEGATIVE-0-1))
 (4 1 (:REWRITE NO_REQ_=>_ROUND_ROBIN_=_0))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 2 (:REWRITE DEFAULT-*-2))
 (3 2 (:REWRITE DEFAULT-*-1))
 (3 1 (:REWRITE CAR_NO_REQUESTP))
 (2 2 (:TYPE-PRESCRIPTION NFIX))
 (1 1 (:REWRITE STAGE_P_<_LEN_L))
 (1 1 (:REWRITE PRIOR_SCHEME))
 (1 1 (:REWRITE INTEGERP_ROUND_ROBIN))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(DEFAULT_MASTER_MASTER_NUM
 (382 8 (:REWRITE FIRSTN-WITH-LARGE-INDEX))
 (248 50 (:REWRITE LEMMA2_NO_DEADLOCK))
 (156 156 (:TYPE-PRESCRIPTION LEN))
 (118 50 (:REWRITE LEMMA2_CASE_2))
 (72 48 (:REWRITE DEFAULT-<-2))
 (72 22 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (66 8 (:DEFINITION NFIX))
 (60 48 (:REWRITE DEFAULT-<-1))
 (60 32 (:REWRITE DEFAULT-+-2))
 (53 21 (:REWRITE CAR_NO_REQUESTP))
 (45 9 (:DEFINITION LEN))
 (37 31 (:REWRITE DEFAULT-CDR))
 (34 32 (:REWRITE DEFAULT-+-1))
 (30 1 (:REWRITE NTH-WITH-LARGE-INDEX))
 (28 28 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (24 24 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (21 21 (:REWRITE DEFAULT-CAR))
 (14 4 (:REWRITE POS+POS=POS))
 (12 12 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (10 2 (:REWRITE <-+-NEGATIVE-0-1))
 (9 9 (:TYPE-PRESCRIPTION NFIX))
 (6 6 (:TYPE-PRESCRIPTION LASTN))
 (6 6 (:REWRITE INT+INT=INT))
 (6 2 (:REWRITE NO_REQ_=>_ROUND_ROBIN_=_0))
 (3 1 (:REWRITE NO_REQUESTP_TH1))
 (2 2 (:REWRITE LASTN_NO_REQUESTP))
 (2 1 (:REWRITE L_UNI_=>_LEN_CAR_=_LEN_CADR))
 )
(LEN_NTH_UNI_LIST
 (739 25 (:REWRITE NTH-WITH-LARGE-INDEX))
 (349 181 (:REWRITE DEFAULT-+-2))
 (301 301 (:REWRITE DEFAULT-CDR))
 (239 101 (:REWRITE LEMMA2_NO_DEADLOCK))
 (239 95 (:REWRITE CAR_NO_REQUESTP))
 (194 194 (:TYPE-PRESCRIPTION NO_REQUESTP))
 (186 24 (:DEFINITION NFIX))
 (181 181 (:REWRITE DEFAULT-+-1))
 (133 133 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (122 101 (:REWRITE LEMMA2_CASE_2))
 (111 83 (:REWRITE DEFAULT-<-2))
 (95 95 (:REWRITE DEFAULT-CAR))
 (95 83 (:REWRITE DEFAULT-<-1))
 (82 82 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (75 25 (:REWRITE NO_REQUESTP_TH1))
 (11 11 (:REWRITE POS+POS=POS))
 )
(MASTER_NUM_<_P*N
 (612 20 (:REWRITE NTH-WITH-LARGE-INDEX))
 (556 104 (:REWRITE LEMMA2_NO_DEADLOCK))
 (262 104 (:REWRITE LEMMA2_CASE_2))
 (256 133 (:REWRITE DEFAULT-+-2))
 (215 76 (:REWRITE CAR_NO_REQUESTP))
 (161 98 (:REWRITE DEFAULT-<-2))
 (143 98 (:REWRITE DEFAULT-<-1))
 (137 133 (:REWRITE DEFAULT-+-1))
 (135 15 (:DEFINITION NFIX))
 (92 4 (:LINEAR X*Y>1-POSITIVE))
 (54 20 (:REWRITE NO_REQUESTP_TH1))
 (28 28 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (28 7 (:REWRITE NO_REQ_=>_ROUND_ROBIN_=_0))
 (24 24 (:REWRITE PRIOR_SCHEME))
 (20 4 (:REWRITE INT+INT=INT))
 (16 8 (:REWRITE DEFAULT-*-1))
 (8 8 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT_MASTER_MASTER_NUM))
 )
(ARBITER)
(LEN_ARBITER
 (14 1 (:REWRITE DEFAULT_MASTER_MASTER_NUM))
 (11 5 (:REWRITE LEMMA2_NO_DEADLOCK))
 (11 1 (:DEFINITION NO_REQUESTP_MATRIX))
 (8 5 (:REWRITE LEMMA2_CASE_2))
 (5 5 (:TYPE-PRESCRIPTION NO_REQUESTP_MATRIX))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 1 (:LINEAR X*Y>1-POSITIVE))
 (4 4 (:TYPE-PRESCRIPTION NO_REQUESTP))
 (3 1 (:REWRITE CAR_NO_REQUESTP))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 2 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(CONSP_ARBITER
 (14 1 (:REWRITE DEFAULT_MASTER_MASTER_NUM))
 (11 1 (:DEFINITION NO_REQUESTP_MATRIX))
 (10 4 (:REWRITE LEMMA2_NO_DEADLOCK))
 (5 5 (:TYPE-PRESCRIPTION NO_REQUESTP_MATRIX))
 (4 4 (:TYPE-PRESCRIPTION NO_REQUESTP))
 (4 4 (:REWRITE LEMMA2_CASE_2))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE CAR_NO_REQUESTP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(NTH_ARBITER_=_1
 (2463 23 (:DEFINITION NTH))
 (2199 50 (:REWRITE NTH-WITH-LARGE-INDEX))
 (1788 298 (:REWRITE LEMMA2_NO_DEADLOCK))
 (955 383 (:REWRITE CAR_NO_REQUESTP))
 (897 298 (:REWRITE LEMMA2_CASE_2))
 (890 860 (:REWRITE DEFAULT-CDR))
 (801 23 (:REWRITE ZP-OPEN))
 (738 387 (:REWRITE DEFAULT-+-2))
 (527 527 (:TYPE-PRESCRIPTION STAGE_P))
 (482 50 (:DEFINITION NFIX))
 (476 274 (:REWRITE DEFAULT-<-2))
 (413 383 (:REWRITE DEFAULT-CAR))
 (387 387 (:REWRITE DEFAULT-+-1))
 (358 274 (:REWRITE DEFAULT-<-1))
 (204 10 (:REWRITE PTH_SELECT_=_0))
 (162 162 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (150 50 (:REWRITE NO_REQUESTP_TH1))
 (138 46 (:REWRITE NOT_NO_REQUESTP_CDR_=>_NOT_NO_REQUESTP_L))
 (124 25 (:REWRITE DEFAULT_MASTER_MASTER_NUM))
 (121 23 (:REWRITE <-+-NEGATIVE-0-1))
 (100 100 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (72 2 (:LINEAR X*Y>1-POSITIVE))
 (54 18 (:REWRITE CONSP_SELECT))
 (43 1 (:REWRITE 0-<-*))
 (42 42 (:TYPE-PRESCRIPTION SELECT))
 (36 36 (:REWRITE PRIOR_SCHEME))
 (32 16 (:REWRITE DEFAULT-*-2))
 (30 10 (:REWRITE LEN_SELECT))
 (24 12 (:REWRITE INT+INT=INT))
 (24 6 (:REWRITE CAR_SELECT_=_0))
 (23 23 (:REWRITE POS+POS=POS))
 (18 16 (:REWRITE DEFAULT-*-1))
 (18 6 (:REWRITE NO_REQUESTP_TH2))
 (2 1 (:DEFINITION IFF))
 )
(NTH_ARBITER_=_0
 (124 24 (:REWRITE LEMMA2_NO_DEADLOCK))
 (75 4 (:LINEAR X*Y>1-POSITIVE))
 (69 24 (:REWRITE LEMMA2_CASE_2))
 (40 1 (:REWRITE 0-<-*))
 (28 23 (:REWRITE DEFAULT-<-2))
 (28 2 (:REWRITE DEFAULT_MASTER_MASTER_NUM))
 (27 1 (:REWRITE NTH-WITH-LARGE-INDEX))
 (23 23 (:REWRITE DEFAULT-<-1))
 (22 2 (:DEFINITION NO_REQUESTP_MATRIX))
 (10 10 (:TYPE-PRESCRIPTION NO_REQUESTP_MATRIX))
 (10 10 (:TYPE-PRESCRIPTION NO_REQUESTP))
 (10 2 (:DEFINITION LEN))
 (7 1 (:DEFINITION IFF))
 (6 2 (:REWRITE CAR_NO_REQUESTP))
 (5 5 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (5 3 (:REWRITE DEFAULT-*-2))
 (5 1 (:DEFINITION NFIX))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 3 (:REWRITE DEFAULT-*-1))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 1 (:REWRITE NO_REQUESTP_TH1))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE LEN_SELECT))
 )