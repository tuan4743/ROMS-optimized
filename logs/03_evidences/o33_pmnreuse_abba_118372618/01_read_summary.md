# O33 pre_step3d metric-reuse A-B-B-A read summary

## Task and lifecycle gate

- Date: 2026-08-01, build ending 22:56 +0800; successful model job ending 23:10 +0800.
- Goal: test the single Stage-50 `pre_step3d` candidate that computes the unchanged `cff*pm*pn` vertical-update intermediate once per `j,i` in an OpenMP-private r8 vector.
- Previous-stage gate passed before build: `analysis/pre_step3d_invariant_review_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}` all existed and were valid. Stage 50 produced no model output, so deletion was not applicable. Stage-49 output remained retained.

## Isolated build

- Immutable parent: `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`.
- Private candidate: `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_pmnreuse_abba_20260801/ROMS_CoSiNE15`.
- Parent/candidate binary SHA-256: `5f1a137e...fcb9` / `eabad62d...f4f72`.
- Parent/candidate source SHA-256: `de54caa2...721b` / `93472d10...15dfd`; source diff is exactly seven additions and three deletions in `pre_step3d.F`, and no other ROMS source differs.
- Candidate object SHA-256: `8dfdddc9...b3463`; compiler rules remain `081b267b...faced`.
- Candidate target loop remains vectorized. The candidate ifort report estimates `1.71` and `1.38` for its two alignment paths, versus `1.66` and `1.36` in the parent report.
- Build metadata SHA-256: `2a3af26f...14b73`; target-loop report `c1ef3555...d9188`.

## Preparation incidents

1. Copying the 505-MiB immutable tree into the private work root took about seven minutes while another same-account build generated filesystem load. The later `make -j16` itself succeeded in `41.712 s`; no shared directory was modified.
2. Allocation `118372547` failed `2:0` after five seconds, before model launch, because the fresh candidate clone lacked its private `Inputfiles -> /public/home/fujiake/Inputfiles` symlink. All hashes had passed. The missing link was added only inside the private candidate and the unchanged script was resubmitted. The small failed harness directory is retained and contains zero NetCDF.

These are preparation/harness incidents, not ineffective performance samples.

## Successful job

- Job `118372618`, `fjk_O33_PMN_ABBA`: `COMPLETED 0:0`, Slurm `00:08:49`, nodes `j05r2n[00-03]`, four nodes/128 allocated CPUs, 64 MPI ranks x2 OpenMP threads, 8x8/8x8 decomposition, HCOLL disabled.
- Diagnostic input remained `NTIMES=144,720`, SHA-256 `05ceb746...e7b21`; rules `0ef5b45a...e473`; run script `012aa6e...2709`.
- A1/B1/B2/A2 shell times: `132.956 / 132.446 / 132.174 / 126.991 s`.
- Mean O33 A: `129.9735 s`; mean candidate B: `132.3100 s`; candidate result `-1.797674%` (regression).
- All four runs reached `ROMS/TOMS: DONE`, printed both grid profiles, and share trajectory SHA-256 `fa498694...e44b0`. Each produced zero NetCDF, as expected for this diagnostic.
- Remote retained root: `/public/home/fujiake/fjk/mcc_runs/118372618_o33_pmnreuse_abba_sample`, about `1.4M`. It contains no symlink and no NetCDF.

## Result

Decision: **STOP_BRANCH**. The candidate does not reach the 2% ambiguity floor, and its target predictor timer improves only `0.165335%` when the two grid means are combined. Do not run half-day or full. This is ineffective direction 2 after the Stage-48 reset, so model experiments stop and mandatory web/open-source/China-prioritized PLAN research begins.

