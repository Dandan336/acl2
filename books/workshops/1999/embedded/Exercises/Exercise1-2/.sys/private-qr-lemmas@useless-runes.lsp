(CANCEL-<-+-3
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(CANCEL-EQUAL-+-3
 (6 6 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(CANCEL-EQUAL-+-RIGHT
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(RATIO-THEORY-OF-1
 (50 50 (:REWRITE DEFAULT-<-2))
 (50 50 (:REWRITE DEFAULT-<-1))
 (20 20 (:REWRITE DEFAULT-*-2))
 (20 20 (:REWRITE DEFAULT-*-1))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(NIQ-BOUNDS-HELP-1
 (26 26 (:REWRITE DEFAULT-*-2))
 (26 26 (:REWRITE DEFAULT-*-1))
 (15 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(NIQ-BOUNDS
 (96 84 (:REWRITE DEFAULT-<-2))
 (84 84 (:REWRITE DEFAULT-<-1))
 (46 39 (:REWRITE DEFAULT-*-2))
 (45 33 (:REWRITE DEFAULT-+-2))
 (42 39 (:REWRITE DEFAULT-*-1))
 (33 33 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(NIQ-TYPE
 (126 109 (:REWRITE DEFAULT-<-2))
 (111 109 (:REWRITE DEFAULT-<-1))
 (61 49 (:REWRITE DEFAULT-*-2))
 (54 49 (:REWRITE DEFAULT-*-1))
 (12 11 (:REWRITE DEFAULT-+-2))
 (11 11 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE INTEGERP-+-MINUS-*))
 )
(TRUNCATE-REM-ELIM
 (5 3 (:REWRITE DEFAULT-*-2))
 (4 3 (:REWRITE DEFAULT-*-1))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(TRUNCATE-=-X/Y
 (90 76 (:REWRITE DEFAULT-*-1))
 (77 14 (:REWRITE NIQ-TYPE . 3))
 (76 76 (:REWRITE DEFAULT-*-2))
 (47 47 (:REWRITE INTEGERP-+-MINUS-*))
 (42 14 (:REWRITE NIQ-TYPE . 2))
 (25 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (24 23 (:REWRITE DEFAULT-<-2))
 (24 23 (:REWRITE DEFAULT-<-1))
 (20 13 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (13 13 (:REWRITE DEFAULT-DENOMINATOR))
 )
(TRUNCATE-BOUNDS
 (224 80 (:LINEAR RATIO-THEORY-OF-1))
 (160 20 (:REWRITE NIQ-TYPE . 3))
 (140 136 (:REWRITE DEFAULT-<-2))
 (140 136 (:REWRITE DEFAULT-<-1))
 (108 108 (:REWRITE DEFAULT-*-2))
 (108 108 (:REWRITE DEFAULT-*-1))
 (60 20 (:REWRITE NIQ-TYPE . 2))
 (48 44 (:REWRITE DEFAULT-UNARY-MINUS))
 (40 40 (:REWRITE INTEGERP-+-MINUS-*))
 (24 8 (:LINEAR NIQ-TYPE))
 (18 18 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-+-1))
 (16 8 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (12 4 (:REWRITE NORMALIZE-<-MINUS-/))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:REWRITE <-UNARY-/-POSITIVE-LEFT))
 )
(TRUNCATE-TYPE
 (161 161 (:REWRITE DEFAULT-*-2))
 (161 161 (:REWRITE DEFAULT-*-1))
 (161 151 (:REWRITE DEFAULT-<-2))
 (161 151 (:REWRITE DEFAULT-<-1))
 (76 76 (:REWRITE INTEGERP-+-MINUS-*))
 (48 48 (:REWRITE DEFAULT-+-2))
 (48 48 (:REWRITE DEFAULT-+-1))
 (35 35 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 1 (:REWRITE <-*-/-RIGHT))
 (3 1 (:REWRITE <-*-/-LEFT))
 )
(FOO
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(TRUNCATE-MINUS
 (20 20 (:REWRITE DEFAULT-*-2))
 (20 20 (:REWRITE DEFAULT-*-1))
 (16 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 10 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (9 6 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (8 8 (:REWRITE INTEGERP-+-MINUS-*))
 (7 6 (:REWRITE DEFAULT-DENOMINATOR))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 )
(REWRITE-TRUNCATE-X*Y-Z-LEFT
 (48 48 (:REWRITE DEFAULT-*-2))
 (48 48 (:REWRITE DEFAULT-*-1))
 (9 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE INTEGERP-+-MINUS-*))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 )
(REWRITE-TRUNCATE-X*Y-Z-RIGHT
 (44 44 (:REWRITE DEFAULT-*-2))
 (44 44 (:REWRITE DEFAULT-*-1))
 (9 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE INTEGERP-+-MINUS-*))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 )
(TRUNCATE-CANCEL-*
 (12 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-*-1))
 (4 4 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (4 4 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(INTEGER-TRUNCATE-AS-NIQ
 (1193 96 (:REWRITE TRUNCATE-TYPE . 2))
 (910 832 (:REWRITE DEFAULT-<-1))
 (894 832 (:REWRITE DEFAULT-<-2))
 (552 527 (:REWRITE DEFAULT-UNARY-MINUS))
 (532 290 (:LINEAR RATIO-THEORY-OF-1))
 (394 357 (:REWRITE DEFAULT-*-2))
 (357 357 (:REWRITE DEFAULT-*-1))
 (133 40 (:REWRITE NIQ-TYPE . 2))
 (116 116 (:REWRITE INTEGERP-+-MINUS-*))
 (98 29 (:LINEAR NIQ-TYPE))
 (58 58 (:REWRITE DEFAULT-+-2))
 (58 58 (:REWRITE DEFAULT-+-1))
 (51 29 (:LINEAR TRUNCATE-TYPE . 4))
 (47 29 (:LINEAR TRUNCATE-TYPE . 2))
 (47 29 (:LINEAR TRUNCATE-TYPE . 1))
 (41 29 (:LINEAR TRUNCATE-TYPE . 3))
 (18 18 (:REWRITE <-UNARY-/-POSITIVE-LEFT))
 )
(LINEARIZE-REM
 (123 123 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 4))
 (123 123 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 3))
 (123 123 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 2))
 (123 123 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 1))
 (106 41 (:REWRITE DEFAULT-*-2))
 (88 23 (:REWRITE DEFAULT-+-2))
 (86 21 (:REWRITE DEFAULT-UNARY-MINUS))
 (81 41 (:REWRITE DEFAULT-*-1))
 (73 23 (:REWRITE DEFAULT-+-1))
 (66 8 (:REWRITE TRUNCATE-TYPE . 2))
 (49 29 (:REWRITE DEFAULT-<-2))
 (49 29 (:REWRITE DEFAULT-<-1))
 (38 10 (:DEFINITION ABS))
 (23 8 (:REWRITE TRUNCATE-=-X/Y . 2))
 (5 5 (:REWRITE INTEGERP-+-MINUS-*))
 )
(REM-=-0
 (715 690 (:REWRITE DEFAULT-*-2))
 (695 690 (:REWRITE DEFAULT-*-1))
 (238 228 (:REWRITE DEFAULT-+-2))
 (238 228 (:REWRITE DEFAULT-+-1))
 (114 114 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 4))
 (114 114 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 3))
 (114 114 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 2))
 (114 114 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 1))
 (65 5 (:REWRITE TRUNCATE-TYPE . 2))
 (39 39 (:REWRITE INTEGERP-+-MINUS-*))
 (38 38 (:REWRITE DEFAULT-<-2))
 (38 38 (:REWRITE DEFAULT-<-1))
 (30 20 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(REM-X-Y-=-X
 (13 1 (:REWRITE TRUNCATE-TYPE . 2))
 (12 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (8 8 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 4))
 (8 8 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 3))
 (8 8 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 2))
 (8 8 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 1))
 (7 2 (:REWRITE DEFAULT-+-2))
 (7 2 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (4 1 (:REWRITE TRUNCATE-=-X/Y . 2))
 (4 1 (:REWRITE REM-=-0 . 2))
 (2 2 (:REWRITE INTEGERP-+-MINUS-*))
 )
(INTEGERP-REM
 (16 4 (:DEFINITION ABS))
 (13 1 (:REWRITE TRUNCATE-TYPE . 2))
 (13 1 (:REWRITE REM-X-Y-=-X . 2))
 (10 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 4 (:REWRITE DEFAULT-*-2))
 (9 4 (:REWRITE DEFAULT-*-1))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 1 (:REWRITE DEFAULT-+-2))
 (5 5 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 4))
 (5 5 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 3))
 (5 5 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 2))
 (5 5 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 1))
 (4 4 (:TYPE-PRESCRIPTION ABS))
 (4 1 (:REWRITE TRUNCATE-=-X/Y . 2))
 (4 1 (:REWRITE REM-=-0 . 2))
 (2 2 (:REWRITE INTEGERP-+-MINUS-*))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(REM-BOUNDS
 (841 68 (:REWRITE TRUNCATE-TYPE . 2))
 (572 451 (:REWRITE DEFAULT-<-1))
 (528 451 (:REWRITE DEFAULT-<-2))
 (269 184 (:REWRITE DEFAULT-UNARY-MINUS))
 (219 204 (:REWRITE DEFAULT-*-2))
 (214 204 (:REWRITE DEFAULT-*-1))
 (176 14 (:REWRITE REM-X-Y-=-X . 2))
 (162 77 (:REWRITE DEFAULT-+-2))
 (162 77 (:REWRITE DEFAULT-+-1))
 (138 138 (:TYPE-PRESCRIPTION INTEGERP-REM))
 (96 32 (:REWRITE NORMALIZE-<-MINUS-/))
 (63 63 (:REWRITE INTEGERP-+-MINUS-*))
 (56 14 (:REWRITE REM-=-0 . 2))
 (24 8 (:LINEAR TRUNCATE-TYPE . 4))
 (12 8 (:LINEAR TRUNCATE-TYPE . 2))
 (12 8 (:LINEAR TRUNCATE-TYPE . 1))
 (6 6 (:REWRITE <-UNARY-/-POSITIVE-RIGHT))
 (6 6 (:REWRITE <-UNARY-/-POSITIVE-LEFT))
 (1 1 (:REWRITE <-*-/-LEFT-COMMUTED))
 )
(REM-TYPE
 (343 28 (:REWRITE TRUNCATE-TYPE . 2))
 (278 278 (:TYPE-PRESCRIPTION INTEGERP-REM))
 (233 196 (:REWRITE DEFAULT-<-2))
 (233 196 (:REWRITE DEFAULT-<-1))
 (144 88 (:REWRITE DEFAULT-UNARY-MINUS))
 (126 10 (:REWRITE REM-X-Y-=-X . 2))
 (86 30 (:REWRITE DEFAULT-+-1))
 (84 84 (:REWRITE DEFAULT-*-2))
 (84 84 (:REWRITE DEFAULT-*-1))
 (72 40 (:LINEAR RATIO-THEORY-OF-1))
 (50 30 (:REWRITE DEFAULT-+-2))
 (28 28 (:REWRITE INTEGERP-+-MINUS-*))
 (28 10 (:REWRITE REM-=-0 . 2))
 (18 8 (:LINEAR TRUNCATE-TYPE . 2))
 (18 8 (:LINEAR TRUNCATE-TYPE . 1))
 (16 8 (:LINEAR TRUNCATE-TYPE . 4))
 (16 8 (:LINEAR TRUNCATE-TYPE . 3))
 (15 5 (:REWRITE NORMALIZE-<-MINUS-/))
 )
(REM-MINUS
 (104 40 (:REWRITE DEFAULT-*-2))
 (96 96 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 4))
 (96 96 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 3))
 (96 96 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 2))
 (96 96 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 1))
 (68 32 (:REWRITE DEFAULT-UNARY-MINUS))
 (65 18 (:REWRITE DEFAULT-+-2))
 (65 18 (:REWRITE DEFAULT-+-1))
 (61 40 (:REWRITE DEFAULT-*-1))
 (51 12 (:DEFINITION ABS))
 (44 4 (:REWRITE REM-X-Y-=-X . 2))
 (43 8 (:REWRITE TRUNCATE-TYPE . 2))
 (38 38 (:TYPE-PRESCRIPTION REM-TYPE . 3))
 (38 38 (:TYPE-PRESCRIPTION REM-TYPE . 2))
 (38 38 (:TYPE-PRESCRIPTION REM-TYPE . 1))
 (38 38 (:TYPE-PRESCRIPTION INTEGERP-REM))
 (22 22 (:REWRITE DEFAULT-<-2))
 (22 22 (:REWRITE DEFAULT-<-1))
 (20 4 (:REWRITE REM-=-0 . 2))
 (17 8 (:REWRITE TRUNCATE-=-X/Y . 2))
 (7 7 (:REWRITE INTEGERP-+-MINUS-*))
 (6 2 (:REWRITE NORMALIZE-<-MINUS-/))
 )
(FLOOR-AS-TRUNCATE
 (44 5 (:REWRITE NIQ-TYPE . 3))
 (21 3 (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-LEFT))
 (17 17 (:REWRITE INTEGERP-+-MINUS-*))
 (15 15 (:REWRITE DEFAULT-*-2))
 (15 15 (:REWRITE DEFAULT-*-1))
 (15 5 (:REWRITE NIQ-TYPE . 2))
 (15 5 (:REWRITE COMMUTATIVITY-OF-*))
 (12 9 (:REWRITE DEFAULT-UNARY-MINUS))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (6 6 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 4))
 (6 6 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 3))
 (6 6 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 2))
 (6 6 (:TYPE-PRESCRIPTION TRUNCATE-TYPE . 1))
 (5 3 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (5 3 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (5 3 (:REWRITE DEFAULT-+-2))
 (4 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 (3 1 (:REWRITE <-*-/-RIGHT))
 )
(FLOOR-MOD-ELIM
 (5 3 (:REWRITE DEFAULT-*-2))
 (4 3 (:REWRITE DEFAULT-*-1))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 2 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(FLOOR-=-X/Y
 (90 76 (:REWRITE DEFAULT-*-1))
 (77 14 (:REWRITE NIQ-TYPE . 3))
 (76 76 (:REWRITE DEFAULT-*-2))
 (47 47 (:REWRITE INTEGERP-+-MINUS-*))
 (42 14 (:REWRITE NIQ-TYPE . 2))
 (28 21 (:REWRITE DEFAULT-UNARY-MINUS))
 (28 7 (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-LEFT))
 (25 23 (:REWRITE DEFAULT-<-1))
 (23 23 (:REWRITE DEFAULT-<-2))
 (20 13 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (15 8 (:REWRITE DEFAULT-+-2))
 (13 13 (:REWRITE DEFAULT-DENOMINATOR))
 (9 8 (:REWRITE DEFAULT-+-1))
 )
(FLOOR-BOUNDS
 (90 30 (:LINEAR RATIO-THEORY-OF-1))
 (80 10 (:REWRITE NIQ-TYPE . 3))
 (64 60 (:REWRITE DEFAULT-<-2))
 (60 60 (:REWRITE DEFAULT-<-1))
 (42 42 (:REWRITE DEFAULT-*-2))
 (42 42 (:REWRITE DEFAULT-*-1))
 (30 10 (:REWRITE NIQ-TYPE . 2))
 (14 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 10 (:REWRITE DEFAULT-+-2))
 (12 10 (:REWRITE DEFAULT-+-1))
 (12 4 (:LINEAR NIQ-TYPE))
 (10 10 (:REWRITE INTEGERP-+-MINUS-*))
 (6 2 (:REWRITE <-UNARY-/-POSITIVE-RIGHT))
 (6 2 (:REWRITE <-UNARY-/-POSITIVE-LEFT))
 (6 2 (:REWRITE <-UNARY-/-NEGATIVE-RIGHT))
 (6 2 (:REWRITE <-UNARY-/-NEGATIVE-LEFT))
 (4 2 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 )
(FLOOR-TYPE-1
 (120 40 (:LINEAR RATIO-THEORY-OF-1))
 (101 93 (:REWRITE DEFAULT-<-1))
 (93 93 (:REWRITE DEFAULT-<-2))
 (28 28 (:REWRITE DEFAULT-*-2))
 (28 28 (:REWRITE DEFAULT-*-1))
 (12 12 (:REWRITE INTEGERP-+-MINUS-*))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(FLOOR-TYPE-2
 (132 33 (:REWRITE FLOOR-=-X/Y . 2))
 (120 75 (:REWRITE DEFAULT-<-2))
 (75 75 (:REWRITE DEFAULT-<-1))
 (65 65 (:REWRITE DEFAULT-*-2))
 (65 65 (:REWRITE DEFAULT-*-1))
 (33 33 (:REWRITE INTEGERP-+-MINUS-*))
 (18 12 (:LINEAR FLOOR-TYPE-1 . 2))
 (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 12 (:LINEAR FLOOR-TYPE-1 . 1))
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE NORMALIZE-<-MINUS-/))
 )
(FLOOR-TYPE-3
 (336 336 (:REWRITE DEFAULT-<-2))
 (336 336 (:REWRITE DEFAULT-<-1))
 (265 265 (:REWRITE DEFAULT-*-2))
 (265 265 (:REWRITE DEFAULT-*-1))
 (87 87 (:REWRITE DEFAULT-+-2))
 (87 87 (:REWRITE DEFAULT-+-1))
 (53 23 (:LINEAR FLOOR-TYPE-1 . 1))
 (51 23 (:LINEAR FLOOR-TYPE-1 . 2))
 (49 49 (:REWRITE INTEGERP-+-MINUS-*))
 (36 14 (:REWRITE <-*-/-RIGHT))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 3 (:REWRITE NORMALIZE-<-MINUS-/))
 (3 1 (:REWRITE <-*-/-LEFT))
 )
(FLOOR-TYPE-4
 (134 124 (:REWRITE DEFAULT-<-2))
 (129 124 (:REWRITE DEFAULT-<-1))
 (63 53 (:REWRITE DEFAULT-*-2))
 (63 53 (:REWRITE DEFAULT-*-1))
 (36 20 (:REWRITE FLOOR-TYPE-3 . 3))
 (36 20 (:REWRITE FLOOR-TYPE-3 . 2))
 (19 19 (:REWRITE INTEGERP-+-MINUS-*))
 (17 17 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 8 (:LINEAR FLOOR-TYPE-2 . 2))
 (12 8 (:LINEAR FLOOR-TYPE-2 . 1))
 (7 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE <-*-/-RIGHT))
 )
(FLOOR-MINUS
 (14 14 (:REWRITE DEFAULT-*-2))
 (14 14 (:REWRITE DEFAULT-*-1))
 (13 9 (:REWRITE DEFAULT-UNARY-MINUS))
 (13 7 (:REWRITE DEFAULT-+-2))
 (9 7 (:REWRITE DEFAULT-+-1))
 (7 7 (:REWRITE INTEGERP-+-MINUS-*))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(REWRITE-FLOOR-X*Y-Z-LEFT
 (6 6 (:REWRITE INTEGERP-+-MINUS-*))
 (6 6 (:REWRITE DEFAULT-*-2))
 (6 6 (:REWRITE DEFAULT-*-1))
 (6 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 4 (:REWRITE DEFAULT-+-2))
 (6 4 (:REWRITE DEFAULT-+-1))
 (3 2 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (3 2 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(REWRITE-FLOOR-X*Y-Z-RIGHT
 (6 6 (:REWRITE INTEGERP-+-MINUS-*))
 (6 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 4 (:REWRITE DEFAULT-+-2))
 (6 4 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 (3 2 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (3 2 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(FLOOR-CANCEL-*
 (12 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 8 (:REWRITE DEFAULT-+-2))
 (12 8 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-*-1))
 (4 4 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (4 4 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(FLOOR-CANCEL-*-2
 (6 6 (:REWRITE INTEGERP-+-MINUS-*))
 (6 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 4 (:REWRITE DEFAULT-+-2))
 (6 4 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (3 2 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (3 2 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(CROCK0
 (14 10 (:LINEAR RATIO-THEORY-OF-1))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(CROCK1
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-*-2))
 (3 3 (:REWRITE DEFAULT-*-1))
 )
(CROCK2
 (12 12 (:REWRITE DEFAULT-*-2))
 (12 12 (:REWRITE DEFAULT-*-1))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (7 1 (:REWRITE NORMALIZE-<-/-TO-*))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:LINEAR CROCK0))
 )
(JUSTIFY-FLOOR-RECURSION
 (298 298 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (298 298 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (49 34 (:REWRITE DEFAULT-<-2))
 (39 34 (:REWRITE DEFAULT-<-1))
 (32 8 (:REWRITE FLOOR-=-X/Y . 2))
 (20 20 (:REWRITE DEFAULT-*-2))
 (20 20 (:REWRITE DEFAULT-*-1))
 (17 2 (:LINEAR CROCK1))
 (13 9 (:REWRITE FLOOR-TYPE-4 . 3))
 (13 9 (:REWRITE FLOOR-TYPE-4 . 2))
 (13 9 (:REWRITE FLOOR-TYPE-3 . 3))
 (8 8 (:REWRITE INTEGERP-+-MINUS-*))
 (8 1 (:REWRITE <-UNARY-/-POSITIVE-LEFT))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 1 (:LINEAR FLOOR-TYPE-2 . 1))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:LINEAR FLOOR-TYPE-2 . 2))
 (1 1 (:LINEAR FLOOR-TYPE-1 . 2))
 (1 1 (:LINEAR FLOOR-TYPE-1 . 1))
 )
(LINEARIZE-MOD
 (123 123 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (123 123 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (123 123 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (123 123 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (106 41 (:REWRITE DEFAULT-*-2))
 (88 23 (:REWRITE DEFAULT-+-2))
 (81 41 (:REWRITE DEFAULT-*-1))
 (78 13 (:REWRITE DEFAULT-UNARY-MINUS))
 (73 23 (:REWRITE DEFAULT-+-1))
 (54 34 (:REWRITE DEFAULT-<-2))
 (54 34 (:REWRITE DEFAULT-<-1))
 (23 8 (:REWRITE FLOOR-=-X/Y . 2))
 (18 8 (:REWRITE FLOOR-TYPE-4 . 3))
 (18 8 (:REWRITE FLOOR-TYPE-4 . 2))
 (18 8 (:REWRITE FLOOR-TYPE-3 . 3))
 (18 8 (:REWRITE FLOOR-TYPE-3 . 2))
 (5 5 (:REWRITE INTEGERP-+-MINUS-*))
 )
(MOD-=-0
 (5503 5478 (:REWRITE DEFAULT-*-2))
 (5483 5478 (:REWRITE DEFAULT-*-1))
 (2306 2296 (:REWRITE DEFAULT-+-2))
 (2306 2296 (:REWRITE DEFAULT-+-1))
 (812 812 (:REWRITE DEFAULT-<-2))
 (812 812 (:REWRITE DEFAULT-<-1))
 (253 243 (:REWRITE DEFAULT-UNARY-MINUS))
 (124 124 (:REWRITE INTEGERP-+-MINUS-*))
 (114 114 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (114 114 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (114 114 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (114 114 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (15 5 (:REWRITE FLOOR-TYPE-4 . 3))
 (15 5 (:REWRITE FLOOR-TYPE-4 . 2))
 (15 5 (:REWRITE FLOOR-TYPE-3 . 3))
 (15 5 (:REWRITE FLOOR-TYPE-3 . 2))
 (12 12 (:REWRITE <-*-/-LEFT))
 )
(MOD-X-Y-=-X
 (22 22 (:REWRITE DEFAULT-<-2))
 (22 22 (:REWRITE DEFAULT-<-1))
 (8 8 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (8 8 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (8 8 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (8 8 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (7 2 (:REWRITE DEFAULT-+-2))
 (7 2 (:REWRITE DEFAULT-+-1))
 (6 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (4 1 (:REWRITE MOD-=-0 . 2))
 (4 1 (:REWRITE FLOOR-=-X/Y . 2))
 (3 1 (:REWRITE FLOOR-TYPE-4 . 3))
 (3 1 (:REWRITE FLOOR-TYPE-4 . 2))
 (3 1 (:REWRITE FLOOR-TYPE-3 . 3))
 (3 1 (:REWRITE FLOOR-TYPE-3 . 2))
 (2 2 (:REWRITE INTEGERP-+-MINUS-*))
 )
(ANOTHER-CROCK
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(MOD-X-Y-=-X+Y
 (83 83 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (83 83 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (83 83 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (83 83 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (45 35 (:REWRITE DEFAULT-<-2))
 (35 35 (:REWRITE DEFAULT-<-1))
 (13 13 (:REWRITE DEFAULT-*-2))
 (13 13 (:REWRITE DEFAULT-*-1))
 (12 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 3 (:REWRITE FLOOR-=-X/Y . 2))
 (11 6 (:REWRITE DEFAULT-+-2))
 (11 6 (:REWRITE DEFAULT-+-1))
 (9 3 (:REWRITE FLOOR-TYPE-4 . 3))
 (9 3 (:REWRITE FLOOR-TYPE-4 . 2))
 (9 3 (:REWRITE FLOOR-TYPE-3 . 3))
 (9 3 (:REWRITE FLOOR-TYPE-3 . 2))
 (4 4 (:REWRITE INTEGERP-+-MINUS-*))
 (4 1 (:REWRITE MOD-=-0 . 2))
 (3 1 (:REWRITE MOD-X-Y-=-X . 3))
 (3 1 (:REWRITE MOD-X-Y-=-X . 2))
 (3 1 (:REWRITE <-*-/-LEFT))
 )
(INTEGERP-MOD
 (9 4 (:REWRITE DEFAULT-*-2))
 (9 4 (:REWRITE DEFAULT-*-1))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (6 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 1 (:REWRITE DEFAULT-+-2))
 (5 5 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (5 5 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (5 5 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (5 5 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (4 1 (:REWRITE MOD-=-0 . 2))
 (4 1 (:REWRITE FLOOR-=-X/Y . 2))
 (3 1 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (3 1 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (3 1 (:REWRITE MOD-X-Y-=-X . 3))
 (3 1 (:REWRITE MOD-X-Y-=-X . 2))
 (3 1 (:REWRITE FLOOR-TYPE-4 . 3))
 (3 1 (:REWRITE FLOOR-TYPE-4 . 2))
 (3 1 (:REWRITE FLOOR-TYPE-3 . 3))
 (3 1 (:REWRITE FLOOR-TYPE-3 . 2))
 (2 2 (:REWRITE INTEGERP-+-MINUS-*))
 (1 1 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(MOD-BOUNDS
 (97 97 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (97 97 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (97 97 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (97 97 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (43 33 (:REWRITE DEFAULT-<-2))
 (43 33 (:REWRITE DEFAULT-<-1))
 (40 40 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (16 4 (:REWRITE FLOOR-=-X/Y . 2))
 (15 5 (:REWRITE DEFAULT-+-2))
 (15 5 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE DEFAULT-*-2))
 (12 12 (:REWRITE DEFAULT-*-1))
 (12 4 (:REWRITE FLOOR-TYPE-4 . 3))
 (12 4 (:REWRITE FLOOR-TYPE-4 . 2))
 (12 4 (:REWRITE FLOOR-TYPE-3 . 3))
 (12 4 (:REWRITE FLOOR-TYPE-3 . 2))
 (12 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 2 (:REWRITE MOD-=-0 . 2))
 (6 6 (:REWRITE INTEGERP-+-MINUS-*))
 (6 2 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (6 2 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (6 2 (:REWRITE MOD-X-Y-=-X . 3))
 (6 2 (:REWRITE MOD-X-Y-=-X . 2))
 (3 1 (:REWRITE <-*-/-LEFT))
 )
(MOD-TYPE
 (2789 2724 (:REWRITE DEFAULT-*-2))
 (2744 2724 (:REWRITE DEFAULT-*-1))
 (1172 1117 (:REWRITE DEFAULT-+-2))
 (1152 1117 (:REWRITE DEFAULT-+-1))
 (1042 1042 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (1042 1042 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (1042 1042 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (1042 1042 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (1013 928 (:REWRITE DEFAULT-<-2))
 (943 928 (:REWRITE DEFAULT-<-1))
 (283 283 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (220 175 (:REWRITE DEFAULT-UNARY-MINUS))
 (195 65 (:REWRITE FLOOR-TYPE-4 . 3))
 (195 65 (:REWRITE FLOOR-TYPE-4 . 2))
 (195 65 (:REWRITE FLOOR-TYPE-3 . 3))
 (195 65 (:REWRITE FLOOR-TYPE-3 . 2))
 (49 49 (:REWRITE INTEGERP-+-MINUS-*))
 (45 15 (:LINEAR FLOOR-TYPE-2 . 2))
 (45 15 (:LINEAR FLOOR-TYPE-2 . 1))
 (45 15 (:LINEAR FLOOR-TYPE-1 . 2))
 (45 15 (:LINEAR FLOOR-TYPE-1 . 1))
 (30 10 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (30 10 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (30 10 (:REWRITE MOD-X-Y-=-X . 3))
 (30 10 (:REWRITE MOD-X-Y-=-X . 2))
 (30 10 (:LINEAR RATIO-THEORY-OF-1))
 (28 10 (:REWRITE MOD-=-0 . 2))
 (2 2 (:REWRITE <-UNARY-/-POSITIVE-RIGHT))
 (2 2 (:REWRITE <-UNARY-/-POSITIVE-LEFT))
 )
(MOD-MINUS
 (156 31 (:REWRITE DEFAULT-+-2))
 (116 51 (:REWRITE DEFAULT-*-2))
 (102 102 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (102 102 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (102 102 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (102 102 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (94 34 (:REWRITE DEFAULT-UNARY-MINUS))
 (71 51 (:REWRITE DEFAULT-*-1))
 (51 31 (:REWRITE DEFAULT-+-1))
 (48 48 (:REWRITE DEFAULT-<-2))
 (48 48 (:REWRITE DEFAULT-<-1))
 (38 38 (:TYPE-PRESCRIPTION MOD-TYPE . 3))
 (38 38 (:TYPE-PRESCRIPTION MOD-TYPE . 2))
 (38 38 (:TYPE-PRESCRIPTION MOD-TYPE . 1))
 (38 38 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (26 10 (:REWRITE FLOOR-TYPE-4 . 3))
 (26 10 (:REWRITE FLOOR-TYPE-4 . 2))
 (26 10 (:REWRITE FLOOR-TYPE-3 . 3))
 (26 10 (:REWRITE FLOOR-TYPE-3 . 2))
 (18 4 (:REWRITE MOD-=-0 . 2))
 (13 4 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (13 4 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (13 4 (:REWRITE MOD-X-Y-=-X . 3))
 (13 4 (:REWRITE MOD-X-Y-=-X . 2))
 (12 12 (:REWRITE INTEGERP-+-MINUS-*))
 (12 4 (:REWRITE NORMALIZE-<-MINUS-/))
 )
(SIMPLIFY-MOD-*
 (15 10 (:REWRITE DEFAULT-*-2))
 (13 13 (:TYPE-PRESCRIPTION FLOOR))
 (12 10 (:REWRITE DEFAULT-*-1))
 (6 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(FLOOR-X+I*Y-Y
 (292 14 (:REWRITE FLOOR-=-X/Y . 2))
 (119 119 (:REWRITE DEFAULT-*-2))
 (119 119 (:REWRITE DEFAULT-*-1))
 (51 47 (:REWRITE DEFAULT-+-2))
 (49 47 (:REWRITE DEFAULT-+-1))
 (20 20 (:REWRITE INTEGERP-+-MINUS-*))
 (15 15 (:REWRITE DEFAULT-UNARY-MINUS))
 (13 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE <-*-/-LEFT))
 )
(FLOOR-X+Y+I*Z-Z
 (370 16 (:REWRITE FLOOR-=-X/Y . 2))
 (286 16 (:REWRITE DISTRIBUTIVITY))
 (102 102 (:REWRITE DEFAULT-*-2))
 (102 102 (:REWRITE DEFAULT-*-1))
 (84 6 (:REWRITE COMMUTATIVITY-2-OF-*))
 (73 65 (:REWRITE DEFAULT-+-2))
 (69 65 (:REWRITE DEFAULT-+-1))
 (48 3 (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-RIGHT))
 (30 6 (:REWRITE COMMUTATIVITY-2-OF-+))
 (18 18 (:REWRITE INTEGERP-+-MINUS-*))
 (12 6 (:REWRITE UNICITY-OF-1))
 (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE INVERSE-OF-*))
 (6 6 (:DEFINITION FIX))
 )
(MOD-X+I*Y-Y
 (82 48 (:REWRITE DEFAULT-+-2))
 (76 8 (:REWRITE MOD-=-0 . 2))
 (71 59 (:REWRITE DEFAULT-*-2))
 (67 59 (:REWRITE DEFAULT-*-1))
 (54 48 (:REWRITE DEFAULT-+-1))
 (32 8 (:REWRITE FLOOR-=-X/Y . 2))
 (28 2 (:REWRITE COMMUTATIVITY-2-OF-*))
 (25 17 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 8 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (14 8 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (14 8 (:REWRITE MOD-X-Y-=-X . 3))
 (14 8 (:REWRITE MOD-X-Y-=-X . 2))
 (12 12 (:REWRITE INTEGERP-+-MINUS-*))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE UNICITY-OF-1))
 (2 2 (:REWRITE INVERSE-OF-*))
 )
(MOD-X+Y+I*Z-Z)
(FLOOR-+-CROCK
 (3408 3283 (:REWRITE DEFAULT-*-2))
 (3303 3283 (:REWRITE DEFAULT-*-1))
 (1975 183 (:REWRITE FLOOR-=-X/Y . 2))
 (1784 1571 (:REWRITE DEFAULT-+-2))
 (1659 1571 (:REWRITE DEFAULT-+-1))
 (335 335 (:REWRITE DEFAULT-<-2))
 (335 335 (:REWRITE DEFAULT-<-1))
 (298 280 (:REWRITE INTEGERP-+-MINUS-*))
 (249 63 (:REWRITE MOD-=-0 . 2))
 (189 63 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (189 63 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (189 63 (:REWRITE MOD-X-Y-=-X . 3))
 (189 63 (:REWRITE MOD-X-Y-=-X . 2))
 (69 69 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (57 57 (:REWRITE FLOOR-X+Y+I*Z-Z))
 (6 6 (:REWRITE /-CANCELLATION-ON-LEFT))
 (5 5 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(FLOOR-+
 (58 27 (:REWRITE DEFAULT-+-2))
 (52 27 (:REWRITE DEFAULT-+-1))
 (52 14 (:REWRITE FLOOR-=-X/Y . 2))
 (38 24 (:REWRITE DEFAULT-*-2))
 (38 24 (:REWRITE DEFAULT-*-1))
 (16 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 6 (:REWRITE MOD-=-0 . 2))
 (10 6 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (10 6 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (10 6 (:REWRITE MOD-X-Y-=-X . 3))
 (10 6 (:REWRITE MOD-X-Y-=-X . 2))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE INTEGERP-+-MINUS-*))
 )
(MOD-+-CROCK
 (3598 3471 (:REWRITE DEFAULT-*-2))
 (3491 3471 (:REWRITE DEFAULT-*-1))
 (2354 207 (:REWRITE MOD-=-0 . 2))
 (1832 1626 (:REWRITE DEFAULT-+-2))
 (1734 1626 (:REWRITE DEFAULT-+-1))
 (556 520 (:REWRITE DEFAULT-<-2))
 (556 520 (:REWRITE DEFAULT-<-1))
 (500 207 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (500 207 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (500 207 (:REWRITE MOD-X-Y-=-X . 3))
 (500 207 (:REWRITE MOD-X-Y-=-X . 2))
 (421 316 (:REWRITE INTEGERP-+-MINUS-*))
 (284 71 (:REWRITE FLOOR-=-X/Y . 2))
 (63 63 (:REWRITE MOD-X+Y+I*Z-Z))
 (18 6 (:REWRITE /-CANCELLATION-ON-LEFT))
 (5 5 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(MOD-+
 (76 12 (:REWRITE FLOOR-=-X/Y . 2))
 (56 32 (:REWRITE DEFAULT-*-2))
 (56 32 (:REWRITE DEFAULT-*-1))
 (44 22 (:REWRITE DEFAULT-+-2))
 (44 22 (:REWRITE DEFAULT-+-1))
 (40 8 (:REWRITE MOD-=-0 . 2))
 (32 8 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (32 8 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (32 8 (:REWRITE MOD-X-Y-=-X . 3))
 (32 8 (:REWRITE MOD-X-Y-=-X . 2))
 (20 12 (:REWRITE DEFAULT-<-2))
 (20 12 (:REWRITE DEFAULT-<-1))
 (16 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:REWRITE INTEGERP-+-MINUS-*))
 )
(CROCK0
 (5 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE INTEGERP-+-MINUS-*))
 )
(REWRITE-FLOOR-MOD
 (64 43 (:REWRITE DEFAULT-*-2))
 (51 43 (:REWRITE DEFAULT-*-1))
 (38 2 (:REWRITE DISTRIBUTIVITY))
 (22 11 (:REWRITE DEFAULT-UNARY-MINUS))
 (22 11 (:REWRITE DEFAULT-+-2))
 (20 2 (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-RIGHT))
 (15 15 (:REWRITE INTEGERP-+-MINUS-*))
 (15 11 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (8 2 (:REWRITE MOD-=-0 . 2))
 (6 2 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (6 2 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (6 2 (:REWRITE MOD-X-Y-=-X . 3))
 (6 2 (:REWRITE MOD-X-Y-=-X . 2))
 )
(REWRITE-MOD-MOD
 (79 6 (:REWRITE MOD-=-0 . 2))
 (49 34 (:REWRITE DEFAULT-*-2))
 (41 34 (:REWRITE DEFAULT-*-1))
 (38 2 (:REWRITE DISTRIBUTIVITY))
 (24 6 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (24 6 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (24 6 (:REWRITE MOD-X-Y-=-X . 3))
 (24 6 (:REWRITE MOD-X-Y-=-X . 2))
 (20 16 (:REWRITE DEFAULT-<-2))
 (20 16 (:REWRITE DEFAULT-<-1))
 (20 2 (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-RIGHT))
 (19 7 (:REWRITE FLOOR-=-X/Y . 2))
 (18 9 (:REWRITE DEFAULT-UNARY-MINUS))
 (17 9 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE INTEGERP-+-MINUS-*))
 (10 9 (:REWRITE DEFAULT-+-1))
 )
(CANCEL-FLOOR-+
 (29 17 (:REWRITE DEFAULT-+-2))
 (23 17 (:REWRITE DEFAULT-+-1))
 (13 11 (:REWRITE DEFAULT-*-2))
 (11 11 (:REWRITE DEFAULT-*-1))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (8 4 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (8 4 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (8 4 (:REWRITE MOD-X-Y-=-X . 3))
 (8 4 (:REWRITE MOD-X-Y-=-X . 2))
 (4 4 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (4 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE INTEGERP-+-MINUS-*))
 )
(CANCEL-FLOOR-+-3)
(CANCEL-MOD-+
 (12 8 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (12 8 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (12 8 (:REWRITE MOD-X-Y-=-X . 3))
 (12 8 (:REWRITE MOD-X-Y-=-X . 2))
 (9 5 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE INTEGERP-+-MINUS-*))
 )
(CANCEL-MOD-+-3)
(NOT-RATIONALP-RATIONALP-PLUS)
(NOT-RATIONALP-RATIONALP-UNARY---PLUS
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(SIMPLIFY-MOD-+-MOD-CROCK
 (6 6 (:REWRITE DEFAULT-*-2))
 (6 6 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(SIMPLIFY-MOD-+-MOD-CROCK-2
 (7 7 (:REWRITE DEFAULT-*-2))
 (7 7 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
(SIMPLIFY-MOD-+-MOD
 (14060 14000 (:REWRITE DEFAULT-*-2))
 (14040 14000 (:REWRITE DEFAULT-*-1))
 (8517 564 (:REWRITE MOD-=-0 . 2))
 (5441 5267 (:REWRITE DEFAULT-+-2))
 (5271 5267 (:REWRITE DEFAULT-+-1))
 (2670 2630 (:REWRITE DEFAULT-<-2))
 (2670 2630 (:REWRITE DEFAULT-<-1))
 (2446 2428 (:REWRITE INTEGERP-+-MINUS-*))
 (2336 2184 (:REWRITE DEFAULT-UNARY-MINUS))
 (1538 564 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (1538 564 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (1538 564 (:REWRITE MOD-X-Y-=-X . 3))
 (1538 564 (:REWRITE MOD-X-Y-=-X . 2))
 (960 460 (:LINEAR RATIO-THEORY-OF-1))
 (802 802 (:REWRITE NOT-RATIONALP-RATIONALP-PLUS))
 )
(MOD-+-CANCEL-0
 (66 9 (:REWRITE FLOOR-=-X/Y . 2))
 (60 56 (:REWRITE DEFAULT-*-2))
 (59 59 (:REWRITE DEFAULT-<-2))
 (59 59 (:REWRITE DEFAULT-<-1))
 (57 56 (:REWRITE DEFAULT-*-1))
 (31 26 (:REWRITE DEFAULT-+-2))
 (28 26 (:REWRITE DEFAULT-+-1))
 (25 25 (:REWRITE INTEGERP-+-MINUS-*))
 (16 6 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (16 6 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (16 6 (:REWRITE MOD-X-Y-=-X . 3))
 (16 6 (:REWRITE MOD-X-Y-=-X . 2))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(RATIONALP-MOD
 (20 20 (:TYPE-PRESCRIPTION MOD-TYPE . 4))
 (20 20 (:TYPE-PRESCRIPTION MOD-TYPE . 3))
 (20 20 (:TYPE-PRESCRIPTION MOD-TYPE . 2))
 (20 20 (:TYPE-PRESCRIPTION MOD-TYPE . 1))
 (20 20 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (9 4 (:REWRITE DEFAULT-*-2))
 (9 4 (:REWRITE DEFAULT-*-1))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (6 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 1 (:REWRITE DEFAULT-+-2))
 (5 5 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (5 5 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (5 5 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (5 5 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (4 1 (:REWRITE MOD-=-0 . 2))
 (4 1 (:REWRITE FLOOR-=-X/Y . 2))
 (3 1 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (3 1 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (3 1 (:REWRITE MOD-X-Y-=-X . 3))
 (3 1 (:REWRITE MOD-X-Y-=-X . 2))
 (3 1 (:REWRITE FLOOR-TYPE-4 . 3))
 (3 1 (:REWRITE FLOOR-TYPE-4 . 2))
 (3 1 (:REWRITE FLOOR-TYPE-3 . 3))
 (3 1 (:REWRITE FLOOR-TYPE-3 . 2))
 (2 2 (:REWRITE INTEGERP-+-MINUS-*))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(FLOOR-FLOOR-INTEGER-CROCK0
 (28 5 (:REWRITE FLOOR-=-X/Y . 2))
 (14 12 (:REWRITE DEFAULT-*-2))
 (13 12 (:REWRITE DEFAULT-*-1))
 (7 2 (:REWRITE COMMUTATIVITY-OF-*))
 (7 1 (:REWRITE MOD-=-0 . 2))
 (6 2 (:REWRITE DISTRIBUTIVITY-OF-/-OVER-*))
 (4 4 (:REWRITE INTEGERP-+-MINUS-*))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (3 1 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (3 1 (:REWRITE MOD-X-Y-=-X . 3))
 (3 1 (:REWRITE MOD-X-Y-=-X . 2))
 )
(FLOOR-FLOOR-INTEGER-CROCK1
 (52 7 (:REWRITE FLOOR-=-X/Y . 2))
 (37 28 (:REWRITE DEFAULT-*-2))
 (34 28 (:REWRITE DEFAULT-*-1))
 (14 2 (:REWRITE MOD-=-0 . 2))
 (9 4 (:REWRITE DEFAULT-+-1))
 (8 4 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE INTEGERP-+-MINUS-*))
 (6 2 (:REWRITE DISTRIBUTIVITY-OF-/-OVER-*))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (4 2 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (4 2 (:REWRITE MOD-X-Y-=-X . 3))
 (4 2 (:REWRITE MOD-X-Y-=-X . 2))
 )
(FLOOR-FLOOR-INTEGER-CROCK2
 (3784 110 (:LINEAR MOD-TYPE . 4))
 (3582 18 (:LINEAR FLOOR-TYPE-2 . 1))
 (2494 6 (:REWRITE FLOOR-TYPE-3 . 2))
 (2368 18 (:LINEAR FLOOR-TYPE-1 . 2))
 (2316 18 (:LINEAR FLOOR-TYPE-2 . 2))
 (2100 18 (:LINEAR FLOOR-TYPE-1 . 1))
 (1528 124 (:REWRITE MOD-=-0 . 2))
 (1486 6 (:REWRITE FLOOR-TYPE-3 . 3))
 (1419 1419 (:TYPE-PRESCRIPTION MOD-TYPE . 2))
 (1419 1419 (:TYPE-PRESCRIPTION MOD-TYPE . 1))
 (1419 1419 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (1135 1065 (:REWRITE DEFAULT-*-2))
 (1123 1065 (:REWRITE DEFAULT-*-1))
 (1118 86 (:LINEAR MOD-TYPE . 2))
 (989 631 (:REWRITE DEFAULT-<-1))
 (653 631 (:REWRITE DEFAULT-<-2))
 (414 414 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (414 414 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (358 124 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (358 124 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (358 124 (:REWRITE MOD-X-Y-=-X . 3))
 (358 124 (:REWRITE MOD-X-Y-=-X . 2))
 (311 311 (:REWRITE INTEGERP-+-MINUS-*))
 (272 6 (:REWRITE FLOOR-=-X/Y . 2))
 (86 86 (:LINEAR MOD-TYPE . 3))
 (86 86 (:LINEAR MOD-TYPE . 1))
 (28 2 (:REWRITE FLOOR-FLOOR-INTEGER-CROCK1))
 (28 2 (:REWRITE FLOOR-FLOOR-INTEGER-CROCK0))
 (7 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(FLOOR-FLOOR-INTEGER
 (38 4 (:REWRITE FLOOR-=-X/Y . 2))
 (17 15 (:REWRITE DEFAULT-*-2))
 (17 15 (:REWRITE DEFAULT-*-1))
 (16 2 (:REWRITE COMMUTATIVITY-2-OF-*))
 (14 4 (:REWRITE COMMUTATIVITY-OF-*))
 (13 1 (:REWRITE MOD-=-0 . 2))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 2 (:REWRITE DISTRIBUTIVITY-OF-/-OVER-*))
 (5 5 (:TYPE-PRESCRIPTION MOD))
 (5 5 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (4 4 (:REWRITE INTEGERP-+-MINUS-*))
 (3 2 (:REWRITE DEFAULT-+-2))
 (3 2 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (3 1 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (3 1 (:REWRITE MOD-X-Y-=-X . 3))
 (3 1 (:REWRITE MOD-X-Y-=-X . 2))
 )
(FLOOR-X+I*K-I*J
 (199 7 (:REWRITE FLOOR-=-X/Y . 2))
 (138 138 (:REWRITE DEFAULT-*-2))
 (138 138 (:REWRITE DEFAULT-*-1))
 (98 98 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (98 98 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (44 44 (:REWRITE DEFAULT-<-2))
 (44 44 (:REWRITE DEFAULT-<-1))
 (34 34 (:REWRITE DEFAULT-+-2))
 (34 34 (:REWRITE DEFAULT-+-1))
 (24 8 (:REWRITE FLOOR-TYPE-4 . 2))
 (24 8 (:REWRITE FLOOR-TYPE-3 . 3))
 (22 22 (:REWRITE INTEGERP-+-MINUS-*))
 (22 8 (:REWRITE FLOOR-TYPE-4 . 3))
 (18 18 (:TYPE-PRESCRIPTION MOD-TYPE . 3))
 (18 18 (:TYPE-PRESCRIPTION MOD-TYPE . 2))
 (18 18 (:TYPE-PRESCRIPTION MOD-TYPE . 1))
 (9 3 (:LINEAR FLOOR-TYPE-2 . 2))
 (9 3 (:LINEAR FLOOR-TYPE-2 . 1))
 (9 3 (:LINEAR FLOOR-TYPE-1 . 2))
 (9 3 (:LINEAR FLOOR-TYPE-1 . 1))
 )
(MOD-X+I*K-I*J
 (209 144 (:REWRITE DEFAULT-*-2))
 (192 6 (:REWRITE MOD-=-0 . 2))
 (174 144 (:REWRITE DEFAULT-*-1))
 (160 10 (:REWRITE CANCEL-MOD-+))
 (130 40 (:REWRITE DEFAULT-+-2))
 (74 2 (:LINEAR MOD-TYPE . 2))
 (72 72 (:TYPE-PRESCRIPTION MOD-TYPE . 3))
 (72 72 (:TYPE-PRESCRIPTION MOD-TYPE . 2))
 (72 72 (:TYPE-PRESCRIPTION MOD-TYPE . 1))
 (52 52 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (52 52 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (52 52 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (52 52 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (52 52 (:REWRITE DEFAULT-<-2))
 (52 52 (:REWRITE DEFAULT-<-1))
 (51 17 (:REWRITE DISTRIBUTIVITY-OF-/-OVER-*))
 (42 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (42 6 (:REWRITE FLOOR-=-X/Y . 2))
 (40 40 (:REWRITE DEFAULT-+-1))
 (31 31 (:REWRITE INTEGERP-+-MINUS-*))
 (24 12 (:REWRITE /-CANCELLATION-ON-LEFT))
 (21 7 (:REWRITE COMMUTATIVITY-OF-+))
 (18 6 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (18 6 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (18 6 (:REWRITE MOD-X-Y-=-X . 3))
 (18 6 (:REWRITE MOD-X-Y-=-X . 2))
 (18 6 (:REWRITE FLOOR-TYPE-4 . 3))
 (18 6 (:REWRITE FLOOR-TYPE-4 . 2))
 (18 6 (:REWRITE FLOOR-TYPE-3 . 3))
 (18 6 (:REWRITE FLOOR-TYPE-3 . 2))
 (12 12 (:DEFINITION FIX))
 (2 2 (:LINEAR MOD-TYPE . 3))
 (2 2 (:LINEAR MOD-TYPE . 1))
 )
(MOD-X-I*J-CROCK
 (295 271 (:TYPE-PRESCRIPTION MOD-TYPE . 2))
 (287 9 (:LINEAR MOD-TYPE . 2))
 (271 271 (:TYPE-PRESCRIPTION MOD-TYPE . 3))
 (271 271 (:TYPE-PRESCRIPTION MOD-TYPE . 1))
 (202 27 (:REWRITE MOD-=-0 . 2))
 (192 92 (:REWRITE DEFAULT-*-2))
 (178 6 (:REWRITE COMMUTATIVITY-2-OF-*))
 (174 35 (:REWRITE COMMUTATIVITY-OF-*))
 (120 4 (:REWRITE DISTRIBUTIVITY))
 (112 102 (:REWRITE DEFAULT-<-2))
 (112 102 (:REWRITE DEFAULT-<-1))
 (111 92 (:REWRITE DEFAULT-*-1))
 (102 27 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (102 27 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (102 27 (:REWRITE MOD-X-Y-=-X . 3))
 (102 27 (:REWRITE MOD-X-Y-=-X . 2))
 (81 13 (:REWRITE DEFAULT-+-1))
 (66 13 (:REWRITE DEFAULT-+-2))
 (43 37 (:REWRITE INTEGERP-+-MINUS-*))
 (20 2 (:REWRITE COMMUTATIVITY-OF-+))
 (9 9 (:LINEAR MOD-TYPE . 3))
 (9 9 (:LINEAR MOD-TYPE . 1))
 (8 2 (:REWRITE FLOOR-=-X/Y . 2))
 (6 2 (:REWRITE DISTRIBUTIVITY-OF-/-OVER-*))
 (6 2 (:REWRITE /-CANCELLATION-ON-LEFT))
 (4 2 (:DEFINITION FIX))
 )
(MOD-X-I*J
 (105 105 (:TYPE-PRESCRIPTION MOD-TYPE . 3))
 (105 105 (:TYPE-PRESCRIPTION MOD-TYPE . 2))
 (105 105 (:TYPE-PRESCRIPTION MOD-TYPE . 1))
 (73 8 (:REWRITE MOD-=-0 . 2))
 (39 31 (:REWRITE DEFAULT-*-2))
 (32 31 (:REWRITE DEFAULT-*-1))
 (32 4 (:REWRITE COMMUTATIVITY-2-OF-*))
 (31 10 (:REWRITE COMMUTATIVITY-OF-*))
 (28 26 (:REWRITE DEFAULT-<-2))
 (28 26 (:REWRITE DEFAULT-<-1))
 (25 8 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (25 8 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (25 8 (:REWRITE MOD-X-Y-=-X . 3))
 (25 8 (:REWRITE MOD-X-Y-=-X . 2))
 (20 2 (:LINEAR MOD-TYPE . 2))
 (12 4 (:REWRITE DISTRIBUTIVITY-OF-/-OVER-*))
 (10 10 (:REWRITE INTEGERP-+-MINUS-*))
 (8 2 (:REWRITE FLOOR-=-X/Y . 2))
 (7 1 (:REWRITE DEFAULT-+-2))
 (7 1 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR MOD-TYPE . 3))
 (2 2 (:LINEAR MOD-TYPE . 1))
 )
(CROCK0
 (6 6 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (6 6 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (6 6 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (6 6 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (5 5 (:TYPE-PRESCRIPTION MOD-TYPE . 4))
 (5 5 (:TYPE-PRESCRIPTION MOD-TYPE . 3))
 (5 5 (:TYPE-PRESCRIPTION MOD-TYPE . 2))
 (5 5 (:TYPE-PRESCRIPTION MOD-TYPE . 1))
 (5 5 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 )
(INTEGERP-I/J-INTEGERP-FORWARD
 (10 10 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (10 10 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (10 10 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (10 10 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (10 5 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (7 7 (:TYPE-PRESCRIPTION MOD-TYPE . 4))
 (7 7 (:TYPE-PRESCRIPTION MOD-TYPE . 3))
 (7 7 (:TYPE-PRESCRIPTION MOD-TYPE . 2))
 (7 7 (:TYPE-PRESCRIPTION MOD-TYPE . 1))
 (7 7 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (7 1 (:REWRITE DEFAULT-+-2))
 (6 1 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-*-1))
 (3 1 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (3 1 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (3 1 (:REWRITE MOD-X-Y-=-X . 3))
 (3 1 (:REWRITE MOD-X-Y-=-X . 2))
 (3 1 (:REWRITE FLOOR-TYPE-4 . 3))
 (3 1 (:REWRITE FLOOR-TYPE-4 . 2))
 (3 1 (:REWRITE FLOOR-TYPE-3 . 3))
 (3 1 (:REWRITE FLOOR-TYPE-3 . 2))
 (2 2 (:REWRITE INTEGERP-+-MINUS-*))
 )