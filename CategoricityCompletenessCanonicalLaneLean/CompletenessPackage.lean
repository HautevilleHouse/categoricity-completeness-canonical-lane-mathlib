import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricityCompletenessCanonicalLaneLean.TheoryPackage

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CompletenessPackage {L : LanguagePackage} (T : TheoryPackage L) where
  consistentImpliesModel : Prop
  everyConsistentSetHasModel : Prop
  completenessTheorem : Prop
  compactnessTheorem : Prop
  completenessProof : Prop

structure CompletenessEvidence {L : LanguagePackage} {T : TheoryPackage L} (C : CompletenessPackage T) where
  consistentImpliesModelClosed : C.consistentImpliesModel
  everyConsistentSetHasModelClosed : C.everyConsistentSetHasModel
  completenessTheoremClosed : C.completenessTheorem
  compactnessTheoremClosed : C.compactnessTheorem
  completenessProofClosed : C.completenessProof

def CompletenessPackageClosed {L : LanguagePackage} {T : TheoryPackage L} (C : CompletenessPackage T) : Prop :=
  C.consistentImpliesModel ∧ C.everyConsistentSetHasModel ∧
  C.completenessTheorem ∧ C.compactnessTheorem ∧ C.completenessProof

theorem completeness_package_closed_from_evidence {L : LanguagePackage} {T : TheoryPackage L} (C : CompletenessPackage T) (E : CompletenessEvidence C) :
    CompletenessPackageClosed C := by
  exact And.intro E.consistentImpliesModelClosed
    (And.intro E.everyConsistentSetHasModelClosed
      (And.intro E.completenessTheoremClosed
        (And.intro E.compactnessTheoremClosed E.completenessProofClosed)))

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse