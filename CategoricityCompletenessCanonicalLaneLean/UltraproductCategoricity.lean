import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessCanonicalLaneLean

structure UltraproductCategoricityPackage (A : AdmissibleClass) where
  indexSet : Type u
  ultrafilter : Ultrafilter indexSet
  models : indexSet → Model language
  ultraproduct : Model language := ultraproduct models / ultrafilter
  categoricityTransfer : IsCategorical (theory) → IsCategorical (theory)
  ultraproductCategoricityClosed : Prop := categoricityTransfer

structure UltraproductCategoricityEvidence (A : AdmissibleClass) (U : UltraproductCategoricityPackage A) where
  ultraproductCategoricityClosedTerm : U.ultraproductCategoricityClosed

def UltraproductCategoricityClosed (A : AdmissibleClass) (U : UltraproductCategoricityPackage A) : Prop :=
  U.ultraproductCategoricityClosed

theorem ultraproduct_categoricity_closed_from_evidence (A : AdmissibleClass) (U : UltraproductCategoricityPackage A) (E : UltraproductCategoricityEvidence A U) :
    UltraproductCategoricityClosed A U := by
  exact E.ultraproductCategoricityClosedTerm

end CategoricityCompletenessCanonicalLaneLean
end HautevilleHouse