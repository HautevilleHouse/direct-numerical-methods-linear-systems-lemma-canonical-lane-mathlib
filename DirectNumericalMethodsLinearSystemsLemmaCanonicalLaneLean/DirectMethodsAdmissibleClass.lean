import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure LinearSystemObject where
  matrixSpace : Type u
  vectorSpace : Type v
  matrix : matrixSpace
  rhs : vectorSpace
  solution : vectorSpace
  lemmaConclusion : Prop

structure DirectMethodsAdmissibleClass where
  object : LinearSystemObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def directMethodsAdmittedClosure (A : DirectMethodsAdmissibleClass) : Prop :=
  DirectMethodWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
