import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

open canonicalLaneMathlib

structure CompletenessEvidencePackage {T : TheoryPackage} (G : CompletenessPackage T) where
  syntacticCompleteness : Prop
  semanticCompleteness : Prop
  modelExistence : Prop
  enumerationTheorem : Prop

structure CompletenessEvidence {T : TheoryPackage} {G : CompletenessPackage T} (E : CompletenessEvidencePackage G) where
  syntacticCompletenessClosed : E.syntacticCompleteness
  semanticCompletenessClosed : E.semanticCompleteness
  modelExistenceClosed : E.modelExistence
  enumerationTheoremClosed : E.enumerationTheorem

def CompletenessClosed {T : TheoryPackage} {G : CompletenessPackage T} (E : CompletenessEvidencePackage G) : Prop :=
  E.syntacticCompleteness ∧ E.semanticCompleteness ∧ E.modelExistence ∧ E.enumerationTheorem

theorem completeness_closed_from_evidence
    {T : TheoryPackage} {G : CompletenessPackage T} (E : CompletenessEvidencePackage G)
    (Ev : CompletenessEvidence E) : CompletenessClosed E := by
  exact And.intro Ev.syntacticCompletenessClosed
    (And.intro Ev.semanticCompletenessClosed
      (And.intro Ev.modelExistenceClosed Ev.enumerationTheoremClosed))

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse