import canonicalLaneMathlib.AdmissibleClass
import DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure ErrorAnalysisPackage where
  directSolverError : Prop
  residualCorrectionError : Prop
  conditionNumber : Prop
  roundingErrorBound : Prop
  convergenceRate : Prop

structure ErrorAnalysisEvidence (E : ErrorAnalysisPackage) where
  directSolverErrorClosed : E.directSolverError
  residualCorrectionErrorClosed : E.residualCorrectionError
  conditionNumberClosed : E.conditionNumber
  roundingErrorBoundClosed : E.roundingErrorBound
  convergenceRateClosed : E.convergenceRate

def ErrorAnalysisClosed (E : ErrorAnalysisPackage) : Prop :=
  E.directSolverError ∧ E.residualCorrectionError ∧
  E.conditionNumber ∧ E.roundingErrorBound ∧ E.convergenceRate

theorem error_analysis_closed_from_evidence
    (E : ErrorAnalysisPackage) (Ev : ErrorAnalysisEvidence E) :
    ErrorAnalysisClosed E := by
  exact And.intro Ev.directSolverErrorClosed
    (And.intro Ev.residualCorrectionErrorClosed
      (And.intro Ev.conditionNumberClosed
        (And.intro Ev.roundingErrorBoundClosed Ev.convergenceRateClosed)))

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
