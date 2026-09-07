# 01 Read and Initial Summary

Status: **VALID**  
Date: 2026-08-02 +0800  
Job: `118413800`  
Remote result: `/public/home/fujiake/fjk/mcc_runs/118413800_o33_clean_rebuild_abba_sample`

## Scope

This is a delivery/reproducibility diagnostic, not an optimization claim. It compares:

- A, validated O33 binary: `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`.
- B, clean rebuild from v3 source archive: `e64347f3bd44eb69c5c224684306ebeb8898e909ce81a0260c0878650bbd53bb`.

Both use four nodes, 64 MPI ranks x2 OpenMP threads, 8x8/8x8 tiles, the same rankfile, `KMP_BLOCKTIME=0`, the same collective rules and legal diagnostic `NTIMES=144,720`. No physical/ecological scheme, grid size, timestep, forcing, variable set or nesting direction changed.

## Raw result

| Order | Variant | real (s) | RC | DONE | trajectory | NetCDF |
|---|---|---:|---:|---|---|---:|
| A1 | validated O33 | 127.272 | 0 | yes | `fa498694...e44b0` | 0 |
| B1 | clean rebuild | 128.125 | 0 | yes | `fa498694...e44b0` | 0 |
| B2 | clean rebuild | 127.794 | 0 | yes | `fa498694...e44b0` | 0 |
| A2 | validated O33 | 124.979 | 0 | yes | `fa498694...e44b0` | 0 |

- Parent mean: `126.126 s`.
- Clean mean: `127.9595 s`, reported as `127.959 s` by the harness.
- Clean delta: `+1.4541%` slower.
- Slurm: `COMPLETED 0:0`, elapsed `00:08:34`, nodes `j01r2n[16-19]`.
- Harness verdict: `SOURCE_REBUILD_DIAGNOSTIC_EQUIVALENT`.

## Initial conclusion

The clean source build clears the predefined short-run delivery gate: its matched slowdown is below 2%, all four runs finish, and all trajectories match. This does **not** make the v3 archive scoring-validated. Because the binary differs and the diagnostic emits no NetCDF, a full `2592,12960` clean-build run with official 26/26 validation is still required before final submission status can become `VERIFIED`.

No result or prior output was deleted.

