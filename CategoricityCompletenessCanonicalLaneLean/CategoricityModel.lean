import CategoricityCompletenessCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure LanguagePackage where
  language : AdmittedLanguage
  signatureFinitary : Prop
  signatureFinitaryClosed : signatureFinitary

structure TheoryPackage (L : LanguagePackage) where
  theory : AdmittedTheory L.language
  consistent : Prop
  consistentClosed : consistent

structure ModelPackage (L : LanguagePackage) (T : TheoryPackage L) where
  model : AdmittedModel L.language
  modelsTheory : Prop
  modelsTheoryClosed : modelsTheory

structure CategoricityPackage (L : LanguagePackage) (T : TheoryPackage L) (M : ModelPackage L T) where
  allModelsIsomorphic : Prop
  uncountableCategoricity : Prop
  categoricityHolds : allModelsIsomorphic ∧ uncountableCategoricity

structure CategoricityEvidence (L : LanguagePackage) (T : TheoryPackage L) (M : ModelPackage L T) (C : CategoricityPackage L T M) where
  allModelsIsomorphicClosed : C.allModelsIsomorphic
  uncountableCategoricityClosed : C.uncountableCategoricity
  categoricityHoldsClosed : C.categoricityHolds

def CategoricityClosed (L : LanguagePackage) (T : TheoryPackage L) (M : ModelPackage L T) (C : CategoricityPackage L T M) : Prop :=
  C.allModelsIsomorphic ∧ C.uncountableCategoricity ∧ C.categoricityHolds

theorem categoricity_closed_from_evidence (L : LanguagePackage) (T : TheoryPackage L) (M : ModelPackage L T) (C : CategoricityPackage L T M) (E : CategoricityEvidence L T M C) :
    CategoricityClosed L T M C := by
  exact And.intro E.allModelsIsomorphicClosed (And.intro E.uncountableCategoricityClosed E.categoricityHoldsClosed)

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse