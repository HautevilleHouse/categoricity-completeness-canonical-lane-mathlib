import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse