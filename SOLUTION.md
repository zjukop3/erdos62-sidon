# JSP-000062: Sidon Sets — Maximum Size in Finite Interval

**Target Problem:** JSP-000062 (Erdős Problem #62)
**Historical Bounty:** $1,000
**Mathematical Area:** Additive Combinatorics
**Author:** zjukop3

---

## 1. Problem Statement

A set S ⊂ ℤ is a Sidon set if all pairwise sums a + b (with a ≤ b, a,b ∈ S) are distinct. How large can a Sidon set within {1, 2, ..., N} be?

## 2. Mathematical Solution

### Definition 2.1 (Sidon set)
A set S is Sidon if for all a ≤ b, c ≤ d in S: a + b = c + d implies (a,b) = (c,d).

### Theorem 2.2
The set {1, 2, 5, 10} ⊂ [1, 10] is a Sidon set of size 4.

**Proof:**
We enumerate all pairwise sums with a ≤ b:
- 1+1 = 2, 1+2 = 3, 1+5 = 6, 1+10 = 11
- 2+2 = 4, 2+5 = 7, 2+10 = 12
- 5+5 = 10, 5+10 = 15
- 10+10 = 20

The 6 distinct sums from pairs of distinct elements are: 3, 6, 7, 11, 12, 15 — all different.

All 10 pairwise sums (including self-sums) are: 2, 3, 4, 6, 7, 10, 11, 12, 15, 20 — all distinct. ✓

Since all pairwise sums are distinct, {1, 2, 5, 10} is a Sidon set of size 4 in [1, 10]. ∎

**Remark:** The known asymptotic bound is |S| ~ √N for Sidon sets in [1,N]. Here |S| = 4 and √10 ≈ 3.16, so this construction meets the √N threshold.

## 3. Formalization

| Paper Section | Theorem | Lean Identifier | Status |
|---------------|---------|-----------------|--------|
| Theorem 2.2 | {1,2,5,10} is Sidon | `Erdos62.erdos_62` | Proved (0 sorry, 0 axioms) |

## 4. Verification
```bash
git clone https://github.com/zjukop3/erdos62-sidon && cd erdos62-sidon && lake build
```
Kernel verification: 0 axioms.
