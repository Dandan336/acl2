(POL::MONOMIAL-LISTP
 (16 8 (:TYPE-PRESCRIPTION TER::TERMP-NULLP))
 (8 8 (:TYPE-PRESCRIPTION TER::NULLP))
 )
(POL::POLYNOMIAL
 (58 29 (:TYPE-PRESCRIPTION TER::TERMP-NULLP))
 (29 29 (:TYPE-PRESCRIPTION TER::NULLP))
 )
(POL::POLYNOMIALP-POLYNOMIAL
 (76 38 (:TYPE-PRESCRIPTION TER::TERMP-NULLP))
 (63 63 (:REWRITE DEFAULT-CAR))
 (38 38 (:TYPE-PRESCRIPTION TER::NULLP))
 (33 33 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 )
(POL::POLYNOMIALP-REST
 (6 6 (:REWRITE DEFAULT-CAR))
 (6 1 (:DEFINITION TER::NATURAL-LISTP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 1 (:TYPE-PRESCRIPTION TER::TERMP-NULLP))
 (1 1 (:TYPE-PRESCRIPTION TER::NULLP))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(POL::UNIFORMP
 (80 40 (:TYPE-PRESCRIPTION TER::TERMP-NULLP))
 (68 68 (:REWRITE DEFAULT-CAR))
 (40 40 (:TYPE-PRESCRIPTION TER::NULLP))
 (28 28 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 )
(POL::COMPLETEP
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(POL::COMPLETEP-UNIFORMP
 (71 71 (:REWRITE DEFAULT-CDR))
 (48 24 (:REWRITE DEFAULT-+-2))
 (24 24 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE DEFAULT-+-1))
 )
(POL::UNIFORMP-COMPLETEP
 (66 33 (:REWRITE DEFAULT-+-2))
 (33 33 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE POL::COMPLETEP-UNIFORMP))
 )
(POL::UNIFORMP-IFF-COMPLETEP
 (25 5 (:DEFINITION LEN))
 (24 1 (:DEFINITION POL::UNIFORMP))
 (15 1 (:DEFINITION MON::COMPATIBLEP))
 (14 14 (:REWRITE DEFAULT-CDR))
 (10 5 (:REWRITE DEFAULT-+-2))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (9 1 (:DEFINITION POL::COMPLETEP))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE DEFAULT-+-1))
 )