import canonicalLaneMathlib.AdmissibleClass
import DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
