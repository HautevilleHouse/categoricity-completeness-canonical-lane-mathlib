import CategoricityCompletenessCanonicalLaneLean.ShelahCategoricity

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure KeislerOrderPackage where
  theories : Type u
  saturatedModelDimension : Type v
  keislerOrderProperty : Prop
  orderingRelation : Prop

def KeislerOrderClosed (K : KeislerOrderPackage) : Prop :=
  K.keislerOrderProperty ∧ K.orderingRelation

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse