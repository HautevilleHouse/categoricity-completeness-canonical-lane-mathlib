import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricityCompletenessCanonicalLaneLean.LanguagePackage

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure ModelPackage (L : LanguagePackage) where
  carrier : Type u
  interpretation : L.signature → carrier
  satisfiesTheory : TheoryPackage L → Prop
  elementarilyEquivalent : TheoryPackage L → Prop
  cardinality : Cardinal

structure ModelEvidence {L : LanguagePackage} (M : ModelPackage L) where
  satisfiesTheoryClosed : ∀ (T : TheoryPackage L), M.satisfiesTheory T
  elementarilyEquivalentClosed : ∀ (T : TheoryPackage L), M.elementarilyEquivalent T

def ModelPackageClosed {L : LanguagePackage} (M : ModelPackage L) : Prop :=
  ∀ (T : TheoryPackage L), M.satisfiesTheory T ∧ M.elementarilyEquivalent T

theorem model_package_closed_from_evidence {L : LanguagePackage} (M : ModelPackage L) (E : ModelEvidence M) :
    ModelPackageClosed M := by
  intro T
  exact And.intro (E.satisfiesTheoryClosed T) (E.elementarilyEquivalentClosed T)

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse