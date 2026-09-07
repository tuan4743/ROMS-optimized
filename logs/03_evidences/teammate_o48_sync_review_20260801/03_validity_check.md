# Pass 3 - O48 evidence validity check

Status: **VALID**.

## Checks of Pass 1

- `sacct` confirms job `118368357` completed `0:0` on four nodes.
- The timing file reports `739.184 s`; the model log reaches `ROMS/TOMS: DONE` and both profile blocks.
- Eight expected one-day NetCDF files exist in the teammate output directory.
- The official validator reports all 13 SCS plus 13 Dongsha variables within threshold; Dongsha `u=0.000052`.
- Source, binary, script, timing, model-log, validator-log, and report hashes were read directly from the teammate tree.

## Checks of Pass 2

- Biology totals recompute as O33 `1191.963+3380.579=4572.542` and O48 `1173.395+3328.078=4501.473`, a `1.554%` target-region reduction.
- Wall comparison recomputes as `725.47/739.184=0.98145x`, a roughly `1.89%` regression.
- The target biology improvement maps to only about `0.12%` of whole-program rank time, so the non-promotion decision does not depend on the noisy non-target timers.
- There is no matched A-B-B-A allocation, so no reproducible speedup claim is made.

## Lifecycle and attribution

- This is teammate evidence only and does not increment the workflow's own post-PLAN ineffective-attempt counter.
- The teammate's 4.0-GiB output is retained in place. It was not copied or deleted.
- The latest private workflow result `/public/home/fujiake/fjk/mcc_runs/118368170_o33_avx2hot_abba_sample` remains retained and still has zero NetCDF files; no deletion is applicable.

Final verdict: the accuracy claim and the decision not to promote O48 are valid; a performance benefit is not established.
