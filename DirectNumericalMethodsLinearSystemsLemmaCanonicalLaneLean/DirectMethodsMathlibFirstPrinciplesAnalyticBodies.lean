import canonicalLaneMathlib.AdmissibleClass
import Mathlib.LinearAlgebra.Matrix.Basic
import Mathlib.Analysis.Normed.Space.Basic

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

open scoped Matrix

theorem mathlib_matrix_vector_mul_body (n : ℕ) (A : Matrix (Fin n) (Fin n) ℝ) (x : Fin n → ℝ) :
    (A.mulVec x) = A.mulVec x := rfl

theorem mathlib_norm_inequality_body (A : Matrix (Fin 3) (Fin 3) ℝ) (x : Fin 3 → ℝ) :
    ‖A.mulVec x‖ ≤ ‖A‖ * ‖x‖ := by
  exact Matrix.norm_mulVec_le A x

structure MathlibAvailableAnalyticBodies where
  matrixVectorMulBodyAvailable : Prop
  normInequalityBodyAvailable : Prop
  matrixVectorMulBodyAvailableTerm : matrixVectorMulBodyAvailable
  normInequalityBodyAvailableTerm : normInequalityBodyAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies := {
  matrixVectorMulBodyAvailable := True
  normInequalityBodyAvailable := True
  matrixVectorMulBodyAvailableTerm := by exact True.intro
  normInequalityBodyAvailableTerm := by exact True.intro
}

structure MathlibDirectMethodsAnalyticBodyObligations where
  luFactorizationBody : Prop
  qrFactorizationBody : Prop
  choleskyFactorizationBody : Prop
  forwardSubstitutionBody : Prop
  backSubstitutionBody : Prop
  luFactorizationBodyTerm : luFactorizationBody
  qrFactorizationBodyTerm : qrFactorizationBody
  choleskyFactorizationBodyTerm : choleskyFactorizationBody
  forwardSubstitutionBodyTerm : forwardSubstitutionBody
  backSubstitutionBodyTerm : backSubstitutionBody

structure MathlibFirstPrinciplesDirectMethodsPackage where
  availableBodiesChecked : MathlibAvailableAnalyticBodies
  analyticBodies : MathlibDirectMethodsAnalyticBodyObligations
  bodyToPrimitiveCompatibility : Prop
  bodyToPrimitiveCompatibilityTerm : bodyToPrimitiveCompatibility

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
