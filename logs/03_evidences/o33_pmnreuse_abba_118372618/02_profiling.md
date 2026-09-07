# O33 pre_step3d metric-reuse profiling analysis

## Pass 2: matched runtime

| Run | Variant | real (s) | trajectory | NetCDF |
|---|---|---:|---|---:|
| A1 | O33 | 132.956 | `fa498694...e44b0` | 0 |
| B1 | O33_PMNREUSE | 132.446 | `fa498694...e44b0` | 0 |
| B2 | O33_PMNREUSE | 132.174 | `fa498694...e44b0` | 0 |
| A2 | O33 | 126.991 | `fa498694...e44b0` | 0 |

The matched means are A=`129.9735 s` and B=`132.3100 s`, giving `(A-B)/A=-1.797674%`. A2 is `5.965 s` faster than A1, so absolute short-run drift is large relative to the intended micro-optimization. Both B runs fall between the two A endpoints and `both_B_faster=False`; the result contains no defensible whole-run improvement signal.

## Direct target timer

The `3D equations predictor step` timer is the closest available parent timer for this candidate:

| Grid | A mean timer | B mean timer | candidate gain |
|---|---:|---:|---:|
| Grid 01 | 456.8195 | 458.0975 | -0.279760% |
| Grid 02 | 1357.0785 | 1352.8015 | +0.315162% |
| Combined | 1813.8980 | 1810.8990 | +0.165335% |

The combined target timer moves only `2.999` accumulated timer seconds, or `0.165335%`. The full O33 predictor needed an 11.0068% reduction to create a 2% whole-run gain. Thus the measured target effect is about 66 times too small even before considering shell-time regression.

The Stage-50 `3.0284%` whole-run compute ceiling was deliberately favorable and is falsified as a realistic projection. The code is already vectorized and dominated by other operations/data traffic; removing two metric multiplications and one metric load pair is too small to matter at model scale.

## Classification

- Performance: **INEFFECTIVE**, candidate shell time regresses `1.797674%` and target-timer change is only `+0.165335%`.
- Numerical trajectory: consistent at printed checkpoints across all four diagnostic runs.
- Scoring accuracy: **UNVERIFIED** because the diagnostic generates zero NetCDF and the official validator was not run.
- Promotion: **STOP_BRANCH**; no half-day/full/reproduction run.

Pass 2 status: **VALID**. Values were independently reproduced by `experiments/pre_step3d_pmnreuse_20260801/analyze_pmnreuse.py`; output SHA-256 `9d738921...eb53e`.

