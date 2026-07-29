import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricityCompletenessCanonicalLaneLean.TheoryPackage

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CategoricityPackage {L : LanguagePackage} (T : TheoryPackage L) where
  isCategoricalInCardinal : Cardinal → Prop
  uniqueModelUpToIsomorphism : Cardinal → Prop
  morleyCategoricityTransfer : Prop
  categoricalForUncountable : Prop
  categoricityProof : Prop

structure CategoricityEvidence {L : LanguagePackage} {T : TheoryPackage L} (C : CategoricityPackage T) where
  isCategoricalInCardinalClosed : ∀ κ : Cardinal, C.isCategoricalInCardinal κ
  uniqueModelUpToIsomorphismClosed : ∀ κ : Cardinal, C.uniqueModelUpToIsomorphism κ
  morleyCategoricityTransferClosed : C.morleyCategoricityTransfer
  categoricalForUncountableClosed : C.categoricalForUncountable
  categoricityProofClosed : C.categoricityProof

def CategoricityPackageClosed {L : LanguagePackage} {T : TheoryPackage L} (C : CategoricityPackage T) : Prop :=
  (∀ κ : Cardinal, C.isCategoricalInCardinal κ) ∧
  (∀ κ : Cardinal, C.uniqueModelUpToIsomorphism κ) ∧
  C.morleyCategoricityTransfer ∧
  C.categoricalForUncountable ∧
  C.categoricityProof

theorem categoricity_package_closed_from_evidence {L : LanguagePackage} {T : TheoryPackage L} (C : CategoricityPackage T) (E : CategoricityEvidence C) :
    CategoricityPackageClosed C := by
  exact And.intro (fun κ => E.isCategoricalInCardinalClosed κ)
    (And.intro (fun κ => E.uniqueModelUpToIsomorphismClosed κ)
      (And.intro E.morleyCategoricityTransferClosed
        (And.intro E.categoricalForUncountableClosed E.categoricityProofClosed)))

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse