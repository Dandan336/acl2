; Isar (Intelligible Semi-Automated Reasoning) Library
;
; Copyright (C) 2021 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ISAR")

(include-book "kestrel/event-macros/xdoc-constructors" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc defisar

  :parents (isar)

  :short "Prove a theorem in an Isar style."

  :long

  (xdoc::topstring

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::evmac-section-intro

    (xdoc::p
     "This macro is like @(tsee defthm),
      but instead of @(':hints') or @(':instructions'),
      it accepts an " (xdoc::seetopic "isar" "Isar") "-style proof script.
      The script, starting with the hypotheses of the theorem's formula,
      derives intermediate facts, provable via ACL2's @(':hints') mechanism,
      and eventually derives the conclusion of the theorem's formula,
      thus proving the theorem."))

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::evmac-section-form

    (xdoc::codeblock
     "(defisar name"
     "  formula"
     "  :proof ...)"))

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::evmac-section-inputs

    (xdoc::desc
     "@('name')"
     (xdoc::p
      "Name of the theorem to prove.")
     (xdoc::p
      "This is the same as in @(tsee defthm)."))

    (xdoc::desc
     "@('formula')"
     (xdoc::p
      "Formula of the theorem to prove.")
     (xdoc::p
      "This is the same as in @(tsee defthm).")
     (xdoc::p
      "Let @('<hyp1>'), ..., @('<hypn>') be the hypotheses
       and @('concl') be the conclusion of the formula,
       defined as follows:")
     (xdoc::ul
      (xdoc::li
       "If @('formula') is not an implication,
        i.e. it does not have the form @('(implies ... ...)'),
        then @('n') is 0 (i.e. there are no @('hypi') hypotheses
        and @('concl') is all of @('formula').")
      (xdoc::li
       "Otherwise, @('formula') has the form @('(implies hyps concl')').
        In this case, @('concl') is the conclusion of the implication.
        For the hypotheses, there are two cases.")
      (xdoc::li
       "If @('hyps') is not a conjunction,
        i.e. it does not have the form @('(and ...)'),
        then @('n') is 1 (i.e. there is just one hypothesis)
        and @('<hyp1>') is all of @('hyps').")
      (xdoc::li
       "Otherwise, @('hyps') has the form @('(and <hyp1> ... <hypn>)').
        In this case, @('<hyp1>'), ..., @('<hypn>') are the conjuncts.")))

    (xdoc::desc
     "@(':proof') &mdash; no default"
     (xdoc::p
      "Isar-style proof to prove the theorem.")
     (xdoc::p
      "It must be a non-empty list")
     (xdoc::codeblock
      "(cmd1 cmd2 ...)")
     (xdoc::p
      "of commands, where each command must be one of the following:")
     (xdoc::ul
      (xdoc::li
       (xdoc::p
        "An assumption command of the form")
       (xdoc::codeblock
        "(:assume (<id> <fact>))")
       (xdoc::p
        "where:")
       (xdoc::ul
        (xdoc::li
         "@('<id>') is a keyword that names the fact proved by this command.")
        (xdoc::li
         "@('<fact>') is a formula that is the fact proved by this command.
          It must be one of @('<hyp1>'), ..., @('<hypn>'),
          or easily derivable from them in the empty ACL2 theory
          (i.e. minor, easily bridgeable differences are allowed)."))
       (xdoc::p
        "This command serves to give a name to one of the theorem's hypotheses
         so that the fact (i.e. hypothesis) can be referenced
         in subsequent commands."))
      (xdoc::li
       (xdoc::p
        "A derivation command of the form")
       (xdoc::codeblock
        "(:derive (<id> <fact>)"
        " :from (<id1> <id2> ...)"
        " :hints <hints>)")
       (xdoc::p
        "where:")
       (xdoc::ul
        (xdoc::li
         "@('<name') is a keyword that names the fact proved by this command.")
        (xdoc::li
         "@('<fact>') is a formula that is the fact proved by this command.
          It must be provable by ACL2
          from the facts referenced in @(':from') (see below)
          using the hints in @(':hints') (see below).")
        (xdoc::li
         "@('<id1>'), @('<id2>'), ... are names of previously proved facts
          (via @(':assume') or @(':derive') commands).
          If there are no names, the whole  @(':from (...)') may be omitted.")
        (xdoc::li
         "@('<hints>') are regular ACL2 hints,
          used to prove @('<fact>') from the names facts.
          This may be omitted, just like in @(tsee defthm).")))
      (xdoc::li
       (xdoc::p
        "A proof finishing command of the form")
       (xdoc::codeblock
        "(:qed)")
       (xdoc::p
        "It must be used when enough facts have been derived that,
         when put all together, suffice to prove the theorem's
         conclusion from the hypotheses without any additional hints.
         See below for more details on the generated events.")))
     (xdoc::p
      "All the @('<id>') fact names must be distinct.")
     (xdoc::p
      "There must be at most one @(':qed') command,
       and if there is one it must appear at the end.
       Its presence is necessary to complete the proof.
       However, while incrementally constructing the proof,
       it may be omitted and the @('defisar') event will still succeed,
       but it will not generate any permanent theorem
       (it will only check the commands present in the script).")))

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   (xdoc::evmac-section-generated

    (xdoc::p
     "Each @(':assume') command generates a theorem")
    (xdoc::codeblock
     "(defthm name<id>"
     "  (implies (and <hyp1> ... <hypn>)"
     "           <fact>)"
     "  :rule-classes nil"
     "  :hints ((\"Goal\" :in-theory nil)))")

    (xdoc::p
     "Each @(':derive') command generates a theorem")
    (xdoc::codeblock
     "(defthm name<id>"
     "  (implies (and <fact1> <fact2> ...)"
     "           <fact>)"
     "  :rule-classes nil"
     "  :hints <hints>)")
    (xdoc::p
     "where @('<fact1>'), @('<fact2>'), ... are the facts
      named by @('<id1>'), @('<id2>'), ... in @(':from').")

    (xdoc::p
     "The @(':qed') command generates a theorem")
    (xdoc::codeblock
     "(defthm name"
     "  (implies (and <hyp1> ... <hypn>)"
     "           <concl>)"
     "  :hints ((\"Goal\" :use <ids>)))")
    (xdoc::p
     "where @('<ids>') is a list of all the names of the facts
      proved by the script before the @(':qed')."))))
