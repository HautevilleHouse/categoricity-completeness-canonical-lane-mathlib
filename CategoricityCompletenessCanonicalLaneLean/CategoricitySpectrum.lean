import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CategoricitySpectrumPackage where
  cardinal : Type u
  uncountableCategoricity : Prop
  countableCategoricity : Prop
  vaughtsConjecture : Prop

structure CategoricitySpectrumEvidence (S : CategoricitySpectrumPackage) where
  uncountableCategoricityClosed : S.uncountableCategoricity
  countableCategoricityClosed : S.countableCategoricity
  vaughtsConjectureBoundary : S.vaughtsConjecture

def CategoricitySpectrumClosed (S : CategoricitySpectrumPackage) : Prop :=
  S.uncountableCategoricity ∧ S.countableCategoricity

theorem categoricity_spectrum_closed_from_evidence (S : CategoricitySpectrumPackage)
    (E : CategoricitySpectrumEvidence S) : CategoricitySpectrumClosed S := by
  exact And.intro E.uncountableCategoricityClosed E.countableCategoricityClosed

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse