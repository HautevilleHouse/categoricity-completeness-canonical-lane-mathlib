import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CategoricityAdmittedObject where
  structure : Type u
  language : Type v
  theory : Set (Formula language)
  cardinality : Cardinal
  categoricityWitness : IsCategorical (structure, language, theory)

structure AdmissibleClass where
  object : CategoricityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def CategoricityWitnessClosed (O : CategoricityAdmittedObject) : Prop :=
  O.categoricityWitness

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategoricityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse