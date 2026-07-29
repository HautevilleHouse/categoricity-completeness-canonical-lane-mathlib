import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CategoricityCompletenessPackage where
  languageSignature : Type u
  structureClass : Type v
  cardinality : Type w
  completeTheory : Prop
  categoricityInCardinal : Prop
  completenessCondition : Prop

structure CategoricityCompletenessEvidence (C : CategoricityCompletenessPackage) where
  completeTheoryClosed : C.completeTheory
  categoricityInCardinalClosed : C.categoricityInCardinal
  completenessConditionClosed : C.completenessCondition

def CategoricityCompletenessClosed (C : CategoricityCompletenessPackage) : Prop :=
  C.completeTheory ∧ C.categoricityInCardinal ∧ C.completenessCondition

theorem categoricity_completeness_closed_from_evidence
    (C : CategoricityCompletenessPackage) (E : CategoricityCompletenessEvidence C) :
    CategoricityCompletenessClosed C := by
  exact And.intro E.completeTheoryClosed
    (And.intro E.categoricityInCardinalClosed E.completenessConditionClosed)

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse