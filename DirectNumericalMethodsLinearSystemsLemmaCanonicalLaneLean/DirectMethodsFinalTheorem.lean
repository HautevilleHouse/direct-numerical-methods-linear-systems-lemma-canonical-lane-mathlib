import DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean.DirectMethodsGateLemmas

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

def ConstrainedLinearMethodsClosure (A : DirectMethodsAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_linear_methods_endgame (A : DirectMethodsAdmissibleClass) :
    ConstrainedLinearMethodsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
