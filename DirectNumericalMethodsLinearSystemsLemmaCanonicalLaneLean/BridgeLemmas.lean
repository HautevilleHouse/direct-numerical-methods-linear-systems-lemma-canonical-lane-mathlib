import DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DNWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
