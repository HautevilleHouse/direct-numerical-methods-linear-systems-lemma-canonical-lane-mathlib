import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure FinitePrecisionErrorPackage where
  floatingPointModel : Prop
  roundingErrorAnalysis : Prop
  backwardStability : Prop
  forwardErrorBound : Prop
  componentwiseError : Prop

structure FinitePrecisionErrorEvidence (F : FinitePrecisionErrorPackage) where
  floatingPointModelClosed : F.floatingPointModel
  roundingErrorAnalysisClosed : F.roundingErrorAnalysis
  backwardStabilityClosed : F.backwardStability
  forwardErrorBoundClosed : F.forwardErrorBound
  componentwiseErrorClosed : F.componentwiseError

def FinitePrecisionErrorClosed (F : FinitePrecisionErrorPackage) : Prop :=
  F.floatingPointModel ∧ F.roundingErrorAnalysis ∧ F.backwardStability ∧
  F.forwardErrorBound ∧ F.componentwiseError

theorem finite_precision_error_closed_from_evidence (F : FinitePrecisionErrorPackage) (E : FinitePrecisionErrorEvidence F) :
    FinitePrecisionErrorClosed F := by
  exact And.intro E.floatingPointModelClosed
    (And.intro E.roundingErrorAnalysisClosed
      (And.intro E.backwardStabilityClosed
        (And.intro E.forwardErrorBoundClosed E.componentwiseErrorClosed)))

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse