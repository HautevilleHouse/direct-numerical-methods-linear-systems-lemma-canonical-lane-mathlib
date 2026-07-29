import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure SparseDirectSolverPackage where
  fillInReduction : Prop
  orderingStrategy : Prop
  symbolicFactorization : Prop
  numericFactorization : Prop
  solvePhase : Prop

structure SparseDirectSolverEvidence (S : SparseDirectSolverPackage) where
  fillInReductionClosed : S.fillInReduction
  orderingStrategyClosed : S.orderingStrategy
  symbolicFactorizationClosed : S.symbolicFactorization
  numericFactorizationClosed : S.numericFactorization
  solvePhaseClosed : S.solvePhase

def SparseDirectSolverClosed (S : SparseDirectSolverPackage) : Prop :=
  S.fillInReduction ∧ S.orderingStrategy ∧ S.symbolicFactorization ∧
  S.numericFactorization ∧ S.solvePhase

theorem sparse_direct_solver_closed_from_evidence (S : SparseDirectSolverPackage) (E : SparseDirectSolverEvidence S) :
    SparseDirectSolverClosed S := by
  exact And.intro E.fillInReductionClosed
    (And.intro E.orderingStrategyClosed
      (And.intro E.symbolicFactorizationClosed
        (And.intro E.numericFactorizationClosed E.solvePhaseClosed)))

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse