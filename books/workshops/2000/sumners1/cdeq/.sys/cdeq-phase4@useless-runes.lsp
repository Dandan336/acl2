(REP-THF)
(ADDITIVE-FACTOID2)
(REP-TVS)
(REP-TVS-UNAFFECTED-ADDRESSES
 (6 6 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(HACK)
(REP-TVS-REP-THF-REDUCE
 (58 16 (:REWRITE ZP-OPEN))
 (48 16 (:REWRITE FOLD-CONSTS-IN-+))
 (43 43 (:REWRITE DEFAULT-+-2))
 (43 43 (:REWRITE DEFAULT-+-1))
 (34 34 (:REWRITE DEFAULT-<-2))
 (34 34 (:REWRITE DEFAULT-<-1))
 )
(REP-TVS-ABSORBS-UPDATE
 (58 16 (:REWRITE ZP-OPEN))
 (48 16 (:REWRITE FOLD-CONSTS-IN-+))
 (43 43 (:REWRITE DEFAULT-+-2))
 (43 43 (:REWRITE DEFAULT-+-1))
 (30 30 (:REWRITE DEFAULT-<-2))
 (30 30 (:REWRITE DEFAULT-<-1))
 )
(REP-TVS-GET-IS-REP-THF
 (55 11 (:REWRITE REP-TVS-ABSORBS-UPDATE))
 (30 30 (:REWRITE DEFAULT-<-2))
 (30 30 (:REWRITE DEFAULT-<-1))
 (19 3 (:REWRITE ZP-OPEN))
 (12 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 )
(REP-ONR)
(REP-SHR)
(REP)
(RANK>-THF)
(RANK>-TVS)
(RANK>-TVS-UNAFFECTED-ADDRESSES
 (16 10 (:REWRITE DEFAULT-+-2))
 (16 10 (:REWRITE DEFAULT-+-1))
 (6 6 (:TYPE-PRESCRIPTION RANK>-THF))
 (6 6 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(RANK>-TVS-REDUCES-TO-RANK-THF
 (120 78 (:REWRITE DEFAULT-+-1))
 (118 78 (:REWRITE DEFAULT-+-2))
 (105 60 (:REWRITE DEFAULT-<-1))
 (97 60 (:REWRITE DEFAULT-<-2))
 (40 8 (:REWRITE COMMUTATIVITY-OF-+))
 (32 8 (:REWRITE ZP-OPEN))
 (24 8 (:REWRITE FOLD-CONSTS-IN-+))
 )
(RANK0-THF)
(RANK0-TVS)
(RANK0-TVS-UNAFFECTED-ADDRESSES
 (16 10 (:REWRITE DEFAULT-+-2))
 (16 10 (:REWRITE DEFAULT-+-1))
 (6 6 (:TYPE-PRESCRIPTION RANK0-THF))
 (6 6 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(RANK0-TVS-REDUCES-TO-RANK-THF
 (120 78 (:REWRITE DEFAULT-+-1))
 (118 78 (:REWRITE DEFAULT-+-2))
 (105 60 (:REWRITE DEFAULT-<-1))
 (97 60 (:REWRITE DEFAULT-<-2))
 (40 8 (:REWRITE COMMUTATIVITY-OF-+))
 (32 8 (:REWRITE ZP-OPEN))
 (24 8 (:REWRITE FOLD-CONSTS-IN-+))
 )
(MISS-COUNT)
(MISS-COUNT-UNAFFECTED-ADDRESSES
 (78 54 (:REWRITE DEFAULT-+-2))
 (54 54 (:REWRITE DEFAULT-+-1))
 (36 12 (:REWRITE FOLD-CONSTS-IN-+))
 (23 11 (:REWRITE ZP-OPEN))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 )
(HACK)
(EQUAL-MISS-COUNT-->-MISS-COUNT-1
 (137 93 (:REWRITE DEFAULT-+-2))
 (93 93 (:REWRITE DEFAULT-+-1))
 (54 18 (:REWRITE FOLD-CONSTS-IN-+))
 (38 6 (:REWRITE ZP-OPEN))
 (28 28 (:REWRITE DEFAULT-<-2))
 (28 28 (:REWRITE DEFAULT-<-1))
 )
(EQUAL-MISS-COUNT-XGO-MISS-COUNT-1
 (127 87 (:REWRITE DEFAULT-+-2))
 (87 87 (:REWRITE DEFAULT-+-1))
 (54 18 (:REWRITE FOLD-CONSTS-IN-+))
 (38 6 (:REWRITE ZP-OPEN))
 (31 11 (:REWRITE EQUAL-MISS-COUNT-->-MISS-COUNT-1))
 (29 29 (:REWRITE DEFAULT-<-2))
 (29 29 (:REWRITE DEFAULT-<-1))
 )
(EQUAL-MISS-COUNT-MISS-COUNT-CTR-UNCHANGED
 (314 224 (:REWRITE DEFAULT-+-2))
 (224 224 (:REWRITE DEFAULT-+-1))
 (207 69 (:REWRITE FOLD-CONSTS-IN-+))
 (149 23 (:REWRITE ZP-OPEN))
 (89 89 (:REWRITE DEFAULT-<-2))
 (89 89 (:REWRITE DEFAULT-<-1))
 (81 23 (:REWRITE EQUAL-MISS-COUNT-XGO-MISS-COUNT-1))
 (81 23 (:REWRITE EQUAL-MISS-COUNT-->-MISS-COUNT-1))
 )
(RANK-ONR)
(RANK)
(COMMIT)
(PICK)
(SUFF-SHR)
(SUFF-THF-MATCH)
(SUFF-THF)
(SUFF-ONR)
(SUFF)
(>>-WELL-FOUNDED
 (374 22 (:DEFINITION MISS-COUNT))
 (370 200 (:REWRITE DEFAULT-+-2))
 (230 200 (:REWRITE DEFAULT-+-1))
 (195 15 (:DEFINITION RANK>-TVS))
 (195 15 (:DEFINITION RANK0-TVS))
 (148 148 (:TYPE-PRESCRIPTION MAXF-IS-POSITIVE-NATURAL))
 (120 30 (:REWRITE COMMUTATIVITY-OF-+))
 (98 50 (:REWRITE DEFAULT-CAR))
 (95 47 (:REWRITE DEFAULT-CDR))
 (45 24 (:REWRITE DEFAULT-<-1))
 (24 24 (:REWRITE DEFAULT-<-2))
 (15 15 (:DEFINITION RANK>-THF))
 (15 15 (:DEFINITION RANK0-THF))
 (14 1 (:DEFINITION E0-ORD-<))
 (2 2 (:TYPE-PRESCRIPTION E0-ORD-<))
 )
(>>-LABEL
 (90 10 (:DEFINITION REP-TVS))
 (30 10 (:REWRITE REP-TVS-ABSORBS-UPDATE))
 (20 20 (:TYPE-PRESCRIPTION MAXF-IS-POSITIVE-NATURAL))
 (20 20 (:TYPE-PRESCRIPTION INDEXP))
 (20 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (10 10 (:DEFINITION REP-THF))
 (3 2 (:REWRITE DEFAULT-CDR))
 (3 2 (:REWRITE DEFAULT-CAR))
 )
(>>-STUTTER1
 (2358 262 (:DEFINITION REP-TVS))
 (528 264 (:REWRITE DEFAULT-+-2))
 (524 524 (:TYPE-PRESCRIPTION MAXF-IS-POSITIVE-NATURAL))
 (264 264 (:REWRITE DEFAULT-+-1))
 (4 1 (:DEFINITION GET-TOP))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(>>-STUTTER2
 (10506 618 (:DEFINITION MISS-COUNT))
 (10293 5546 (:REWRITE DEFAULT-+-2))
 (7020 408 (:DEFINITION RANK0-TVS))
 (6826 388 (:DEFINITION RANK>-TVS))
 (6814 6814 (:TYPE-PRESCRIPTION MAXF-IS-POSITIVE-NATURAL))
 (6342 5546 (:REWRITE DEFAULT-+-1))
 (3184 796 (:REWRITE COMMUTATIVITY-OF-+))
 (2750 2750 (:TYPE-PRESCRIPTION THF))
 (2746 1350 (:REWRITE DEFAULT-CAR))
 (1494 162 (:REWRITE RANK>-TVS-UNAFFECTED-ADDRESSES))
 (1434 156 (:REWRITE RANK0-TVS-UNAFFECTED-ADDRESSES))
 (1182 584 (:REWRITE DEFAULT-CDR))
 (359 181 (:REWRITE DEFAULT-<-1))
 (290 290 (:REWRITE THF-IS-<=-MAXF))
 (180 180 (:TYPE-PRESCRIPTION RANK))
 (173 173 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (24 6 (:DEFINITION GET-TOP))
 )
(>>-MATCH
 (3483 387 (:DEFINITION REP-TVS))
 (1001 544 (:REWRITE DEFAULT-+-2))
 (774 774 (:TYPE-PRESCRIPTION MAXF-IS-POSITIVE-NATURAL))
 (544 544 (:REWRITE DEFAULT-+-1))
 (322 322 (:REWRITE DEFAULT-CDR))
 (190 170 (:REWRITE DEFAULT-<-1))
 (160 160 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (145 145 (:REWRITE DEFAULT-CAR))
 (104 26 (:DEFINITION DROP-TOP))
 )
(GET-TOP-NIL-IMPLIES-ATOM
 (8 8 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(ONE-ELTP-IMPLIES-NOT-CDR)
(INV-SHR)
(INV-THF)
(INV-ONR)
(INV-TVS)
(INV-TVS-UNAFFECTED-ADDRESSES
 (7 7 (:REWRITE ZP-OPEN))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(INV-TVS-IMPLIES-INV-THF
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(INV)
(THF-INV-SHR-THM
 (175 9 (:DEFINITION GET-TOP))
 (174 41 (:REWRITE GET-TOP-NIL-IMPLIES-ATOM))
 (78 2 (:DEFINITION DROP-TOP))
 (59 27 (:REWRITE DEFAULT-CDR))
 (49 19 (:REWRITE ONE-ELTP-IMPLIES-NOT-CDR))
 (30 30 (:TYPE-PRESCRIPTION ONE-ELTP))
 (11 11 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (6 6 (:TYPE-PRESCRIPTION VAL-TYPE-PRESCRIPTION))
 (6 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(THF-INV-THF-THM
 (386 20 (:DEFINITION GET-TOP))
 (121 53 (:REWRITE DEFAULT-CDR))
 (82 30 (:REWRITE ONE-ELTP-IMPLIES-NOT-CDR))
 (78 2 (:DEFINITION DROP-TOP))
 (52 52 (:TYPE-PRESCRIPTION ONE-ELTP))
 (44 44 (:REWRITE DEFAULT-<-2))
 (44 44 (:REWRITE DEFAULT-<-1))
 (22 22 (:REWRITE DEFAULT-CAR))
 (15 15 (:TYPE-PRESCRIPTION VAL-TYPE-PRESCRIPTION))
 (10 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(THF-INV-OTHER-THF-THM
 (982 223 (:REWRITE GET-TOP-NIL-IMPLIES-ATOM))
 (429 11 (:DEFINITION DROP-TOP))
 (331 151 (:REWRITE DEFAULT-CDR))
 (301 115 (:REWRITE ONE-ELTP-IMPLIES-NOT-CDR))
 (217 203 (:REWRITE DEFAULT-<-1))
 (207 203 (:REWRITE DEFAULT-<-2))
 (186 186 (:TYPE-PRESCRIPTION ONE-ELTP))
 (71 71 (:REWRITE DEFAULT-CAR))
 (38 30 (:REWRITE DEFAULT-+-2))
 (31 31 (:TYPE-PRESCRIPTION VAL-TYPE-PRESCRIPTION))
 (30 30 (:REWRITE DEFAULT-+-1))
 (26 26 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(ONR-INV-SHR-THM
 (260 64 (:REWRITE GET-TOP-NIL-IMPLIES-ATOM))
 (227 11 (:DEFINITION GET-TOP))
 (108 108 (:TYPE-PRESCRIPTION GET-TOP))
 (88 30 (:REWRITE DEFAULT-CDR))
 (33 11 (:REWRITE ONE-ELTP-IMPLIES-NOT-CDR))
 (22 22 (:TYPE-PRESCRIPTION ONE-ELTP))
 (13 13 (:REWRITE DEFAULT-<-1))
 (11 11 (:TYPE-PRESCRIPTION VAL-TYPE-PRESCRIPTION))
 (11 11 (:REWRITE DEFAULT-CAR))
 (10 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (9 9 (:REWRITE DEFAULT-+-1))
 )
(ONR-INV-ONR-THM
 (528 131 (:REWRITE GET-TOP-NIL-IMPLIES-ATOM))
 (465 23 (:DEFINITION GET-TOP))
 (213 213 (:TYPE-PRESCRIPTION GET-TOP))
 (170 64 (:REWRITE DEFAULT-CDR))
 (53 53 (:REWRITE DEFAULT-<-1))
 (27 27 (:REWRITE DEFAULT-CAR))
 (19 19 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 )
(THF-INV-ONR-THM
 (1082 249 (:REWRITE GET-TOP-NIL-IMPLIES-ATOM))
 (1038 50 (:DEFINITION GET-TOP))
 (351 9 (:DEFINITION DROP-TOP))
 (327 123 (:REWRITE DEFAULT-CDR))
 (249 95 (:REWRITE ONE-ELTP-IMPLIES-NOT-CDR))
 (162 152 (:REWRITE DEFAULT-<-1))
 (154 154 (:TYPE-PRESCRIPTION ONE-ELTP))
 (61 61 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (59 59 (:REWRITE DEFAULT-CAR))
 (39 39 (:TYPE-PRESCRIPTION VAL-TYPE-PRESCRIPTION))
 (32 23 (:REWRITE DEFAULT-+-2))
 (23 23 (:REWRITE DEFAULT-+-1))
 )
(ONR-INV-THF-THM
 (2386 549 (:REWRITE GET-TOP-NIL-IMPLIES-ATOM))
 (935 234 (:REWRITE ONE-ELTP-IMPLIES-NOT-CDR))
 (790 319 (:REWRITE DEFAULT-CDR))
 (319 306 (:REWRITE DEFAULT-<-1))
 (284 284 (:TYPE-PRESCRIPTION ONE-ELTP))
 (111 111 (:REWRITE DEFAULT-CAR))
 (54 47 (:REWRITE DEFAULT-+-2))
 (49 49 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (47 47 (:REWRITE DEFAULT-+-1))
 )
(THF-INV-IMPLIES-TVS-INV
 (33 33 (:REWRITE DEFAULT-<-2))
 (33 33 (:REWRITE DEFAULT-<-1))
 (30 12 (:REWRITE ZP-OPEN))
 (27 27 (:REWRITE DEFAULT-+-2))
 (27 27 (:REWRITE DEFAULT-+-1))
 (18 6 (:REWRITE FOLD-CONSTS-IN-+))
 )
(ONR-INV-IMPLIES-TVS-INV
 (9 9 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(INV-TVS-IMPLIES-INV-THF-MAXF)
(>>-INVARIANT-PERSISTENT
 (27 3 (:DEFINITION INV-TVS))
 (6 6 (:TYPE-PRESCRIPTION MAXF-IS-POSITIVE-NATURAL))
 (6 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(INV-SHR-IMPLIES-SUFF-SHR
 (26 1 (:DEFINITION TRUE-LISTP))
 (24 6 (:REWRITE GET-TOP-NIL-IMPLIES-ATOM))
 (21 1 (:DEFINITION GET-TOP))
 (10 10 (:TYPE-PRESCRIPTION GET-TOP))
 (7 3 (:REWRITE DEFAULT-CDR))
 (3 1 (:REWRITE ONE-ELTP-IMPLIES-NOT-CDR))
 (2 2 (:TYPE-PRESCRIPTION ONE-ELTP))
 (1 1 (:TYPE-PRESCRIPTION VAL-TYPE-PRESCRIPTION))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(INV-THF-IMPLIES-SUFF-THF
 (80 20 (:REWRITE GET-TOP-NIL-IMPLIES-ATOM))
 (26 1 (:DEFINITION TRUE-LISTP))
 (23 11 (:REWRITE DEFAULT-CDR))
 (15 5 (:REWRITE ONE-ELTP-IMPLIES-NOT-CDR))
 (10 10 (:TYPE-PRESCRIPTION ONE-ELTP))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-CAR))
 (3 3 (:TYPE-PRESCRIPTION VAL-TYPE-PRESCRIPTION))
 )
(INV-ONR-IMPLIES-SUFF-ONR
 (120 30 (:REWRITE GET-TOP-NIL-IMPLIES-ATOM))
 (105 5 (:DEFINITION GET-TOP))
 (50 50 (:TYPE-PRESCRIPTION GET-TOP))
 (31 11 (:REWRITE DEFAULT-CDR))
 (26 1 (:DEFINITION TRUE-LISTP))
 (15 5 (:REWRITE ONE-ELTP-IMPLIES-NOT-CDR))
 (14 14 (:REWRITE DEFAULT-<-1))
 (10 10 (:TYPE-PRESCRIPTION ONE-ELTP))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 5 (:TYPE-PRESCRIPTION VAL-TYPE-PRESCRIPTION))
 (5 5 (:REWRITE DEFAULT-CAR))
 )
(>>-INVARIANT-SUFFICIENT
 (9 1 (:DEFINITION INV-TVS))
 (2 2 (:TYPE-PRESCRIPTION MAXF-IS-POSITIVE-NATURAL))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )