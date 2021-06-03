(VL::VL-ALWAYS-CHECK-STYLE
 (61 5 (:REWRITE VL::VL-WARNINGLIST-P-WHEN-NOT-CONSP))
 (37 1 (:REWRITE SUBSETP-OF-CONS))
 (32 2 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (28 14 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (28 2 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (24 8 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (19 3 (:REWRITE VL::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (18 8 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (16 16 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (15 3 (:REWRITE VL::VL-ALWAYS-P-BY-TAG-WHEN-VL-MODELEMENT-P))
 (15 3 (:REWRITE VL::VL-ALWAYS-P-BY-TAG-WHEN-VL-CTXELEMENT-P))
 (14 14 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (14 14 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (14 2 (:REWRITE VL::VL-WARNING-P-WHEN-MEMBER-EQUAL-OF-VL-WARNINGLIST-P))
 (8 8 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (8 8 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (8 8 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (8 8 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (8 8 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (8 8 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (8 8 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (8 8 (:REWRITE CONSP-BY-LEN))
 (7 7 (:REWRITE SUBSETP-TRANS2))
 (7 7 (:REWRITE SUBSETP-TRANS))
 (6 6 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (6 6 (:REWRITE VL::VL-ALWAYS-P-WHEN-MEMBER-EQUAL-OF-VL-ALWAYSLIST-P))
 (3 3 (:REWRITE-QUOTED-CONSTANT SYMBOL-FIX-UNDER-SYMBOL-EQUIV))
 (3 3 (:REWRITE SUBSETP-MEMBER . 2))
 (3 3 (:REWRITE SUBSETP-MEMBER . 1))
 (3 3 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE-QUOTED-CONSTANT VL::MAYBE-STRING-FIX-UNDER-MAYBE-STRING-EQUIV))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(VL::VL-WARNINGLIST-P-OF-VL-ALWAYS-CHECK-STYLE
 (148 11 (:REWRITE VL::VL-WARNINGLIST-P-WHEN-NOT-CONSP))
 (23 9 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (22 22 (:REWRITE VL::VL-WARNINGLIST-P-WHEN-SUBSETP-EQUAL))
 (18 18 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (18 18 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (12 6 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (9 9 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (9 9 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (9 9 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (9 9 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (9 9 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (9 9 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (9 9 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (9 9 (:REWRITE CONSP-BY-LEN))
 (7 7 (:REWRITE-QUOTED-CONSTANT SYMBOL-FIX-UNDER-SYMBOL-EQUIV))
 (6 6 (:REWRITE VL::VL-WARNING-P-WHEN-MEMBER-EQUAL-OF-VL-WARNINGLIST-P))
 (6 6 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (6 6 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (5 5 (:REWRITE-QUOTED-CONSTANT VL::MAYBE-STRING-FIX-UNDER-MAYBE-STRING-EQUIV))
 (4 4 (:TYPE-PRESCRIPTION VL::VL-ALWAYSTYPE-FIX$INLINE))
 )
(VL::VL-ALWAYSLIST-CHECK-STYLE
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (16 8 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (14 1 (:REWRITE VL::VL-WARNINGLIST-P-WHEN-NOT-CONSP))
 (14 1 (:REWRITE VL::VL-ALWAYSLIST-P-WHEN-NOT-CONSP))
 (10 10 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 8 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (8 8 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (8 8 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (8 8 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (8 8 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (8 8 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (8 8 (:REWRITE CONSP-BY-LEN))
 (5 1 (:REWRITE VL::VL-ALWAYS-P-BY-TAG-WHEN-VL-MODELEMENT-P))
 (5 1 (:REWRITE VL::VL-ALWAYS-P-BY-TAG-WHEN-VL-CTXELEMENT-P))
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (4 2 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (4 1 (:REWRITE VL::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (3 3 (:REWRITE SUBSETP-TRANS2))
 (3 3 (:REWRITE SUBSETP-TRANS))
 (2 2 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (1 1 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(VL::VL-WARNINGLIST-P-OF-VL-ALWAYSLIST-CHECK-STYLE
 (19 1 (:REWRITE VL::VL-WARNINGLIST-FIX-WHEN-VL-WARNINGLIST-P))
 (14 1 (:REWRITE VL::VL-WARNINGLIST-P-WHEN-NOT-CONSP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (4 2 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (2 2 (:REWRITE VL::VL-WARNINGLIST-P-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (2 2 (:REWRITE CONSP-BY-LEN))
 )
(VL::VL-GENBLOB-ALWAYSSTYLE
 (116 8 (:REWRITE VL::VL-GENCASELIST-FIX-WHEN-VL-GENCASELIST-P))
 (84 6 (:REWRITE VL::VL-GENCASELIST-P-WHEN-NOT-CONSP))
 (42 16 (:REWRITE DEFAULT-<-2))
 (42 16 (:REWRITE DEFAULT-<-1))
 (36 8 (:REWRITE DEFAULT-CDR))
 (32 16 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (28 28 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (28 28 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (18 6 (:REWRITE DEFAULT-+-1))
 (16 16 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (16 16 (:META CANCEL_PLUS-LESSP-CORRECT))
 (16 16 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (16 6 (:REWRITE DEFAULT-+-2))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 12 (:REWRITE VL::VL-GENCASELIST-P-WHEN-SUBSETP-EQUAL))
 (12 12 (:REWRITE CONSP-BY-LEN))
 (10 10 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (10 10 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (10 10 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (10 10 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (10 10 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (10 10 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (6 6 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (6 2 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (5 5 (:REWRITE-QUOTED-CONSTANT VL::VL-SCOPETYPE-FIX-UNDER-VL-SCOPETYPE-EQUIV))
 (4 4 (:REWRITE-QUOTED-CONSTANT VL::VL-MAYBE-SCOPEID-FIX-UNDER-VL-MAYBE-SCOPEID-EQUIV))
 (4 2 (:REWRITE CONSP-OF-CAR-WHEN-CONS-LISTP))
 (4 2 (:REWRITE VL::CONSP-CAR-OF-VL-GENCASELIST-FIX))
 (2 2 (:REWRITE-QUOTED-CONSTANT VL::VL-GENELEMENTLIST-FIX-UNDER-VL-GENELEMENTLIST-EQUIV))
 )
(VL::VL-GENBLOB-ALWAYSSTYLE-FLAG
 (116 8 (:REWRITE VL::VL-GENCASELIST-FIX-WHEN-VL-GENCASELIST-P))
 (92 26 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (84 6 (:REWRITE VL::VL-GENCASELIST-P-WHEN-NOT-CONSP))
 (52 2 (:TYPE-PRESCRIPTION RETURN-LAST))
 (42 16 (:REWRITE DEFAULT-<-2))
 (42 16 (:REWRITE DEFAULT-<-1))
 (35 8 (:REWRITE DEFAULT-CDR))
 (28 28 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (28 28 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (26 26 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (26 26 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (20 20 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (20 10 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (18 6 (:REWRITE DEFAULT-+-1))
 (16 16 (:META CANCEL_PLUS-LESSP-CORRECT))
 (16 6 (:REWRITE DEFAULT-+-2))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 12 (:REWRITE VL::VL-GENCASELIST-P-WHEN-SUBSETP-EQUAL))
 (12 12 (:REWRITE CONSP-BY-LEN))
 (10 10 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (10 10 (:REWRITE SET::IN-SET))
 (10 10 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (10 10 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (10 10 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (10 10 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (10 10 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (10 10 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (6 6 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (5 5 (:REWRITE-QUOTED-CONSTANT VL::VL-SCOPETYPE-FIX-UNDER-VL-SCOPETYPE-EQUIV))
 (5 2 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (4 4 (:REWRITE-QUOTED-CONSTANT VL::VL-MAYBE-SCOPEID-FIX-UNDER-VL-MAYBE-SCOPEID-EQUIV))
 (4 2 (:REWRITE CONSP-OF-CAR-WHEN-CONS-LISTP))
 (4 2 (:REWRITE VL::CONSP-CAR-OF-VL-GENCASELIST-FIX))
 (2 2 (:TYPE-PRESCRIPTION THROW-NONEXEC-ERROR))
 (2 2 (:REWRITE-QUOTED-CONSTANT VL::VL-GENELEMENTLIST-FIX-UNDER-VL-GENELEMENTLIST-EQUIV))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(VL::VL-GENBLOB-ALWAYSSTYLE-FLAG-EQUIVALENCES)
(VL::FLAG-LEMMA-FOR-RETURN-TYPE-OF-VL-GENBLOB-ALWAYSSTYLE.WARNINGS
 (1428 102 (:REWRITE VL::VL-WARNINGLIST-P-WHEN-NOT-CONSP))
 (1176 84 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (981 84 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (600 600 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (600 600 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (355 31 (:REWRITE VL::VL-GENCASELIST-FIX-WHEN-VL-GENCASELIST-P))
 (300 70 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (298 298 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (298 298 (:REWRITE CONSP-BY-LEN))
 (289 289 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (289 289 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (289 289 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (289 289 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (289 289 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (289 289 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (252 18 (:REWRITE VL::VL-GENCASELIST-P-WHEN-NOT-CONSP))
 (145 24 (:REWRITE DEFAULT-CDR))
 (114 6 (:REWRITE VL::VL-WARNINGLIST-FIX-WHEN-VL-WARNINGLIST-P))
 (87 87 (:REWRITE SUBSETP-TRANS2))
 (87 87 (:REWRITE SUBSETP-TRANS))
 (80 80 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (80 40 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (70 70 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (70 70 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (40 40 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (40 40 (:REWRITE SET::IN-SET))
 (36 36 (:TYPE-PRESCRIPTION VL::VL-GENCASELIST-P))
 (36 36 (:REWRITE VL::VL-GENCASELIST-P-WHEN-SUBSETP-EQUAL))
 (27 27 (:REWRITE DEFAULT-CAR))
 (27 27 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (22 9 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (18 9 (:REWRITE CONSP-OF-CAR-WHEN-CONS-LISTP))
 (18 9 (:REWRITE VL::CONSP-CAR-OF-VL-GENCASELIST-FIX))
 (9 9 (:TYPE-PRESCRIPTION CONS-LISTP))
 (9 9 (:TYPE-PRESCRIPTION ATOM-LISTP))
 (6 6 (:REWRITE-QUOTED-CONSTANT VL::VL-SCOPETYPE-FIX-UNDER-VL-SCOPETYPE-EQUIV))
 (3 3 (:REWRITE-QUOTED-CONSTANT VL::VL-MAYBE-SCOPEID-FIX-UNDER-VL-MAYBE-SCOPEID-EQUIV))
 (3 3 (:REWRITE-QUOTED-CONSTANT VL::VL-GENELEMENTLIST-FIX-UNDER-VL-GENELEMENTLIST-EQUIV))
 )
(VL::RETURN-TYPE-OF-VL-GENBLOB-ALWAYSSTYLE.WARNINGS)
(VL::RETURN-TYPE-OF-VL-GENERATES-ALWAYSSTYLE.WARNINGS)
(VL::RETURN-TYPE-OF-VL-GENBLOB-ALWAYSSTYLE-GENBLOCK.WARNINGS)
(VL::RETURN-TYPE-OF-VL-GENBLOB-ALWAYSSTYLE-GENERATE.WARNINGS)
(VL::RETURN-TYPE-OF-VL-GENBLOB-ALWAYSSTYLE-GENCASELIST.WARNINGS)
(VL::RETURN-TYPE-OF-VL-GENBLOB-ALWAYSSTYLE-GENBLOCKLIST.WARNINGS)
(VL::VL-GENBLOB-ALWAYSSTYLE
 (275 11 (:REWRITE VL::VL-GENELEMENT-P-BY-TAG-WHEN-VL-CTXELEMENT-P))
 (194 97 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (102 7 (:REWRITE VL::VL-WARNINGLIST-P-WHEN-NOT-CONSP))
 (97 97 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (97 97 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (78 78 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (78 78 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (71 5 (:REWRITE DEFAULT-CDR))
 (66 66 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (63 6 (:REWRITE VL::VL-GENCASELIST-P-WHEN-NOT-CONSP))
 (54 6 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (36 6 (:REWRITE VL::CONSP-OF-CAR-WHEN-VL-COMMENTMAP-P))
 (29 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (29 14 (:REWRITE DEFAULT-CAR))
 (24 6 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (19 19 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (19 19 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (19 19 (:REWRITE CONSP-BY-LEN))
 (16 16 (:REWRITE SUBSETP-TRANS2))
 (16 16 (:REWRITE SUBSETP-TRANS))
 (15 2 (:REWRITE VL::VL-GENELEMENTLIST-P-WHEN-NOT-CONSP))
 (14 14 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (14 1 (:REWRITE VL::VL-GENBLOCKLIST-P-WHEN-NOT-CONSP))
 (12 12 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (12 12 (:TYPE-PRESCRIPTION ALISTP))
 (12 12 (:REWRITE VL::VL-COMMENTMAP-P-WHEN-SUBSETP-EQUAL))
 (12 6 (:REWRITE CONSP-OF-CAR-WHEN-CONS-LISTP))
 (12 6 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (6 6 (:REWRITE VL::VL-COMMENTMAP-P-WHEN-NOT-CONSP))
 (6 6 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (6 6 (:REWRITE ALISTP-WHEN-ATOM))
 (6 6 (:REWRITE VL::ALISTP-WHEN-ALL-HAVE-LEN))
 (4 2 (:REWRITE VL::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (2 2 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 )
(VL::FLAG-LEMMA-FOR-VL-GENBLOB-ALWAYSSTYLE-OF-VL-GENBLOB-FIX-X
 (2336 574 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (1960 140 (:REWRITE VL::VL-WARNINGLIST-P-WHEN-NOT-CONSP))
 (1104 35 (:REWRITE VL::VL-GENELEMENT-FIX-WHEN-VL-GENELEMENT-P))
 (875 35 (:REWRITE VL::VL-GENELEMENT-P-BY-TAG-WHEN-VL-CTXELEMENT-P))
 (798 798 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (588 294 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (574 574 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (574 574 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (504 504 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (504 504 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (448 32 (:REWRITE VL::VL-GENCASELIST-P-WHEN-NOT-CONSP))
 (294 294 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (294 294 (:REWRITE SET::IN-SET))
 (294 90 (:REWRITE DEFAULT-CDR))
 (280 280 (:REWRITE VL::VL-WARNINGLIST-P-WHEN-SUBSETP-EQUAL))
 (238 238 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (238 238 (:REWRITE CONSP-BY-LEN))
 (226 226 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (226 226 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (226 226 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (226 226 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (226 226 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (226 226 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (195 39 (:REWRITE VL::VL-GENELEMENTLIST-P-WHEN-NOT-CONSP))
 (195 39 (:REWRITE VL::VL-GENBLOCKLIST-P-WHEN-NOT-CONSP))
 (194 154 (:REWRITE DEFAULT-CAR))
 (154 154 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (78 78 (:REWRITE VL::VL-GENELEMENTLIST-P-WHEN-SUBSETP-EQUAL))
 (78 78 (:REWRITE VL::VL-GENBLOCKLIST-P-WHEN-SUBSETP-EQUAL))
 (70 70 (:TYPE-PRESCRIPTION VL::VL-GENELEMENT-P))
 (70 70 (:REWRITE VL::VL-GENELEMENT-P-WHEN-MEMBER-EQUAL-OF-VL-GENELEMENTLIST-P))
 (64 64 (:REWRITE VL::VL-GENCASELIST-P-WHEN-SUBSETP-EQUAL))
 (54 9 (:REWRITE VL::VL-GENELEMENTLIST-P-OF-CDR-WHEN-VL-GENELEMENTLIST-P))
 (54 9 (:REWRITE VL::VL-GENELEMENT-P-OF-CAR-WHEN-VL-GENELEMENTLIST-P))
 (54 9 (:REWRITE VL::VL-GENBLOCKLIST-P-OF-CDR-WHEN-VL-GENBLOCKLIST-P))
 (54 9 (:REWRITE VL::VL-GENBLOCK-P-OF-CAR-WHEN-VL-GENBLOCKLIST-P))
 (40 40 (:REWRITE-QUOTED-CONSTANT VL::VL-SCOPETYPE-FIX-UNDER-VL-SCOPETYPE-EQUIV))
 (32 32 (:REWRITE VL::VL-GENBLOCK-P-WHEN-MEMBER-EQUAL-OF-VL-GENBLOCKLIST-P))
 (32 12 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (24 12 (:REWRITE CONSP-OF-CAR-WHEN-CONS-LISTP))
 (24 12 (:REWRITE VL::CONSP-CAR-OF-VL-GENCASELIST-FIX))
 (20 20 (:REWRITE-QUOTED-CONSTANT VL::VL-MAYBE-SCOPEID-FIX-UNDER-VL-MAYBE-SCOPEID-EQUIV))
 (18 18 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (16 16 (:REWRITE-QUOTED-CONSTANT VL::VL-GENELEMENTLIST-FIX-UNDER-VL-GENELEMENTLIST-EQUIV))
 )
(VL::VL-GENBLOB-ALWAYSSTYLE-OF-VL-GENBLOB-FIX-X)
(VL::VL-GENBLOB-ALWAYSSTYLE-OF-VL-WARNINGLIST-FIX-WARNINGS)
(VL::VL-GENERATES-ALWAYSSTYLE-OF-VL-GENELEMENTLIST-FIX-X)
(VL::VL-GENERATES-ALWAYSSTYLE-OF-VL-WARNINGLIST-FIX-WARNINGS)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENBLOCK-OF-VL-GENBLOCK-FIX-X)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENBLOCK-OF-VL-WARNINGLIST-FIX-WARNINGS)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENERATE-OF-VL-GENELEMENT-FIX-X)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENERATE-OF-VL-WARNINGLIST-FIX-WARNINGS)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENCASELIST-OF-VL-GENCASELIST-FIX-X)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENCASELIST-OF-VL-WARNINGLIST-FIX-WARNINGS)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENBLOCKLIST-OF-VL-GENBLOCKLIST-FIX-X)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENBLOCKLIST-OF-VL-WARNINGLIST-FIX-WARNINGS)
(VL::VL-GENBLOB-ALWAYSSTYLE-VL-GENBLOB-EQUIV-CONGRUENCE-ON-X)
(VL::VL-GENBLOB-ALWAYSSTYLE-VL-WARNINGLIST-EQUIV-CONGRUENCE-ON-WARNINGS)
(VL::VL-GENERATES-ALWAYSSTYLE-VL-GENELEMENTLIST-EQUIV-CONGRUENCE-ON-X)
(VL::VL-GENERATES-ALWAYSSTYLE-VL-WARNINGLIST-EQUIV-CONGRUENCE-ON-WARNINGS)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENBLOCK-VL-GENBLOCK-EQUIV-CONGRUENCE-ON-X)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENBLOCK-VL-WARNINGLIST-EQUIV-CONGRUENCE-ON-WARNINGS)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENERATE-VL-GENELEMENT-EQUIV-CONGRUENCE-ON-X)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENERATE-VL-WARNINGLIST-EQUIV-CONGRUENCE-ON-WARNINGS)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENCASELIST-VL-GENCASELIST-EQUIV-CONGRUENCE-ON-X)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENCASELIST-VL-WARNINGLIST-EQUIV-CONGRUENCE-ON-WARNINGS)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENBLOCKLIST-VL-GENBLOCKLIST-EQUIV-CONGRUENCE-ON-X)
(VL::VL-GENBLOB-ALWAYSSTYLE-GENBLOCKLIST-VL-WARNINGLIST-EQUIV-CONGRUENCE-ON-WARNINGS)
(VL::VL-MODULE-ALWAYSSTYLE)
(VL::VL-MODULE-P-OF-VL-MODULE-ALWAYSSTYLE)
(VL::VL-INTERFACE-ALWAYSSTYLE)
(VL::VL-INTERFACE-P-OF-VL-INTERFACE-ALWAYSSTYLE)
(VL::VL-MODULELIST-ALWAYSSTYLE-EXEC)
(VL::VL-MODULELIST-ALWAYSSTYLE-NREV)
(VL::VL-MODULELIST-ALWAYSSTYLE)
(VL::VL-MODULELIST-P-OF-VL-MODULELIST-ALWAYSSTYLE
 (32 1 (:REWRITE SUBSETP-OF-CONS))
 (18 6 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (16 2 (:REWRITE VL::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (12 2 (:REWRITE VL::VL-MODULELIST-P-WHEN-NOT-CONSP))
 (5 2 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (3 3 (:REWRITE SUBSETP-TRANS2))
 (3 3 (:REWRITE SUBSETP-TRANS))
 (2 2 (:REWRITE SUBSETP-MEMBER . 2))
 (2 2 (:REWRITE SUBSETP-MEMBER . 1))
 (2 2 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (2 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (1 1 (:REWRITE CONSP-BY-LEN))
 (1 1 (:REWRITE CAR-WHEN-ALL-EQUALP))
 )
(VL::VL-MODULELIST-ALWAYSSTYLE-NIL-PRESERVINGP-LEMMA)
(VL::VL-MODULELIST-ALWAYSSTYLE-OF-UPDATE-NTH
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (10 5 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (5 5 (:REWRITE CONSP-BY-LEN))
 (5 5 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(VL::VL-MODULELIST-ALWAYSSTYLE-OF-REVAPPEND)
(VL::NTHCDR-OF-VL-MODULELIST-ALWAYSSTYLE)
(VL::NTH-OF-VL-MODULELIST-ALWAYSSTYLE)
(VL::VL-MODULELIST-ALWAYSSTYLE-OF-TAKE)
(VL::SET-EQUIV-CONGRUENCE-OVER-VL-MODULELIST-ALWAYSSTYLE)
(VL::SUBSETP-OF-VL-MODULELIST-ALWAYSSTYLE-WHEN-SUBSETP)
(VL::MEMBER-OF-VL-MODULE-ALWAYSSTYLE-IN-VL-MODULELIST-ALWAYSSTYLE)
(VL::VL-MODULELIST-ALWAYSSTYLE-NREV-REMOVAL
 (202 5 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (132 3 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (45 3 (:REWRITE |(equal 0 (len x))|))
 (42 3 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (42 3 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (42 3 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (42 3 (:REWRITE LEN-WHEN-ATOM))
 (39 3 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (36 3 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (34 34 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (34 34 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (34 17 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (26 26 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (18 3 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (17 17 (:REWRITE CONSP-BY-LEN))
 (12 3 (:REWRITE VL::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (6 6 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (6 6 (:REWRITE VL::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (6 6 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE VL::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (6 6 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE VL::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (6 6 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (6 6 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (6 6 (:LINEAR LEN-WHEN-PREFIXP))
 (6 3 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (6 3 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (6 3 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (3 3 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (3 3 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (3 3 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (3 3 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (3 3 (:REWRITE VL::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (3 3 (:REWRITE VL::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (3 3 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE VL::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (3 3 (:REWRITE VL::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (3 3 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE SET::IN-SET))
 (3 3 (:REWRITE FN-CHECK-DEF-FORMALS))
 (3 3 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (3 3 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (3 3 (:LINEAR INDEX-OF-<-LEN))
 (3 3 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (2 2 (:TYPE-PRESCRIPTION TYPE-OF-RCONS))
 (2 2 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(VL::VL-MODULELIST-ALWAYSSTYLE-EXEC-REMOVAL
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (10 5 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (5 5 (:REWRITE CONSP-BY-LEN))
 (5 5 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(VL::VL-MODULELIST-ALWAYSSTYLE-OF-REV)
(VL::VL-MODULELIST-ALWAYSSTYLE-OF-LIST-FIX)
(VL::VL-MODULELIST-ALWAYSSTYLE-OF-APPEND)
(VL::CDR-OF-VL-MODULELIST-ALWAYSSTYLE)
(VL::CAR-OF-VL-MODULELIST-ALWAYSSTYLE)
(VL::VL-MODULELIST-ALWAYSSTYLE-UNDER-IFF)
(VL::CONSP-OF-VL-MODULELIST-ALWAYSSTYLE)
(VL::LEN-OF-VL-MODULELIST-ALWAYSSTYLE)
(VL::TRUE-LISTP-OF-VL-MODULELIST-ALWAYSSTYLE)
(VL::VL-MODULELIST-ALWAYSSTYLE-WHEN-NOT-CONSP)
(VL::VL-MODULELIST-ALWAYSSTYLE-OF-CONS)
(VL::VL-MODULELIST-ALWAYSSTYLE-NREV
 (28 2 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (28 2 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (26 2 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (24 2 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (22 2 (:REWRITE VL::VL-MODULE-P-WHEN-VL-MAYBE-MODULE-P))
 (18 1 (:REWRITE VL::VL-MAYBE-MODULE-P-WHEN-VL-MODULE-P))
 (12 6 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (12 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (8 8 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (8 8 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (8 4 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (8 2 (:REWRITE VL::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (8 2 (:REWRITE VL::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 4 (:REWRITE VL::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (4 4 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE VL::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (4 4 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE VL::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (4 4 (:REWRITE CONSP-BY-LEN))
 (4 4 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (4 2 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (3 3 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (2 2 (:TYPE-PRESCRIPTION VL::VL-MAYBE-MODULE-P))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE VL::VL-MODULELIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (2 2 (:REWRITE VL::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (2 2 (:REWRITE VL::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (2 2 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE SUBSETP-TRANS2))
 (2 2 (:REWRITE SUBSETP-TRANS))
 (2 2 (:REWRITE VL::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (2 2 (:REWRITE VL::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (2 2 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE SET::IN-SET))
 (2 2 (:REWRITE FN-CHECK-DEF-FORMALS))
 (2 2 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(VL::VL-MODULELIST-ALWAYSSTYLE)
(VL::VL-MODULELIST-ALWAYSSTYLE-EXEC
 (22 2 (:REWRITE VL::VL-MODULE-P-WHEN-VL-MAYBE-MODULE-P))
 (18 1 (:REWRITE VL::VL-MAYBE-MODULE-P-WHEN-VL-MODULE-P))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (8 2 (:REWRITE VL::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (4 2 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (3 3 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (2 2 (:TYPE-PRESCRIPTION VL::VL-MAYBE-MODULE-P))
 (2 2 (:REWRITE VL::VL-MODULELIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE SUBSETP-TRANS2))
 (2 2 (:REWRITE SUBSETP-TRANS))
 (2 2 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (2 2 (:REWRITE CONSP-BY-LEN))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(VL::VL-INTERFACELIST-ALWAYSSTYLE-EXEC)
(VL::VL-INTERFACELIST-ALWAYSSTYLE-NREV)
(VL::VL-INTERFACELIST-ALWAYSSTYLE)
(VL::VL-INTERFACELIST-P-OF-VL-INTERFACELIST-ALWAYSSTYLE
 (32 1 (:REWRITE SUBSETP-OF-CONS))
 (18 6 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (16 2 (:REWRITE VL::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (12 2 (:REWRITE VL::VL-INTERFACELIST-P-WHEN-NOT-CONSP))
 (5 2 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (3 3 (:REWRITE SUBSETP-TRANS2))
 (3 3 (:REWRITE SUBSETP-TRANS))
 (2 2 (:REWRITE SUBSETP-MEMBER . 2))
 (2 2 (:REWRITE SUBSETP-MEMBER . 1))
 (2 2 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (2 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (1 1 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (1 1 (:REWRITE CONSP-BY-LEN))
 (1 1 (:REWRITE CAR-WHEN-ALL-EQUALP))
 )
(VL::VL-INTERFACELIST-ALWAYSSTYLE-NIL-PRESERVINGP-LEMMA)
(VL::VL-INTERFACELIST-ALWAYSSTYLE-OF-UPDATE-NTH
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (10 5 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (5 5 (:REWRITE CONSP-BY-LEN))
 (5 5 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(VL::VL-INTERFACELIST-ALWAYSSTYLE-OF-REVAPPEND)
(VL::NTHCDR-OF-VL-INTERFACELIST-ALWAYSSTYLE)
(VL::NTH-OF-VL-INTERFACELIST-ALWAYSSTYLE)
(VL::VL-INTERFACELIST-ALWAYSSTYLE-OF-TAKE)
(VL::SET-EQUIV-CONGRUENCE-OVER-VL-INTERFACELIST-ALWAYSSTYLE)
(VL::SUBSETP-OF-VL-INTERFACELIST-ALWAYSSTYLE-WHEN-SUBSETP)
(VL::MEMBER-OF-VL-INTERFACE-ALWAYSSTYLE-IN-VL-INTERFACELIST-ALWAYSSTYLE)
(VL::VL-INTERFACELIST-ALWAYSSTYLE-NREV-REMOVAL
 (202 5 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (132 3 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (45 3 (:REWRITE |(equal 0 (len x))|))
 (42 3 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (42 3 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (42 3 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (42 3 (:REWRITE LEN-WHEN-ATOM))
 (39 3 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (36 3 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (34 34 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (34 34 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (34 17 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (26 26 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (18 3 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (17 17 (:REWRITE CONSP-BY-LEN))
 (12 3 (:REWRITE VL::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (6 6 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (6 6 (:REWRITE VL::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (6 6 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE VL::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (6 6 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE VL::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (6 6 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (6 6 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (6 6 (:LINEAR LEN-WHEN-PREFIXP))
 (6 3 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (6 3 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (6 3 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (3 3 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (3 3 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (3 3 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (3 3 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (3 3 (:REWRITE VL::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (3 3 (:REWRITE VL::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (3 3 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE VL::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (3 3 (:REWRITE VL::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (3 3 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE SET::IN-SET))
 (3 3 (:REWRITE FN-CHECK-DEF-FORMALS))
 (3 3 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (3 3 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (3 3 (:LINEAR INDEX-OF-<-LEN))
 (3 3 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (2 2 (:TYPE-PRESCRIPTION TYPE-OF-RCONS))
 (2 2 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(VL::VL-INTERFACELIST-ALWAYSSTYLE-EXEC-REMOVAL
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (10 5 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (5 5 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (5 5 (:REWRITE CONSP-BY-LEN))
 (5 5 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(VL::VL-INTERFACELIST-ALWAYSSTYLE-OF-REV)
(VL::VL-INTERFACELIST-ALWAYSSTYLE-OF-LIST-FIX)
(VL::VL-INTERFACELIST-ALWAYSSTYLE-OF-APPEND)
(VL::CDR-OF-VL-INTERFACELIST-ALWAYSSTYLE)
(VL::CAR-OF-VL-INTERFACELIST-ALWAYSSTYLE)
(VL::VL-INTERFACELIST-ALWAYSSTYLE-UNDER-IFF)
(VL::CONSP-OF-VL-INTERFACELIST-ALWAYSSTYLE)
(VL::LEN-OF-VL-INTERFACELIST-ALWAYSSTYLE)
(VL::TRUE-LISTP-OF-VL-INTERFACELIST-ALWAYSSTYLE)
(VL::VL-INTERFACELIST-ALWAYSSTYLE-WHEN-NOT-CONSP)
(VL::VL-INTERFACELIST-ALWAYSSTYLE-OF-CONS)
(VL::VL-INTERFACELIST-ALWAYSSTYLE-NREV
 (28 2 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (28 2 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (26 2 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (24 2 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (12 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (8 8 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (8 8 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (8 4 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (8 2 (:REWRITE VL::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 4 (:REWRITE VL::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (4 4 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE VL::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (4 4 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE VL::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (4 4 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (4 4 (:REWRITE CONSP-BY-LEN))
 (4 4 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (4 2 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (4 1 (:REWRITE VL::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE VL::VL-INTERFACELIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (2 2 (:REWRITE VL::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (2 2 (:REWRITE VL::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (2 2 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE VL::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (2 2 (:REWRITE VL::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (2 2 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE SET::IN-SET))
 (2 2 (:REWRITE FN-CHECK-DEF-FORMALS))
 (2 2 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE CAR-WHEN-ALL-EQUALP))
 )
(VL::VL-INTERFACELIST-ALWAYSSTYLE)
(VL::VL-INTERFACELIST-ALWAYSSTYLE-EXEC
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (4 2 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (4 1 (:REWRITE VL::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (2 2 (:REWRITE VL::VL-INTERFACELIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (2 2 (:REWRITE CONSP-BY-LEN))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE CAR-WHEN-ALL-EQUALP))
 )
(VL::VL-DESIGN-ALWAYSSTYLE)
(VL::VL-DESIGN-P-OF-VL-DESIGN-ALWAYSSTYLE)