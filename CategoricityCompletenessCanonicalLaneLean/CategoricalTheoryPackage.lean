import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

open canonicalLaneMathlib

structure CategoricalTheoryPackage {T : TheoryPackage} (C : CategoricityPackage T) where
  uniqueModelUpToIsomorphism : Prop
  cardinalitySpecific : Prop
  syntacticCharacterization : Prop
  preservationUnderElementaryEquivalence : Prop

structure CategoricalTheoryEvidence {T : TheoryPackage} {C : CategoricityPackage T} (P : CategoricalTheoryPackage C) where
  uniqueModelUpToIsomorphismClosed : P.uniqueModelUpToIsomorphism
  cardinalitySpecificClosed : P.cardinalitySpecific
  syntacticCharacterizationClosed : P.syntacticCharacterization
  preservationUnderElementaryEquivalenceClosed : P.preservationUnderElementaryEquivalence

def CategoricalTheoryClosed {T : TheoryPackage} {C : CategoricityPackage T} (P : CategoricalTheoryPackage C) : Prop :=
  P.uniqueModelUpToIsomorphism ∧ P.cardinalitySpecific ∧ P.syntacticCharacterization ∧ P.preservationUnderElementaryEquivalence

theorem categorical_theory_closed_from_evidence
    {T : TheoryPackage} {C : CategoricityPackage T} (P : CategoricalTheoryPackage C)
    (E : CategoricalTheoryEvidence P) : CategoricalTheoryClosed P := by
  exact And.intro E.uniqueModelUpToIsomorphismClosed
    (And.intro E.cardinalitySpecificClosed
      (And.intro E.syntacticCharacterizationClosed E.preservationUnderElementaryEquivalenceClosed))

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse