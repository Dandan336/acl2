(|f|)
(|g|)
(|h|)
(C::*PROGRAM*-WELL-FORMED)
(|f-RETURNS-VALUE|)
(|f-EXEC-CONST-LIMIT-CORRECT| (761 1
                                   (:REWRITE C::EXEC-BLOCK-ITEM-LIST-UNROLL))
                              (137 137 (:REWRITE C::VALUEP-WHEN-POINTERP))
                              (33 30 (:REWRITE C::NOT-SINTP-WHEN-UCHARP))
                              (30 30 (:REWRITE C::NOT-SINTP-WHEN-USHORTP))
                              (30 30 (:REWRITE C::NOT-SINTP-WHEN-ULONGP))
                              (30 30 (:REWRITE C::NOT-SINTP-WHEN-ULLONGP))
                              (30 30 (:REWRITE C::NOT-SINTP-WHEN-UINTP))
                              (30 30 (:REWRITE C::NOT-SINTP-WHEN-SSHORTP))
                              (30 30 (:REWRITE C::NOT-SINTP-WHEN-SLONGP))
                              (30 30 (:REWRITE C::NOT-SINTP-WHEN-SLLONGP))
                              (30 30 (:REWRITE C::NOT-SINTP-WHEN-SCHARP))
                              (30 30
                                  (:REWRITE C::NOT-SINTP-WHEN-POINTERP))
                              (23 23
                                  (:REWRITE C::NOT-SSHORTP-WHEN-ULONGP))
                              (23 23
                                  (:REWRITE C::NOT-SSHORTP-WHEN-ULLONGP))
                              (23 23
                                  (:REWRITE C::NOT-SSHORTP-WHEN-SLONGP))
                              (23 23
                                  (:REWRITE C::NOT-SSHORTP-WHEN-SLLONGP))
                              (23 23
                                  (:REWRITE C::NOT-SSHORTP-WHEN-POINTERP))
                              (23 23 (:REWRITE C::NOT-SCHARP-WHEN-ULONGP))
                              (23 23
                                  (:REWRITE C::NOT-SCHARP-WHEN-ULLONGP))
                              (23 23 (:REWRITE C::NOT-SCHARP-WHEN-SLONGP))
                              (23 23
                                  (:REWRITE C::NOT-SCHARP-WHEN-SLLONGP))
                              (23 23
                                  (:REWRITE C::NOT-SCHARP-WHEN-POINTERP))
                              (15 15
                                  (:REWRITE C::NOT-ERRORP-WHEN-VALUE-LISTP))
                              (15 15
                                  (:REWRITE C::NOT-ERRORP-WHEN-UCHAR-ARRAYP))
                              (15 15
                                  (:REWRITE C::NOT-ERRORP-WHEN-SCOPE-LISTP))
                              (15 15
                                  (:REWRITE C::EXEC-EXPR-PURE-UNROLL-5))
                              (13 13
                                  (:REWRITE C::NOT-USHORTP-WHEN-ULONGP))
                              (13 13
                                  (:REWRITE C::NOT-USHORTP-WHEN-ULLONGP))
                              (13 13
                                  (:REWRITE C::NOT-USHORTP-WHEN-SLONGP))
                              (13 13
                                  (:REWRITE C::NOT-USHORTP-WHEN-SLLONGP))
                              (13 13
                                  (:REWRITE C::NOT-USHORTP-WHEN-POINTERP))
                              (13 13 (:REWRITE C::NOT-UCHARP-WHEN-ULONGP))
                              (13 13
                                  (:REWRITE C::NOT-UCHARP-WHEN-ULLONGP))
                              (13 13 (:REWRITE C::NOT-UCHARP-WHEN-SLONGP))
                              (13 13
                                  (:REWRITE C::NOT-UCHARP-WHEN-SLLONGP))
                              (13 13
                                  (:REWRITE C::NOT-UCHARP-WHEN-POINTERP))
                              (10 10 (:REWRITE C::NOT-SLONGP-WHEN-ULONGP))
                              (10 10
                                  (:REWRITE C::NOT-SLONGP-WHEN-ULLONGP))
                              (10 10
                                  (:REWRITE C::NOT-SLONGP-WHEN-SLLONGP))
                              (10 10
                                  (:REWRITE C::NOT-SLONGP-WHEN-POINTERP))
                              (10 10
                                  (:REWRITE C::NOT-SLLONGP-WHEN-ULONGP))
                              (10 10
                                  (:REWRITE C::NOT-SLLONGP-WHEN-ULLONGP))
                              (10 10
                                  (:REWRITE C::NOT-SLLONGP-WHEN-SLONGP))
                              (10 10
                                  (:REWRITE C::NOT-SLLONGP-WHEN-POINTERP))
                              (10 10
                                  (:REWRITE C::EXEC-EXPR-PURE-UNROLL-3))
                              (10 10
                                  (:REWRITE C::EXEC-EXPR-PURE-UNROLL-2))
                              (10 10
                                  (:REWRITE C::EXEC-EXPR-PURE-UNROLL-1))
                              (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-8))
                              (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-7))
                              (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-6))
                              (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-5))
                              (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-4))
                              (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-3))
                              (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-2))
                              (8 8 (:REWRITE C::NOT-UINTP-WHEN-ULONGP))
                              (8 8 (:REWRITE C::NOT-UINTP-WHEN-ULLONGP))
                              (8 8 (:REWRITE C::NOT-UINTP-WHEN-SLONGP))
                              (8 8 (:REWRITE C::NOT-UINTP-WHEN-SLLONGP))
                              (8 8 (:REWRITE C::NOT-UINTP-WHEN-POINTERP))
                              (6 6 (:REWRITE C::EXEC-STMT-UNROLL-2))
                              (6 6 (:REWRITE C::EXEC-STMT-UNROLL-1))
                              (2 2 (:REWRITE C::VALUEP-WHEN-UCHARP))
                              (2 1 (:REWRITE C::INIT-SCOPE-BASE-2))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-8))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-7))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-6))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-5))
                              (1 1 (:REWRITE C::EXEC-STMT-BASE-4)))
(|f-EXEC-VAR-LIMIT-CORRECT|)
(C::|*PROGRAM*-f-CORRECT|)
(|g-RETURNS-VALUE|)
(|g-EXEC-CONST-LIMIT-CORRECT|
     (1015 1
           (:REWRITE C::EXEC-BLOCK-ITEM-LIST-UNROLL))
     (149 149 (:REWRITE C::VALUEP-WHEN-POINTERP))
     (37 34
         (:REWRITE C::NOT-ERRORP-WHEN-SCOPE-LISTP))
     (34 34
         (:REWRITE C::NOT-ERRORP-WHEN-UCHAR-ARRAYP))
     (30 30
         (:REWRITE C::EXEC-EXPR-PURE-UNROLL-5))
     (30 30
         (:REWRITE C::EXEC-EXPR-PURE-UNROLL-4))
     (30 30
         (:REWRITE C::EXEC-EXPR-PURE-UNROLL-3))
     (22 22
         (:REWRITE C::NOT-SSHORTP-WHEN-ULONGP))
     (22 22
         (:REWRITE C::NOT-SSHORTP-WHEN-ULLONGP))
     (22 22
         (:REWRITE C::NOT-SSHORTP-WHEN-SLONGP))
     (22 22
         (:REWRITE C::NOT-SSHORTP-WHEN-SLLONGP))
     (22 22
         (:REWRITE C::NOT-SSHORTP-WHEN-POINTERP))
     (22 22 (:REWRITE C::NOT-SINTP-WHEN-USHORTP))
     (22 22 (:REWRITE C::NOT-SINTP-WHEN-ULONGP))
     (22 22 (:REWRITE C::NOT-SINTP-WHEN-ULLONGP))
     (22 22 (:REWRITE C::NOT-SINTP-WHEN-UINTP))
     (22 22 (:REWRITE C::NOT-SINTP-WHEN-UCHARP))
     (22 22 (:REWRITE C::NOT-SINTP-WHEN-SSHORTP))
     (22 22 (:REWRITE C::NOT-SINTP-WHEN-SLONGP))
     (22 22 (:REWRITE C::NOT-SINTP-WHEN-SLLONGP))
     (22 22 (:REWRITE C::NOT-SINTP-WHEN-SCHARP))
     (22 22
         (:REWRITE C::NOT-SINTP-WHEN-POINTERP))
     (22 22 (:REWRITE C::NOT-SCHARP-WHEN-ULONGP))
     (22 22
         (:REWRITE C::NOT-SCHARP-WHEN-ULLONGP))
     (22 22 (:REWRITE C::NOT-SCHARP-WHEN-SLONGP))
     (22 22
         (:REWRITE C::NOT-SCHARP-WHEN-SLLONGP))
     (22 22
         (:REWRITE C::NOT-SCHARP-WHEN-POINTERP))
     (20 20
         (:REWRITE C::EXEC-EXPR-PURE-UNROLL-1))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-8))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-7))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-6))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-5))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-4))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-3))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-2))
     (12 12
         (:REWRITE C::NOT-USHORTP-WHEN-ULONGP))
     (12 12
         (:REWRITE C::NOT-USHORTP-WHEN-ULLONGP))
     (12 12
         (:REWRITE C::NOT-USHORTP-WHEN-SLONGP))
     (12 12
         (:REWRITE C::NOT-USHORTP-WHEN-SLLONGP))
     (12 12
         (:REWRITE C::NOT-USHORTP-WHEN-POINTERP))
     (12 12 (:REWRITE C::NOT-UINTP-WHEN-ULONGP))
     (12 12 (:REWRITE C::NOT-UINTP-WHEN-ULLONGP))
     (12 12 (:REWRITE C::NOT-UINTP-WHEN-SLONGP))
     (12 12 (:REWRITE C::NOT-UINTP-WHEN-SLLONGP))
     (12 12
         (:REWRITE C::NOT-UINTP-WHEN-POINTERP))
     (12 12 (:REWRITE C::NOT-UCHARP-WHEN-ULONGP))
     (12 12
         (:REWRITE C::NOT-UCHARP-WHEN-ULLONGP))
     (12 12 (:REWRITE C::NOT-UCHARP-WHEN-SLONGP))
     (12 12
         (:REWRITE C::NOT-UCHARP-WHEN-SLLONGP))
     (12 12
         (:REWRITE C::NOT-UCHARP-WHEN-POINTERP))
     (6 6 (:REWRITE C::EXEC-STMT-UNROLL-2))
     (6 6 (:REWRITE C::EXEC-STMT-UNROLL-1))
     (5 5
        (:REWRITE C::EXEC-EXPR-PURE-LIST-BASE-2))
     (3 3 (:REWRITE C::SCOPE-LISTP-OF-CONS))
     (2 1 (:REWRITE C::INIT-SCOPE-BASE-2))
     (1 1 (:REWRITE C::VALUEP-WHEN-UCHARP))
     (1 1 (:REWRITE C::EXEC-STMT-BASE-8))
     (1 1 (:REWRITE C::EXEC-STMT-BASE-7))
     (1 1 (:REWRITE C::EXEC-STMT-BASE-6))
     (1 1 (:REWRITE C::EXEC-STMT-BASE-5))
     (1 1 (:REWRITE C::EXEC-STMT-BASE-4)))
(|g-EXEC-VAR-LIMIT-CORRECT|)
(C::|*PROGRAM*-g-CORRECT|)
(|h-RETURNS-VALUE|)
(|h-EXEC-CONST-LIMIT-CORRECT|
     (1520 1
           (:REWRITE C::EXEC-BLOCK-ITEM-LIST-UNROLL))
     (257 257 (:REWRITE C::VALUEP-WHEN-POINTERP))
     (54 54 (:REWRITE C::NOT-SINTP-WHEN-USHORTP))
     (54 54 (:REWRITE C::NOT-SINTP-WHEN-ULONGP))
     (54 54 (:REWRITE C::NOT-SINTP-WHEN-ULLONGP))
     (54 54 (:REWRITE C::NOT-SINTP-WHEN-UINTP))
     (54 54 (:REWRITE C::NOT-SINTP-WHEN-UCHARP))
     (54 54 (:REWRITE C::NOT-SINTP-WHEN-SSHORTP))
     (54 54 (:REWRITE C::NOT-SINTP-WHEN-SLONGP))
     (54 54 (:REWRITE C::NOT-SINTP-WHEN-SLLONGP))
     (54 54 (:REWRITE C::NOT-SINTP-WHEN-SCHARP))
     (54 54
         (:REWRITE C::NOT-SINTP-WHEN-POINTERP))
     (43 43
         (:REWRITE C::NOT-SSHORTP-WHEN-ULONGP))
     (43 43
         (:REWRITE C::NOT-SSHORTP-WHEN-ULLONGP))
     (43 43
         (:REWRITE C::NOT-SSHORTP-WHEN-SLONGP))
     (43 43
         (:REWRITE C::NOT-SSHORTP-WHEN-SLLONGP))
     (43 43
         (:REWRITE C::NOT-SSHORTP-WHEN-POINTERP))
     (43 43 (:REWRITE C::NOT-SCHARP-WHEN-ULONGP))
     (43 43
         (:REWRITE C::NOT-SCHARP-WHEN-ULLONGP))
     (43 43 (:REWRITE C::NOT-SCHARP-WHEN-SLONGP))
     (43 43
         (:REWRITE C::NOT-SCHARP-WHEN-SLLONGP))
     (43 43
         (:REWRITE C::NOT-SCHARP-WHEN-POINTERP))
     (36 35
         (:REWRITE C::NOT-ERRORP-WHEN-SCOPE-LISTP))
     (35 35
         (:REWRITE C::NOT-ERRORP-WHEN-UCHAR-ARRAYP))
     (30 30
         (:REWRITE C::EXEC-EXPR-PURE-UNROLL-5))
     (23 23
         (:REWRITE C::NOT-USHORTP-WHEN-ULONGP))
     (23 23
         (:REWRITE C::NOT-USHORTP-WHEN-ULLONGP))
     (23 23
         (:REWRITE C::NOT-USHORTP-WHEN-SLONGP))
     (23 23
         (:REWRITE C::NOT-USHORTP-WHEN-SLLONGP))
     (23 23
         (:REWRITE C::NOT-USHORTP-WHEN-POINTERP))
     (23 23 (:REWRITE C::NOT-UCHARP-WHEN-ULONGP))
     (23 23
         (:REWRITE C::NOT-UCHARP-WHEN-ULLONGP))
     (23 23 (:REWRITE C::NOT-UCHARP-WHEN-SLONGP))
     (23 23
         (:REWRITE C::NOT-UCHARP-WHEN-SLLONGP))
     (23 23
         (:REWRITE C::NOT-UCHARP-WHEN-POINTERP))
     (20 20 (:REWRITE C::NOT-SLONGP-WHEN-ULONGP))
     (20 20
         (:REWRITE C::NOT-SLONGP-WHEN-ULLONGP))
     (20 20
         (:REWRITE C::NOT-SLONGP-WHEN-SLLONGP))
     (20 20
         (:REWRITE C::NOT-SLONGP-WHEN-POINTERP))
     (20 20
         (:REWRITE C::NOT-SLLONGP-WHEN-ULONGP))
     (20 20
         (:REWRITE C::NOT-SLLONGP-WHEN-ULLONGP))
     (20 20
         (:REWRITE C::NOT-SLLONGP-WHEN-SLONGP))
     (20 20
         (:REWRITE C::NOT-SLLONGP-WHEN-POINTERP))
     (20 20
         (:REWRITE C::EXEC-EXPR-PURE-UNROLL-3))
     (20 20
         (:REWRITE C::EXEC-EXPR-PURE-UNROLL-2))
     (20 20
         (:REWRITE C::EXEC-EXPR-PURE-UNROLL-1))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-8))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-7))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-6))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-5))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-4))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-3))
     (20 20 (:REWRITE C::EXEC-EXPR-PURE-BASE-2))
     (13 13 (:REWRITE C::NOT-UINTP-WHEN-ULONGP))
     (13 13 (:REWRITE C::NOT-UINTP-WHEN-ULLONGP))
     (13 13 (:REWRITE C::NOT-UINTP-WHEN-SLONGP))
     (13 13 (:REWRITE C::NOT-UINTP-WHEN-SLLONGP))
     (13 13
         (:REWRITE C::NOT-UINTP-WHEN-POINTERP))
     (6 6 (:REWRITE C::EXEC-STMT-UNROLL-2))
     (6 6 (:REWRITE C::EXEC-STMT-UNROLL-1))
     (5 5
        (:REWRITE C::EXEC-EXPR-PURE-LIST-BASE-2))
     (2 2 (:REWRITE C::VALUEP-WHEN-UCHARP))
     (2 1 (:REWRITE C::INIT-SCOPE-BASE-2))
     (1 1 (:REWRITE C::SCOPE-LISTP-OF-CONS))
     (1 1 (:REWRITE C::EXEC-STMT-BASE-8))
     (1 1 (:REWRITE C::EXEC-STMT-BASE-7))
     (1 1 (:REWRITE C::EXEC-STMT-BASE-6))
     (1 1 (:REWRITE C::EXEC-STMT-BASE-5))
     (1 1 (:REWRITE C::EXEC-STMT-BASE-4)))
(|h-EXEC-VAR-LIMIT-CORRECT|)
(C::|*PROGRAM*-h-CORRECT|)
