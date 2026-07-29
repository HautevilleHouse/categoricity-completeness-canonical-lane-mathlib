import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure ModelTheoryStructure where
  carrier : Type u
  signature : Type v
  relations : List (signature → carrier → carrier → Prop)
  functions : List (signature → carrier → carrier)
  constants : List (signature → carrier)
  structureIsDefined : Prop

structure CategoricityStructure extends ModelTheoryStructure where
  cardinal : ℕ
  categoricalInCardinal : Prop
  uniqueUpToIsomorphism : Prop

def structureIsClosed (M : CategoricityStructure) : Prop :=
  M.structureIsDefined ∧ M.categoricalInCardinal ∧ M.uniqueUpToIsomorphism

theorem structure_closed_from_categorical (M : CategoricityStructure) (h : M.categoricalInCardinal) (h' : M.uniqueUpToIsomorphism) : structureIsClosed M := by
  exact And.intro M.structureIsDefined (And.intro h h')

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse