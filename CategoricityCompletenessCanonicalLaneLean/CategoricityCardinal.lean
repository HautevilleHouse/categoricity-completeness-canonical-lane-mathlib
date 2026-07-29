import HautevilleHouse.CategoricityCompletenessCanonicalLaneLean.AdmissibleClass

/-!
# Categoricity in a Cardinal Package
-/

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CategoricityCardinalPackage where
  cardinal : Cardinal
  theoryComplete : Prop
  numberOfModels : Nat
  uncountablyCategorical : Prop

def CategoricityCardinalClosed (C : CategoricityCardinalPackage) : Prop :=
  C.uncountablyCategorical ∧ (C.numberOfModels = 1)

structure CategoricityCardinalEvidence (C : CategoricityCardinalPackage) where
  uncountablyCategoricalClosed : C.uncountablyCategorical
  singleModelClosed : C.numberOfModels = 1

theorem categoricity_cardinal_closed_from_evidence (C : CategoricityCardinalPackage) (E : CategoricityCardinalEvidence C) :
    CategoricityCardinalClosed C := by
  exact And.intro E.uncountablyCategoricalClosed E.singleModelClosed

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse
