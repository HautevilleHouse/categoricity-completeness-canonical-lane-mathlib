import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure ZermeloCategoricityPackage (A : AdmissibleClass) where
  transitiveModel : Type u
  powersetOperation : TransitiveModel → TransitiveModel
  secondOrderLogic : Set (Formula (Set Variable))
  categoricityProof : IsCategorical (transitiveModel, secondOrderLogic, ZFC_axioms)
  zermeloCategoricityClosed : Prop := categoricityProof

structure ZermeloCategoricityEvidence (A : AdmissibleClass) (Z : ZermeloCategoricityPackage A) where
  zermeloCategoricityClosedTerm : Z.zermeloCategoricityClosed

def ZermeloCategoricityClosed (A : AdmissibleClass) (Z : ZermeloCategoricityPackage A) : Prop :=
  Z.zermeloCategoricityClosed

theorem zermelo_categoricity_closed_from_evidence (A : AdmissibleClass) (Z : ZermeloCategoricityPackage A) (E : ZermeloCategoricityEvidence A Z) :
    ZermeloCategoricityClosed A Z := by
  exact E.zermeloCategoricityClosedTerm

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse