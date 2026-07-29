import canonicalLaneMathlib.AdmissibleClass
import CategoricityCompletenessCanonicalLaneLean.CompletenessBridge
import CategoricityCompletenessCanonicalLaneLean.GatelingLemma

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

def ConstrainedCategoricityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_categoricity_endgame (A : AdmissibleClass) :
    ConstrainedCategoricityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse