# 01_read_summary — Stage 123 research: Intel MPI ≥2% gate

- Date: 2026-08-08
- Trigger: third consecutive S32 STOP (119/120 compiler, 122 BcastHier); mandatory research before any new A-B-B-A.
- Scope: read-only. Intel MPI install survey, teammate RT_impi notes, S32 PROFILE message buckets, Stage-93 skew probe, prior HPC-X/coll_rules/HCOLL evidence, external collective-vs-imbalance literature. No build/job.

## Facts gathered

| item | evidence |
|---|---|
| Intel MPI on cluster | `2017.4.239` has `mpiifort`/`mpirun`; `2021.3.0` tarball present |
| Teammate RT_impi | Compiled with mpiifort under S15 era; **launch script never finished; never measured** |
| Live S32 binary MPI | HPC-X 2.7.4 Open MPI (`libmpi.so.40` from hpcx path) |
| G02 message PROFILE | 2D 5.14% + 3D 2.89% + 4D 7.80% ≈ **15.8%** halo; broadcast/scatter smaller on G02 |
| G01 broadcast | 4.00% — already attacked by BcastHier → **0% wall** (`118775392`) |
| Skew | Stage 93 warm TOTAL spread **≈3.7% wall**; arrival-imbalance persistent |
| Same-family MPI swap | HPC-X 2.11 vs 2.7.4 on ifort2021 champion: **0.031%** (noise) |
| Collectives tuning | teammate `coll_rules` → `basic_linear` Allreduce: **neutral**; HCOLL/UCX closed historically |

## Initial conclusion

**Intel MPI does not clear the conservative ≥2% full-run gate on S32.** It remains an untested stack swap, but the binding limiter is rank arrival skew (compute/load), which an MPI library cannot remove. Do not submit an ImpI A-B-B-A under standing gates.

## Output deletion

N/A (no model output).
