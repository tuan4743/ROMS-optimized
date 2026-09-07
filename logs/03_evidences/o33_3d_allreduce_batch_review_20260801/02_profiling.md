# Pass 2 - Profiling and viability gate

## Measured component

| Field group | Bytes per call | Calls/rank | Mean seconds/rank | Diagnostic lifetime share |
|---|---:|---:|---:|---:|
| 17 tracers | 626,416 | 2,448 | 1.475183429 | 1.168546% |
| u momentum | 613,088 | 144 | 0.088751065 | 0.070303% |
| v momentum | 613,632 | 144 | 0.086246002 | 0.068319% |
| Total | 11,875,792 bytes per coarse step | 2,736 | 1.650180496 | 1.307167% |

The total payload per coarse step is `17*626416 + 613088 + 613632 = 11,875,792 bytes`, about 11.33 MiB. One batched Allreduce would still reduce every byte. It may also select a different MPI algorithm because of the larger message, and the surrounding code needs new packing, offsets, lifetime management, and delayed unpacking.

## Impossible favorable upper bound

Use the validated O33 full wall time `2142.793 s` and the exact 18x NTIMES ratio between 144/720 and 2592/12960. If every measured second in all 19 calls vanished completely:

`1.650180496 * 18 / 2142.793 = 1.386193%`.

This bound already assumes zero time for an 11.33-MiB Allreduce, zero packing/unpacking/allocation overhead, perfect scaling with NTIMES, and no additional synchronization. A real batched call can only save part of the collective startup latency and must therefore deliver less than 1.386193%.

## Numerical and implementation boundary

Element values could in principle remain separated inside one concatenated buffer, but the larger collective may change Open MPI's reduction algorithm and floating-point reduction order. The code also currently checks `exit_flag` and updates each field after its individual call. Those risks would require full official validation if the branch had enough upside; they do not rescue its performance gate.

## Decision

`REJECT_BEFORE_BUILD`.

Do not edit `nesting.F`, compile a candidate, or submit a diagnostic. The mathematically favorable whole-run ceiling is below 2%. This is the second consecutive below-gate direction after the latest PLAN reset: first the blind collective-rule sweep, then 3-D Allreduce batching. Stop experiments and enter mandatory PLAN research before selecting anything else.
