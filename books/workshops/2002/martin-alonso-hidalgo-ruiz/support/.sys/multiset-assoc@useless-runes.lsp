(SELECT-ASSOC)
(REDUCT-ASSOC)
(INCLUDE-ASSOC)
(EMPTY-ASSOC)
(MEASURE-ASSOC)
(O-P-MEASURE-ASSOC
 (15 1 (:DEFINITION MEASURE-ASSOC))
 (6 6 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(REDUCT-ASSOC-MEASURE-ASSOC
 (258 258 (:REWRITE DEFAULT-CDR))
 (176 176 (:REWRITE DEFAULT-CAR))
 (76 63 (:REWRITE DEFAULT-<-1))
 (75 47 (:REWRITE DEFAULT-+-2))
 (72 63 (:REWRITE DEFAULT-<-2))
 (48 47 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 )
(COUNT-BAG-EQUAL-ASSOC)
(ANOTHER-DEFINITION-COUNT-BAG-EQUAL-ASSOC
 (320 320 (:REWRITE DEFAULT-CDR))
 (307 307 (:REWRITE DEFAULT-CAR))
 (79 42 (:REWRITE DEFAULT-+-2))
 (53 53 (:REWRITE DEFAULT-<-2))
 (53 53 (:REWRITE DEFAULT-<-1))
 (42 42 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE FOLD-CONSTS-IN-+))
 )
(COUNT-INCLUDE-ASSOC
 (4689 2912 (:REWRITE DEFAULT-CDR))
 (3880 2774 (:REWRITE DEFAULT-CAR))
 (553 418 (:REWRITE DEFAULT-+-2))
 (466 465 (:REWRITE DEFAULT-<-2))
 (465 465 (:REWRITE DEFAULT-<-1))
 (420 418 (:REWRITE DEFAULT-+-1))
 (66 66 (:TYPE-PRESCRIPTION EMPTY-ASSOC))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(MEMBER-BAG-EQUIV-ASSOC
 (30 2 (:DEFINITION MEASURE-ASSOC))
 (28 28 (:REWRITE DEFAULT-CDR))
 (21 1 (:DEFINITION REDUCT-ASSOC))
 (20 20 (:REWRITE DEFAULT-CAR))
 (11 1 (:DEFINITION SELECT-ASSOC))
 (9 1 (:DEFINITION EMPTY-ASSOC))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION MEASURE-ASSOC))
 )
(EQUIV-IMPLIES-IFF-MEMBER-BAG-EQUIV-1-ASSOC
 (588 28 (:DEFINITION REDUCT-ASSOC))
 (431 431 (:REWRITE DEFAULT-CDR))
 (376 376 (:REWRITE DEFAULT-CAR))
 (176 16 (:DEFINITION SELECT-ASSOC))
 (153 17 (:DEFINITION EMPTY-ASSOC))
 (144 8 (:DEFINITION COUNT-BAG-EQUAL-ASSOC))
 (76 53 (:REWRITE DEFAULT-+-2))
 (72 72 (:REWRITE DEFAULT-<-2))
 (72 72 (:REWRITE DEFAULT-<-1))
 (53 53 (:REWRITE DEFAULT-+-1))
 (30 2 (:DEFINITION MEASURE-ASSOC))
 (23 1 (:DEFINITION INCLUDE-ASSOC))
 (3 1 (:REWRITE COMMUTATIVITY-OF-+))
 (2 2 (:TYPE-PRESCRIPTION MEASURE-ASSOC))
 )
(REMOVE-ONE-BAG-EQUIV-ASSOC
 (30 2 (:DEFINITION MEASURE-ASSOC))
 (28 28 (:REWRITE DEFAULT-CDR))
 (21 1 (:DEFINITION REDUCT-ASSOC))
 (20 20 (:REWRITE DEFAULT-CAR))
 (11 1 (:DEFINITION SELECT-ASSOC))
 (9 1 (:DEFINITION EMPTY-ASSOC))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION MEASURE-ASSOC))
 )
(EQUIV-IMPLIES-EQUAL-REMOVE-ONE-BAG-EQUIV-1-ASSOC
 (210 10 (:DEFINITION REDUCT-ASSOC))
 (175 175 (:REWRITE DEFAULT-CDR))
 (170 170 (:REWRITE DEFAULT-CAR))
 (115 5 (:DEFINITION INCLUDE-ASSOC))
 (110 10 (:DEFINITION SELECT-ASSOC))
 (45 5 (:DEFINITION EMPTY-ASSOC))
 (30 30 (:REWRITE DEFAULT-<-2))
 (30 30 (:REWRITE DEFAULT-<-1))
 (20 20 (:REWRITE DEFAULT-+-2))
 (20 20 (:REWRITE DEFAULT-+-1))
 (15 5 (:REWRITE COMMUTATIVITY-OF-+))
 )
(SUB-BAG-EQUIV-ASSOC
 (44 44 (:REWRITE DEFAULT-CDR))
 (43 1 (:DEFINITION MEMBER-BAG-EQUIV-ASSOC))
 (42 2 (:DEFINITION REDUCT-ASSOC))
 (34 34 (:REWRITE DEFAULT-CAR))
 (30 2 (:DEFINITION MEASURE-ASSOC))
 (22 2 (:DEFINITION SELECT-ASSOC))
 (18 2 (:DEFINITION EMPTY-ASSOC))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (6 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION MEASURE-ASSOC))
 )
(SUB-BAG-EQUIV-REFLEXIVE-ASSOC
 (490 5 (:DEFINITION REMOVE-ONE-BAG-EQUIV-ASSOC))
 (420 20 (:DEFINITION REDUCT-ASSOC))
 (355 355 (:REWRITE DEFAULT-CDR))
 (330 330 (:REWRITE DEFAULT-CAR))
 (275 25 (:DEFINITION SELECT-ASSOC))
 (215 5 (:DEFINITION MEMBER-BAG-EQUIV-ASSOC))
 (135 15 (:DEFINITION EMPTY-ASSOC))
 (115 5 (:DEFINITION INCLUDE-ASSOC))
 (65 65 (:REWRITE DEFAULT-<-2))
 (65 65 (:REWRITE DEFAULT-<-1))
 (30 30 (:REWRITE DEFAULT-+-2))
 (30 30 (:REWRITE DEFAULT-+-1))
 (15 5 (:REWRITE COMMUTATIVITY-OF-+))
 )
(SUB-BAG-EQUIV-TRANSITIVE-ASSOC)
(EQUAL-BAG-EQUIV-ASSOC)
(EQUAL-BAG-EQUIV-IS-AN-EQUIVALENCE-ASSOC
 (788 4 (:DEFINITION SUB-BAG-EQUIV-ASSOC))
 (392 4 (:DEFINITION REMOVE-ONE-BAG-EQUIV-ASSOC))
 (336 16 (:DEFINITION REDUCT-ASSOC))
 (284 284 (:REWRITE DEFAULT-CDR))
 (264 264 (:REWRITE DEFAULT-CAR))
 (220 20 (:DEFINITION SELECT-ASSOC))
 (172 4 (:DEFINITION MEMBER-BAG-EQUIV-ASSOC))
 (108 12 (:DEFINITION EMPTY-ASSOC))
 (92 4 (:DEFINITION INCLUDE-ASSOC))
 (52 52 (:REWRITE DEFAULT-<-2))
 (52 52 (:REWRITE DEFAULT-<-1))
 (24 24 (:REWRITE DEFAULT-+-2))
 (24 24 (:REWRITE DEFAULT-+-1))
 (12 12 (:TYPE-PRESCRIPTION EMPTY-ASSOC))
 (12 4 (:REWRITE COMMUTATIVITY-OF-+))
 (8 8 (:REWRITE SUB-BAG-EQUIV-TRANSITIVE-ASSOC))
 (4 4 (:TYPE-PRESCRIPTION MEMBER-BAG-EQUIV-ASSOC))
 )
(EQUAL-BAG-EQUIV-IMPLIES-IFF-MEMBER-BAG-EQUIV-2-ASSOC)
(EQUAL-BAG-EQUIV-IMPLIES-IFF-SUB-BAG-EQUIV-1-ASSOC)
(EQUAL-BAG-EQUIV-IMPLIES-IFF-SUB-BAG-EQUIV-2-ASSOC)
(EQUAL-BAG-EQUIV-IMPLIES-EQUAL-BAG-EQUIV-REMOVE-ONE-BAG-EQUIV-2-ASSOC)
(UNION-BAG-EQUIV-ASSOC
 (30 2 (:DEFINITION MEASURE-ASSOC))
 (24 24 (:REWRITE DEFAULT-CDR))
 (21 1 (:DEFINITION REDUCT-ASSOC))
 (16 16 (:REWRITE DEFAULT-CAR))
 (9 1 (:DEFINITION EMPTY-ASSOC))
 (5 3 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION MEASURE-ASSOC))
 )
(EQUAL-BAG-EQUIV-IMPLIES-EQUAL-BAG-EQUIV-UNION-BAG-EQUIV-1-ASSOC
 (125 5 (:DEFINITION INCLUDE-ASSOC))
 (115 115 (:REWRITE DEFAULT-CDR))
 (110 110 (:REWRITE DEFAULT-CAR))
 (105 5 (:DEFINITION REDUCT-ASSOC))
 (55 5 (:DEFINITION SELECT-ASSOC))
 (45 5 (:DEFINITION EMPTY-ASSOC))
 (27 27 (:TYPE-PRESCRIPTION UNION-BAG-EQUIV-ASSOC))
 (20 20 (:REWRITE DEFAULT-<-2))
 (20 20 (:REWRITE DEFAULT-<-1))
 (15 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-+-1))
 (15 5 (:REWRITE COMMUTATIVITY-OF-+))
 )
(EQUAL-BAG-EQUIV-IMPLIES-EQUAL-BAG-EQUIV-UNION-BAG-EQUIV-2-ASSOC)
(UNION-BAG-EQUIV-CONMUTATIVE-ASSOC)
(UNION-BAG-EQUIV-ASSOCIATIVE-ASSOC)
(SUB-UNION-BAG-EQUIV-1-ASSOC)
(SUB-UNION-BAG-EQUIV-2-ASSOC)
(INTER-BAG-EQUIV-ASSOC
 (30 2 (:DEFINITION MEASURE-ASSOC))
 (24 24 (:REWRITE DEFAULT-CDR))
 (21 1 (:DEFINITION REDUCT-ASSOC))
 (16 16 (:REWRITE DEFAULT-CAR))
 (9 1 (:DEFINITION EMPTY-ASSOC))
 (5 3 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION MEASURE-ASSOC))
 )
(EQUAL-BAG-EQUIV-IMPLIES-EQUAL-BAG-EQUIV-INTER-BAG-EQUIV-1-ASSOC
 (735 35 (:DEFINITION REDUCT-ASSOC))
 (686 7 (:DEFINITION REMOVE-ONE-BAG-EQUIV-ASSOC))
 (630 630 (:REWRITE DEFAULT-CDR))
 (602 602 (:REWRITE DEFAULT-CAR))
 (462 42 (:DEFINITION SELECT-ASSOC))
 (322 14 (:DEFINITION INCLUDE-ASSOC))
 (301 7 (:DEFINITION MEMBER-BAG-EQUIV-ASSOC))
 (189 21 (:DEFINITION EMPTY-ASSOC))
 (112 112 (:REWRITE DEFAULT-<-2))
 (112 112 (:REWRITE DEFAULT-<-1))
 (63 63 (:REWRITE DEFAULT-+-2))
 (63 63 (:REWRITE DEFAULT-+-1))
 (42 14 (:REWRITE COMMUTATIVITY-OF-+))
 )
(EQUAL-BAG-EQUIV-IMPLIES-EQUAL-BAG-EQUIV-INTER-BAG-EQUIV-2-ASSOC)
(INTER-BAG-EQUIV-IDEMPOTENT-ASSOC)
(INTER-BAG-EQUIV-CONMUTATIVE-ASSOC)
(INTER-BAG-EQUIV-ASSOCIATIVE-ASSOC)
(SUB-INTER-BAG-EQUIV-1-ASSOC)
(SUB-INTER-BAG-EQUIV-2-ASSOC)
(INTER-BAG-EQUIV-GREATEST-ASSOC)
(UNIMIN-BAG-EQUIV-ASSOC
 (30 2 (:DEFINITION MEASURE-ASSOC))
 (24 24 (:REWRITE DEFAULT-CDR))
 (21 1 (:DEFINITION REDUCT-ASSOC))
 (16 16 (:REWRITE DEFAULT-CAR))
 (9 1 (:DEFINITION EMPTY-ASSOC))
 (5 3 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION MEASURE-ASSOC))
 )
(EQUAL-BAG-EQUIV-IMPLIES-EQUAL-BAG-EQUIV-UNIMIN-BAG-EQUIV-1-ASSOC
 (735 35 (:DEFINITION REDUCT-ASSOC))
 (707 707 (:REWRITE DEFAULT-CDR))
 (686 686 (:REWRITE DEFAULT-CAR))
 (686 7 (:DEFINITION REMOVE-ONE-BAG-EQUIV-ASSOC))
 (539 49 (:DEFINITION SELECT-ASSOC))
 (511 21 (:DEFINITION INCLUDE-ASSOC))
 (301 7 (:DEFINITION MEMBER-BAG-EQUIV-ASSOC))
 (189 21 (:DEFINITION EMPTY-ASSOC))
 (126 126 (:REWRITE DEFAULT-<-2))
 (126 126 (:REWRITE DEFAULT-<-1))
 (77 77 (:REWRITE DEFAULT-+-2))
 (77 77 (:REWRITE DEFAULT-+-1))
 (63 21 (:REWRITE COMMUTATIVITY-OF-+))
 (45 45 (:TYPE-PRESCRIPTION UNIMIN-BAG-EQUIV-ASSOC))
 )
(EQUAL-BAG-EQUIV-IMPLIES-EQUAL-BAG-EQUIV-UNIMIN-BAG-EQUIV-2-ASSOC)
(UNIMIN-BAG-EQUIV-IDEMPOTENT-ASSOC)
(UNIMIN-BAG-EQUIV-CONMUTATIVE-ASSOC)
(UNIMIN-BAG-EQUIV-ASSOCIATIVE-ASSOC)
(SUB-UNIMIN-BAG-EQUIV-1-ASSOC)
(SUB-UNIMIN-BAG-EQUIV-2-ASSOC)
(UNIMIN-BAG-EQUIV-LEAST-ASSOC)
(DIFF-BAG-EQUIV-ASSOC
 (30 2 (:DEFINITION MEASURE-ASSOC))
 (24 24 (:REWRITE DEFAULT-CDR))
 (21 1 (:DEFINITION REDUCT-ASSOC))
 (16 16 (:REWRITE DEFAULT-CAR))
 (9 1 (:DEFINITION EMPTY-ASSOC))
 (5 3 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION MEASURE-ASSOC))
 )
(EQUAL-BAG-EQUIV-IMPLIES-EQUAL-BAG-EQUIV-DIFF-BAG-EQUIV-1-ASSOC
 (490 5 (:DEFINITION REMOVE-ONE-BAG-EQUIV-ASSOC))
 (315 15 (:DEFINITION REDUCT-ASSOC))
 (255 255 (:REWRITE DEFAULT-CDR))
 (240 240 (:REWRITE DEFAULT-CAR))
 (165 15 (:DEFINITION SELECT-ASSOC))
 (115 5 (:DEFINITION INCLUDE-ASSOC))
 (90 10 (:DEFINITION EMPTY-ASSOC))
 (45 45 (:REWRITE DEFAULT-<-2))
 (45 45 (:REWRITE DEFAULT-<-1))
 (25 25 (:REWRITE DEFAULT-+-2))
 (25 25 (:REWRITE DEFAULT-+-1))
 (15 5 (:REWRITE COMMUTATIVITY-OF-+))
 )
(EQUAL-BAG-EQUIV-IMPLIES-EQUAL-BAG-EQUIV-DIFF-BAG-EQUIV-2-ASSOC)
(DIFF-UNION-1-EQUAL-BAG-EQUIV-ASSOC)
(DIFF-UNION-2-EQUAL-BAG-EQUIV-ASSOC)