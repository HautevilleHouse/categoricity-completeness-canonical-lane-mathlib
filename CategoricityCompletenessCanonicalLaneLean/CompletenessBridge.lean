import canonicalLaneMathlib.AdmissibleClass
import CategoricityCompletenessCanonicalLaneLean.CategoricityCore

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoricityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse