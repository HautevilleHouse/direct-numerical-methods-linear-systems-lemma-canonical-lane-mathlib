import DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean.DirectMethodsBridgeLemmas

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

def gateClosed (A : DirectMethodsAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DirectMethodsAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
