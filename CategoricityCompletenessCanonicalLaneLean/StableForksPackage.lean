import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure StableForkPackage where
  forkType : Prop
  forkLength : Prop
  nonforkingExtension : Prop
  stableIndependence : Prop

structure StableForkEvidence (S : StableForkPackage) where
  forkTypeClosed : S.forkType
  forkLengthClosed : S.forkLength
  nonforkingExtensionClosed : S.nonforkingExtension
  stableIndependenceClosed : S.stableIndependence

def StableForkClosed (S : StableForkPackage) : Prop :=
  S.forkType ∧ S.forkLength ∧ S.nonforkingExtension ∧ S.stableIndependence

theorem stable_fork_closed_from_evidence (S : StableForkPackage) (E : StableForkEvidence S) :
    StableForkClosed S := by
  exact And.intro E.forkTypeClosed (And.intro E.forkLengthClosed (And.intro E.nonforkingExtensionClosed E.stableIndependenceClosed))

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse