# 02 Profiling Analysis

Status: **VALID**  
Date: 2026-08-02 +0800

## Matched profile means

The ROMS profile values are accumulated rank CPU-seconds. Percent changes below are clean versus validated parent.

| Region | Grid 01 parent/clean | Change | Grid 02 parent/clean | Change |
|---|---:|---:|---:|---:|
| step2d | 309.050 / 304.573 | -1.45% | 1042.119 / 1025.026 | -1.64% |
| biology | 197.784 / 197.496 | -0.15% | 554.482 / 554.113 | -0.07% |
| GLS | 384.845 / 468.889 | **+21.84%** | 982.992 / 1194.617 | **+21.53%** |
| predictor | 450.995 / 456.899 | +1.31% | 1342.852 / 1359.873 | +1.27% |
| tracer corrector | 380.396 / 380.694 | +0.08% | 1069.076 / 1079.533 | +0.98% |
| 2D+3D+4D halo | 370.630 / 396.614 | +7.01% | 1498.527 / 1537.864 | +2.63% |

Grid totals move from parent means `10254.029/10254.127` to clean means `10515.445/10515.579` rank CPU-seconds, approximately `+2.55%`. Shell wall time moves only `+1.4541%`; therefore profile totals must not be substituted for the scoring `time real` value.

## Attribution

The only stable, large local difference is GLS, about `+21.5%` on both grids. This aligns with the source-lineage audit: the clean `gls_corstep.o` is generated from the archived formal source/config, while the validated O33 executable was incrementally linked and contains a different `gls_corstep_tile` symbol size. Communication timers also rise modestly, plausibly as a downstream wait effect; they do not establish a separate MPI regression.

`step2d` becomes slightly faster even though it was not the intended axis. This mixed profile is another reason not to infer an exact microscopic cause from wall time alone.

## Profiling conclusion

The clean build is not bytewise or timer-profile identical to the historical incremental O33 binary. Nevertheless, its end-to-end short-run cost remains inside the 2% delivery gate and its trajectory is identical. The full clean run should be expected to be near O33 but potentially around 1-2% slower; only a measured full `real` and official validator can close that uncertainty.

