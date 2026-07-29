import canonicalLaneMathlib.AdmissibleClass
import DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure LUDecompositionPackage where
  matrix : LinearSystemSpace
  LFactor : Prop
  UFactor : Prop
  permutationMatrix : Prop
  forwardBackwardSolve : Prop
  stableFactorization : Prop

structure LUDecompositionEvidence (L : LUDecompositionPackage) where
  LFactorClosed : L.LFactor
  UFactorClosed : L.UFactor
  permutationMatrixClosed : L.permutationMatrix
  forwardBackwardSolveClosed : L.forwardBackwardSolve
  stableFactorizationClosed : L.stableFactorization

def LUDecompositionClosed (L : LUDecompositionPackage) : Prop :=
  L.LFactor ∧ L.UFactor ∧ L.permutationMatrix ∧
  L.forwardBackwardSolve ∧ L.stableFactorization

theorem lu_decomposition_closed_from_evidence
    (L : LUDecompositionPackage) (E : LUDecompositionEvidence L) :
    LUDecompositionClosed L := by
  exact And.intro E.LFactorClosed
    (And.intro E.UFactorClosed
      (And.intro E.permutationMatrixClosed
        (And.intro E.forwardBackwardSolveClosed E.stableFactorizationClosed)))

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
