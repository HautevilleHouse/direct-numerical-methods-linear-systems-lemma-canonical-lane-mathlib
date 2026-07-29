import DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean.SpectralRadius

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure IterativeMethodConvergencePackage {M : MatrixType} {S : SplittingPackage M} where
  iterativeSchemeDefined : Prop
  convergenceCriterion : Prop
  asymptoticRateBound : Prop
  stoppingCondition : Prop

structure IterativeMethodConvergenceEvidence {M : MatrixType} {S : SplittingPackage M} (C : IterativeMethodConvergencePackage S) where
  iterativeSchemeDefinedClosed : C.iterativeSchemeDefined
  convergenceCriterionClosed : C.convergenceCriterion
  asymptoticRateBoundClosed : C.asymptoticRateBound
  stoppingConditionClosed : C.stoppingCondition

def IterativeMethodConvergenceClosed {M : MatrixType} {S : SplittingPackage M} (C : IterativeMethodConvergencePackage S) : Prop :=
  C.iterativeSchemeDefined ∧ C.convergenceCriterion ∧ C.asymptoticRateBound ∧ C.stoppingCondition

theorem iterative_method_convergence_closed_from_evidence
    {M : MatrixType} {S : SplittingPackage M} (C : IterativeMethodConvergencePackage S)
    (E : IterativeMethodConvergenceEvidence C) : IterativeMethodConvergenceClosed C := by
  exact And.intro E.iterativeSchemeDefinedClosed
    (And.intro E.convergenceCriterionClosed (And.intro E.asymptoticRateBoundClosed E.stoppingConditionClosed))

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
