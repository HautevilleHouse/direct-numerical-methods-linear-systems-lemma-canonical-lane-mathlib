import DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean.MatrixFactorization

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure DonnectednessStructure {M : MatrixType} {F : MatrixFactorizationPackage M} where
  adjacencyCondition : Prop
  componentDecomposition : Prop
  connectivityCriterion : Prop

def DonnectednessClosed {M : MatrixType} {F : MatrixFactorizationPackage M} (D : DonnectednessStructure F) : Prop :=
  D.adjacencyCondition ∧ D.componentDecomposition ∧ D.connectivityCriterion

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse
