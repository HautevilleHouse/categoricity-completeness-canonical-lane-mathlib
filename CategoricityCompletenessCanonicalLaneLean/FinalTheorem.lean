import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

def ConstrainedCategoricityCompletenessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem categoricity_completeness_endgame (A : AdmissibleClass) :
    ConstrainedCategoricityCompletenessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse