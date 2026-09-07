# Pass 2 - Runtime profiling

- Date: 2026-07-30
- Candidate job: `118169717`, original sources, GCC 7.3.1, no OpenMP.
- Reference job: `117981144`, original sources, Intel 2017, official validation passed.
- Comparable scope: both use two nodes, 64 MPI ranks, 8x8 tiles, full `NTIMES=2592,12960`, cold start, and the same output schedule.
- Repetition count: one full run per compiler. Performance deltas may include run-to-run noise until reproduced.

## End-to-end result

| Metric | Intel baseline | GCC isolation | Change |
|---|---:|---:|---:|
| shell `real` | 10383.89 s | 9259.75 s | -1124.14 s (-10.8258%) |
| ROMS summed elapsed CPU | 660179.103 s | 588525.660 s | -10.85% |
| Slurm elapsed | 02:53:08 | 02:34:21 | -18:47 |
| batch MaxRSS | 22478260 KiB | 22255764 KiB | approximately -1.0% |
| MPI-step MaxRSS | 22957452 KiB | 23057060 KiB | approximately +0.43% |

The agreement between shell-time and ROMS summed-CPU reductions supports a real compiler/toolchain performance difference rather than a timing-wrapper artifact. One run is insufficient to establish variance.

## ROMS profile comparison

| Profile region | Intel seconds | GCC seconds | GCC change |
|---|---:|---:|---:|
| Grid 01 compute subtotal | 70993.186 | 65553.630 | -7.66% |
| Grid 01 message subtotal | 211705.913 | 177398.246 | -16.21% |
| Grid 01 point gathering | 191747.996 | 156192.014 | -18.54% |
| Grid 02 compute subtotal | 214421.588 | 179677.444 | -16.20% |
| Grid 02 message subtotal | 265950.180 | 255107.557 | -4.08% |
| Grid 02 `step2d` | 23338.225 | 16056.271 | -31.20% |
| Grid 02 biology | 9427.758 | 13965.752 | +48.13% |
| Grid 02 GLS | 23890.796 | 16952.954 | -29.04% |
| Grid 02 predictor | 28889.255 | 25919.505 | -10.28% |
| Grid 02 tracer corrector | 97194.643 | 76325.541 | -21.47% |
| Grid 02 data gathering | 162622.879 | 162806.990 | +0.11% |
| Grid 02 point gathering | 54001.786 | 44155.582 | -18.23% |
| Grid 02 4-D halo exchange | 25417.983 | 26464.516 | +4.12% |

## Interpretation

- The speedup is distributed across both computation and communication-facing regions. It is not attributable to one kernel.
- The largest useful compute reductions are fine-grid `step2d`, GLS, and tracer corrector. Grid 01 and Grid 02 point-gathering time also falls by about 18%.
- Fine-grid data gathering, still about `162807 s` summed across ranks, is unchanged and remains the dominant single communication item.
- Fine-grid message time falls only 4.08% in absolute terms while compute time falls 16.20%; therefore its reported share rises from 40.2845% to 43.3469%. The higher percentage does not mean communication became slower overall.
- GCC regresses biology, 4-D halo time, and output-writing time. The biology increase is substantial and should be investigated only after accuracy isolation; total runtime still improves because other reductions dominate.
- Batch and MPI-step memory footprints are essentially comparable. This is not a memory-capacity optimization.
- Per-rank elapsed CPU still shows slow-rank outliers (GCC minimum about 8871 s versus maximum about 9237 s), consistent with residual load imbalance/wait exposure.

## Profiling conclusion

For this one full-run comparison, GCC 7.3.1 provides a broad approximately 10.8% end-to-end speedup on original sources. The remaining dominant bottleneck is fine-grid MPI data gathering, followed by point gathering and the fine-grid tracer corrector. This conclusion is performance-only: the compiler may change floating-point trajectories, and official validation is required before the speedup can be called effective.

## Output lifecycle

The 8.5G output remains retained. No deletion is permitted before official validation, pass 3, and a later task start.

