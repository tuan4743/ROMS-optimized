# Stage 60 result — profiling analysis

Timing scope is four matched cold diagnostic runs on the same four-node allocation and 64x2 layout. Profile values are ROMS per-rank accumulated counters; compare A/B means only by equivalent fields, not to shell wall time.

| profile group | A mean | B mean | change |
|---|---:|---:|---:|
| Grid 01 2-D/3-D/4-D halo total | 522.42 | 460.54 | -11.84% |
| Grid 02 2-D/3-D/4-D halo total | 1490.50 | 1603.86 | +7.61% |
| two-grid halo total | 2012.92 | 2064.40 | +2.56% |
| Grid 01 GLS | 387.12 | 473.45 | +22.30% |
| Grid 02 GLS | 988.25 | 1210.79 | +22.52% |

Observation: the candidate does not exhibit the required overall communication reduction. The Grid 01 halo decrease is offset by a larger Grid 02 increase, while both GLS timers rise by about 22%. The nested timing interaction means the source-local expectation of removing redundant exchange calls is not supported by end-to-end runtime behavior on this platform.

Attribution boundary: profile values support the measured regression and the decision not to promote this candidate, but they do not alone identify why GLS rose or prove that a specific guard changed its cost. The only justified conclusion is that this one-file candidate fails its performance gate.
