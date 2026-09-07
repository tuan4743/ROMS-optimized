# Pass 2 - Profiling interpretation

- Date: 2026-07-29
- Task: map external research to the measured ROMS-CoSiNE profile

## Profile-to-optimization mapping

| Measured evidence | Research-supported interpretation | Planned action |
|---|---|---|
| Grid 01 MPI 32.07%, point gathering 29.04% | Communication aggregation dominates before computation | Optimize `fine2coarse3d -> mp_aggregate3d`, not biology first |
| Grid 02 MPI 40.28%, gathering 24.63% + point gathering 8.18% | More MPI ranks may increase communication share | Do not assume 128 MPI is faster; require measured scaling |
| Biology 1.43% | Biology-only work has a low maximum whole-program gain | Defer biology micro-optimization |
| v24a hierarchical Bcast improved full time by about 1.8% but accuracy remained at the inherited failure | Bcast topology itself is useful but does not fix the earlier accuracy regression | Reapply hierarchical Bcast only after an accuracy-preserving gather base exists |
| v24b nonblocking exchange regressed heavily | Generic communication/computation overlap lacks enough useful independent work here | Do not retry broad nonblocking halo conversion first |
| v22/v24a/v31 share the same RMSE failure | The accuracy regression predates v24a Bcast and v31 LTO | Bisect earlier sparse/owner/fluxsum/contact-batch changes |

## Highest-value candidate design

1. Start from the validated Intel baseline source and compiler.
2. Preserve rank order and values exactly; do not use floating reduction to assemble nested-grid fields.
3. Introduce variable send counts and displacements for `MPI_Gatherv` at the original aggregation point.
4. If every rank requires the assembled field, distribute the assembled rank-ordered buffer with `MPI_Bcast` or `MPI_Scatterv` according to the original consumer semantics.
5. Cache integer metadata (`counts`, `displs`, contact indices) after topology construction.
6. Measure bytes transferred, collective calls, gather timer, and model progress before adding OpenMP.

## Expected risk

- Numerical risk: low if the new path only copies rank-ordered values and performs no arithmetic.
- Implementation risk: medium because nested contact layouts and padding must match the old receive layout exactly.
- Performance potential: meaningful because the measured bottleneck is precisely full-buffer point gathering, but no speedup is claimed before measurement.
