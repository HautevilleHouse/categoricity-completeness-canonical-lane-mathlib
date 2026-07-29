import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure LanguagePackage where
  signature : Type u
  constantSymbols : List signature
  relationSymbols : List signature
  functionSymbols : List signature
  arity : signature → ℕ
  languageWellFormed : Prop
  signatureFinite : Prop

structure LanguageEvidence (L : LanguagePackage) where
  languageWellFormedClosed : L.languageWellFormed
  signatureFiniteClosed : L.signatureFinite

def LanguagePackageClosed (L : LanguagePackage) : Prop :=
  L.languageWellFormed ∧ L.signatureFinite

theorem language_package_closed_from_evidence (L : LanguagePackage) (E : LanguageEvidence L) :
    LanguagePackageClosed L := by
  exact And.intro E.languageWellFormedClosed E.signatureFiniteClosed

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse