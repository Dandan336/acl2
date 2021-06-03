(CARD)
(SETP)
(SET-RECURSION-SCHEME
 (550 256 (:REWRITE DEFAULT-+-2))
 (360 256 (:REWRITE DEFAULT-+-1))
 (115 23 (:DEFINITION LEN))
 (97 64 (:REWRITE DEFAULT-<-2))
 (85 84 (:REWRITE DEFAULT-CDR))
 (78 64 (:REWRITE DEFAULT-<-1))
 (68 67 (:REWRITE DEFAULT-CAR))
 (46 46 (:REWRITE DEFAULT-UNARY-MINUS))
 (23 23 (:REWRITE DEFAULT-NUMERATOR))
 (23 23 (:REWRITE DEFAULT-DENOMINATOR))
 (23 23 (:REWRITE DEFAULT-COERCE-2))
 (23 23 (:REWRITE DEFAULT-COERCE-1))
 (22 22 (:REWRITE DEFAULT-REALPART))
 (22 22 (:REWRITE DEFAULT-IMAGPART))
 )
(MEMBER-REMOVE-NONMEMBER
 (29 28 (:REWRITE DEFAULT-CAR))
 (20 19 (:REWRITE DEFAULT-CDR))
 )
(SETP-REMOVE
 (44 42 (:REWRITE DEFAULT-CDR))
 (40 39 (:REWRITE DEFAULT-CAR))
 (33 11 (:DEFINITION MEMBER-EQUAL))
 )
(MEMBER-REMOVE-DIFF-MEMBER
 (39 36 (:REWRITE DEFAULT-CAR))
 (20 19 (:REWRITE DEFAULT-CDR))
 (10 6 (:REWRITE MEMBER-REMOVE-NONMEMBER))
 )
(SUBSETP-REMOVE
 (78 77 (:REWRITE DEFAULT-CAR))
 (63 7 (:REWRITE MEMBER-REMOVE-NONMEMBER))
 (62 61 (:REWRITE DEFAULT-CDR))
 )
(CARD-REMOVE-NONMEMBER
 (50 46 (:REWRITE DEFAULT-CDR))
 (42 40 (:REWRITE DEFAULT-CAR))
 (16 8 (:REWRITE DEFAULT-<-1))
 (16 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 )
(CARD-REMOVE-MEMBER
 (156 152 (:REWRITE DEFAULT-CDR))
 (109 107 (:REWRITE DEFAULT-CAR))
 (96 46 (:REWRITE DEFAULT-+-2))
 (56 28 (:REWRITE DEFAULT-<-1))
 (46 46 (:REWRITE DEFAULT-+-1))
 (28 28 (:REWRITE DEFAULT-<-2))
 )
(SUBSETP-IMPLIES-MEMBER
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(EQUAL-CARDS-IMPLY-SAME-MEMBERS
 (182 182 (:REWRITE DEFAULT-CDR))
 (152 152 (:REWRITE DEFAULT-CAR))
 (52 12 (:DEFINITION REMOVE-EQUAL))
 (47 24 (:REWRITE DEFAULT-+-2))
 (41 21 (:REWRITE DEFAULT-<-1))
 (24 24 (:REWRITE DEFAULT-+-1))
 (21 21 (:REWRITE DEFAULT-<-2))
 (12 12 (:TYPE-PRESCRIPTION REMOVE-EQUAL))
 (3 3 (:TYPE-PRESCRIPTION SET-RECURSION-SCHEME))
 )
(CARD-SUBSET
 (113 113 (:REWRITE DEFAULT-CDR))
 (109 94 (:REWRITE EQUAL-CARDS-IMPLY-SAME-MEMBERS))
 (94 94 (:REWRITE DEFAULT-CAR))
 (40 20 (:REWRITE DEFAULT-<-1))
 (27 20 (:REWRITE DEFAULT-<-2))
 (24 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 )
(NODUPS-LEN=CARD
 (22 22 (:REWRITE DEFAULT-CDR))
 (14 14 (:REWRITE EQUAL-CARDS-IMPLY-SAME-MEMBERS))
 (14 14 (:REWRITE DEFAULT-CAR))
 (12 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 )
(NODUPS-LIST=SET
 (26 26 (:REWRITE DEFAULT-CDR))
 (22 22 (:REWRITE EQUAL-CARDS-IMPLY-SAME-MEMBERS))
 (22 22 (:REWRITE DEFAULT-CAR))
 )
(LEN-NODUP-SUBSET
 (40 2 (:DEFINITION CARD))
 (20 5 (:DEFINITION MEMBER-EQUAL))
 (20 2 (:DEFINITION NO-DUPLICATESP-EQUAL))
 (16 16 (:REWRITE DEFAULT-CDR))
 (12 2 (:DEFINITION NFIX))
 (10 10 (:REWRITE EQUAL-CARDS-IMPLY-SAME-MEMBERS))
 (10 10 (:REWRITE DEFAULT-CAR))
 (9 1 (:DEFINITION SUBSETP-EQUAL))
 (8 8 (:TYPE-PRESCRIPTION CARD))
 (5 5 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (4 2 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )