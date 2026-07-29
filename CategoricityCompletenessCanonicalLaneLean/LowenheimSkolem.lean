import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure LowenheimSkolemPackage (A : AdmissibleClass) where
  languageCardinal : Cardinal
  modelCardinal : Cardinal
  downwardTheorem : ∀ (κ : Cardinal), κ ≥ languageCardinal → ∀ (M : Model language), ∃ (N : Model language), N ≼ M ∧ |N| = κ
  upwardTheorem : ∀ (κ : Cardinal), κ ≥ |model| → ∃ (N : Model language), M ≼ N ∧ |N| = κ
  lowenheimSkolemClosed : Prop := downwardTheorem ∧ upwardTheorem

structure LowenheimSkolemEvidence (A : AdmissibleClass) (L : LowenheimSkolemPackage A) where
  lowenheimSkolemClosedTerm : L.lowenheimSkolemClosed

def LowenheimSkolemClosed (A : AdmissibleClass) (L : LowenheimSkolemPackage A) : Prop :=
  L.lowenheimSkolemClosed

theorem lowenheim_skolem_closed_from_evidence (A : AdmissibleClass) (L : LowenheimSkolemPackage A) (E : LowenheimSkolemEvidence A L) :
    LowenheimSkolemClosed A L := by
  exact E.lowenheimSkolemClosedTerm

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse