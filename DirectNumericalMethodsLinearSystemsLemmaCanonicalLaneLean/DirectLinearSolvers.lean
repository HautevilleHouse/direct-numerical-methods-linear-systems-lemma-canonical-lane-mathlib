import canonicalLaneMathlib.AdmissibleClass
import DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure GaussianEliminationPackage where
  matrix : LinearSystemSpace
  forwardElimination : Prop
  backwardSubstitution : Prop
  pivotStrategy : Prop
  numericalStability : Prop
  complexity : Prop

structure GaussianEliminationEvidence (G : GaussianEliminationPackage) where
  forwardEliminationClosed : G.forwardElimination
  backwardSubstitutionClosed : G.backwardSubstitution
  pivotStrategyClosed : G.pivotStrategy
  numericalStabilityClosed : G.numericalStability
  complexityClosed : G.complexity

def GaussianEliminationClosed (G : GaussianEliminationPackage) : Prop :=
  G.forwardElimination ∧ G.backwardSubstitution ∧
  G.pivotStrategy ∧ G.numericalStability ∧ G.complexity

theorem gaussian_elimination_closed_from_evidence
    (G : GaussianEliminationPackage) (E : GaussianEliminationEvidence G) :
    GaussianEliminationClosed G := by
  exact And.intro E.forwardEliminationClosed
    (And.intro E.backwardSubstitutionClosed
      (And.intro E.pivotStrategyClosed
        (And.intro E.numericalStabilityClosed E.complexityClosed)))

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
