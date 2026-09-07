# Pass 2 - Corrected fixed-grid profiling plan

> Superseded on 2026-07-30 by `analysis/partition_rule_update_20260730/`: the physical grid remains fixed, but `NtileI/NtileJ` and MPI rank decomposition may change. Do not execute this frozen-tile matrix as the current plan.

- Date: 2026-07-30 (platform time)
- Constraint: Grid 01 and Grid 02 remain `NtileI=8`, `NtileJ=8` in every case. No physical grid, tile count/orientation, nesting, time step, forcing, ecological parameter, or output setting changes are allowed.

## Required build control

Use one OpenMP-capable binary built from a confirmed passing source lineage for all cases. Run the same binary with one thread in A/B and two threads in C so compiler/source differences do not contaminate the comparison. Before timing C:

1. audit which existing OpenMP directives become active;
2. confirm 64 MPI ranks are retained and each rank owns the same `8x8` tile decomposition as A/B;
3. verify thread binding and absence of oversubscription;
4. treat the OpenMP build as unverified until a full cold-start run passes the official validator.

If the original source cannot use two threads without adding a new parallel loop implementation, stop: do not change the grid merely to reach 128 CPU cores.

## Corrected matrix

| Case | Nodes | MPI ranks | OpenMP threads/rank | Total CPU cores | Fixed tiles | Main contrast |
|---|---:|---:|---:|---:|---|---|
| A | 2 | 64 | 1 | 64 | 8x8 / 8x8 | compact 64-core control |
| B | 4 | 64 | 1 | 64 | 8x8 / 8x8 | same work/ranks, half the ranks per node |
| C | 4 | 64 | 2 | 128 | 8x8 / 8x8 | same nodes/MPI/tile layout, add one thread per rank |

- A binding: 32 one-core ranks per node.
- B binding: 16 one-core ranks per node, distributed consistently across sockets/NUMA domains.
- C binding: 16 ranks per node with two cores per rank, for example the already audited `ppr:16:node:PE=2` style, only after exact binding is printed and checked.
- Diagnostic duration may use the separately authorized proportional half-day `NTIMES=432,2160`; all three cases must use one byte-identical diagnostic input. Final acceptance still requires the full three-day input.
- Use uninstrumented `A-B-C-C-B-A` timing order for two repetitions per case, then a separate instrumented A/B/C cohort.

## Measurements

- ROMS complete internal compute/message profiles for both grids.
- Shell `real`, post-startup steps/s, Slurm state/CPU accounting, exact nodes, and completion marker.
- PMPI calls, time, payload, and per-rank p50/p95/max for halo exchange, gather, collectives, and waits.
- `lscpu -e`, `numactl -H`, `mpirun --report-bindings`, `OMP_PLACES`, and `OMP_PROC_BIND`.
- Direct node/socket memory-controller read/write bandwidth during a steady-state window if the platform exposes usable uncore/UMC counters.
- Representative core cycles, instructions, LLC/cache misses, and stall events only as proxies when direct DRAM counters are unavailable.
- OpenMP scaling information: time inside parallel regions, thread imbalance, serial fraction, and whether the second thread is doing model work rather than spinning/waiting.
- Input-read and output-write time remain separate startup/I/O measurements.

## Allowed fixed-grid MPI branch

MPI optimization remains allowed. After establishing the fixed-grid A/B/C baseline, test one MPI dimension at a time while holding `8x8`/`8x8`, 64 ranks, the binary, input, nodes, and thread count fixed:

1. rank/socket/NUMA placement and binding;
2. HCOLL on versus off;
3. UCX transport/runtime parameters supported by the platform;
4. collective algorithm selection;
5. semantics-preserving communication-source changes such as message aggregation or variable-count gather/scatter.

Use an ABBA sequence for each MPI-runtime comparison. Any source or collective change that can reorder floating-point reductions is numerically sensitive and requires a full official validator pass before acceptance.

## Interpretation

- B faster than A, with identical ranks/tiles and lower per-node memory pressure, supports a per-node memory/NUMA contention hypothesis, subject to MPI placement effects.
- C faster than B shows usable OpenMP headroom without changing the grid. The speedup must be compared with measured thread utilization and profiler overhead.
- C flat versus B plus a measured DRAM-bandwidth plateau supports a memory-bandwidth ceiling.
- C flat versus B with low thread utilization or a large serial fraction indicates inadequate OpenMP coverage/Amdahl limitation, not necessarily memory bandwidth.
- Rising PMPI wait/tail-rank time indicates synchronization or load imbalance even though MPI rank count stays fixed.
- An MPI variant is effective only if its uninstrumented repeated time improves and its instrumented PMPI evidence explains the improvement under the same fixed grid.
- Without direct memory-controller counters, report only a memory-bandwidth hypothesis, never a confirmed bandwidth ceiling.

## Validation boundary

Short diagnostics cannot establish scoring validity. Any effective C configuration needs a full three-day cold-start run, official validator pass, repeat timing if variable, and the standard three-pass analysis. No result from the superseded `16x8`/`8x16` plan may be used.
