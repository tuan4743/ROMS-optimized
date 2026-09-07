# Pass 2 - Teammate O48 profiling analysis

Status: **VALID as a non-promotion profile analysis**.

## Matched-layout one-day profile comparison

The O33 and O48 logs use the same recorded runtime topology. Timer values below are rank-summed seconds over both grids.

| Profile region | O33 | O48 | O48 change |
|---|---:|---:|---:|
| Biology | 4572.542 | 4501.473 | -71.069 (-1.554%) |
| GLS | 8229.803 | 10130.132 | +1900.329 (+23.091%) |
| Predictor | 10906.797 | 11020.881 | +114.084 (+1.046%) |
| Tracer corrector | 8864.148 | 8843.926 | -20.222 (-0.228%) |
| 2D halo | 4037.876 | 3823.868 | -214.008 (-5.300%) |
| 4D halo | 5367.575 | 5683.744 | +316.169 (+5.891%) |

The intended biology region improves consistently by about 1.55%, but biology is only about 7.58% of the O33 full profile. The observed biology saving is therefore only about `0.12%` of the one-day whole-program rank-time denominator. This is consistent with the earlier static conclusion that removing one repeated exponential cannot reach the 2% end-to-end ambiguity floor.

The wall times are O33 `725.47 s` and O48 `739.184 s`: O48 is about `1.89%` slower. The much larger GLS and halo movements are outside the source change and should be treated as run-to-run/node interaction rather than attributed to the biology CSE. A single inherited comparison cannot quantify variance, but it is already sufficient to reject promotion because the target region itself is far below the required whole-program gain.

## Decision

`DO_NOT_PROMOTE` and `DO_NOT_REPEAT`. The change is a useful accuracy-safe confirmation, not a performance result worth spending another allocation on. O33 job `118346383` remains the validated full-run parent.
