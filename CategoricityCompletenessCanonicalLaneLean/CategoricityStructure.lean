import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CategoricityAdmittedObject where
  theory : Type u
  model : Type v
  semantics : theory → model → Prop
  completenessCondition : Prop
  categoricityCondition : Prop
  conclusion : completenessCondition ∧ categoricityCondition

structure CategoricityAdmissibleClass where
  object : CategoricityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def CategoricityWitnessClosed (O : CategoricityAdmittedObject) : Prop :=
  O.conclusion

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse