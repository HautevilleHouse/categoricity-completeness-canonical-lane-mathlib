import CategoricityCompletenessCanonicalLaneLean.CategoricityCompleteness

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure ModelTheoryBridgePackage {C : CategoricityCompletenessPackage} where
  elementaryEmbedding : Prop
  saturatedModel : Prop
  homogeneousModel : Prop
  primeModel : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.space.homeomorphicToSphere

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse