(NATURAL-LISTP)
(ITH)
(UPDATE-ALIST-CDR
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(UPDATE-ALIST-MEMBER
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(UPDATE-ITH)
(MAX-IN-NATURAL-LISTP
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(GEN-NATURAL)
(GEN-NATURAL-NATURALP
 (19 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(GEN-POS-INTEGER)
(GEN-POS-INTEGER-POS-INTEGERP
 (31 24 (:REWRITE DEFAULT-<-1))
 (29 24 (:REWRITE DEFAULT-<-2))
 (22 11 (:REWRITE DEFAULT-+-2))
 (11 11 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-CDR))
 )
(INTERSECT-EQUAL)