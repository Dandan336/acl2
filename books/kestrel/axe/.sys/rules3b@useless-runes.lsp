(BVPLUS-OF-BVCAT-CONSTANTS
 (2274 6 (:REWRITE UNSIGNED-BYTE-P-OF-IF))
 (2143 139 (:REWRITE SLICE-TOO-HIGH-IS-0))
 (1891 43 (:REWRITE SMALL-INT-HACK))
 (747 9 (:REWRITE UNSIGNED-BYTE-P-OF-+-OF-CONSTANT-STRONG))
 (524 301 (:REWRITE BOUND-WHEN-USB2))
 (462 253 (:REWRITE DEFAULT-+-2))
 (435 219 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
 (420 301 (:REWRITE DEFAULT-<-1))
 (390 12 (:REWRITE UNSIGNED-BYTE-P-OF-+))
 (332 301 (:REWRITE DEFAULT-<-2))
 (301 301 (:REWRITE <-WHEN-BVLT))
 (301 301 (:REWRITE <-TIGHTEN-WHEN-SLICE-IS-0))
 (297 253 (:REWRITE DEFAULT-+-1))
 (252 252 (:REWRITE UNSIGNED-BYTE-P-WHEN-TOP-BIT-0))
 (252 252 (:REWRITE UNSIGNED-BYTE-P-TIGHTEN-WHEN-SLICE-IS-0))
 (252 252 (:REWRITE REWRITE-UNSIGNED-BYTE-P-WHEN-TERM-SIZE-IS-LARGER))
 (241 24 (:LINEAR BVCHOP-WHEN-TOP-BIT-1-LINEAR-CHEAP))
 (240 12 (:REWRITE UNSIGNED-BYTE-P-OF-SLICE-ONE-MORE))
 (225 225 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (219 219 (:REWRITE UNSIGNED-BYTE-P-WHEN-UNSIGNED-BYTE-P-SMALLER))
 (193 24 (:LINEAR BVCHOP-WHEN-TOP-BIT-0-LINEAR-CHEAP))
 (186 186 (:REWRITE BVCHOP-TIGHTEN-WHEN-SLICE-0))
 (186 186 (:REWRITE BVCHOP-SUBST-WHEN-EQUAL-OF-BVCHOPS-GEN))
 (165 165 (:REWRITE BVCHOP-WHEN-TOP-BIT-NOT-1-FAKE-FREE))
 (165 165 (:REWRITE BVCHOP-WHEN-GETBIT-AND-BVCHOP-KNOWN))
 (165 165 (:REWRITE BVCHOP-SUBST-CONSTANT-FROM-LOGEXT))
 (165 165 (:REWRITE BVCHOP-OF-EXPT-ALT))
 (147 147 (:REWRITE SLICE-WHEN-NOT-BVLT-FREE))
 (147 147 (:REWRITE SLICE-WHEN-BVLT-GEN))
 (147 147 (:REWRITE SLICE-TIGHTEN-TOP-QUOTEP))
 (141 141 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (141 141 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (139 139 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
 (139 139 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
 (139 139 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (139 139 (:REWRITE SLICE-OUT-OF-ORDER))
 (120 60 (:REWRITE GETBIT-WHEN-NOT-0))
 (113 83 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (113 83 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (101 70 (:REWRITE DEFAULT-*-2))
 (96 6 (:LINEAR GETBIT-BOUND-LINEAR))
 (86 86 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-POSP))
 (86 86 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (83 83 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (83 83 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (83 83 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (83 83 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (75 70 (:REWRITE DEFAULT-*-1))
 (72 36 (:REWRITE GETBIT-WHEN-NOT-1))
 (70 35 (:REWRITE NOT-<-WHEN-SBVLT))
 (60 60 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (60 60 (:REWRITE GETBIT-WHEN-BVLT-OF-SMALL))
 (60 60 (:REWRITE GETBIT-TOO-HIGH-CHEAP-FREE))
 (60 60 (:REWRITE GETBIT-TOO-HIGH-CHEAP))
 (54 26 (:REWRITE SLICE-BOUND))
 (54 26 (:REWRITE <-OF-SLICE-AND-CONSTANT))
 (48 48 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR-2))
 (44 44 (:REWRITE REWRITE-BV-EQUALITY-WHEN-SIZES-DONT-MATCH-2))
 (44 44 (:REWRITE REWRITE-BV-EQUALITY-WHEN-SIZES-DONT-MATCH-1))
 (44 44 (:REWRITE ADD-BVCHOPS-TO-EQUALITY-OF-SBPS-1))
 (38 38 (:REWRITE NOT-EQUAL-WHEN-NOT-EQUAL-BVCHOP))
 (38 38 (:REWRITE NOT-EQUAL-OF-CONSTANT-AND-BV-TERM))
 (38 38 (:REWRITE NOT-EQUAL-CONSTANT-WHEN-UNSIGNED-BYTE-P-ALT))
 (38 38 (:REWRITE NOT-EQUAL-CONSTANT-WHEN-UNSIGNED-BYTE-P))
 (38 38 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (38 38 (:REWRITE EQUAL-WHEN-BVLT))
 (38 38 (:REWRITE EQUAL-OF-CONSTANT-WHEN-SBVLT))
 (38 38 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (38 38 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (38 38 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (38 38 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (38 38 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (38 38 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (38 38 (:REWRITE EQUAL-CONSTANT-WHEN-SLICE-EQUAL-CONSTANT))
 (38 38 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SLICE-EQUAL-CONSTANT))
 (38 38 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SBVLT))
 (38 38 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (35 35 (:REWRITE USE-<=-BOUND-TO-DROP-<=-HYP))
 (35 35 (:REWRITE NOT-<-WHEN-SBVLT-ALT))
 (35 35 (:REWRITE BOUND-WHEN-USB))
 (35 35 (:REWRITE <-OF-CONSTANT-WHEN-UNSIGNED-BYTE-P-SIZE-PARAM))
 (28 28 (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
 (24 12 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (19 19 (:REWRITE UNSIGNED-BYTE-P-WHEN-SIZE-IS-NEGATIVE-LIMITED))
 (18 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (18 18 (:REWRITE ACL2-NUMBERP-WHEN-UNSIGNED-BYTE-P))
 (18 18 (:REWRITE ACL2-NUMBERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (16 16 (:REWRITE EQUAL-OF-SLICE-AND-CONSTANT-EXTEND-WHEN-BVCHOP-KNOWN))
 (12 12 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (12 12 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (12 12 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (12 12 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (7 7 (:REWRITE BVCHOP-SUBST-WHEN-EQUAL-OF-BVCHOPS))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE UNSIGNED-BYTE-P-OF-*-GEN))
 (3 3 (:REWRITE BVCHOP-SUM-SUBST-CONST-ARG2))
 (3 3 (:REWRITE BVCHOP-SUM-SUBST-CONST))
 (3 3 (:REWRITE BVCHOP-CHOP-LEADING-CONSTANT))
 (2 2 (:REWRITE GETBIT-OF-IF-TWO-CONSTANTS))
 )
