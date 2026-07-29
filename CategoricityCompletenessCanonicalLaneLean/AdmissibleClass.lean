import canonicaLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure AdmissibleClass where
  object : CategoricityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategoricityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse
