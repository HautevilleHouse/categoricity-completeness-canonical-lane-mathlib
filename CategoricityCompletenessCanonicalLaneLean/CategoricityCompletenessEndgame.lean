import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricityCompletenessCanonicalLaneLean.ModelTheoryStructures
import HautevilleHouse.CategoricityCompletenessCanonicalLaneLean.CompleteTypeBridge

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

def ConstrainedCategoricityCompletenessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

theorem categoricity_completeness_endgame (A : AdmissibleClass) : ConstrainedCategoricityCompletenessClosure A := by
  refine And.intro (bridge_from_admissible_class A) ?_
  exact A.gateWitness

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse