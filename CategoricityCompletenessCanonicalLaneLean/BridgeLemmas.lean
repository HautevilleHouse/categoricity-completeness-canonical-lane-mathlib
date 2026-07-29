import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoricityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.categoricityWitness

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse