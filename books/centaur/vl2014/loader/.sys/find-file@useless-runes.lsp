(VL2014::VL-ENDS-WITH-DIRECTORY-SEPARATORP
 (120 2 (:REWRITE VL2014::STRINGP-WHEN-TRUE-LISTP))
 (56 9 (:REWRITE LEN-WHEN-ATOM))
 (28 2 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (26 26 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (26 26 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (26 2 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (24 2 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (16 2 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (12 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (10 10 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 2 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (5 3 (:LINEAR STR::STRRPOS-UPPER-BOUND-STRONGER))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (4 4 (:TYPE-PRESCRIPTION STRING-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 4 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
 (4 4 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (4 4 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (4 4 (:REWRITE STRINGP-WHEN-MEMBER-EQUAL-OF-STRING-LISTP))
 (4 4 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (4 4 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (4 2 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 2 (:REWRITE DEFAULT-+-2))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (3 3 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 2 (:TYPE-PRESCRIPTION STR::OCT-DIGIT-CHAR-LISTP))
 (2 2 (:TYPE-PRESCRIPTION STR::HEX-DIGIT-CHAR-LISTP))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:TYPE-PRESCRIPTION STR::DEC-DIGIT-CHAR-LISTP))
 (2 2 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION BOOLEAN-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (2 2 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (2 2 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (2 2 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (2 2 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (2 2 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE SET::IN-SET))
 (2 2 (:REWRITE FN-CHECK-DEF-FORMALS))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE CONSP-BY-LEN))
 (2 2 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (2 2 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (2 2 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (2 2 (:LINEAR LEN-WHEN-PREFIXP))
 (2 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:LINEAR LEQ-POSITION-EQUAL-LEN))
 (1 1 (:LINEAR INDEX-OF-<-LEN))
 (1 1 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 )
(VL2014::VL-EXTEND-PATHNAME
 (120 2 (:REWRITE VL2014::STRINGP-WHEN-TRUE-LISTP))
 (28 2 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (26 2 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (24 2 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (16 2 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (12 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (10 10 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 2 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (5 5 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 4 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
 (4 4 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (4 4 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (4 4 (:REWRITE STRINGP-WHEN-MEMBER-EQUAL-OF-STRING-LISTP))
 (4 4 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (4 4 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (4 2 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (4 2 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 2 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (4 2 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (2 2 (:TYPE-PRESCRIPTION STR::OCT-DIGIT-CHAR-LISTP))
 (2 2 (:TYPE-PRESCRIPTION STR::HEX-DIGIT-CHAR-LISTP))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:TYPE-PRESCRIPTION STR::DEC-DIGIT-CHAR-LISTP))
 (2 2 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION BOOLEAN-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (2 2 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (2 2 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (2 2 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (2 2 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (2 2 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (2 2 (:REWRITE SET::IN-SET))
 (2 2 (:REWRITE FN-CHECK-DEF-FORMALS))
 (2 2 (:REWRITE CONSP-BY-LEN))
 (2 2 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 )
(VL2014::STRINGP-OF-VL-EXTEND-PATHNAME)
(VL2014::VL-FIND-FILE-AUX)
(VL2014::STATE-P1-OF-VL-FIND-FILE-AUX
 (12 12 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (12 12 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (12 6 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (6 6 (:REWRITE CONSP-BY-LEN))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(VL2014::STRINGP-OF-VL-FIND-FILE-AUX
 (301 6 (:REWRITE VL2014::STRINGP-WHEN-TRUE-LISTP))
 (70 5 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (65 5 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (60 5 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (40 5 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (34 34 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (34 34 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (34 17 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (32 32 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (30 5 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (20 5 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (17 17 (:REWRITE CONSP-BY-LEN))
 (16 16 (:REWRITE DEFAULT-CAR))
 (16 16 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (12 12 (:REWRITE STRINGP-WHEN-MEMBER-EQUAL-OF-STRING-LISTP))
 (12 6 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (10 10 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (10 10 (:TYPE-PRESCRIPTION STRING-LISTP))
 (10 10 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
 (10 10 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (10 10 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (10 10 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (10 10 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (10 10 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (10 10 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (10 5 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (10 5 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (10 5 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (10 5 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (10 5 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (8 8 (:REWRITE DEFAULT-CDR))
 (6 6 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (6 6 (:REWRITE SET::IN-SET))
 (6 1 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (5 5 (:TYPE-PRESCRIPTION STR::OCT-DIGIT-CHAR-LISTP))
 (5 5 (:TYPE-PRESCRIPTION STR::HEX-DIGIT-CHAR-LISTP))
 (5 5 (:TYPE-PRESCRIPTION STR::DEC-DIGIT-CHAR-LISTP))
 (5 5 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (5 5 (:TYPE-PRESCRIPTION BOOLEAN-LISTP))
 (5 5 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (5 5 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (5 5 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (5 5 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (5 5 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (5 5 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (5 5 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (5 5 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (5 5 (:REWRITE FN-CHECK-DEF-FORMALS))
 (5 5 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(VL2014::VL-FIND-FILE-AUX
 (209 3 (:REWRITE VL2014::STRINGP-WHEN-TRUE-LISTP))
 (52 5 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (50 3 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (47 12 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (41 3 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (37 3 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (36 3 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (18 18 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (18 3 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (12 12 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (11 11 (:REWRITE SUBSETP-MEMBER . 2))
 (11 11 (:REWRITE SUBSETP-MEMBER . 1))
 (10 10 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (9 9 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (9 1 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (8 5 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (6 6 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (6 6 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (6 6 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (6 6 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (6 3 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (6 3 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (6 1 (:REWRITE VL2014::TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
 (5 5 (:REWRITE SUBSETP-MEMBER . 4))
 (5 5 (:REWRITE SUBSETP-MEMBER . 3))
 (5 5 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (5 5 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (5 5 (:REWRITE INTERSECTP-MEMBER . 3))
 (5 5 (:REWRITE INTERSECTP-MEMBER . 2))
 (5 5 (:REWRITE FN-CHECK-DEF-FORMALS))
 (4 1 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (3 3 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (3 3 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (3 3 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (3 3 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (3 3 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (3 3 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE SET::IN-SET))
 (3 3 (:REWRITE CONSP-BY-LEN))
 (3 3 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (2 2 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (2 2 (:TYPE-PRESCRIPTION ALISTP))
 (2 2 (:REWRITE VL2014::TRUE-LIST-LISTP-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (2 1 (:REWRITE VL2014::SYMBOL-LISTP-OF-CAR-WHEN-SYMBOL-LIST-LISTP))
 (2 1 (:REWRITE VL2014::STRING-LISTP-OF-CAR-WHEN-STRING-LIST-LISTP))
 (2 1 (:REWRITE CONSP-OF-CAR-WHEN-CONS-LISTP))
 (2 1 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (1 1 (:REWRITE VL2014::TRUE-LIST-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE ALISTP-WHEN-ATOM))
 (1 1 (:REWRITE VL2014::ALISTP-WHEN-ALL-HAVE-LEN))
 )
(VL2014::VL-FIND-FILE)
(VL2014::STATE-P1-OF-VL-FIND-FILE
 (60 1 (:REWRITE VL2014::STRINGP-WHEN-TRUE-LISTP))
 (14 1 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (13 1 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (12 4 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (12 1 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (8 2 (:DEFINITION STATE-P))
 (8 1 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (6 1 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION STATE-P))
 (4 1 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:TYPE-PRESCRIPTION STRING-LISTP))
 (2 2 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (2 2 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
 (2 2 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (2 2 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (2 2 (:REWRITE STRINGP-WHEN-MEMBER-EQUAL-OF-STRING-LISTP))
 (2 2 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (2 2 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (2 1 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (2 1 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (2 1 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (2 1 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (2 1 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (2 1 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (2 1 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (1 1 (:TYPE-PRESCRIPTION STR::OCT-DIGIT-CHAR-LISTP))
 (1 1 (:TYPE-PRESCRIPTION STR::HEX-DIGIT-CHAR-LISTP))
 (1 1 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (1 1 (:TYPE-PRESCRIPTION STR::DEC-DIGIT-CHAR-LISTP))
 (1 1 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (1 1 (:TYPE-PRESCRIPTION BOOLEAN-LISTP))
 (1 1 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (1 1 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (1 1 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (1 1 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (1 1 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (1 1 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (1 1 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE SET::IN-SET))
 (1 1 (:REWRITE FN-CHECK-DEF-FORMALS))
 (1 1 (:REWRITE CONSP-BY-LEN))
 (1 1 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 )
(VL2014::STRINGP-OF-VL-FIND-FILE
 (180 3 (:REWRITE VL2014::STRINGP-WHEN-TRUE-LISTP))
 (42 3 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (39 3 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (36 3 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (24 3 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (18 3 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 3 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (6 6 (:TYPE-PRESCRIPTION STRING-LISTP))
 (6 6 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
 (6 6 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (6 6 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (6 6 (:REWRITE STRINGP-WHEN-MEMBER-EQUAL-OF-STRING-LISTP))
 (6 6 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (6 6 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (6 6 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (6 6 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (6 3 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (6 3 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (6 3 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (6 1 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (3 3 (:TYPE-PRESCRIPTION STR::OCT-DIGIT-CHAR-LISTP))
 (3 3 (:TYPE-PRESCRIPTION STR::HEX-DIGIT-CHAR-LISTP))
 (3 3 (:TYPE-PRESCRIPTION STR::DEC-DIGIT-CHAR-LISTP))
 (3 3 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (3 3 (:TYPE-PRESCRIPTION BOOLEAN-LISTP))
 (3 3 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (3 3 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (3 3 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (3 3 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (3 3 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (3 3 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (3 3 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE FN-CHECK-DEF-FORMALS))
 (3 3 (:REWRITE CONSP-BY-LEN))
 (3 3 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(VL2014::VL-FIND-BASENAME/EXTENSION-AUX
 (1606 26 (:REWRITE VL2014::STRINGP-WHEN-TRUE-LISTP))
 (410 26 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (338 26 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (333 35 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (312 26 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (213 52 (:REWRITE STRINGP-WHEN-MEMBER-EQUAL-OF-STRING-LISTP))
 (208 26 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (157 49 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (156 26 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (145 145 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (114 114 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (114 114 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (86 37 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (70 70 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (58 35 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (53 53 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (52 52 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (52 52 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (52 52 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (52 52 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (52 52 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (52 26 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (52 26 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (52 26 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (52 26 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (52 26 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (49 49 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (46 46 (:REWRITE SUBSETP-MEMBER . 2))
 (46 46 (:REWRITE SUBSETP-MEMBER . 1))
 (40 40 (:REWRITE CONSP-BY-LEN))
 (35 35 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (35 35 (:REWRITE FN-CHECK-DEF-FORMALS))
 (28 28 (:REWRITE DEFAULT-CDR))
 (26 26 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (26 26 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (26 26 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (26 26 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (26 26 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (26 26 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (26 26 (:REWRITE SET::IN-SET))
 (26 26 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (20 20 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (12 12 (:REWRITE SUBSETP-TRANS2))
 (12 12 (:REWRITE SUBSETP-TRANS))
 (12 12 (:REWRITE SUBSETP-MEMBER . 4))
 (12 12 (:REWRITE SUBSETP-MEMBER . 3))
 (12 12 (:REWRITE INTERSECTP-MEMBER . 3))
 (12 12 (:REWRITE INTERSECTP-MEMBER . 2))
 (3 3 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (3 3 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(VL2014::TRUE-LISTP-OF-VL-FIND-BASENAME/EXTENSION-AUX
 (56 4 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (52 4 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (48 4 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (32 4 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (24 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (16 8 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (16 4 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (8 8 (:TYPE-PRESCRIPTION STRING-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 8 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
 (8 8 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (8 8 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (8 8 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (8 8 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (8 8 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (8 8 (:REWRITE CONSP-BY-LEN))
 (8 8 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (8 4 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (8 4 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (8 4 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (8 4 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (8 4 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (4 4 (:TYPE-PRESCRIPTION STR::OCT-DIGIT-CHAR-LISTP))
 (4 4 (:TYPE-PRESCRIPTION STR::HEX-DIGIT-CHAR-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:TYPE-PRESCRIPTION STR::DEC-DIGIT-CHAR-LISTP))
 (4 4 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (4 4 (:TYPE-PRESCRIPTION BOOLEAN-LISTP))
 (4 4 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (4 4 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (4 4 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (4 4 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (4 4 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (4 4 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (4 4 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (4 4 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:REWRITE FN-CHECK-DEF-FORMALS))
 (4 4 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(VL2014::STATE-P1-OF-VL-FIND-BASENAME/EXTENSION-AUX
 (26 26 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (26 26 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (26 13 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (16 16 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE DEFAULT-CAR))
 (15 15 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (13 13 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (13 13 (:REWRITE CONSP-BY-LEN))
 (7 7 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(VL2014::STRING-LISTP-OF-VL-FIND-BASENAME/EXTENSION-AUX
 (126 5 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (48 6 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (46 20 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (46 5 (:REWRITE MEMBER-WHEN-ATOM))
 (40 40 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (40 40 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (39 21 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (28 7 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (26 1 (:REWRITE SUBSETP-OF-CONS))
 (14 14 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (11 11 (:REWRITE CONSP-BY-LEN))
 (11 5 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (10 10 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (10 9 (:REWRITE DEFAULT-CDR))
 (9 2 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (9 2 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (7 7 (:REWRITE SUBSETP-MEMBER . 2))
 (7 7 (:REWRITE SUBSETP-MEMBER . 1))
 (7 7 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (5 5 (:REWRITE SUBSETP-TRANS2))
 (5 5 (:REWRITE SUBSETP-TRANS))
 (5 5 (:REWRITE SUBSETP-MEMBER . 4))
 (5 5 (:REWRITE SUBSETP-MEMBER . 3))
 (5 5 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (5 5 (:REWRITE INTERSECTP-MEMBER . 3))
 (5 5 (:REWRITE INTERSECTP-MEMBER . 2))
 (5 5 (:REWRITE FN-CHECK-DEF-FORMALS))
 (3 3 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (3 3 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(VL2014::VL-FIND-BASENAME/EXTENSION
 (215 3 (:REWRITE VL2014::STRINGP-WHEN-TRUE-LISTP))
 (106 7 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (56 3 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (41 3 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (38 38 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (38 38 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (37 7 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (37 3 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (36 3 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (32 32 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (31 11 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (31 11 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (28 10 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (21 7 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (18 4 (:REWRITE MEMBER-WHEN-ATOM))
 (18 3 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (16 2 (:REWRITE VL2014::VL-WARNINGLIST-P-WHEN-NOT-CONSP))
 (15 15 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (14 14 (:REWRITE SUBSETP-TRANS2))
 (14 14 (:REWRITE SUBSETP-TRANS))
 (14 14 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (12 4 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (12 1 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (11 11 (:REWRITE CONSP-BY-LEN))
 (10 10 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (9 9 (:REWRITE SUBSETP-MEMBER . 2))
 (9 9 (:REWRITE SUBSETP-MEMBER . 1))
 (9 1 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (7 7 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (7 7 (:REWRITE FN-CHECK-DEF-FORMALS))
 (6 6 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (6 6 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (6 6 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (6 6 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (6 3 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (6 3 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (6 3 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (6 1 (:REWRITE VL2014::TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
 (4 4 (:REWRITE SUBSETP-MEMBER . 4))
 (4 4 (:REWRITE SUBSETP-MEMBER . 3))
 (4 4 (:REWRITE INTERSECTP-MEMBER . 3))
 (4 4 (:REWRITE INTERSECTP-MEMBER . 2))
 (4 1 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (3 3 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (3 3 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (3 3 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (3 3 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (3 3 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (3 3 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE SET::IN-SET))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (2 2 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (2 2 (:TYPE-PRESCRIPTION ALISTP))
 (2 2 (:REWRITE VL2014::TRUE-LIST-LISTP-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (2 1 (:REWRITE VL2014::SYMBOL-LISTP-OF-CAR-WHEN-SYMBOL-LIST-LISTP))
 (2 1 (:REWRITE VL2014::STRING-LISTP-OF-CAR-WHEN-STRING-LIST-LISTP))
 (2 1 (:REWRITE CONSP-OF-CAR-WHEN-CONS-LISTP))
 (2 1 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (1 1 (:REWRITE VL2014::TRUE-LIST-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE ALISTP-WHEN-ATOM))
 (1 1 (:REWRITE VL2014::ALISTP-WHEN-ALL-HAVE-LEN))
 )
(VL2014::STATE-P1-OF-VL-FIND-BASENAME/EXTENSION
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (12 12 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (8 8 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE-QUOTED-CONSTANT SYMBOL-FIX-UNDER-SYMBOL-EQUIV))
 (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (5 5 (:REWRITE CONSP-BY-LEN))
 )
(VL2014::VL-WARNINGLIST-P-OF-VL-FIND-BASENAME/EXTENSION
 (81 11 (:REWRITE VL2014::VL-WARNINGLIST-P-WHEN-NOT-CONSP))
 (62 62 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (62 62 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (48 6 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (48 6 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (37 1 (:REWRITE SUBSETP-OF-CONS))
 (36 36 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (28 28 (:REWRITE CONSP-BY-LEN))
 (24 8 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (19 3 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (17 17 (:REWRITE DEFAULT-CAR))
 (17 17 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (14 2 (:REWRITE VL2014::VL-WARNING-P-WHEN-MEMBER-EQUAL-OF-VL-WARNINGLIST-P))
 (11 11 (:REWRITE SUBSETP-TRANS2))
 (11 11 (:REWRITE SUBSETP-TRANS))
 (11 11 (:REWRITE DEFAULT-CDR))
 (8 8 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (8 8 (:REWRITE-QUOTED-CONSTANT SYMBOL-FIX-UNDER-SYMBOL-EQUIV))
 (3 3 (:REWRITE SUBSETP-MEMBER . 2))
 (3 3 (:REWRITE SUBSETP-MEMBER . 1))
 (3 3 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 )
(VL2014::CROCK
 (100 1 (:REWRITE VL2014::STRINGP-WHEN-TRUE-LISTP))
 (31 2 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (31 1 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (20 20 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (20 2 (:REWRITE STRINGP-WHEN-MEMBER-EQUAL-OF-STRING-LISTP))
 (19 1 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (18 1 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (15 1 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (12 9 (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP))
 (12 1 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (11 1 (:REWRITE VL2014::TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
 (10 6 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (9 9 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (9 2 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (9 1 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (8 1 (:REWRITE SUBSETP-CAR-MEMBER))
 (8 1 (:REWRITE MEMBER-WHEN-ATOM))
 (6 2 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (6 1 (:REWRITE VL2014::TRUE-LIST-LISTP-WHEN-NOT-CONSP))
 (6 1 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (6 1 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (6 1 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (6 1 (:REWRITE DEFAULT-CAR))
 (6 1 (:REWRITE ALISTP-WHEN-ATOM))
 (5 4 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 4 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (4 4 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (4 4 (:REWRITE CONSP-BY-LEN))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 1 (:REWRITE MEMBER-OF-CAR))
 (3 3 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (3 2 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (2 2 (:TYPE-PRESCRIPTION VL2014::TRUE-LIST-LISTP))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
 (2 2 (:TYPE-PRESCRIPTION ALISTP))
 (2 2 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (2 2 (:REWRITE VL2014::TRUE-LIST-LISTP-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (2 2 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (2 2 (:REWRITE SUBSETP-MEMBER . 2))
 (2 2 (:REWRITE SUBSETP-MEMBER . 1))
 (2 2 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (2 2 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (2 2 (:REWRITE SET::IN-SET))
 (2 2 (:REWRITE FN-CHECK-DEF-FORMALS))
 (2 2 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (2 1 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (2 1 (:REWRITE VL2014::SYMBOL-LISTP-OF-CAR-WHEN-SYMBOL-LIST-LISTP))
 (2 1 (:REWRITE VL2014::STRING-LISTP-OF-CAR-WHEN-STRING-LIST-LISTP))
 (2 1 (:REWRITE CONSP-OF-CAR-WHEN-CONS-LISTP))
 (2 1 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (2 1 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (2 1 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (2 1 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (1 1 (:TYPE-PRESCRIPTION VL2014::SYMBOL-LIST-LISTP))
 (1 1 (:TYPE-PRESCRIPTION VL2014::STRING-LIST-LISTP))
 (1 1 (:TYPE-PRESCRIPTION STR::OCT-DIGIT-CHAR-LISTP))
 (1 1 (:TYPE-PRESCRIPTION STR::HEX-DIGIT-CHAR-LISTP))
 (1 1 (:TYPE-PRESCRIPTION STR::DEC-DIGIT-CHAR-LISTP))
 (1 1 (:TYPE-PRESCRIPTION CONS-LISTP))
 (1 1 (:TYPE-PRESCRIPTION BOOLEAN-LISTP))
 (1 1 (:TYPE-PRESCRIPTION ATOM-LISTP))
 (1 1 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (1 1 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (1 1 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (1 1 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (1 1 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE SUBSETP-REFL))
 (1 1 (:REWRITE SUBSETP-MEMBER . 4))
 (1 1 (:REWRITE SUBSETP-MEMBER . 3))
 (1 1 (:REWRITE INTERSECTP-MEMBER . 3))
 (1 1 (:REWRITE INTERSECTP-MEMBER . 2))
 (1 1 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (1 1 (:REWRITE VL2014::ALISTP-WHEN-ALL-HAVE-LEN))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(VL2014::CROCK2
 (81 3 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (24 3 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (24 3 (:REWRITE MEMBER-WHEN-ATOM))
 (18 9 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (15 15 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 3 (:REWRITE VL2014::MEMBER-EQUAL-WHEN-MEMBER-EQUAL-OF-CDR-UNDER-IFF))
 (9 9 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (8 3 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (6 6 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (6 6 (:REWRITE CONSP-BY-LEN))
 (3 3 (:REWRITE SUBSETP-MEMBER . 4))
 (3 3 (:REWRITE SUBSETP-MEMBER . 3))
 (3 3 (:REWRITE SUBSETP-MEMBER . 2))
 (3 3 (:REWRITE SUBSETP-MEMBER . 1))
 (3 3 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (3 3 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (3 3 (:REWRITE MEMBER-EQUAL-WHEN-ALL-EQUALP))
 (3 3 (:REWRITE INTERSECTP-MEMBER . 3))
 (3 3 (:REWRITE INTERSECTP-MEMBER . 2))
 (3 3 (:REWRITE FN-CHECK-DEF-FORMALS))
 (3 3 (:REWRITE CAR-WHEN-ALL-EQUALP))
 )
(VL2014::STRINGP-OF-VL-FIND-BASENAME/EXTENSION
 (301 6 (:REWRITE VL2014::STRINGP-WHEN-TRUE-LISTP))
 (70 5 (:REWRITE TRUE-LISTP-WHEN-STRING-LISTP-REWRITE))
 (65 5 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (60 5 (:REWRITE TRUE-LISTP-WHEN-CHARACTER-LISTP-REWRITE))
 (54 54 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (54 54 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (40 5 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (36 36 (:REWRITE DEFAULT-CAR))
 (36 36 (:REWRITE CAR-WHEN-ALL-EQUALP))
 (32 32 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (30 5 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (28 28 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE-QUOTED-CONSTANT SYMBOL-FIX-UNDER-SYMBOL-EQUIV))
 (20 5 (:REWRITE VL2014::STRING-LISTP-WHEN-NO-NILS-IN-VL-MAYBE-STRING-LISTP))
 (17 17 (:REWRITE CONSP-BY-LEN))
 (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (12 12 (:REWRITE STRINGP-WHEN-MEMBER-EQUAL-OF-STRING-LISTP))
 (12 6 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (10 10 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (10 10 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
 (10 10 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (10 10 (:REWRITE SYMBOL-LISTP-WHEN-SUBSETP-EQUAL))
 (10 10 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LIST-LISTP))
 (10 10 (:REWRITE STRING-LISTP-WHEN-SUBSETP-EQUAL))
 (10 10 (:REWRITE VL2014::STRING-LISTP-WHEN-MEMBER-EQUAL-OF-STRING-LIST-LISTP))
 (10 10 (:REWRITE CHARACTER-LISTP-WHEN-SUBSETP-EQUAL))
 (10 5 (:TYPE-PRESCRIPTION TRUE-LISTP-MEMBER-EQUAL))
 (10 5 (:REWRITE SYMBOL-LISTP-WHEN-BOOLEAN-LISTP))
 (10 5 (:REWRITE STR::CHARACTER-LISTP-WHEN-OCT-DIGIT-CHAR-LISTP))
 (10 5 (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-CHAR-LISTP))
 (10 5 (:REWRITE STR::CHARACTER-LISTP-WHEN-DEC-DIGIT-CHAR-LISTP))
 (6 6 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (6 6 (:REWRITE SET::IN-SET))
 (6 1 (:REWRITE SET::DOUBLE-CONTAINMENT))
 (5 5 (:TYPE-PRESCRIPTION STR::OCT-DIGIT-CHAR-LISTP))
 (5 5 (:TYPE-PRESCRIPTION STR::HEX-DIGIT-CHAR-LISTP))
 (5 5 (:TYPE-PRESCRIPTION STR::DEC-DIGIT-CHAR-LISTP))
 (5 5 (:TYPE-PRESCRIPTION CONSP-MEMBER-EQUAL))
 (5 5 (:TYPE-PRESCRIPTION BOOLEAN-LISTP))
 (5 5 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (5 5 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (5 5 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 2))
 (5 5 (:REWRITE VL2014::SYMBOL-LISTP-WHEN-SUBSETP-EQUAL-OF-SYMBOL-LISTP . 1))
 (5 5 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (5 5 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 2))
 (5 5 (:REWRITE VL2014::STRING-LISTP-WHEN-SUBSETP-EQUAL-OF-STRING-LISTP . 1))
 (5 5 (:REWRITE STRING-LISTP-WHEN-NOT-CONSP))
 (5 5 (:REWRITE FN-CHECK-DEF-FORMALS))
 (5 5 (:REWRITE CHARACTER-LISTP-WHEN-NOT-CONSP))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )