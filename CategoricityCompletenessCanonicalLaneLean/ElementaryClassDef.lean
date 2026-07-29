import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure ElementaryClass where
  signature : Type u
  axioms : List (FormulaExpr)
  models : List (ModelTheoryStructure)
  isElementary : Prop
  isAxiomatizable : Prop

def elementaryClassClosed (E : ElementaryClass) : Prop :=
  E.isElementary ∧ E.isAxiomatizable ∧ (∀ M ∈ E.models, M.structureIsDefined)

theorem elementary_class_closed_from_axioms (E : ElementaryClass) (h : E.isElementary) (h' : E.isAxiomatizable) : elementaryClassClosed E := by
  exact And.intro h (And.intro h' (by
    intro M hM
    exact M.structureIsDefined))

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse