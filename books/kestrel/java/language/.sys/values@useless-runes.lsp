(JAVA::LEMMA)
(JAVA::JVALUEP)
(JAVA::CONSP-WHEN-JVALUEP
 (9 3 (:REWRITE JAVA::LEMMA))
 )
(JAVA::JVALUE-KIND$INLINE)
(JAVA::JVALUE-KIND-POSSIBILITIES)
(JAVA::JVALUE-FIX$INLINE)
(JAVA::JVALUEP-OF-JVALUE-FIX
 (12 4 (:REWRITE JAVA::REFERENCE-VALUE-FIX-WHEN-REFERENCE-VALUEP))
 (12 4 (:REWRITE JAVA::PRIMITIVE-VALUE-FIX-WHEN-PRIMITIVE-VALUEP))
 (8 8 (:TYPE-PRESCRIPTION JAVA::PRIMITIVE-VALUEP))
 )
(JAVA::JVALUE-FIX-WHEN-JVALUEP)
(JAVA::JVALUE-FIX$INLINE)
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT)
(JAVA::JVALUE-EQUIV$INLINE)
(JAVA::JVALUE-EQUIV-IS-AN-EQUIVALENCE)
(JAVA::JVALUE-EQUIV-IMPLIES-EQUAL-JVALUE-FIX-1)
(JAVA::JVALUE-FIX-UNDER-JVALUE-EQUIV)
(JAVA::EQUAL-OF-JVALUE-FIX-1-FORWARD-TO-JVALUE-EQUIV)
(JAVA::EQUAL-OF-JVALUE-FIX-2-FORWARD-TO-JVALUE-EQUIV)
(JAVA::JVALUE-EQUIV-OF-JVALUE-FIX-1-FORWARD)
(JAVA::JVALUE-EQUIV-OF-JVALUE-FIX-2-FORWARD)
(JAVA::JVALUE-KIND$INLINE-OF-JVALUE-FIX-X
 (7 5 (:REWRITE JAVA::REFERENCE-VALUE-FIX-WHEN-REFERENCE-VALUEP))
 (1 1 (:REWRITE JAVA::JVALUE-FIX-WHEN-JVALUEP))
 )
(JAVA::JVALUE-KIND$INLINE-JVALUE-EQUIV-CONGRUENCE-ON-X)
(JAVA::JVALUE-PRIMITIVE->GET$INLINE
 (10 4 (:REWRITE JAVA::LEMMA))
 (6 6 (:TYPE-PRESCRIPTION JAVA::REFERENCE-VALUEP))
 )
(JAVA::PRIMITIVE-VALUEP-OF-JVALUE-PRIMITIVE->GET
 (3 1 (:REWRITE JAVA::PRIMITIVE-VALUE-FIX-WHEN-PRIMITIVE-VALUEP))
 (3 1 (:REWRITE JAVA::LEMMA))
 (2 2 (:TYPE-PRESCRIPTION JAVA::REFERENCE-VALUEP))
 )
(JAVA::JVALUE-PRIMITIVE->GET$INLINE-OF-JVALUE-FIX-X
 (12 4 (:REWRITE JAVA::JVALUE-FIX-WHEN-JVALUEP))
 (8 8 (:TYPE-PRESCRIPTION JAVA::JVALUEP))
 (6 2 (:REWRITE JAVA::LEMMA))
 (4 4 (:TYPE-PRESCRIPTION JAVA::REFERENCE-VALUEP))
 )
(JAVA::JVALUE-PRIMITIVE->GET$INLINE-JVALUE-EQUIV-CONGRUENCE-ON-X)
(JAVA::JVALUE-PRIMITIVE->GET-WHEN-WRONG-KIND
 (6 2 (:REWRITE JAVA::PRIMITIVE-VALUE-FIX-WHEN-PRIMITIVE-VALUEP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::PRIMITIVE-VALUEP))
 )
(JAVA::JVALUE-PRIMITIVE
 (3 1 (:REWRITE JAVA::LEMMA))
 (2 2 (:TYPE-PRESCRIPTION JAVA::REFERENCE-VALUEP))
 )
(JAVA::RETURN-TYPE-OF-JVALUE-PRIMITIVE
 (6 2 (:REWRITE JAVA::PRIMITIVE-VALUE-FIX-WHEN-PRIMITIVE-VALUEP))
 (6 2 (:REWRITE JAVA::LEMMA))
 )
(JAVA::JVALUE-PRIMITIVE->GET-OF-JVALUE-PRIMITIVE)
(JAVA::JVALUE-PRIMITIVE-OF-FIELDS
 (3 1 (:REWRITE JAVA::JVALUE-FIX-WHEN-JVALUEP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::JVALUEP))
 )
(JAVA::JVALUE-FIX-WHEN-PRIMITIVE
 (3 1 (:REWRITE JAVA::JVALUE-FIX-WHEN-JVALUEP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::JVALUEP))
 )
(JAVA::EQUAL-OF-JVALUE-PRIMITIVE)
(JAVA::JVALUE-PRIMITIVE-OF-PRIMITIVE-VALUE-FIX-GET)
(JAVA::JVALUE-PRIMITIVE-PRIMITIVE-VALUE-EQUIV-CONGRUENCE-ON-GET)
(JAVA::JVALUE-REFERENCE->GET$INLINE)
(JAVA::REFERENCE-VALUEP-OF-JVALUE-REFERENCE->GET
 (3 1 (:REWRITE JAVA::REFERENCE-VALUE-FIX-WHEN-REFERENCE-VALUEP))
 )
(JAVA::JVALUE-REFERENCE->GET$INLINE-OF-JVALUE-FIX-X
 (12 4 (:REWRITE JAVA::JVALUE-FIX-WHEN-JVALUEP))
 (8 8 (:TYPE-PRESCRIPTION JAVA::JVALUEP))
 (6 2 (:REWRITE JAVA::LEMMA))
 )
(JAVA::JVALUE-REFERENCE->GET$INLINE-JVALUE-EQUIV-CONGRUENCE-ON-X)
(JAVA::JVALUE-REFERENCE->GET-WHEN-WRONG-KIND
 (6 2 (:REWRITE JAVA::REFERENCE-VALUE-FIX-WHEN-REFERENCE-VALUEP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::REFERENCE-VALUEP))
 )
(JAVA::JVALUE-REFERENCE)
(JAVA::RETURN-TYPE-OF-JVALUE-REFERENCE
 (6 2 (:REWRITE JAVA::REFERENCE-VALUE-FIX-WHEN-REFERENCE-VALUEP))
 )
(JAVA::JVALUE-REFERENCE->GET-OF-JVALUE-REFERENCE)
(JAVA::JVALUE-REFERENCE-OF-FIELDS
 (3 1 (:REWRITE JAVA::JVALUE-FIX-WHEN-JVALUEP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::JVALUEP))
 )
(JAVA::JVALUE-FIX-WHEN-REFERENCE
 (3 1 (:REWRITE JAVA::JVALUE-FIX-WHEN-JVALUEP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::JVALUEP))
 )
(JAVA::EQUAL-OF-JVALUE-REFERENCE)
(JAVA::JVALUE-REFERENCE-OF-REFERENCE-VALUE-FIX-GET)
(JAVA::JVALUE-REFERENCE-REFERENCE-VALUE-EQUIV-CONGRUENCE-ON-GET)
(JAVA::JVALUE-FIX-REDEF
 (9 3 (:REWRITE JAVA::JVALUE-FIX-WHEN-JVALUEP))
 (6 6 (:TYPE-PRESCRIPTION JAVA::JVALUEP))
 )
(JAVA::JVALUEP-WHEN-PRIMITIVE-VALUEP)
(JAVA::JVALUEP-WHEN-REFERENCE-VALUEP)
(JAVA::LEMMA)
(JAVA::JVALUEXP)
(JAVA::CONSP-WHEN-JVALUEXP
 (9 3 (:REWRITE JAVA::LEMMA))
 )
(JAVA::JVALUEX-KIND$INLINE)
(JAVA::JVALUEX-KIND-POSSIBILITIES)
(JAVA::JVALUEX-FIX$INLINE
 (1 1 (:TYPE-PRESCRIPTION JAVA::JVALUEX-FIX$INLINE))
 )
(JAVA::JVALUEXP-OF-JVALUEX-FIX
 (12 4 (:REWRITE JAVA::REFERENCE-VALUE-FIX-WHEN-REFERENCE-VALUEP))
 (12 4 (:REWRITE JAVA::PRIMITIVEX-VALUE-FIX-WHEN-PRIMITIVEX-VALUEP))
 (8 8 (:TYPE-PRESCRIPTION JAVA::PRIMITIVEX-VALUEP))
 (3 3 (:TYPE-PRESCRIPTION JAVA::JVALUEX-FIX$INLINE))
 )
(JAVA::JVALUEX-FIX-WHEN-JVALUEXP
 (14 14 (:TYPE-PRESCRIPTION JAVA::JVALUEX-FIX$INLINE))
 )
(JAVA::JVALUEX-FIX$INLINE
 (16 16 (:TYPE-PRESCRIPTION JAVA::PRIMITIVEX-VALUE-FIX))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (24 24 (:TYPE-PRESCRIPTION JAVA::JVALUEX-FIX$INLINE))
 )
(JAVA::JVALUEX-EQUIV$INLINE
 (4 4 (:TYPE-PRESCRIPTION JAVA::JVALUEX-FIX$INLINE))
 )
(JAVA::JVALUEX-EQUIV-IS-AN-EQUIVALENCE)
(JAVA::JVALUEX-EQUIV-IMPLIES-EQUAL-JVALUEX-FIX-1)
(JAVA::JVALUEX-FIX-UNDER-JVALUEX-EQUIV)
(JAVA::EQUAL-OF-JVALUEX-FIX-1-FORWARD-TO-JVALUEX-EQUIV)
(JAVA::EQUAL-OF-JVALUEX-FIX-2-FORWARD-TO-JVALUEX-EQUIV)
(JAVA::JVALUEX-EQUIV-OF-JVALUEX-FIX-1-FORWARD)
(JAVA::JVALUEX-EQUIV-OF-JVALUEX-FIX-2-FORWARD)
(JAVA::JVALUEX-KIND$INLINE-OF-JVALUEX-FIX-X
 (7 5 (:REWRITE JAVA::REFERENCE-VALUE-FIX-WHEN-REFERENCE-VALUEP))
 (1 1 (:REWRITE JAVA::JVALUEX-FIX-WHEN-JVALUEXP))
 )
(JAVA::JVALUEX-KIND$INLINE-JVALUEX-EQUIV-CONGRUENCE-ON-X)
(JAVA::JVALUEX-PRIMITIVE->GET$INLINE
 (10 4 (:REWRITE JAVA::LEMMA))
 (6 6 (:TYPE-PRESCRIPTION JAVA::REFERENCE-VALUEP))
 (1 1 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE->GET$INLINE))
 )
(JAVA::PRIMITIVEX-VALUEP-OF-JVALUEX-PRIMITIVE->GET
 (3 3 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE->GET$INLINE))
 (3 1 (:REWRITE JAVA::PRIMITIVEX-VALUE-FIX-WHEN-PRIMITIVEX-VALUEP))
 (3 1 (:REWRITE JAVA::LEMMA))
 (2 2 (:TYPE-PRESCRIPTION JAVA::REFERENCE-VALUEP))
 )
(JAVA::JVALUEX-PRIMITIVE->GET$INLINE-OF-JVALUEX-FIX-X
 (83 54 (:TYPE-PRESCRIPTION JAVA::PRIMITIVEX-VALUE-FIX))
 (35 35 (:TYPE-PRESCRIPTION JAVA::JVALUEX-FIX$INLINE))
 (24 16 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE->GET$INLINE))
 (12 4 (:REWRITE JAVA::JVALUEX-FIX-WHEN-JVALUEXP))
 (8 8 (:TYPE-PRESCRIPTION JAVA::JVALUEXP))
 (6 2 (:REWRITE JAVA::LEMMA))
 (4 4 (:TYPE-PRESCRIPTION JAVA::REFERENCE-VALUEP))
 )
(JAVA::JVALUEX-PRIMITIVE->GET$INLINE-JVALUEX-EQUIV-CONGRUENCE-ON-X)
(JAVA::JVALUEX-PRIMITIVE->GET-WHEN-WRONG-KIND
 (13 13 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE->GET$INLINE))
 (6 2 (:REWRITE JAVA::PRIMITIVEX-VALUE-FIX-WHEN-PRIMITIVEX-VALUEP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::PRIMITIVEX-VALUEP))
 )
(JAVA::JVALUEX-PRIMITIVE
 (3 1 (:REWRITE JAVA::LEMMA))
 (2 2 (:TYPE-PRESCRIPTION JAVA::REFERENCE-VALUEP))
 (1 1 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE))
 )
(JAVA::RETURN-TYPE-OF-JVALUEX-PRIMITIVE
 (15 15 (:TYPE-PRESCRIPTION JAVA::PRIMITIVEX-VALUE-FIX))
 (6 2 (:REWRITE JAVA::PRIMITIVEX-VALUE-FIX-WHEN-PRIMITIVEX-VALUEP))
 (6 2 (:REWRITE JAVA::LEMMA))
 (3 3 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE))
 )
(JAVA::JVALUEX-PRIMITIVE->GET-OF-JVALUEX-PRIMITIVE
 (71 58 (:TYPE-PRESCRIPTION JAVA::PRIMITIVEX-VALUE-FIX))
 (21 21 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE))
 (16 8 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE->GET$INLINE))
 )
(JAVA::JVALUEX-PRIMITIVE-OF-FIELDS
 (20 10 (:TYPE-PRESCRIPTION JAVA::PRIMITIVEX-VALUE-FIX))
 (13 13 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE->GET$INLINE))
 (13 13 (:TYPE-PRESCRIPTION JAVA::JVALUEX-FIX$INLINE))
 (6 3 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE))
 (3 1 (:REWRITE JAVA::JVALUEX-FIX-WHEN-JVALUEXP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::JVALUEXP))
 )
(JAVA::JVALUEX-FIX-WHEN-PRIMITIVE
 (20 10 (:TYPE-PRESCRIPTION JAVA::PRIMITIVEX-VALUE-FIX))
 (13 13 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE->GET$INLINE))
 (13 13 (:TYPE-PRESCRIPTION JAVA::JVALUEX-FIX$INLINE))
 (6 3 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE))
 (3 1 (:REWRITE JAVA::JVALUEX-FIX-WHEN-JVALUEXP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::JVALUEXP))
 )
(JAVA::EQUAL-OF-JVALUEX-PRIMITIVE)
(JAVA::JVALUEX-PRIMITIVE-OF-PRIMITIVEX-VALUE-FIX-GET
 (27 27 (:TYPE-PRESCRIPTION JAVA::PRIMITIVEX-VALUE-FIX))
 (9 6 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE))
 )
(JAVA::JVALUEX-PRIMITIVE-PRIMITIVEX-VALUE-EQUIV-CONGRUENCE-ON-GET)
(JAVA::JVALUEX-REFERENCE->GET$INLINE)
(JAVA::REFERENCE-VALUEP-OF-JVALUEX-REFERENCE->GET
 (3 1 (:REWRITE JAVA::REFERENCE-VALUE-FIX-WHEN-REFERENCE-VALUEP))
 )
(JAVA::JVALUEX-REFERENCE->GET$INLINE-OF-JVALUEX-FIX-X
 (12 4 (:REWRITE JAVA::JVALUEX-FIX-WHEN-JVALUEXP))
 (8 8 (:TYPE-PRESCRIPTION JAVA::JVALUEXP))
 (6 2 (:REWRITE JAVA::LEMMA))
 )
(JAVA::JVALUEX-REFERENCE->GET$INLINE-JVALUEX-EQUIV-CONGRUENCE-ON-X)
(JAVA::JVALUEX-REFERENCE->GET-WHEN-WRONG-KIND
 (6 2 (:REWRITE JAVA::REFERENCE-VALUE-FIX-WHEN-REFERENCE-VALUEP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::REFERENCE-VALUEP))
 )
(JAVA::JVALUEX-REFERENCE)
(JAVA::RETURN-TYPE-OF-JVALUEX-REFERENCE
 (6 2 (:REWRITE JAVA::REFERENCE-VALUE-FIX-WHEN-REFERENCE-VALUEP))
 )
(JAVA::JVALUEX-REFERENCE->GET-OF-JVALUEX-REFERENCE)
(JAVA::JVALUEX-REFERENCE-OF-FIELDS
 (13 13 (:TYPE-PRESCRIPTION JAVA::JVALUEX-FIX$INLINE))
 (3 1 (:REWRITE JAVA::JVALUEX-FIX-WHEN-JVALUEXP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::JVALUEXP))
 )
(JAVA::JVALUEX-FIX-WHEN-REFERENCE
 (13 13 (:TYPE-PRESCRIPTION JAVA::JVALUEX-FIX$INLINE))
 (3 1 (:REWRITE JAVA::JVALUEX-FIX-WHEN-JVALUEXP))
 (2 2 (:TYPE-PRESCRIPTION JAVA::JVALUEXP))
 )
(JAVA::EQUAL-OF-JVALUEX-REFERENCE)
(JAVA::JVALUEX-REFERENCE-OF-REFERENCE-VALUE-FIX-GET)
(JAVA::JVALUEX-REFERENCE-REFERENCE-VALUE-EQUIV-CONGRUENCE-ON-GET)
(JAVA::JVALUEX-FIX-REDEF
 (22 11 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE))
 (15 15 (:TYPE-PRESCRIPTION JAVA::JVALUEX-FIX$INLINE))
 (12 12 (:TYPE-PRESCRIPTION JAVA::JVALUEX-PRIMITIVE->GET$INLINE))
 (9 3 (:REWRITE JAVA::JVALUEX-FIX-WHEN-JVALUEXP))
 (6 6 (:TYPE-PRESCRIPTION JAVA::JVALUEXP))
 )
(JAVA::JVALUEXP-WHEN-PRIMITIVEX-VALUEP)
(JAVA::JVALUEXP-WHEN-REFERENCE-VALUEP)