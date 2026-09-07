# Pass 2 - Profiling interpretation and correct measurement plan

> **Later rule update:** `analysis/partition_rule_update_20260730/` reauthorizes internal MPI `NtileI/NtileJ` partitioning. The 128-rank case is no longer forbidden on rule grounds, but this exhaustive matrix is still not the active time-critical plan.

> **Superseded on 2026-07-30:** the user clarified that all grid-related settings, including `NtileI` and `NtileJ`, must remain unchanged. The A/B/C matrix below is therefore invalid because case C proposed `16x8`/`8x16` instead of the validated `8x8`/`8x8`. Retain the historical evidence sections, but do not execute this matrix. Use `analysis/scaling_profile_correction_20260730/02_profiling.md` instead.

- Date: 2026-07-30 (platform time)
- Timing scope: existing complete 64-rank runs plus one timed-out 128-rank diagnostic.
- Repetition count for the 128-rank layout: one incomplete sample; insufficient for a performance claim.

## What the existing sample says

The 128-rank job reached fine-grid step `6930/12960` in approximately 5400 seconds. A deliberately simple linear projection gives:

`5400 * 12960 / 6930 = 10098.70 s = 02:48:18.70`.

Against the same-compiler complete Intel 64-rank time of `10383.89 s`, this is only a projected `2.7465%` reduction, speedup `1.02824x`, and `51.4120%` strong-scaling efficiency when resources double. This is evidence of severe saturation, not a completed runtime result. Startup, output phases, source mismatch, tile-shape effects, and phase-dependent costs make the linear projection approximate.

The kill stack ending in `MPI_Allreduce` is not proof that Allreduce dominates: a timeout can catch ranks in any synchronization point. The complete 64-rank ROMS profiles are stronger evidence; they show 30%-43% message-passing shares and large nested-grid gathering costs, while input reading is negligible.

No existing 128-rank artifact contains PMPI summaries, per-rank imbalance data, uncore memory-controller counters, or a clean final ROMS profile. `/usr/bin/time` reports only about 3173% CPU because it does not account reliably for all remote MPI children; Slurm `TotalCPU=7-22:48:58` is the better allocation-wide CPU-accounting signal, but neither measurement gives memory bandwidth.

## Separate the three meanings of bandwidth

1. Storage/input bandwidth: time reading the 15 GiB input tree. Existing ROMS timing already makes this a low-priority hypothesis.
2. Memory/NUMA bandwidth: DRAM traffic and stalls while repeatedly updating local 3-D fields. Existing logs do not measure it directly.
3. MPI/interconnect bandwidth and latency: halo traffic, gathers, and collectives. Existing ROMS timing strongly implicates this category, but lacks call-level bytes, rank distribution, and 128-rank comparison.

## Correct controlled matrix

Use the officially validated original-source GCC/no-OpenMP binary `8c4bc0ae48330f3041ab9f223315fd9aa5fc4f0ca926cb67d5d65f4b767de9cf` for every layout. Keep compiler, MPI stack, HCOLL setting, environment, cold start, input file references, output configuration, and one thread per rank identical. Only use the organizer-authorized diagnostic `NTIMES=432,2160` and allowed tile counts.

| Case | Nodes | MPI ranks | Ranks/node | Tiles Grid 01 | Tiles Grid 02 | Main contrast |
|---|---:|---:|---:|---|---|---|
| A | 2 | 64 | 32 | 8x8 | 8x8 | validated-layout control |
| B | 4 | 64 | 16 | 8x8 | 8x8 | same rank/tile count, twice the nodes and memory channels |
| C | 4 | 128 | 32 | 16x8 | 8x16 | more ranks on the same four nodes |

Run uninstrumented timing in balanced order `A-B-C-C-B-A`, subject to queue availability and identical node generation. This provides two samples per layout and reduces time-order bias. Record the exact node list; do not pool visibly different node classes. If C is competitive, test the swapped legal tile orientation as a separate second-stage factor rather than silently choosing the faster orientation.

Run a separate instrumented cohort, because PMPI and hardware counters can perturb wall time. At minimum profile A, B, and C once after the timing cohort; reproduce an instrumented case if its rank distribution is anomalous.

## Measurements required

- Completion/progress: shell `real`, steps per second after initialization, final step, `ROMS/TOMS: DONE`, output count/size, and Slurm state.
- ROMS timers: compute and message categories for both grids, especially 2-D/3-D/4-D halo exchange, data gathering, point gathering, tracer corrector, biology, GLS, and input/output.
- MPI: preload `libmcc_pmpi_summary.so` in the instrumented cohort and retain per-rank samples. Report calls, mean/min/max time, payload, and percent elapsed for `MPI_Allreduce`, `MPI_Allgather`, `MPI_Bcast`, `MPI_Send/Isend/Irecv`, and waits. Do not report only the average; p50/p95/max rank time is needed for imbalance.
- Placement: `lscpu -e`, `numactl -H`, Slurm CPU binding, `mpirun --report-bindings`, and rank-to-node mapping. Case B must use 16 one-core ranks per node; A and C use 32.
- Scheduler resources: `sacct` job/step `TotalCPU`, `AveCPU`, `MaxRSS`, elapsed time, nodes, and exit status. Do not use the launcher-only `/usr/bin/time` CPU percentage as cluster-wide utilization.
- Direct memory bandwidth: inside the allocation, first record `perf list` and permissions. Prefer socket/node memory-controller read/write-byte counters over core cache-miss proxies. Collect a steady-state window after startup with node-level aggregation and normalize to GB/s per node.
- If usable uncore/UMC counters, LIKWID, or PCM are unavailable, state that DRAM bandwidth is unmeasured. In that case collect representative-rank `cycles`, `instructions`, cache/LLC misses, and stall events plus the A-vs-B scaling contrast only as proxies; do not label them measured memory bandwidth.
- Storage I/O: preserve ROMS `Reading of input data` and startup-to-first-step time separately from the steady-state window.
- Profiler overhead: compare one instrumented case with its uninstrumented twin; use only uninstrumented `real` for scaling claims.

The existing `profile_job.sh` can provide fixed placement, progress sampling, and PMPI preload, but its optional rank wrapper currently runs `perf record` with `cycles` on one rank. That is useful for hot-code attribution, not for diagnosing DRAM bandwidth. The profile runner therefore needs a private, isolated extension for `perf stat`/uncore preflight before this matrix is launched; the team tree remains read-only.

## Decision rules

- Memory/NUMA limitation supported: B materially beats A with the same 64 tiles, and direct counters show A near a per-node DRAM ceiling or substantially higher memory stalls; C then reaches a similar per-node bandwidth plateau without proportional speedup.
- MPI/interconnect/collective limitation supported: B does not gain enough to offset added inter-node traffic and/or C shows sharply higher PMPI time, tail-rank wait time, or gather/halo share while DRAM bandwidth is below its measured ceiling.
- Load imbalance supported: p95/max MPI or elapsed rank time diverges from the median and the slow ranks map consistently to particular tiles/nodes.
- Input-I/O limitation rejected: startup/read time remains below 1% and does not explain steady-state scaling.
- Mixed result: report both mechanisms and their measured shares; do not force a single label.

Shortened runs are diagnostic only. Any winning source/layout candidate must later run the full `NTIMES=2592,12960`, complete from cold start, pass the official validator, and undergo the normal three-pass analysis.
