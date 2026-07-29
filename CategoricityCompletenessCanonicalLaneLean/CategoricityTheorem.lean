import canonicalLaneMathlib.AdmissibleClass
import CategoricityCompletenessCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CategoricityTheoremPackage (A : AdmissibleClass) where
  morleyTheorem : Prop
  baldwinLachlanTheorem : Prop
  categoricalInUncountable : Prop
  totallyCategorical : Prop

structure CategoricityTheoremEvidence {A : AdmissibleClass} (P : CategoricityTheoremPackage A) where
  morleyTheoremClosed : P.morleyTheorem
  baldwinLachlanTheoremClosed : P.baldwinLachlanTheorem
  categoricalInUncountableClosed : P.categoricalInUncountable
  totallyCategoricalClosed : P.totallyCategorical

def CategoricityTheoremClosed {A : AdmissibleClass} (P : CategoricityTheoremPackage A) : Prop :=
  P.morleyTheorem ∧ P.baldwinLachlanTheorem ∧ P.categoricalInUncountable ∧ P.totallyCategorical

theorem categoricity_theorem_closed_from_evidence
    {A : AdmissibleClass} (P : CategoricityTheoremPackage A) (E : CategoricityTheoremEvidence P) :
    CategoricityTheoremClosed P := by
  exact And.intro E.morleyTheoremClosed
    (And.intro E.baldwinLachlanTheoremClosed
      (And.intro E.categoricalInUncountableClosed E.totallyCategoricalClosed))

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse