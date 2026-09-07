# Stage 60 result — initial read

- Date: 2026-08-02 +0800 / 2026-08-01 EDT.
- Task: O33 `fine2coarse` exchange-vtype guard diagnostic A-B-B-A.
- Private output: `/public/home/fujiake/fjk/mcc_runs/118401389_o33_f2c_vtype_abba_sample`.
- Job: `118401389`, `kshcexclu06`, nodes `j05r2n[00-03]`, 64 MPI ranks x 2 OpenMP threads, 8x8/8x8 tiles, diagnostic `NTIMES=144,720`.
- Parent A binary: `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`. Candidate B binary: `14e55b8adbc58528508fca1e9b27aa2eda4594277d3b442d6e03ee600dfebe8d`. Candidate source `nesting.F`: `5716d0fe80c86b0469449b8ec8e6571bf2fdd658f14ec5315c13732265af722c`.
- Change: only guard pre-existing 2-D exchange code by `vtype.eq.r2dvar` and 3-D/4-D exchange code by `vtype.eq.r3dvar`; all physics, nesting operations, input fields, compiler settings and decomposition are unchanged.

| sample | version | shell `real` (s) | exit | `DONE` | trajectory SHA | NetCDF |
|---|---:|---:|---:|---:|---|---:|
| A1 | O33 | 128.353 | 0 | yes | `fa498694...e44b0` | 0 |
| B1 | guard candidate | 131.535 | 0 | yes | `fa498694...e44b0` | 0 |
| B2 | guard candidate | 130.354 | 0 | yes | `fa498694...e44b0` | 0 |
| A2 | O33 | 126.562 | 0 | yes | `fa498694...e44b0` | 0 |

Initial arithmetic: A mean = `127.458 s`; B mean = `130.945 s`; B regresses by `2.7358%`. Both B samples are slower than both A samples. This is a completed diagnostic, not a full three-day performance result.

No NetCDF was produced by the shortened run, as expected; therefore official `vali.py` was not run and no scoring-valid accuracy claim exists. The raw output is retained; it must not be deleted during this task.
