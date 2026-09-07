# Third analysis: independent validity check

Date: 2026-08-01

## Re-read checks

- sacct independently reports job 118346383 COMPLETED 0:0, four nodes and 128 allocated CPUs.
- The retained run log contains full steps, ROMS/TOMS DONE and shell real 35m42.793s.
- TIMING_118346383.txt reports 2142.793 s and matches the raw log.
- The output directory currently contains 16 NetCDF files totaling 8.5G.
- The retained official validator log reports all 26 checks passing.
- Dongsha u RMSE is 0.000052, below 0.000060.
- Source and copied archive SHA-256 match exactly.
- Both extracted O33 binaries have the same SHA-256.
- Runtime libraries have zero unresolved dependencies after loading the archived module environment.
- The O33 and validated EXP-0006 8x8 inputs differ actively only in diagnostic versus full NTIMES; the final wrapper sets the required full pair.
- The local source-evidence copies match the remote hashes recorded during synchronization.

## Cross-check of the first two passes

Pass 1 valid: YES. Job, timing, completion, output, validation, source package, binary and synchronization target are tied together by exact paths and hashes.

Pass 2 valid: YES. The profile values were read from raw full-run logs, the code-diff counts are reproducible from retained source files, and observations are separated from the proposed two-site hypothesis.

## Claim boundaries

- Teammate O33 full scoring validity: proven for jobs 118307015 and 118346383 under the official validator.
- This workflow's new speedup: not claimed; no new model run occurred.
- Root cause of the total O33 gain: not isolated because O33 is a combined communication, OpenMP, compiler and runtime stack.
- Two-site norecvzero gain on O33: hypothesis only until built and measured.
- Reproduction: the exact O33 parent already has two consistent full runs. A derivative requires the planned diagnostic and conditional full validation.

## Output lifecycle

No model output was created by this task. Teammate output is read-only and must not be deleted. The private source/evidence import (8603 files; current `du -sh` 632M, initial reading 624M) is the latest synchronized result and must be retained.

Final verdict: VALID. All three analyses are effective.
