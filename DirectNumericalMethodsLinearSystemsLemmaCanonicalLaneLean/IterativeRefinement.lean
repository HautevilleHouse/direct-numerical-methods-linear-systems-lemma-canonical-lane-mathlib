import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure IterativeRefinementPackage where
  residualCorrection : Prop
  convergenceRate : Prop
  backwardError : Prop
  mixedPrecision : Prop

structure IterativeRefinementEvidence (I : IterativeRefinementPackage) where
  residualCorrectionClosed : I.residualCorrection
  convergenceRateClosed : I.convergenceRate
  backwardErrorClosed : I.backwardError
  mixedPrecisionClosed : I.mixedPrecision

def IterativeRefinementClosed (I : IterativeRefinementPackage) : Prop :=
  I.residualCorrection ∧ I.convergenceRate ∧ I.backwardError ∧ I.mixedPrecision

theorem iterative_refinement_closed_from_evidence (I : IterativeRefinementPackage) (E : IterativeRefinementEvidence I) :
    IterativeRefinementClosed I := by
  exact And.intro E.residualCorrectionClosed
    (And.intro E.convergenceRateClosed
      (And.intro E.backwardErrorClosed E.mixedPrecisionClosed))

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse