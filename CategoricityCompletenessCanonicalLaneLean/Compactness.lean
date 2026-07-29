import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CompactnessPackage where
  firstOrderLanguage : Type v
  satisfiabilityFinite : Prop
  compactnessTheorem : Prop
  consistentExtension : Prop

structure CompactnessEvidence (C : CompactnessPackage) where
  satisfiabilityFiniteClosed : C.satisfiabilityFinite
  compactnessTheoremClosed : C.compactnessTheorem
  consistentExtensionClosed : C.consistentExtension

def CompactnessClosed (C : CompactnessPackage) : Prop :=
  C.satisfiabilityFinite ∧ C.compactnessTheorem ∧ C.consistentExtension

theorem compactness_closed_from_evidence (C : CompactnessPackage)
    (E : CompactnessEvidence C) : CompactnessClosed C := by
  exact And.intro E.satisfiabilityFiniteClosed
    (And.intro E.compactnessTheoremClosed E.consistentExtensionClosed)

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse