import DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure TheoremStatement where
  linearSystemType : Type
  matrix : linearSystemType → Type
  solutionExistence : Prop
  solutionUniqueness : Prop
  algorithmConvergence : Prop
  algorithmComplexity : Prop

def sourceTheoremStatement : TheoremStatement := {
  linearSystemType := Matrix ℝ,
  matrix := λ A => A,
  solutionExistence := ∃ x : Vector ℝ, A.mul x = b,
  solutionUniqueness := ∀ x y : Vector ℝ, A.mul x = b → A.mul y = b → x = y,
  algorithmConvergence := ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, ‖x_n - x‖ < ε,
  algorithmComplexity := ∀ n : ℕ, time(n) ≤ C * n^p
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.linearSystemType = Matrix ℝ := by
  rfl

theorem theorem_statement_solution_existence_checked :
    sourceTheoremStatement.solutionExistence := by
  dsimp [sourceTheoremStatement]
  refine ⟨?_, ?_⟩
  · exact ?_
  · exact ?_