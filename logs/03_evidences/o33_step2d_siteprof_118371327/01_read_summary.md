# O33 step2d exchange-site profiling read summary

## Task and lifecycle gate

- Date: 2026-08-01 21:52-22:17 +0800.
- Goal: directly time the unchanged `step2d` beginning `DUon/DVom` and ending `ubar/vbar` `mp_exchange2d` sites, then decide whether delayed grouping can clear the 2% O33 gate.
- Previous-result gate passed before this task: `analysis/o33_collective_hist_118370068/{01_read_summary.md,02_profiling.md,03_validity_check.md}` all existed; `/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_collective_hist_118370068` resolved inside the private tree and contained zero NetCDF. Nothing was deleted.

## Isolated profiler build

- Immutable parent: `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`.
- Private variant: `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_step2d_siteprof_20260801/ROMS_CoSiNE15`.
- Parent binary SHA-256: `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`.
- Instrumented binary SHA-256: `ca88a5e00272d452a862ed187d08967c6be96ad9dc5aaf4ef532990545adda4d`.
- Parent/instrumented source SHA-256: `0f03de3175e5454f617cfc2476093336d2fb3d957b1daf64e16627346c5c98a7` / `8a46eb11f4f60f1dcdde4b9912f319dbb431af0685a1dbf2921582a11269f87f`.
- Source diff: 57 additions, zero deletions; both versions retain exactly six `CALL mp_exchange2d` statements. Timing wraps only the two selected calls and writes one final TSV per rank/grid.
- Exact local scripts/source evidence: `experiments/step2d_siteprof_20260801/`; remote build logs: `/public/home/fujiake/fjk/agent_tmp/logs/o33_step2d_siteprof_20260801` (`474K`).

## Build incidents

1. The first compile failed before linking because ifort 2017 rejected runtime `Ngrids` as the dimension of initialized local `SAVE` arrays. The profiling-only counters were changed to two slots, matching the frozen two-grid application. The failed build log is retained.
2. The retry compiled and linked successfully, but a `strings | grep -q` gate failed under `set -o pipefail` because `grep` closed the pipe early. Direct binary inspection proved the marker and counter symbols were present. The gate was corrected to direct binary `grep`; no recompilation or model retry was required.

These are preparation/harness incidents, not optimization-effect results.

## Job result

- Job `118371327`, `fjk_O33_s2dprof`: `COMPLETED 0:0`, Slurm elapsed `00:02:20`, nodes `j05r2n[14-17]`, 4 nodes/128 allocated CPUs, 64 MPI ranks x 2 OpenMP threads, 8x8/8x8 tiles.
- Diagnostic input: unchanged O33 `NTIMES=144,720`, SHA-256 `05ceb746...6b21`; current collective rules `0ef5b45a...e473`.
- Model shell time under instrumentation: `real 2m12.302s`. This is not a performance comparison.
- `ROMS/TOMS: DONE` and both grid profiles are present.
- Exactly 128 site files exist: all 64 ranks x both grids.
- Remote audit: `/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_step2d_siteprof_118371327`, `451K`, 137 files, zero NetCDF.
- Key hashes: summary `d37d7311...dc97a`, harness `3e8fafe7...e082`, model log `be02719d...c290`, build metadata `3303be89...eea8`, source diff `80fc335c...9fc0`.

## Result

The most favorable measured end-site projection is only `40.61898 s`, `1.895609%` of validated full O33 `2142.793 s`. It is below the `42.85586 s`/2% ambiguity floor before accounting for the fact that a real grouping still transmits the same `ubar/vbar` payload. Decision: **REJECT_BEFORE_SCHEDULE_BUILD**. Do not build or run the delayed-exchange candidate.

## Local evidence-copy incident

The first recursive `scp` followed the audit's read-only `Inputfiles` symlink. It was stopped; the remote audit and public inputs were not modified. A safe deletion command was blocked by execution policy, so four partial local input copies totaling `659,113,840` bytes were moved recoverably outside the analysis package to `C:\Users\Fu Jiake\Documents\MCC\_quarantine\20260801_step2d_scp_inputfiles_partial`. They are explicitly excluded from result evidence. The required 128 site files, model/build logs, and summary are present locally.
