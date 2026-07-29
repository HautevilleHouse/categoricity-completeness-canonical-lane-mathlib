import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CategoricitySpectraPackage (A : AdmissibleClass) where
  theory : Theory language
  spectrum : Set Cardinal
  categoricityAt : Cardinal → Prop
  shelahTheorem : spectrum = {ℵ₀} ∨ spectrum = {ℵ₀, ℵ₁} ∨ spectrum = ALL_CARDINALS
  categoricitySpectraClosed : Prop := shelahTheorem

structure CategoricitySpectraEvidence (A : AdmissibleClass) (C : CategoricitySpectraPackage A) where
  categoricitySpectraClosedTerm : C.categoricitySpectraClosed

def CategoricitySpectraClosed (A : AdmissibleClass) (C : CategoricitySpectraPackage A) : Prop :=
  C.categoricitySpectraClosed

theorem categoricity_spectra_closed_from_evidence (A : AdmissibleClass) (C : CategoricitySpectraPackage A) (E : CategoricitySpectraEvidence A C) :
    CategoricitySpectraClosed A C := by
  exact E.categoricitySpectraClosedTerm

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse