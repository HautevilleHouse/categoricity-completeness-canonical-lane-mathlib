import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricityCompletenessCanonicalLaneLean.ModelTheoryStructures

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CompleteType where
  language : Type u
  typeSet : List (FormulaExpr)
  isConsistent : Prop
  isComplete : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (∀ (T : CompleteType), T.isConsistent → T.isComplete) ∧ (∀ (M : CategoricityStructure), structureIsClosed M)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse