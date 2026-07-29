import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure DirectDecompositionPackage where
  luDecomposition : Prop
  choleskyDecomposition : Prop
  ldltDecomposition : Prop
  pivotStrategy : Prop
  stabilityGuarantee : Prop

structure DirectDecompositionEvidence (D : DirectDecompositionPackage) where
  luDecompositionClosed : D.luDecomposition
  choleskyDecompositionClosed : D.choleskyDecomposition
  ldltDecompositionClosed : D.ldltDecomposition
  pivotStrategyClosed : D.pivotStrategy
  stabilityGuaranteeClosed : D.stabilityGuarantee

def DirectDecompositionClosed (D : DirectDecompositionPackage) : Prop :=
  D.luDecomposition ∧ D.choleskyDecomposition ∧ D.ldltDecomposition ∧
  D.pivotStrategy ∧ D.stabilityGuarantee

theorem direct_decomposition_closed_from_evidence (D : DirectDecompositionPackage) (E : DirectDecompositionEvidence D) :
    DirectDecompositionClosed D := by
  exact And.intro E.luDecompositionClosed
    (And.intro E.choleskyDecompositionClosed
      (And.intro E.ldltDecompositionClosed
        (And.intro E.pivotStrategyClosed E.stabilityGuaranteeClosed)))

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse