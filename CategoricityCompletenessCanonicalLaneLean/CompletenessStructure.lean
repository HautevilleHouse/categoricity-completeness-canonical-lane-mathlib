import canonicalLaneMathlib.AdmissibleClass
import CategoricityCompletenessCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure CompletenessPackage (A : AdmissibleClass) where
  theoryComplete : Prop
  elementaryEquivalence : Prop
  primeModelExists : Prop
  countableSaturation : Prop

structure CompletenessEvidence {A : AdmissibleClass} (C : CompletenessPackage A) where
  theoryCompleteClosed : C.theoryComplete
  elementaryEquivalenceClosed : C.elementaryEquivalence
  primeModelExistsClosed : C.primeModelExists
  countableSaturationClosed : C.countableSaturation

def CompletenessClosed {A : AdmissibleClass} (C : CompletenessPackage A) : Prop :=
  C.theoryComplete ∧ C.elementaryEquivalence ∧ C.primeModelExists ∧ C.countableSaturation

theorem completeness_closed_from_evidence
    {A : AdmissibleClass} (C : CompletenessPackage A) (E : CompletenessEvidence C) :
    CompletenessClosed C := by
  exact And.intro E.theoryCompleteClosed
    (And.intro E.elementaryEquivalenceClosed
      (And.intro E.primeModelExistsClosed E.countableSaturationClosed))

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse