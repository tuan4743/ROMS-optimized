# Pass 2: matched profile analysis

## Verdict

**VALID. The AVX2 compiler report predicted wider vectors, but the measured target timers improve only 0.39% in aggregate and total runtime regresses.**

## Mean rank-time comparison

Positive delta means the AVX2 candidate is slower.

| Grid | Timer | O33 mean rank-s | AVX2 mean rank-s | Delta |
|---:|---|---:|---:|---:|
| 1 | profile total | 10356.654 | 10741.851 | +3.719% |
| 2 | profile total | 10356.802 | 10742.077 | +3.720% |
| 1 | 3D equations predictor (`pre_step3d`) | 458.292 | 453.384 | -1.071% |
| 2 | 3D equations predictor (`pre_step3d`) | 1357.970 | 1377.054 | +1.405% |
| 1 | tracer corrector (`step3d_t`) | 387.766 | 375.425 | -3.182% |
| 2 | tracer corrector (`step3d_t`) | 1084.613 | 1069.971 | -1.350% |
| 1 | GLS vertical mixing | 387.564 | 471.105 | +21.556% |
| 2 | GLS vertical mixing | 987.776 | 1213.575 | +22.859% |
| 1 | 4D halo exchange | 180.568 | 196.695 | +8.931% |
| 2 | 4D halo exchange | 714.377 | 748.889 | +4.831% |

Complete machine-readable tables:

- `profile_per_run.tsv`, SHA-256 `b7b6ef60321f97bf9a2b75880793ef3f2e03215e2a0a3e077be93bf4a9fbfd9c`.
- `profile_mean_comparison.tsv`, SHA-256 `198b35e1f3cd7d95edb0848039dfa0679477cfb10abcc03439046c78de5fb81d`.

## Direct target result

The compiler reports promoted AVX2 because it changed the dominant vector length from 2 to 4 and emitted YMM/FMA code. Runtime profiling does not realize the report's optimistic loop-speedup estimates:

- Grid 1 combined target (`pre_step3d + step3d_t`): `846.0575 -> 828.8090 rank-s`, a `2.039%` reduction.
- Grid 2 combined target: `2442.5830 -> 2447.0245 rank-s`, a `0.182%` regression.
- Both grids combined: `3288.6405 -> 3275.8335 rank-s`, only a `0.389%` reduction.

The static promotion gate required an approximately `8.2%` joint reduction for a 2% whole-run result. The measured joint target change is far below that requirement.

## Where the regression appears

The two GLS timers increase by `309.3405 rank-s` combined. The two profile totals increase by about `385.24 rank-s`, so GLS accounts for roughly 80% of the observed profile regression. The two 4D-halo timers add another `50.6385 rank-s`.

`gls_corstep.o` and MPI sources were not changed. Therefore this evidence does **not** prove an AVX2 code-generation regression inside GLS or MPI. Plausible mechanisms include downstream OpenMP/barrier attribution, cache/frequency/resource interaction, or phase timing redistribution. A PMU experiment would be needed to separate them, but it is unnecessary for the branch decision because:

- both candidate runs are slower than both controls;
- shell time and profile totals agree on the regression direction;
- the directly targeted timers miss the static gate by a wide margin.

The Hygon C86 7185 supports AVX2/FMA, but wider generated vectors do not imply higher throughput on this architecture. The result confirms that compiler-report potential speedup must not be used as a performance claim.

## Decision boundary

- Performance: invalid candidate, `STOP_BRANCH`.
- Diagnostic trajectory: consistent at printed precision.
- Official accuracy: unverified because the diagnostic emits no NetCDF.
- No half-day/full run and no further AVX2 reproduction.

Pass 2 is valid and proceeds to independent validity checking.
