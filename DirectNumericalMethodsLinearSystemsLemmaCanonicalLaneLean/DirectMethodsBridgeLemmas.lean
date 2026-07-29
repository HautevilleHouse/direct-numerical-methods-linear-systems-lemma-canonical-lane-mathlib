import canonicalLaneMathlib.AdmissibleClass
import DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean.DirectMethodsAdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

def bridgeClosed (A : DirectMethodsAdmissibleClass) : Prop :=
  DirectMethodWitnessClosed A.object

theorem bridge_from_admissible_class (A : DirectMethodsAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.lemmaConclusion

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
