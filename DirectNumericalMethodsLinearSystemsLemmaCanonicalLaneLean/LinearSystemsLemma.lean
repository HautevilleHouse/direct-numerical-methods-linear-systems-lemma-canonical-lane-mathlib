import DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean.DirectNumericalMethodsAdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

theorem direct_numerical_methods_linear_systems_lemma (A : AdmissibleClass) :
    bridgeClosed A ∧ gateClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
