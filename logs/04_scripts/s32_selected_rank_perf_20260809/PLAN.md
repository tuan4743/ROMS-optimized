# S32 selected-rank perf diagnostic

- Date: 2026-08-09
- State: `SMOKE_VERIFIED` diagnostic; job `118813105` completed `0:0`.
- Purpose: distinguish retired-work imbalance from MPI/halo waiting on matched edge/interior rank pairs without changing ROMS source or model semantics.
- Frozen binary: `/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_nofill_20260808/ROMS_CoSiNE15/oceanM.S32_parent`
- Binary SHA256: `d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2`
- Configuration: 4 nodes, 64 MPI ranks x 2 OpenMP threads, 8 x 8 partition, existing S32 rankfile placement, debug `NTIMES == 144 720`.
- Selected matched pairs: `(8,10)`, `(24,28)`, `(40,42)`, `(48,53)`; first rank is edge and second is interior.
- Pass 1: `perf stat` with `task-clock`, `cycles:u`, `instructions:u`, `branches:u`, and `branch-misses:u` on the eight selected ranks.
- Pass 2: `perf record` with software `cpu-clock:u` at 99 Hz on the same ranks, without call graphs.
- Excluded claims: cache behavior, DRAM bandwidth, NUMA traffic, and scoring performance. Instrumented wall time is diagnostic only.

## Decision gate

- Compute-work hypothesis: accept only when interior ranks show a consistent instructions excess in at least 3 of 4 matched pairs and sampled symbols place the excess in ROMS compute routines rather than MPI/perf/runtime code.
- Wait/synchronization hypothesis: accept only when instructions remain close while cpu-clock samples and/or extra cycles consistently move into MPI/UCX/halo-related symbols in at least 3 of 4 pairs.
- Otherwise: mark the attribution inconclusive and do not implement a source candidate.
- Any later candidate remains bounded by the independently corrected 1.81-2.57% ideal tile-rebalance ceiling; this diagnostic does not establish an end-to-end speedup.

## Output lifecycle

Retain the complete run directory and produce `01_read_summary.md`, `02_profiling.md`, and `03_validity_check.md`. Do not delete these outputs during this task.

Completed analysis: `analysis/s32_selected_rank_perf_118813105/`. No optimization candidate was promoted; the only next gate is zero-run compiler-report inspection.
