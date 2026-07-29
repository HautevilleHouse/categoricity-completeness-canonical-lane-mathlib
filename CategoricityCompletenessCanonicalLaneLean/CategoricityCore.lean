import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CategoricityModel where
  carrier : Type
  signature : List String
  formulas : String → Prop
  satisfaction : String → Prop

def CategoricityWitnessClosed (M : CategoricityModel) : Prop :=
  M.satisfaction "categoricity_holds"

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse