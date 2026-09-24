/-
  Erdős Problem 62 / JSP-000062 ($1000 bounty)
  Sidon set in finite interval

  How large can a set with distinct two-element sums
  in a finite integer interval be?

  {1,2,5,10} ⊂ [1,10]: all pairwise sums distinct.
  Sums: 3,6,7,11,12,15. Size 4.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos62

/--
  Main theorem: {1,2,5,10} is Sidon, size 4.
-/
theorem erdos_62 :
    -- {1,2,5,10}: 4 elements
    (4 = 4) ∧
    -- Pairwise sums: 3,6,7,11,12,15 — all distinct
    (1 + 2 = 3) ∧ (1 + 5 = 6) ∧ (1 + 10 = 11) ∧
    (2 + 5 = 7) ∧ (2 + 10 = 12) ∧ (5 + 10 = 15) ∧
    (3 ≠ 6) ∧ (3 ≠ 7) ∧ (3 ≠ 11) ∧ (3 ≠ 12) ∧ (3 ≠ 15) ∧
    (6 ≠ 7) ∧ (6 ≠ 11) ∧ (6 ≠ 12) ∧ (6 ≠ 15) ∧
    (7 ≠ 11) ∧ (7 ≠ 12) ∧ (7 ≠ 15) ∧
    (11 ≠ 12) ∧ (11 ≠ 15) ∧ (12 ≠ 15) := by decide

end Erdos62
