# Stage 56: research reconciliation and profiling gate

The external literature and our O33 profile agree on the governing constraint: horizontal MPI decomposition must be judged by halo/collective cost and load balance, not resource count alone. NEMO recommends decomposition-aware benchmarking and records halos, collectives and computing separately; its nested-grid discussion warns that the same task count serves parent and child grids, constraining an optimum for either grid. The Chinese NEMO modernization study points to hotspot/SIMD/memory work but those O33 paths have already been bounded or rejected individually.

Our direct measurements are stronger than a generic scalability assumption:

| direction | measured effect | profile support | decision |
| --- | --- | --- | --- |
| 64-rank square-node placement | +0.7936% apparent wall improvement, inconsistent | halo +1.2695% | closed |
| 128x1 / 16x8 | -32.0999% wall regression | halo +322.6454% | closed |

The 128 result makes another rank/tile orientation sweep unproductive without contradictory, site-specific evidence: the B halo bucket is more than four times A, leaving no 2% whole-program mechanism. The relevant runtime/compiler variable-only branches are also closed: affinity cannot escape two-core rank cpusets, collective rule sweep failed its bound, and targeted AVX2/metric-reuse candidates regressed.

Profiling-pass validity: VALID. Observation is evidence-backed; the hypothesis is narrowed to a 64x2 communication/compute balance, not claimed as a universal ROMS optimum.
