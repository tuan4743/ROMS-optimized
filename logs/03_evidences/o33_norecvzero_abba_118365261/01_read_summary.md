# Pass 1 - Raw result read and initial conclusion

Date: 2026-08-01

Task: O33 plus two-site `mp_aggregate2d/3d` receive-zero removal, one matched A-B-B-A diagnostic allocation.

## Exact identity

- Job: `118365261`, `COMPLETED 0:0`, Slurm elapsed `00:08:38`, nodes `j05r2n[12-15]`, four nodes/128 CPUs.
- Layout: 64 MPI ranks x 2 OpenMP threads, 16 ranks/node, 8x8 tiles on both grids, HCOLL disabled, archived collective rules.
- Source: `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/ROMS_CoSiNE15/ROMS/Utility/distribute.F`, SHA-256 `c91c138ec6b912647f7d0c1d616cd6babc4d3250b7ae7c4e43efd61a8313d704`.
- A binary: exact validated O33 `oceanM.O33_final`, SHA-256 `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`.
- B binary: `oceanM.O33_norecvzero`, SHA-256 `3f9aa42af02861d205b85a3b73ae1c72eef13a4875a4b8b5584cc813d7a75b4c`.
- Base input SHA-256 `05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21`; diagnostic `NTIMES=144,720`, unchanged DT/NDTFAST and physical grids.
- Run root: `/public/home/fujiake/fjk/mcc_runs/118365261_o33_nrz_abba_sample`.

## Raw completion and timing

| Order | Variant | `time real` | RC | DONE | trajectory SHA-256 |
|---|---|---:|---:|---|---|
| A1 | exact O33 | 129.687 s | 0 | yes | `fa498694...e44b0` |
| B1 | O33+norecvzero | 129.371 s | 0 | yes | `fa498694...e44b0` |
| B2 | O33+norecvzero | 128.699 s | 0 | yes | `fa498694...e44b0` |
| A2 | exact O33 | 124.995 s | 0 | yes | `fa498694...e44b0` |

- Mean A: `127.341 s`.
- Mean B: `129.035 s`.
- Reported gain: `-1.3303%`; B is slower on the matched mean.
- Both B faster than both A: no.
- All four logs contain exact `1-144`/`1-720` step-range headers, `ROMS/TOMS: DONE`, and both final elapsed-time profiles.
- No NetCDF was expected or produced at this short output interval. Official validator was therefore not run.

## Initial conclusion

The candidate does not meet either the 3% full-run gate or the 2% ambiguity floor. The automatic verdict `STOP_BRANCH` is supported. This diagnostic proves matching printed trajectories, not official full-run accuracy or scoring validity. Do not submit a full candidate.

Pass 1 valid: **VALID**.

Output lifecycle: retain this diagnostic root and all failed-harness evidence. Nothing is deleted at task completion.
