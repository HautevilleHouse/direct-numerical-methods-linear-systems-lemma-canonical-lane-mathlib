import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure LinearSystemSpace where
  carrier : Type
  vectorSpace : AddCommGroup carrier
  field : Field (carrier → carrier)
  dim : Nat

structure LinearSystemAdmittedObject where
  space : LinearSystemSpace
  matrix : (space.field).carrier
  rightHandSide : space.carrier
  solutionExists : Prop
  uniqueSolution : Prop
  solution : space.carrier
  conclusion : solutionExists ∧ uniqueSolution

structure AdmissibleClass where
  object : LinearSystemAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LinearSystemWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
