import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure LowerSemiContinuity where
  topologicalSpace : Type u
  function : topologicalSpace → ℝ
  isLowerSemiContinuous : Prop

def CategoricityLSProperty (M : CategoricityStructure) (L : LowerSemiContinuity) : Prop :=
  L.isLowerSemiContinuous ∧ (∀ (U : M.signature → Prop), (∃ (x : M.carrier), U x) → L.function (some x) ≥ 0)

theorem categoricity_ls_property_inherited (M : CategoricityStructure) (L : LowerSemiContinuity) (h : L.isLowerSemiContinuous) : CategoricityLSProperty M L := by
  refine And.intro h ?_
  intro U hU
  -- place holder 
  exact by trivial

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse