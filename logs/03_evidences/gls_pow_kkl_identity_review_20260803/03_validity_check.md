# GLS K-kl pow identity reuse review (2026-08-03)

## 03 Validity check

- Immutable O33 sources re-read in full at the cited lines: `ROMS/Nonlinear/gls_corstep.F` 255-300 (constants, Lmy25), 600-665 (wall_fac/BCK/BCP hot expressions); `Build/gls_corstep.f90` 260-300 and 615-700 (same text after preprocessing, exact input to the O33 compile).
- Scored input re-read: `ROMS/External/ocean_SCS_Dongsha60_bio15.in` lines 337-343 -> K-kl, `gls_p=0.0, gls_m=1.0, gls_n=1.0, gls_cmu0=0.5544` on both grids.
- Math identity check (IEEE 754-2008, 9.2.1): pow(x, 1) returns x; pow(x, -1) returns 1/x, both exact. Intel ifort/libimf honors these cases. `x**1.5 = x*sqrt(x)` is an algebraic identity valid for x >= 0; tke is a turbulent kinetic energy bounded below by `gls_Kmin` (5.0d-6 in the scored input), so the sqrt argument is strictly positive.
- The `Lmy25` detection already present in the codebase (lines 266-271) is exactly the condition (p=0,m=1,n=1) under which the identities hold for the scored run; the candidate reuses it so that all other GLS configurations keep the original `pow` expressions untouched (no behavior change outside the scored configuration family).
- Reopen justification: Stage-75 closed "GLS variable-exponent pow" on the assumption of arbitrary parameterized exponents without evaluating the scored K-kl parameter values; the measured `__libm_pow_e7` pool (~6.5-7% rank-CPU, VTune 118418627) plus the simple identity exponents supply the missing mechanism and quantify a conservative 3-6% whole-run band, clearing the >=2% reopen gate.
- Compliance: physical formula/algorithm unchanged (same mathematical expression, rewritten in equivalent algebraic form); loops, arrays, OMP structure and arithmetic order of surrounding factors unchanged; organizer permits changed floating execution order under the official RMSE gate (2026-08-03 clarification). Bitwise-exact subset (6/8 pow) available if trajectory hash must stay invariant.
- Decision record: static review VALID; authorize exactly one candidate build and one matched 144/720 A-B-B-A (A = O33, B = K-kl identity build); promotion only if both B samples are faster and mean gain >=3%, then full 2592/12960 + official 26/26.
- Output lifecycle: review produced no model output; no deletion.
