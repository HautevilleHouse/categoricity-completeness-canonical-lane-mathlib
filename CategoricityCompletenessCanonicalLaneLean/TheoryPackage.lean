import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricityCompletenessCanonicalLaneLean.LanguagePackage

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure TheoryPackage (L : LanguagePackage) where
  sentences : List (L.signature → Prop)
  consistent : Prop
  complete : Prop
  deductivelyClosed : Prop
  theoryWellFormed : Prop

structure TheoryEvidence {L : LanguagePackage} (T : TheoryPackage L) where
  consistentClosed : T.consistent
  completeClosed : T.complete
  deductivelyClosedClosed : T.deductivelyClosed
  theoryWellFormedClosed : T.theoryWellFormed

def TheoryPackageClosed {L : LanguagePackage} (T : TheoryPackage L) : Prop :=
  T.consistent ∧ T.complete ∧ T.deductivelyClosed ∧ T.theoryWellFormed

theorem theory_package_closed_from_evidence {L : LanguagePackage} (T : TheoryPackage L) (E : TheoryEvidence T) :
    TheoryPackageClosed T := by
  exact And.intro E.consistentClosed (And.intro E.completeClosed (And.intro E.deductivelyClosedClosed E.theoryWellFormedClosed))

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse