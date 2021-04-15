(|f|)
(|g|)
(|h|
 (3611 34
       (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (2432 67 (:REWRITE ACL2-NUMBERP-X))
 (1763 117
       (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
 (1475 50
       (:REWRITE RATIONALP-OF-CAR-WHEN-RATIONAL-LISTP))
 (1423 33 (:DEFINITION RATIONAL-LISTP))
 (1414 314 (:REWRITE DEFAULT-CAR))
 (1314 67 (:DEFINITION INTEGER-LISTP))
 (1195 67
       (:REWRITE ACL2-NUMBERP-OF-CAR-WHEN-ACL2-NUMBER-LISTP))
 (1126 33 (:DEFINITION ACL2-NUMBER-LISTP))
 (1020 50 (:REWRITE RATIONALP-X))
 (556 66
      (:REWRITE RATIONAL-LISTP-WHEN-NOT-CONSP))
 (556 66
      (:REWRITE ACL2-NUMBER-LISTP-WHEN-NOT-CONSP))
 (528 16 (:DEFINITION TRUE-LISTP))
 (457 117
      (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
 (437 165
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (425 161 (:REWRITE SIMPLIFY-SUMS-<))
 (384 32
      (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (356 356
      (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-TRUELIST-ALISTP
                . 2))
 (356 356
      (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-TRUELIST-ALISTP
                . 1))
 (356 356
      (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                . 2))
 (356 356
      (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP
                . 1))
 (356 356
      (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-KEYWORD-TRUELIST-ALISTP
                . 2))
 (356 356
      (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-KEYWORD-TRUELIST-ALISTP
                . 1))
 (356 356
      (:REWRITE C::CONSP-WHEN-MEMBER-EQUAL-OF-ATC-SYMBOL-TYPE-ALISTP
                . 2))
 (356 356
      (:REWRITE C::CONSP-WHEN-MEMBER-EQUAL-OF-ATC-SYMBOL-TYPE-ALISTP
                . 1))
 (356 356
      (:REWRITE C::CONSP-WHEN-MEMBER-EQUAL-OF-ATC-SYMBOL-FNINFO-ALISTP
                . 2))
 (356 356
      (:REWRITE C::CONSP-WHEN-MEMBER-EQUAL-OF-ATC-SYMBOL-FNINFO-ALISTP
                . 1))
 (351 351 (:REWRITE DEFAULT-CDR))
 (337 185 (:REWRITE DEFAULT-LESS-THAN-2))
 (337 185 (:REWRITE DEFAULT-LESS-THAN-1))
 (259 83
      (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
 (185 185 (:REWRITE THE-FLOOR-BELOW))
 (185 185 (:REWRITE THE-FLOOR-ABOVE))
 (185 185
      (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (185 185
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (185 185
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (185 185
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (185 185 (:REWRITE INTEGERP-<-CONSTANT))
 (185 185 (:REWRITE CONSTANT-<-INTEGERP))
 (185 185
      (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (185 185
      (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (185 185
      (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (185 185
      (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (185 185 (:REWRITE |(< c (- x))|))
 (185 185
      (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (185 185
      (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (185 185
      (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (185 185
      (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (185 185 (:REWRITE |(< (/ x) (/ y))|))
 (185 185 (:REWRITE |(< (- x) c)|))
 (185 185 (:REWRITE |(< (- x) (- y))|))
 (117 117 (:REWRITE REDUCE-INTEGERP-+))
 (117 117 (:REWRITE INTEGERP-MINUS-X))
 (117 117 (:META META-INTEGERP-CORRECT))
 (98 49
     (:REWRITE RATIONAL-LISTP-OF-CDR-WHEN-RATIONAL-LISTP))
 (98 49
     (:REWRITE ACL2-NUMBER-LISTP-OF-CDR-WHEN-ACL2-NUMBER-LISTP))
 (85 34
     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (76 51 (:REWRITE DEFAULT-PLUS-2))
 (64 64 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (64
    64
    (:REWRITE TRUE-LISTP-OF-CDR-WHEN-MEMBER-EQUAL-OF-SYMBOL-TRUELIST-ALISTP))
 (64
   64
   (:REWRITE TRUE-LISTP-OF-CDR-WHEN-MEMBER-EQUAL-OF-KEYWORD-TRUELIST-ALISTP))
 (64 32
     (:REWRITE C::SETP-WHEN-TYPE-OPTION-SETP))
 (64 32 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (64 32 (:REWRITE C::SETP-WHEN-IDENT-SETP))
 (64 32 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (63 51 (:REWRITE DEFAULT-PLUS-1))
 (50 50 (:REWRITE REDUCE-RATIONALP-+))
 (50 50 (:REWRITE REDUCE-RATIONALP-*))
 (50 50 (:REWRITE RATIONALP-MINUS-X))
 (50 50 (:META META-RATIONALP-CORRECT))
 (34 34 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (34 34
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (34 34
     (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (34 34
     (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (34 34 (:REWRITE |(equal c (/ x))|))
 (34 34 (:REWRITE |(equal c (- x))|))
 (34 34 (:REWRITE |(equal (/ x) c)|))
 (34 34 (:REWRITE |(equal (/ x) (/ y))|))
 (34 34 (:REWRITE |(equal (- x) c)|))
 (34 34 (:REWRITE |(equal (- x) (- y))|))
 (33 33
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (32 32
     (:TYPE-PRESCRIPTION C::TYPE-OPTION-SETP))
 (32 32 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (32 32 (:TYPE-PRESCRIPTION C::IDENT-SETP))
 (32 32 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (32 32
     (:REWRITE TRUE-LISTP-WHEN-THEOREM-SYMBOL-LISTP))
 (32 32
     (:REWRITE TRUE-LISTP-WHEN-TERMFN-LISTP))
 (32 32
     (:REWRITE TRUE-LISTP-WHEN-MACRO-SYMBOL-LISTP))
 (32 32
     (:REWRITE TRUE-LISTP-WHEN-LAMBDA-LISTP))
 (32 32
     (:REWRITE TRUE-LISTP-WHEN-FUNCTION-SYMBOL-LISTP))
 (32 32 (:REWRITE SET::IN-SET))
 (15 15 (:REWRITE |(< y (+ (- c) x))|))
 (15 15 (:REWRITE |(< x (+ c/d y))|))
 (15 15 (:REWRITE |(< (+ c/d x) y)|))
 (15 15 (:REWRITE |(< (+ (- c) x) y)|))
 (10 8 (:REWRITE DEFAULT-TIMES-2))
 (9 9
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (9 9
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (9 9 (:REWRITE |(< (/ x) 0)|))
 (9 9 (:REWRITE |(< (* x y) 0)|))
 (8 8
    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (8 8 (:REWRITE DEFAULT-TIMES-1))
 (6 6
    (:REWRITE-QUOTED-CONSTANT C::SINT-FIX-UNDER-SINT-EQUIV))
 (4 4 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (4 4 (:REWRITE |(+ c (+ d x))|))
 (2 2 (:REWRITE DEFAULT-MINUS)))
(C::*PROGRAM*-WELL-FORMED)
(|f-RETURNS-VALUE|)
(|f-EXEC-CONST-LIMIT-CORRECT| (156 156 (:REWRITE C::VALUEP-WHEN-POINTERP))
                              (39 33 (:REWRITE C::NOT-SINTP-WHEN-UCHARP))
                              (33 33 (:REWRITE C::NOT-SINTP-WHEN-USHORTP))
                              (33 33 (:REWRITE C::NOT-SINTP-WHEN-ULONGP))
                              (33 33 (:REWRITE C::NOT-SINTP-WHEN-ULLONGP))
                              (33 33 (:REWRITE C::NOT-SINTP-WHEN-UINTP))
                              (33 33 (:REWRITE C::NOT-SINTP-WHEN-SSHORTP))
                              (33 33 (:REWRITE C::NOT-SINTP-WHEN-SLONGP))
                              (33 33 (:REWRITE C::NOT-SINTP-WHEN-SLLONGP))
                              (33 33 (:REWRITE C::NOT-SINTP-WHEN-SCHARP))
                              (33 33
                                  (:REWRITE C::NOT-SINTP-WHEN-POINTERP))
                              (28 28
                                  (:REWRITE C::NOT-SSHORTP-WHEN-ULONGP))
                              (28 28
                                  (:REWRITE C::NOT-SSHORTP-WHEN-ULLONGP))
                              (28 28
                                  (:REWRITE C::NOT-SSHORTP-WHEN-SLONGP))
                              (28 28
                                  (:REWRITE C::NOT-SSHORTP-WHEN-SLLONGP))
                              (28 28
                                  (:REWRITE C::NOT-SSHORTP-WHEN-POINTERP))
                              (28 28 (:REWRITE C::NOT-SCHARP-WHEN-ULONGP))
                              (28 28
                                  (:REWRITE C::NOT-SCHARP-WHEN-ULLONGP))
                              (28 28 (:REWRITE C::NOT-SCHARP-WHEN-SLONGP))
                              (28 28
                                  (:REWRITE C::NOT-SCHARP-WHEN-SLLONGP))
                              (28 28
                                  (:REWRITE C::NOT-SCHARP-WHEN-POINTERP))
                              (22 22
                                  (:REWRITE C::NOT-ERRORP-WHEN-VALUE-LISTP))
                              (22 22
                                  (:REWRITE C::NOT-ERRORP-WHEN-UCHAR-ARRAYP))
                              (22 22
                                  (:REWRITE C::NOT-ERRORP-WHEN-SCOPE-LISTP))
                              (19 19
                                  (:REWRITE C::EXEC-EXPR-PURE-UNROLL-5))
                              (17 17
                                  (:REWRITE C::NOT-USHORTP-WHEN-ULONGP))
                              (17 17
                                  (:REWRITE C::NOT-USHORTP-WHEN-ULLONGP))
                              (17 17
                                  (:REWRITE C::NOT-USHORTP-WHEN-SLONGP))
                              (17 17
                                  (:REWRITE C::NOT-USHORTP-WHEN-SLLONGP))
                              (17 17
                                  (:REWRITE C::NOT-USHORTP-WHEN-POINTERP))
                              (17 17 (:REWRITE C::NOT-UCHARP-WHEN-ULONGP))
                              (17 17
                                  (:REWRITE C::NOT-UCHARP-WHEN-ULLONGP))
                              (17 17 (:REWRITE C::NOT-UCHARP-WHEN-SLONGP))
                              (17 17
                                  (:REWRITE C::NOT-UCHARP-WHEN-SLLONGP))
                              (17 17
                                  (:REWRITE C::NOT-UCHARP-WHEN-POINTERP))
                              (16 16
                                  (:REWRITE C::EXEC-EXPR-PURE-UNROLL-3))
                              (14 14 (:REWRITE C::NOT-UINTP-WHEN-ULONGP))
                              (14 14 (:REWRITE C::NOT-UINTP-WHEN-ULLONGP))
                              (14 14 (:REWRITE C::NOT-UINTP-WHEN-SLONGP))
                              (14 14 (:REWRITE C::NOT-UINTP-WHEN-SLLONGP))
                              (14 14
                                  (:REWRITE C::NOT-UINTP-WHEN-POINTERP))
                              (11 11
                                  (:REWRITE C::EXEC-EXPR-PURE-UNROLL-1))
                              (11 11 (:REWRITE C::EXEC-EXPR-PURE-BASE-8))
                              (11 11 (:REWRITE C::EXEC-EXPR-PURE-BASE-7))
                              (11 11 (:REWRITE C::EXEC-EXPR-PURE-BASE-6))
                              (11 11 (:REWRITE C::EXEC-EXPR-PURE-BASE-5))
                              (11 11 (:REWRITE C::EXEC-EXPR-PURE-BASE-4))
                              (11 11 (:REWRITE C::EXEC-EXPR-PURE-BASE-3))
                              (11 11 (:REWRITE C::EXEC-EXPR-PURE-BASE-2))
                              (6 6 (:REWRITE C::NOT-SLONGP-WHEN-ULONGP))
                              (6 6 (:REWRITE C::NOT-SLONGP-WHEN-ULLONGP))
                              (6 6 (:REWRITE C::NOT-SLONGP-WHEN-SLLONGP))
                              (6 6
                                 (:REWRITE C::NOT-SLONGP-WHEN-POINTERP))
                              (6 6 (:REWRITE C::NOT-SLLONGP-WHEN-ULONGP))
                              (6 6
                                 (:REWRITE C::NOT-SLLONGP-WHEN-ULLONGP))
                              (6 6 (:REWRITE C::NOT-SLLONGP-WHEN-SLONGP))
                              (6 6
                                 (:REWRITE C::NOT-SLLONGP-WHEN-POINTERP))
                              (6 6 (:REWRITE C::EXEC-STMT-UNROLL-2))
                              (6 6 (:REWRITE C::EXEC-STMT-UNROLL-1))
                              (3 3 (:REWRITE C::VALUEP-WHEN-UCHARP))
                              (2 1 (:REWRITE C::INIT-SCOPE-BASE-2))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-8))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-7))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-6))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-5))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-4)))
(|f-EXEC-VAR-LIMIT-CORRECT|)
(C::|*PROGRAM*-f-CORRECT|)
(|g-RETURNS-VALUE|)
(|g-EXEC-CONST-LIMIT-CORRECT| (483 483 (:REWRITE C::VALUEP-WHEN-POINTERP))
                              (251 101 (:REWRITE C::NOT-SINTP-WHEN-UCHARP))
                              (101 101
                                   (:REWRITE C::NOT-SINTP-WHEN-USHORTP))
                              (101 101 (:REWRITE C::NOT-SINTP-WHEN-ULONGP))
                              (101 101
                                   (:REWRITE C::NOT-SINTP-WHEN-ULLONGP))
                              (101 101 (:REWRITE C::NOT-SINTP-WHEN-UINTP))
                              (101 101
                                   (:REWRITE C::NOT-SINTP-WHEN-SSHORTP))
                              (101 101 (:REWRITE C::NOT-SINTP-WHEN-SLONGP))
                              (101 101
                                   (:REWRITE C::NOT-SINTP-WHEN-SLLONGP))
                              (101 101 (:REWRITE C::NOT-SINTP-WHEN-SCHARP))
                              (101 101
                                   (:REWRITE C::NOT-SINTP-WHEN-POINTERP))
                              (62 62
                                  (:REWRITE C::NOT-ERRORP-WHEN-VALUE-LISTP))
                              (62 62
                                  (:REWRITE C::NOT-ERRORP-WHEN-UCHAR-ARRAYP))
                              (62 62
                                  (:REWRITE C::NOT-ERRORP-WHEN-SCOPE-LISTP))
                              (60 58
                                  (:REWRITE C::NOT-SSHORTP-WHEN-POINTERP))
                              (60 58
                                  (:REWRITE C::NOT-SCHARP-WHEN-POINTERP))
                              (58 58
                                  (:REWRITE C::NOT-SSHORTP-WHEN-ULONGP))
                              (58 58
                                  (:REWRITE C::NOT-SSHORTP-WHEN-ULLONGP))
                              (58 58
                                  (:REWRITE C::NOT-SSHORTP-WHEN-SLONGP))
                              (58 58
                                  (:REWRITE C::NOT-SSHORTP-WHEN-SLLONGP))
                              (58 58 (:REWRITE C::NOT-SCHARP-WHEN-ULONGP))
                              (58 58
                                  (:REWRITE C::NOT-SCHARP-WHEN-ULLONGP))
                              (58 58 (:REWRITE C::NOT-SCHARP-WHEN-SLONGP))
                              (58 58
                                  (:REWRITE C::NOT-SCHARP-WHEN-SLLONGP))
                              (51 51 (:REWRITE C::NOT-UCHARP-WHEN-ULONGP))
                              (51 51
                                  (:REWRITE C::NOT-UCHARP-WHEN-ULLONGP))
                              (51 51 (:REWRITE C::NOT-UCHARP-WHEN-SLONGP))
                              (51 51
                                  (:REWRITE C::NOT-UCHARP-WHEN-SLLONGP))
                              (51 51
                                  (:REWRITE C::NOT-UCHARP-WHEN-POINTERP))
                              (37 37
                                  (:REWRITE C::EXEC-EXPR-PURE-UNROLL-5))
                              (37 35
                                  (:REWRITE C::NOT-USHORTP-WHEN-POINTERP))
                              (35 35
                                  (:REWRITE C::NOT-USHORTP-WHEN-ULONGP))
                              (35 35
                                  (:REWRITE C::NOT-USHORTP-WHEN-ULLONGP))
                              (35 35
                                  (:REWRITE C::NOT-USHORTP-WHEN-SLONGP))
                              (35 35
                                  (:REWRITE C::NOT-USHORTP-WHEN-SLLONGP))
                              (31 29
                                  (:REWRITE C::NOT-UINTP-WHEN-POINTERP))
                              (29 29 (:REWRITE C::NOT-UINTP-WHEN-ULONGP))
                              (29 29 (:REWRITE C::NOT-UINTP-WHEN-ULLONGP))
                              (29 29 (:REWRITE C::NOT-UINTP-WHEN-SLONGP))
                              (29 29 (:REWRITE C::NOT-UINTP-WHEN-SLLONGP))
                              (28 28
                                  (:REWRITE C::EXEC-EXPR-PURE-UNROLL-3))
                              (23 23
                                  (:REWRITE C::EXEC-EXPR-PURE-UNROLL-1))
                              (23 23 (:REWRITE C::EXEC-EXPR-PURE-BASE-8))
                              (23 23 (:REWRITE C::EXEC-EXPR-PURE-BASE-7))
                              (23 23 (:REWRITE C::EXEC-EXPR-PURE-BASE-6))
                              (23 23 (:REWRITE C::EXEC-EXPR-PURE-BASE-5))
                              (23 23 (:REWRITE C::EXEC-EXPR-PURE-BASE-4))
                              (23 23 (:REWRITE C::EXEC-EXPR-PURE-BASE-3))
                              (23 23 (:REWRITE C::EXEC-EXPR-PURE-BASE-2))
                              (12 12 (:REWRITE C::NOT-SLONGP-WHEN-ULONGP))
                              (12 12
                                  (:REWRITE C::NOT-SLONGP-WHEN-ULLONGP))
                              (12 12
                                  (:REWRITE C::NOT-SLONGP-WHEN-SLLONGP))
                              (12 12
                                  (:REWRITE C::NOT-SLONGP-WHEN-POINTERP))
                              (12 12
                                  (:REWRITE C::NOT-SLLONGP-WHEN-ULONGP))
                              (12 12
                                  (:REWRITE C::NOT-SLLONGP-WHEN-ULLONGP))
                              (12 12
                                  (:REWRITE C::NOT-SLLONGP-WHEN-SLONGP))
                              (12 12
                                  (:REWRITE C::NOT-SLLONGP-WHEN-POINTERP))
                              (8 8 (:REWRITE C::POINTERP-OF-IF))
                              (6 6 (:REWRITE C::EXEC-STMT-UNROLL-2))
                              (6 6 (:REWRITE C::EXEC-STMT-UNROLL-1))
                              (5 5 (:REWRITE C::VALUEP-WHEN-UCHARP))
                              (2 1 (:REWRITE C::INIT-SCOPE-BASE-2))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-8))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-7))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-6))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-5))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-4)))
(|g-EXEC-VAR-LIMIT-CORRECT|)
(C::|*PROGRAM*-g-CORRECT|)
(|h-RETURNS-VALUE|)
(|h-EXEC-CONST-LIMIT-CORRECT|
     (1539 1539 (:REWRITE C::VALUEP-WHEN-POINTERP))
     (448 421 (:REWRITE C::NOT-SINTP-WHEN-UCHARP))
     (421 421
          (:REWRITE C::NOT-SINTP-WHEN-USHORTP))
     (421 421 (:REWRITE C::NOT-SINTP-WHEN-ULONGP))
     (421 421
          (:REWRITE C::NOT-SINTP-WHEN-ULLONGP))
     (421 421 (:REWRITE C::NOT-SINTP-WHEN-UINTP))
     (421 421
          (:REWRITE C::NOT-SINTP-WHEN-SSHORTP))
     (421 421 (:REWRITE C::NOT-SINTP-WHEN-SLONGP))
     (421 421
          (:REWRITE C::NOT-SINTP-WHEN-SLLONGP))
     (421 421 (:REWRITE C::NOT-SINTP-WHEN-SCHARP))
     (421 421
          (:REWRITE C::NOT-SINTP-WHEN-POINTERP))
     (337 337
          (:REWRITE C::NOT-SSHORTP-WHEN-ULONGP))
     (337 337
          (:REWRITE C::NOT-SSHORTP-WHEN-ULLONGP))
     (337 337
          (:REWRITE C::NOT-SSHORTP-WHEN-SLONGP))
     (337 337
          (:REWRITE C::NOT-SSHORTP-WHEN-SLLONGP))
     (337 337
          (:REWRITE C::NOT-SSHORTP-WHEN-POINTERP))
     (337 337
          (:REWRITE C::NOT-SCHARP-WHEN-ULONGP))
     (337 337
          (:REWRITE C::NOT-SCHARP-WHEN-ULLONGP))
     (337 337
          (:REWRITE C::NOT-SCHARP-WHEN-SLONGP))
     (337 337
          (:REWRITE C::NOT-SCHARP-WHEN-SLLONGP))
     (337 337
          (:REWRITE C::NOT-SCHARP-WHEN-POINTERP))
     (210 210
          (:REWRITE C::NOT-ERRORP-WHEN-VALUE-LISTP))
     (210 210
          (:REWRITE C::NOT-ERRORP-WHEN-UCHAR-ARRAYP))
     (210 210
          (:REWRITE C::NOT-ERRORP-WHEN-SCOPE-LISTP))
     (207 207
          (:REWRITE C::EXEC-EXPR-PURE-UNROLL-5))
     (179 179
          (:REWRITE C::NOT-USHORTP-WHEN-ULONGP))
     (179 179
          (:REWRITE C::NOT-USHORTP-WHEN-ULLONGP))
     (179 179
          (:REWRITE C::NOT-USHORTP-WHEN-SLONGP))
     (179 179
          (:REWRITE C::NOT-USHORTP-WHEN-SLLONGP))
     (179 179
          (:REWRITE C::NOT-USHORTP-WHEN-POINTERP))
     (179 179
          (:REWRITE C::NOT-UCHARP-WHEN-ULONGP))
     (179 179
          (:REWRITE C::NOT-UCHARP-WHEN-ULLONGP))
     (179 179
          (:REWRITE C::NOT-UCHARP-WHEN-SLONGP))
     (179 179
          (:REWRITE C::NOT-UCHARP-WHEN-SLLONGP))
     (179 179
          (:REWRITE C::NOT-UCHARP-WHEN-POINTERP))
     (138 138
          (:REWRITE C::NOT-SLONGP-WHEN-ULONGP))
     (138 138
          (:REWRITE C::NOT-SLONGP-WHEN-ULLONGP))
     (138 138
          (:REWRITE C::NOT-SLONGP-WHEN-SLLONGP))
     (138 138
          (:REWRITE C::NOT-SLONGP-WHEN-POINTERP))
     (138 138
          (:REWRITE C::NOT-SLLONGP-WHEN-ULONGP))
     (138 138
          (:REWRITE C::NOT-SLLONGP-WHEN-ULLONGP))
     (138 138
          (:REWRITE C::NOT-SLLONGP-WHEN-SLONGP))
     (138 138
          (:REWRITE C::NOT-SLLONGP-WHEN-POINTERP))
     (138 138
          (:REWRITE C::EXEC-EXPR-PURE-UNROLL-3))
     (138 138
          (:REWRITE C::EXEC-EXPR-PURE-UNROLL-2))
     (138 138
          (:REWRITE C::EXEC-EXPR-PURE-UNROLL-1))
     (138 138 (:REWRITE C::EXEC-EXPR-PURE-BASE-8))
     (138 138 (:REWRITE C::EXEC-EXPR-PURE-BASE-7))
     (138 138 (:REWRITE C::EXEC-EXPR-PURE-BASE-6))
     (138 138 (:REWRITE C::EXEC-EXPR-PURE-BASE-5))
     (138 138 (:REWRITE C::EXEC-EXPR-PURE-BASE-4))
     (138 138 (:REWRITE C::EXEC-EXPR-PURE-BASE-3))
     (110 110 (:REWRITE C::NOT-UINTP-WHEN-ULONGP))
     (110 110
          (:REWRITE C::NOT-UINTP-WHEN-ULLONGP))
     (110 110 (:REWRITE C::NOT-UINTP-WHEN-SLONGP))
     (110 110
          (:REWRITE C::NOT-UINTP-WHEN-SLLONGP))
     (110 110
          (:REWRITE C::NOT-UINTP-WHEN-POINTERP))
     (46 46 (:REWRITE C::EXEC-STMT-UNROLL-1))
     (12 12 (:REWRITE C::EXEC-STMT-BASE-8))
     (12 12 (:REWRITE C::EXEC-STMT-BASE-7))
     (12 12 (:REWRITE C::EXEC-STMT-BASE-6))
     (12 12 (:REWRITE C::EXEC-STMT-BASE-5))
     (12 12 (:REWRITE C::EXEC-STMT-BASE-4))
     (5 5 (:REWRITE C::VALUEP-WHEN-UCHARP))
     (4 2 (:REWRITE C::INIT-SCOPE-BASE-2)))
(|h-EXEC-VAR-LIMIT-CORRECT|)
(C::|*PROGRAM*-h-CORRECT|)
