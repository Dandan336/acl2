(PSEUDO-TERMP-IMPLIES-PSEUDO-TERM-LISTP-CDR
     (4 4 (:REWRITE DEFAULT-CDR))
     (1 1 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
     (1 1
        (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
     (1 1 (:REWRITE DEFAULT-CAR)))
(PSEUDO-TERM-LISTP-IMPLIES-TRUE-LISTP)
(PSEUDO-TERMP-LAMBDA-LEMMA
     (1445 25 (:DEFINITION PSEUDO-TERM-LISTP))
     (365 365 (:REWRITE DEFAULT-CDR))
     (325 325 (:REWRITE DEFAULT-CAR))
     (166 83 (:REWRITE DEFAULT-+-2))
     (102 102
          (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
     (96 96
         (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
     (83 83 (:REWRITE DEFAULT-+-1))
     (17 17 (:REWRITE DEFAULT-COERCE-2))
     (17 17 (:REWRITE DEFAULT-COERCE-1)))