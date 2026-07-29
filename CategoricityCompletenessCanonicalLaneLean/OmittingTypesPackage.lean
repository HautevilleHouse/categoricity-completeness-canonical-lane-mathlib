import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure OmittingTypesPackage where
  typeDefinable : Prop
  typeConsistent : Prop
  typeOmitted : Prop
  omittingTypeTheorem : Prop

structure OmittingTypesEvidence (O : OmittingTypesPackage) where
  typeDefinableClosed : O.typeDefinable
  typeConsistentClosed : O.typeConsistent
  typeOmittedClosed : O.typeOmitted
  omittingTypeTheoremClosed : O.omittingTypeTheorem

def OmittingTypesClosed (O : OmittingTypesPackage) : Prop :=
  O.typeDefinable ∧ O.typeConsistent ∧ O.typeOmitted ∧ O.omittingTypeTheorem

theorem omitting_types_closed_from_evidence (O : OmittingTypesPackage) (E : OmittingTypesEvidence O) :
    OmittingTypesClosed O := by
  exact And.intro E.typeDefinableClosed (And.intro E.typeConsistentClosed (And.intro E.typeOmittedClosed E.omittingTypeTheoremClosed))

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse