(MAP-STATUS-UPDATE-REDUCTION
 (624 156 (:REWRITE <<-TRICHOTOMY))
 (416 416 (:TYPE-PRESCRIPTION <<))
 (312 52 (:REWRITE <<-ASYMMETRIC))
 (294 294 (:REWRITE DEFAULT-CAR))
 (221 204 (:REWRITE S-SAME-G-BACK-CHAINING))
 (156 156 (:REWRITE <<-TRANSITIVE))
 (111 111 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER-SYMMETRIC))
 (111 111 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER))
 )
(MAP-STATUS-ACCESS-REDUCTION
 (264 66 (:REWRITE <<-TRICHOTOMY))
 (176 176 (:TYPE-PRESCRIPTION <<))
 (132 22 (:REWRITE <<-ASYMMETRIC))
 (99 99 (:REWRITE DEFAULT-CAR))
 (66 66 (:REWRITE <<-TRANSITIVE))
 (38 38 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER-SYMMETRIC))
 (38 38 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER))
 (26 26 (:REWRITE S-SAME-G-BACK-CHAINING))
 )
(>>-STUTTER1-B-C
 (31148 356 (:DEFINITION MAP-STATUS))
 (23016 864 (:DEFINITION ORDEREDP))
 (21496 432 (:DEFINITION UNIQUEP))
 (10368 2592 (:REWRITE <<-TRICHOTOMY))
 (7844 6476 (:REWRITE DEFAULT-CDR))
 (7108 6652 (:REWRITE DEFAULT-CAR))
 (6912 6912 (:TYPE-PRESCRIPTION <<))
 (5184 864 (:REWRITE <<-ASYMMETRIC))
 (3684 1844 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER))
 (2770 554 (:REWRITE LEX<-TOTAL))
 (2660 76 (:DEFINITION DROP))
 (2592 2592 (:REWRITE <<-TRANSITIVE))
 (2584 228 (:REWRITE MEMBERP-NO-REDUCE-DROP))
 (2493 277 (:REWRITE LEX<-ASYMMETRIC))
 (1900 1900 (:TYPE-PRESCRIPTION DROP))
 (836 836 (:REWRITE DEFAULT-<-2))
 (836 836 (:REWRITE DEFAULT-<-1))
 (554 554 (:TYPE-PRESCRIPTION NATP))
 (554 554 (:REWRITE LEX<-TRANSITIVE))
 (544 272 (:REWRITE DEFAULT-+-2))
 (464 464 (:TYPE-PRESCRIPTION EXTRACT-INDICES-WITH-POS))
 (272 272 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (272 272 (:REWRITE DEFAULT-+-1))
 (238 238 (:REWRITE MY-SUBSETP-IS-TRANSITIVE))
 )
(>>-FAIR-STUTTER1-B-C
 (31055 355 (:DEFINITION MAP-STATUS))
 (22890 860 (:DEFINITION ORDEREDP))
 (21390 430 (:DEFINITION UNIQUEP))
 (10320 2580 (:REWRITE <<-TRICHOTOMY))
 (7861 6511 (:REWRITE DEFAULT-CDR))
 (7189 6739 (:REWRITE DEFAULT-CAR))
 (6880 6880 (:TYPE-PRESCRIPTION <<))
 (5160 860 (:REWRITE <<-ASYMMETRIC))
 (3685 1837 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER))
 (2860 572 (:REWRITE LEX<-TOTAL))
 (2699 75 (:DEFINITION DROP))
 (2624 225 (:REWRITE MEMBERP-NO-REDUCE-DROP))
 (2580 2580 (:REWRITE <<-TRANSITIVE))
 (2574 286 (:REWRITE LEX<-ASYMMETRIC))
 (1875 1875 (:TYPE-PRESCRIPTION DROP))
 (868 868 (:REWRITE DEFAULT-<-2))
 (868 868 (:REWRITE DEFAULT-<-1))
 (572 572 (:TYPE-PRESCRIPTION NATP))
 (572 572 (:REWRITE LEX<-TRANSITIVE))
 (562 281 (:REWRITE DEFAULT-+-2))
 (509 509 (:REWRITE MY-SUBSETP-IS-TRANSITIVE))
 (482 482 (:TYPE-PRESCRIPTION EXTRACT-INDICES-WITH-POS))
 (281 281 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (281 281 (:REWRITE DEFAULT-+-1))
 (24 12 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 12 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (3 1 (:DEFINITION BINARY-APPEND))
 )
(>>-STUTTER1-C-S
 (210 6 (:DEFINITION DROP))
 (204 18 (:REWRITE MEMBERP-NO-REDUCE-DROP))
 (188 28 (:DEFINITION MEMBERP))
 (171 3 (:DEFINITION INSERT))
 (144 6 (:DEFINITION ORDEREDP))
 (129 33 (:REWRITE <<-TRICHOTOMY))
 (87 87 (:REWRITE DEFAULT-CAR))
 (87 15 (:REWRITE <<-ASYMMETRIC))
 (84 84 (:TYPE-PRESCRIPTION <<))
 (80 80 (:TYPE-PRESCRIPTION KEYS))
 (66 66 (:REWRITE DEFAULT-CDR))
 (64 32 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (63 63 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER-SYMMETRIC))
 (63 63 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER))
 (56 56 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (48 24 (:TYPE-PRESCRIPTION INSERT-RETURNS-TRUE-LISTS))
 (33 33 (:REWRITE <<-TRANSITIVE))
 (32 32 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (24 24 (:TYPE-PRESCRIPTION INSERT))
 (15 5 (:DEFINITION BINARY-APPEND))
 (12 12 (:TYPE-PRESCRIPTION DROP))
 )
(MAP-STATUS-UPDATE-COVERS
 (5637 92 (:REWRITE S-SAME-G-BACK-CHAINING))
 (5530 50 (:REWRITE MAP-STATUS-ACCESS-REDUCTION))
 (4111 120 (:DEFINITION ORDEREDP))
 (3956 90 (:REWRITE ORDERED-IMPLIES-UNIQUE))
 (3185 45 (:DEFINITION UNIQUEP))
 (1685 424 (:REWRITE <<-TRICHOTOMY))
 (1333 544 (:REWRITE DEFAULT-CDR))
 (1236 618 (:TYPE-PRESCRIPTION INSERT-RETURNS-TRUE-LISTS))
 (935 157 (:REWRITE <<-ASYMMETRIC))
 (766 435 (:REWRITE DEFAULT-CAR))
 (704 48 (:DEFINITION MEMBERP))
 (618 618 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (590 590 (:TYPE-PRESCRIPTION ORDEREDP))
 (510 20 (:REWRITE MEMBERP-YES-REDUCE-INSERT))
 (445 10 (:REWRITE G-DIFF-S))
 (428 424 (:REWRITE <<-TRANSITIVE))
 (270 10 (:REWRITE INSERT-PRESERVES-ORDEREDP))
 (231 231 (:TYPE-PRESCRIPTION MEMBERP))
 (223 223 (:TYPE-PRESCRIPTION UNIQUEP))
 (93 93 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER-SYMMETRIC))
 (93 93 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER))
 (3 3 (:REWRITE G-SAME-S))
 (2 2 (:REWRITE G-OF-NIL-IS-NIL))
 (1 1 (:REWRITE CONS-CAR-CDR))
 )
(>>-MATCH-B-C
 (21679 241 (:DEFINITION MAP-STATUS))
 (16980 640 (:DEFINITION ORDEREDP))
 (13960 280 (:DEFINITION UNIQUEP))
 (8630 2170 (:REWRITE <<-TRICHOTOMY))
 (6203 5197 (:REWRITE DEFAULT-CDR))
 (6125 5733 (:REWRITE DEFAULT-CAR))
 (5720 5720 (:TYPE-PRESCRIPTION <<))
 (4690 790 (:REWRITE <<-ASYMMETRIC))
 (2870 50 (:DEFINITION INSERT))
 (2710 542 (:REWRITE LEX<-TOTAL))
 (2439 271 (:REWRITE LEX<-ASYMMETRIC))
 (2219 1323 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER))
 (2170 2170 (:REWRITE <<-TRANSITIVE))
 (1365 39 (:DEFINITION DROP))
 (1326 117 (:REWRITE MEMBERP-NO-REDUCE-DROP))
 (1120 560 (:TYPE-PRESCRIPTION INSERT-RETURNS-TRUE-LISTS))
 (1020 1020 (:REWRITE DEFAULT-<-2))
 (1020 1020 (:REWRITE DEFAULT-<-1))
 (975 975 (:TYPE-PRESCRIPTION DROP))
 (648 324 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (644 644 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (560 560 (:TYPE-PRESCRIPTION INSERT))
 (542 542 (:TYPE-PRESCRIPTION NATP))
 (542 542 (:REWRITE LEX<-TRANSITIVE))
 (402 201 (:REWRITE DEFAULT-+-2))
 (324 324 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (248 248 (:REWRITE MY-SUBSETP-IS-TRANSITIVE))
 (201 201 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (201 201 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE MEMBERP-INSERT-DIFF))
 )
(>>-FAIR-MATCH-B-C
 (21679 241 (:DEFINITION MAP-STATUS))
 (16980 640 (:DEFINITION ORDEREDP))
 (13960 280 (:DEFINITION UNIQUEP))
 (8630 2170 (:REWRITE <<-TRICHOTOMY))
 (6251 5245 (:REWRITE DEFAULT-CDR))
 (6212 5820 (:REWRITE DEFAULT-CAR))
 (5720 5720 (:TYPE-PRESCRIPTION <<))
 (4690 790 (:REWRITE <<-ASYMMETRIC))
 (2870 50 (:DEFINITION INSERT))
 (2790 558 (:REWRITE LEX<-TOTAL))
 (2511 279 (:REWRITE LEX<-ASYMMETRIC))
 (2219 1323 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER))
 (2170 2170 (:REWRITE <<-TRANSITIVE))
 (1403 39 (:DEFINITION DROP))
 (1364 117 (:REWRITE MEMBERP-NO-REDUCE-DROP))
 (1200 600 (:TYPE-PRESCRIPTION INSERT-RETURNS-TRUE-LISTS))
 (1046 1046 (:REWRITE DEFAULT-<-2))
 (1046 1046 (:REWRITE DEFAULT-<-1))
 (975 975 (:TYPE-PRESCRIPTION DROP))
 (792 396 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (756 756 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (600 600 (:TYPE-PRESCRIPTION INSERT))
 (558 558 (:TYPE-PRESCRIPTION NATP))
 (558 558 (:REWRITE LEX<-TRANSITIVE))
 (503 503 (:REWRITE MY-SUBSETP-IS-TRANSITIVE))
 (418 209 (:REWRITE DEFAULT-+-2))
 (396 396 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (209 209 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (209 209 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE MEMBERP-INSERT-DIFF))
 )
(MATCH-C-S
 (2124 36 (:DEFINITION INSERT))
 (1116 288 (:REWRITE <<-TRICHOTOMY))
 (864 36 (:DEFINITION ORDEREDP))
 (828 144 (:REWRITE <<-ASYMMETRIC))
 (720 720 (:TYPE-PRESCRIPTION <<))
 (288 288 (:REWRITE <<-TRANSITIVE))
 (288 144 (:TYPE-PRESCRIPTION INSERT-RETURNS-TRUE-LISTS))
 (246 246 (:REWRITE DEFAULT-CAR))
 (175 5 (:DEFINITION DROP))
 (170 15 (:REWRITE MEMBERP-NO-REDUCE-DROP))
 (169 169 (:REWRITE DEFAULT-CDR))
 (144 144 (:TYPE-PRESCRIPTION INSERT))
 (48 48 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER-SYMMETRIC))
 (48 48 (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER))
 (10 10 (:TYPE-PRESCRIPTION DROP))
 )