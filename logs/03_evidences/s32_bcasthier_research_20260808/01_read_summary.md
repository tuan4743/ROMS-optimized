# 01_read_summary — Stage 122 research: S32 post-compiler next mechanism

- Date: 2026-08-08
- Task: Mandatory research cycle after consecutive STOP_BRANCH on S32+ifort2022 (`118766380`) and S32+ifort2024 (`118768832`). Select one orthogonal ≥2% candidate on live parent S32 (1753.9 s).
- Scope: read-only PROFILE `118769550`, S32 `distribute.F` / hot Nonlinear sources, teammate sprint README S1–S32 closed matrix, prior Stage 85–95 ledger. No model job in this pass.
- Parent: S32 ifort 2021.3.0 + `-march=core-avx2 -no-fma -ipo`; runtime libimf fixed at 2017; md5 `92ffbd01...`.
- PROFILE sample: `/public/home/fujiake/fjk/mcc_runs/118769550_s32_profile_diag_sample` (144/720, `#define PROFILE`).

## Finding

Classic ifort micro-bump and the usual compute/halo routes are closed. The remaining ≥2%-plausible mechanism is **porting O9 hierarchical Bcast from `mp_scatter3d` onto the entire `mp_bcast*` family (timer 44)**.

| bucket (vs global PROFILE total 9194 s) | G01 | G02 | sum |
|---|---|---|---|
| data broadcast (region 44, `mp_bcast*`) | 4.0005% | 1.3362% | **5.3367%** |
| data scattering (region 47, O9 already on `mp_scatter3d` only) | 1.4358% | 0.2862% | 1.7220% |

All `mp_bcastf/i/l/s_*` still call flat `MPI_Bcast(..., OCN_COMM_WORLD)`. O9 hierarchical (node leaders + shared-comm) exists only inside `mp_scatter3d`.

## Initial conclusion

Candidate **[S32-BcastHier]**: one-file `distribute.F`, apply O9 pattern to every `mp_bcast*` `mpi_bcast` of region 44. Expected bit-identical trajectory (same payload, different tree). Conservative ceiling: 40% of 5.34% ≈ **2.14%** wall — clears the 2% gate. Rejected alternatives documented in `02_profiling.md`.

## Output deletion

No model output created. PROFILE diagnostic retained (not a performance candidate).
