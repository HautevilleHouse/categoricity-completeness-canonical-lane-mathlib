import CategoricityCompletenessCanonicalLaneLean.CategoricityModel

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CompletenessPackage (L : LanguagePackage) (T : TheoryPackage L) where
  semanticCompleteness : Prop
  syntacticCompleteness : Prop
  modelExistence : Prop
  completenessHolds : semanticCompleteness ∧ syntacticCompleteness ∧ modelExistence

structure CompletenessEvidence (L : LanguagePackage) (T : TheoryPackage L) (C : CompletenessPackage L T) where
  semanticCompletenessClosed : C.semanticCompleteness
  syntacticCompletenessClosed : C.syntacticCompleteness
  modelExistenceClosed : C.modelExistence
  completenessHoldsClosed : C.completenessHolds

def CompletenessClosed (L : LanguagePackage) (T : TheoryPackage L) (C : CompletenessPackage L T) : Prop :=
  C.semanticCompleteness ∧ C.syntacticCompleteness ∧ C.modelExistence ∧ C.completenessHolds

theorem completeness_closed_from_evidence (L : LanguagePackage) (T : TheoryPackage L) (C : CompletenessPackage L T) (E : CompletenessEvidence L T C) :
    CompletenessClosed L T C := by
  exact And.intro E.semanticCompletenessClosed (And.intro E.syntacticCompletenessClosed (And.intro E.modelExistenceClosed E.completenessHoldsClosed))

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse