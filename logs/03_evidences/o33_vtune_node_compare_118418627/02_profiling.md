# Stage 74 - Four-node comparison

| Function | n11 | n12 | n13 | n14 | Range / mean |
|---|---:|---:|---:|---:|---:|
| `pre_step3d_tile` | 382.828 | 382.661 | 381.631 | 375.066 | 2.04% |
| `step3d_t_tile` | 250.130 | 254.822 | 253.162 | 246.075 | 3.48% |
| `__libm_pow_e7` | 182.439 | 182.918 | 179.373 | 178.350 | 2.53% |
| `step2d_tile` | 169.378 | 171.695 | 174.204 | 165.807 | 4.93% |
| `mp_exchange4d` | 134.373 | 160.390 | 155.660 | 130.341 | 20.70% |
| `biology_tile` | 120.590 | 122.926 | 124.983 | 116.939 | 6.63% |
| `gls_corstep_tile` | 116.705 | 116.662 | 117.891 | 113.668 | 3.68% |
| `t3dmix4_tile` | 116.225 | 129.352 | 127.963 | 116.702 | 10.48% |
| UCX progress | 104.760 | 91.325 | 91.628 | 112.430 | 21.03% |
| UCX poll RX CQ | 74.238 | 81.047 | 80.444 | 75.264 | 8.85% |
| `__kmp_fork_call` | 68.755 | 68.358 | 69.504 | 67.013 | 3.65% |

Compute work is tightly distributed: the four leading compute functions vary only 2.0–4.9%. `mp_exchange4d` shows a 20.7% range, but UCX progress moves oppositely (n12/n13 have higher exchange and lower progress; n14 has lower exchange and higher progress). Without per-rank wall-time/critical-path trace, this is not evidence that a rank mapping change can improve end-to-end time.

The P0 decision is `MAPPING_NOT_REOPENED`. Preserve the current hot-function order; advance to the zero-model `perf` capability gate, not a mapping or MPI-runtime trial.
