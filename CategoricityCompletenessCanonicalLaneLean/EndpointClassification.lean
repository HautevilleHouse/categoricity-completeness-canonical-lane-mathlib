import CategoricityCompletenessCanonicalLaneLean.KeislerOrder

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure EndpointClassificationPackage where
  targetLogicalStructure : Type u
  terminalModelExists : Prop
  endpointMatchesCategoricity : Prop

def EndpointClassificationClosed (E : EndpointClassificationPackage) : Prop :=
  E.terminalModelExists ∧ E.endpointMatchesCategoricity

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse