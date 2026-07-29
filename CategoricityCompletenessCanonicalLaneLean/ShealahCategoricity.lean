import CategoricityCompletenessCanonicalLaneLean.LowenheimSkolem

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure ShelahCategoricityPackage where
  firstOrderTheory : Type u
  uncountableCategoricity : Prop
  stabilityClass : Type v
  unsuperstableCase : Prop

def ShelahCategoricityClosed (S : ShelahCategoricityPackage) : Prop :=
  S.uncountableCategoricity ∧ S.unsuperstableCase

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse