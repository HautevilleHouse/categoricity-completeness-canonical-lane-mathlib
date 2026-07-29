import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure LowenheimSkolemPackage where
  cardinalBounds : Prop
  elementarySubstructure : Prop
  upwardLowenheimSkolem : Prop
  downwardLowenheimSkolem : Prop

structure LowenheimSkolemEvidence (L : LowenheimSkolemPackage) where
  cardinalBoundsClosed : L.cardinalBounds
  elementarySubstructureClosed : L.elementarySubstructure
  upwardLowenheimSkolemClosed : L.upwardLowenheimSkolem
  downwardLowenheimSkolemClosed : L.downwardLowenheimSkolem

def LowenheimSkolemClosed (L : LowenheimSkolemPackage) : Prop :=
  L.cardinalBounds ∧ L.elementarySubstructure ∧ L.upwardLowenheimSkolem ∧ L.downwardLowenheimSkolem

theorem lowenheim_skolem_closed_from_evidence (L : LowenheimSkolemPackage) (E : LowenheimSkolemEvidence L) :
    LowenheimSkolemClosed L := by
  exact And.intro E.cardinalBoundsClosed (And.intro E.elementarySubstructureClosed (And.intro E.upwardLowenheimSkolemClosed E.downwardLowenheimSkolemClosed))

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse