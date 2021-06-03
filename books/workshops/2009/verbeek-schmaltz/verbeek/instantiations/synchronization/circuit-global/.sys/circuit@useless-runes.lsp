(HAS-EMPTY-BUFFERS)
(CT-CHK_AVAIL
 (48 24 (:TYPE-PRESCRIPTION TRUE-LISTP-LAST))
 (24 24 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (24 24 (:TYPE-PRESCRIPTION LAST))
 (24 24 (:TYPE-PRESCRIPTION CONSP-LAST))
 )
(CT-GOOD_ROUTE?)
(CT-TEST_ROUTES
 (10 5 (:TYPE-PRESCRIPTION TRUE-LISTP-LAST))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION LAST))
 (5 5 (:TYPE-PRESCRIPTION CONSP-LAST))
 )
(CT-REQ_TRANS
 (1 1 (:TYPE-PRESCRIPTION CT-REQ_TRANS))
 )
(CT-PROCESS_REQ)
(CT-CHECK_ACK)
(CHECK-COMPLIANCE-CT-SYNCHRONIZATION
 (1702 134 (:REWRITE NTH-WITH-LARGE-INDEX))
 (1139 67 (:DEFINITION NTH))
 (524 12 (:DEFINITION VALIDSTATE))
 (430 4 (:DEFINITION SUBSETP-EQUAL))
 (341 341 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (336 8 (:DEFINITION MEMBER-EQUAL))
 (246 123 (:REWRITE DEFAULT-+-2))
 (240 12 (:DEFINITION VALIDSTATE-ENTRYP))
 (231 119 (:REWRITE DEFAULT-<-2))
 (124 119 (:REWRITE DEFAULT-<-1))
 (124 4 (:DEFINITION HAS-EMPTY-BUFFERS))
 (123 123 (:REWRITE DEFAULT-+-1))
 (114 114 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (96 24 (:REWRITE VALIDSTATE-ENTRY-IMPLIES-COORD-AND-BUFFER))
 (92 8 (:REWRITE ID-NOT-EQ-CAR-MEMBER-CDR-TRLST))
 (92 8 (:REWRITE ID-NOT-EQ-CAR-MEMBER-CDR-MISSIVES))
 (92 8 (:REWRITE ID-NOT-EQ-CAR-MEMBER-CDR))
 (72 72 (:TYPE-PRESCRIPTION VALIDSTATE-ENTRYP))
 (72 4 (:DEFINITION HAS-EMPTY-BUFFER))
 (60 12 (:DEFINITION VALIDCOORD))
 (48 24 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (36 12 (:DEFINITION VALIDBUFFER))
 (28 4 (:DEFINITION SIMPLE-READBUFFERS))
 (24 24 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (20 4 (:DEFINITION GET_BUFF))
 (17 17 (:REWRITE SUBSETP-TRANS))
 (16 4 (:DEFINITION GET_COOR))
 (10 10 (:REWRITE CONSP-LAST))
 (8 4 (:DEFINITION IDV))
 (8 4 (:DEFINITION IDTM))
 (8 4 (:DEFINITION IDM))
 (2 2 (:REWRITE CHECKROUTES-SUBSETP-VALIDROUTE))
 )