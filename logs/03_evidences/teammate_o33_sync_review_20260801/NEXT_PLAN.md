# Minimal-run plan after O33 synchronization

Date: 2026-08-01

## Parent

- Private immutable import: /public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801
- Source archive SHA-256: 7aa2b2a871dc95e5079ff7dcc6ecf0e1baba82ccfa9686aa66c965b5475e47e8
- Binary SHA-256: 5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
- Full valid timings: 2129.853 s and 2142.793 s; mean 2136.323 s, range 12.94 s or 0.606 percent.
- Layout: four nodes, 64 MPI x 2 OpenMP, 8x8/8x8, KMP_BLOCKTIME=0, HCOLL disabled, tuned collective rules.

The immutable import is never edited. Every candidate receives a new fjk variant directory.

## Phase 0 - Harness hardening, no model run

1. Clone only the O33 source package into a private variant.
2. Create a private build/run wrapper with source, binary, input, rules, validator and script hash gates.
3. Assert exact full or diagnostic NTIMES, 8x8 tiles, unchanged DT/NDTFAST and unique output path.
4. Capture nonzero mpirun status without losing logs.
5. Require DONE, expected final steps and the complete output manifest before validation.
6. Static-review the wrapper and build log before any queue submission.

## Phase 1 - O33 plus two-site norecvzero

1. Start from O33 distribute.F SHA-256 e1de89f3a01974084a91b09bb6064b7e4ff0d67be8276aee7e8d10ef0dcb743a.
2. Remove only the Arecv zero fills in mp_aggregate2d and mp_aggregate3d.
3. Confirm exactly six sites before and four sites after; all four non-aggregate sites remain.
4. Build with the archived Intel toolchain and matching selective OpenMP rules.
5. Diff the entire variant against O33 and accept only the two intended deletions plus isolated build metadata.

## Phase 2 - One diagnostic allocation

Use one four-node Slurm allocation to execute A-B-B-A sample order:

- A: exact O33 binary.
- B: O33 plus two-site norecvzero.
- Diagnostic NTIMES: 144/720.
- Same nodes, rankfile, 64 MPI x 2 OpenMP, 8x8 tiles, coll rules and runtime environment.
- Record shell time, DONE/final steps and ROMS profiles for all four launches.

Decision gate:

- Mean B improvement at least 3 percent, both B runs faster than both A runs and no trajectory/profile anomaly: proceed directly to one full run.
- Below 2 percent: stop this branch with no half-day or full run.
- Between 2 and 3 percent: do not spend a full run unless profiling shows a clear stable aggregate-path reduction larger than observed noise.

This is one submitted job despite four short launches and avoids another full baseline.

## Phase 3 - At most one full candidate

Only after the Phase 2 gate:

- Full NTIMES 2592/12960, cold start, unique output.
- Performance reference is the two-run O33 mean 2136.323 s.
- Three-percent target is real at or below 2072.233 s.
- Require ROMS/TOMS DONE, 16 NetCDF files, shell time real and official 26/26 PASS.
- Retain output and complete the three analyses.
- Reproduce only if timing is anomalous, the gain is close to the gate or an RMSE is close to a threshold.

## Fallback order

If the two-site overlay is ineffective:

1. Do not retry HCOLL, old Allgatherv replacement, whole-file mp_exchange rewrites, further Ntile scans, UCX tuning, broad OpenMP expansion or PROFILE disabling.
2. Re-enter static review for biology repeated-argument exp common-subexpression elimination, the only remaining low-risk arithmetic candidate identified by teammate profiling.
3. Require a bitwise/local expression proof before one A-B-B-A sample job.

Maximum planned new submissions for the primary branch: two jobs, one diagnostic ABBA allocation and one conditional full run.
