import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure ConditionNumberPackage where
  matrixNorm : Prop
  conditionNumberDefined : Prop
  illConditioningThreshold : Prop
  errorBound : Prop
  preconditionerEffect : Prop

structure ConditionNumberEvidence (C : ConditionNumberPackage) where
  matrixNormClosed : C.matrixNorm
  conditionNumberDefinedClosed : C.conditionNumberDefined
  illConditioningThresholdClosed : C.illConditioningThreshold
  errorBoundClosed : C.errorBound
  preconditionerEffectClosed : C.preconditionerEffect

def ConditionNumberClosed (C : ConditionNumberPackage) : Prop :=
  C.matrixNorm ∧ C.conditionNumberDefined ∧ C.illConditioningThreshold ∧
  C.errorBound ∧ C.preconditionerEffect

theorem condition_number_closed_from_evidence (C : ConditionNumberPackage) (E : ConditionNumberEvidence C) :
    ConditionNumberClosed C := by
  exact And.intro E.matrixNormClosed
    (And.intro E.conditionNumberDefinedClosed
      (And.intro E.illConditioningThresholdClosed
        (And.intro E.errorBoundClosed E.preconditionerEffectClosed)))

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse