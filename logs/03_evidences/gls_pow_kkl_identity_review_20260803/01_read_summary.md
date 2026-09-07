# GLS K-kl pow identity reuse review (2026-08-03)

## 01 Read summary

- Zero-run static review of a candidate that removes provably redundant general `pow` calls in the hottest GLS kernel by exploiting that the scored configuration is GLS K-kl with fixed simple exponents.
- Immutable O33 source read at `ROMS/Nonlinear/gls_corstep.F` (parent tree `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`), plus preprocessed `Build/gls_corstep.f90` (the exact text compiled into binary `5f1a137e...fcb9`).
- Scored configuration (`ROMS/External/ocean_SCS_Dongsha60_bio15.in` lines 337-343): `GLS_P == 2*0.0d0`, `GLS_M == 2*1.0d0`, `GLS_N == 2*1.0d0`, `GLS_CMU0 == 2*0.5544d0` -> GLS K-kl.
- Exponent derivation in `gls_corstep.F` lines 289-292 (preprocessed 289-292): `gls_exp1=1/gls_n=1.0`, `tke_exp1=gls_m/gls_n=1.0`, `tke_exp2=0.5+gls_m/gls_n=1.5` for the scored input.
- Hot loops (preprocessed lines 634-652): per (i,k) point the wall-function and tri-diagonal coefficient paths execute up to 8 general `pow` calls, all of the form `x**gls_exp1`, `x**(-gls_exp1)`, `x**(-tke_exp1)`, `x**tke_exp2`:
  - `gls**gls_exp1` = `gls**1.0` -> identity (IEEE 754 pow(x,1)=x exactly).
  - `tke**(-tke_exp1)` = `tke**(-1.0)` -> exact reciprocal (IEEE 754 pow(x,-1)=1/x, correctly rounded).
  - `gls**(-gls_exp1)` = `gls**(-1.0)` -> exact reciprocal.
  - `tke**tke_exp2` = `tke**1.5` -> `tke*SQRT(tke)` (mathematically equivalent; permitted by the organizer floating-order clarification, 2026-08-03).
- Existing code already special-cases K-kl: `Lmy25` is set TRUE exactly when (p=0,n=1,m=1) (preprocessed lines 266-271), matching the scored configuration bit-for-bit. The candidate reuses this flag (or an equivalent detection) to switch the four expressions to their algebraic forms, keeping the general `pow` path as fallback for every other configuration (zero behavior change outside K-kl).
- Why the compiler cannot do it: `gls_exp1/tke_exp1/tke_exp2` are runtime values read from the `.in` file; ifort cannot know at compile time that they equal 1.0/1.0/1.5, so it emits general `pow` calls.
- Candidate scope: one file, `ROMS/Nonlinear/gls_corstep.F`; three expression groups (wall_fac, BCK, BCP); all arrays, loop order, arithmetic order of the surrounding formula and physical scheme unchanged.
- Numerical equivalence: two of the four identities are bitwise-exact (x**1 and x**(-1)); `tke**1.5` vs `tke*sqrt(tke)` differs at ~1 ulp; the organizer permits changed floating execution order when the physical formula is unchanged and official RMSE passes. Trajectory hash is expected to change; official `vali.py` 26/26 remains the acceptance gate.
- Estimated ceiling: `__libm_pow_e7` is the #3 VTune hotspot (182.4 s on one node, ~730 s rank-CPU across four nodes, ~6.5-7% of the sample's rank-CPU total); the K-kl identities remove ~6 of 8 pow calls bitwise-exactly and 8/8 in algebraic form, conservatively worth several whole-run percent; wall-clock benefit depends on overlap with halo/UCX time, so an A-B-B-A is required.
- This candidate reopens the Stage-75 "GLS variable-exponent pow" closure: Stage-75 did not evaluate the scored K-kl configuration where the exponents are 1.0/1.0/1.5 (simple identities), and did not quantify the 6.5-7% pow pool.

## 02 Profiling / mechanism

- Parent binary `5f1a137e...fcb9`; VTune `118418627` node report (Stage 72): `__libm_pow_e7` 182.439 s CPU on j05r2n11, above `step2d_tile` (169.4 s) and `mp_exchange4d` (134.4 s), and above `biology_tile` (120.6 s), `gls_corstep_tile` (116.7 s), `t3dmix4_tile` (116.2 s).
- O33 source profile (sample 118496066 A1): GLS 01 = 3.06-3.06%, GLS 02 = 9.68-10.25% of rank-CPU total; the pow work sits inside the GLS corrector, executed on every coarse step (NTIMES=2592) on both grids.
- Loop shape: `DO j / DO k / DO i` (i inner, unit stride); per point 2x `gls**gls_exp1`, 2x `tke**(-tke_exp1)`, 2x `gls**(-gls_exp1)`, 2x `tke**tke_exp2` (8 general pow calls under K-kl; wall_fac only inside `Lmy25`).
- Cost model: general double `pow` is ~40-100+ cycles with branchy argument reduction; replacement costs 1 division or 1 sqrt + 1 multiply, i.e. ~10-15x cheaper per call. At ~730 s rank-CPU of pow over the sample-equivalent work, eliminating 6/8 (bitwise-exact subset) to 8/8 (algebraic) gives a conservative 3-6% whole-run wall-clock band, comfortably above the 2% reopen gate.
- No alias or race: the four scalars (e.g. `g_inv`, `tk_inv`, `tk_sqrt`) are loop-locals; expression order inside each formula is preserved; the OMP regions around the loops are unchanged.
- Bitwise-exact subset recommendation: apply the identities to `gls**gls_exp1`, `gls**(-gls_exp1)`, `tke**(-tke_exp1)` unconditionally inside K-kl (IEEE-exact), and optionally `tke**tke_exp2` as `tke*SQRT(tke)` (equivalent form). If bitwise-exactness of the whole run is desired, the first subset alone still removes 6/8 of the pow calls.

## 03 Validity check

- Re-read the exact immutable sources (not from memory): `gls_corstep.F` exponent derivation (lines 289-292) and hot expressions (634-652) confirmed against `Build/gls_corstep.f90`; `Lmy25` detection (266-271) confirmed bit-for-bit matching the scored `.in` (GLS_P=0, M=1, N=1, 2 grids).
- Confirmed no other file feeds `__libm_pow_e7`: `Build/biology.f90` exponent forms are compile-time constants (`**2`, `**3`, `**1.5`, `**0.5`, `2.0**x`) which ifort inlines; `Build/gls_prestep.f90` has no variable-exponent pow in the hot path; other modules showed no runtime-exponent `**` in the loop nests.
- Pass 1 valid: yes (exact lines, configuration match, identity forms quoted).
- Pass 2 valid: yes (VTune evidence, cost model, conservative 3-6% band, distinction from Stage-75 closure).
- Root cause / gain / scoring validity: not yet proven (static only).
- Reproduction required: candidate build + one matched 144/720 A-B-B-A; if both B faster and >=3% mean gain, then full 2592/12960 with official 26/26 (float-order change allowed; bitwise identity not required).
- Output lifecycle: none applicable (no model output created at review time).
