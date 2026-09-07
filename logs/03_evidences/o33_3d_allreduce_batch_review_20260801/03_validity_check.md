# Pass 3 - Validity check

## Source verification

- The reviewed source files are the exact O33 evidence copies and their hashes match the synchronized parent record.
- The 17-tracer loop, two separate u/v calls, `Packed` allocation, `mp_sum` call, and in-place MPI_SUM Allreduce are all present at the cited lines.
- The active model has 17 three-dimensional tracers: temperature, salinity, and 15 CoSiNE variables.

Pass 1's source-to-bucket mapping is valid: `2448/144=17`, each momentum bucket has `144/144=1`, and total calls are `19*144=2736`.

## Arithmetic verification

- Bucket seconds sum: `1.475183429 + 0.088751065 + 0.086246002 = 1.650180496 s`.
- Payload sum per step: `17*626416 + 613088 + 613632 = 11,875,792 bytes`.
- Diagnostic share: `1.650180496 / 126.240984 = 1.307167%`.
- Impossible full upper bound: `1.650180496*18/2142.793 = 1.386193%`.

The bound is intentionally favorable and excludes all unavoidable remaining Allreduce and packing costs, so it cannot understate the candidate's best possible time saving.

## Final validity conclusion

All three passes are valid for `REJECT_BEFORE_BUILD`. No runtime or accuracy claim is made. This result completes two consecutive below-gate directions in the current sequence, so the permanent rule now forbids further builds or Slurm experiments until a new PLAN research cycle uses papers, similar open-source projects, and China-prioritized platform evidence.
