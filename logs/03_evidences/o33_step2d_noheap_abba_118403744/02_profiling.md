# Stage 61 result — profiling analysis

The prior one-core microprofile demonstrated a real allocation cost for a 21-array tile-shaped synthetic workload, but it is not an end-to-end ROMS predictor. This matched A-B-B-A determines transferability.

| profile group | A mean | B mean | change |
|---|---:|---:|---:|
| Grid 01 step2d | 314.30 | 304.31 | -3.18% |
| Grid 02 step2d | 1053.88 | 1013.12 | -3.87% |
| Grid 01 GLS | 388.31 | 468.71 | +20.70% |
| Grid 02 GLS | 990.80 | 1192.58 | +20.36% |
| two-grid 2-D/3-D/4-D halo total | 2067.75 | 2059.07 | -0.42% |

Observation: the intended `step2d` mechanism is present in ROMS—the local 2-D kernel falls about 3–4%. However, the concurrent GLS timing increase is much larger in absolute terms and wall time regresses. The trace provides no evidence that the allocation microbenchmark's large synthetic win transfers to a whole coupled time step.

Attribution limit: because only an object-local compiler storage policy changed, the GLS increase is a real correlated effect but its microarchitectural cause is not proven. The supported decision is only `STOP_BRANCH`; do not infer a physics change from matching printed trajectories.
