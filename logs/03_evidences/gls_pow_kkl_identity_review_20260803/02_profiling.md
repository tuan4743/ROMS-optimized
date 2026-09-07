# GLS K-kl pow identity reuse review (2026-08-03)

## 02 Profiling / mechanism

- VTune (Stage 72, job 118418627, node j05r2n11, 144/720 sample): `__libm_pow_e7` 182.439 s CPU; rank order in the node report is pre_step3d_tile 382.8, step3d_t_tile 250.1, **pow 182.4**, step2d_tile 169.4, mp_exchange4d 134.4, biology 120.6, gls_corstep 116.7, t3dmix4 116.2.
- O33 sample profile (A1 of 118496066, rank-CPU aggregate): GLS Grid 01 3.06%, Grid 02 9.68% of total 10238.9 s; the pow pool across four nodes is ~6.5-7% of the sample rank-CPU total (VTune overhead-corrected ~660-730 s).
- All pow emissions are confined to `gls_corstep.F` 634-652 (`wall_fac` inside `Lmy25`, `BCK`, `BCP`), with the exponents read from the `.in`-driven parameters gls_p/gls_m/gls_n -> runtime values 1.0/1.0/1.5 under the scored K-kl configuration.
- Replacement mechanism (per point, K-kl branch): `gls**gls_exp1` -> `gls`; `gls**(-gls_exp1)` -> `1.0_r8/gls`; `tke**(-tke_exp1)` -> `1.0_r8/tke`; `tke**tke_exp2` -> `tke*SQRT(tke)`. General pow (branchy, ~40-100+ cycles) replaced by 1 div or 1 sqrt+1 mul (~5-10 cycles), ~10-15x cheaper per call.
- Conservative band: even if only the bitwise-exact 6/8 subset is applied (keep `tke**1.5` as pow), the pow pool drops to ~25% of itself; if the algebraic `tke*SQRT(tke)` is also used (permitted), pow in this kernel disappears entirely. Whole-run band 3-6% before overlap discount; overlap with UCX/halo progress and load imbalance can reduce realized gain, hence the matched A-B-B-A is mandatory.
- Distinction from Stage-75 closure: Stage-75 judged "variable/parameterized exponents, no conservative >=2% mechanism" for the general case and did not examine the scored K-kl parameter values (1.0/1.0/1.5); the same source has an existing `Lmy25` K-kl detection proving the configuration family was already special-cased in the codebase.
- OpenMP/loop context: the edited expressions sit inside `DO k / DO i` (i inner, unit stride) within the existing parallel j-regions of `gls_corstep.F`; introducing three loop-locals is private-by-construction and race-free.
- No cache/bandwidth claim is made (Stage-76 platform boundary); the mechanism is strictly arithmetic-latency/instruction-count reduction at a VTune-observed hot call.

## 03 Validity check

- Sources re-read from the immutable tree: exponent derivation lines 289-292 (`gls_exp1=1.0/gls_n(ng)`, `tke_exp1=gls_m(ng)/gls_n(ng)`, `tke_exp2=0.5_r8+gls_m(ng)/gls_n(ng)`); scored `.in` lines 337-343 (K-kl: p=0, m=1, n=1 both grids) => runtime exponents 1.0, 1.0, 1.5.
- `Lmy25` detection (lines 266-271) matches the scored configuration exactly (0.0/1.0/1.0 comparisons), so the K-kl branch condition is bit-for-bit the condition under which the identities hold.
- IEEE-754 basis: pow(x,1) = x exactly and pow(x,-1) = 1/x correctly rounded are required by IEEE 754-2008 and satisfied by Intel libimf/ifort math library; `tke*SQRT(tke)` is a mathematically equivalent evaluation of tke**1.5 whose 1-ulp-level difference is covered by the organizer floating-order clarification (2026-08-03) with official RMSE as the gate.
- No shadow branch: preprocessed `Build/gls_corstep.f90` matches `gls_corstep.F` at these lines; no CPP alternative covers 634-652.
- Pass 1 valid: yes. Pass 2 valid: yes. Pass 3: static only; reproduction required (build + matched A-B-B-A, then full validation on promotion).
- Output lifecycle: no model output created; nothing deleted.
