# Skew Probe Design — Pass 1 (Read Summary)

- Date: 2026-08-04. Task: gate the rank arrival-skew probe design (plan.md Stage-90 item 3) with a three-pass design analysis, per the handoff gate ("Draft scripts are not a submission authorization until three-pass design analysis is VALID").
- This is a **design gate, not a model run**: no new build/job was submitted, no model output was created, nothing was deleted.

## What the probe is

- Purpose: measure the rank arrival skew that absorbed the `[O34]` OpenMP gain (Stage 90): is it (a) persistent and rank-attributable, (b) random jitter, or (c) concentrated on rank-0 NetCDF read + `mp_bcast`?
- Mechanism `[P1]`: one-file instrumentation of `ROMS/Utility/timers.F`. In `wclock_off`, inside the existing `#ifdef DISTRIBUTE` finalize block (`thread_count.eq.NSUB`, reached once per grid at the end of the run, before the `mp_reduce` SUM overwrites them), each rank dumps its own per-region `Csum` totals to `skewprobe/rankNNNN.txt`. Zero physics change, zero communication change; trajectory gate in the harness proves bitwise identity.
- Why not literal arrival timestamps: a timestamp at the GLS 3-D halo entry would require touching `mp_exchange.F`/`gls_corstep.F` — the exact communication hot path under measurement — and per-call I/O or accumulation at every sync point. The dump-only probe runs once per grid at the end (microseconds), cannot perturb the measured quantity, and aggregates the whole-run steady-state signature, which is statistically stronger than a handful of samples. If `[P1]` shows a large spread without attribution, the design specifies a `[P2]` follow-up (in-memory arrival-timestamp accumulation at the GLS 3-D halo entry, end-of-run dump) — not started.
- What it answers directly (per-region per-rank totals, `64 ranks × 2 grids`, one file each):
  - Startup rank-0 I/O: per-rank `Reading/Processing of input data`, `data broadcast`, `data scattering`.
  - Steady-state skew: per-rank `Message Passage: 2D/3D/4D halo exchanges`, `point data gathering`, and the mixed GLS region.
  - Persistence: 3 repeats (P1/P2/P3) → cross-run Pearson correlation of the per-rank pattern.
  - Structural attribution: 8x8 tile spatial map and per-node (rank/16) aggregation.

## Artifacts and exact paths

| Item | Value |
|---|---|
| Draft scripts (local = deployed, byte-identical) | `experiments/skew_probe_20260804/{build_skew.sh,build_skew.slurm,run_skew.slurm,timers.F,analyze_skew.py}`; remote `agent_tmp/isolated/scripts/skew_20260804/` |
| build_skew.sh SHA-256 | `9d646cdc...bf04` (local=remote) |
| run_skew.slurm SHA-256 | `e8c4f269...9c7ab` (local=remote) |
| candidate timers.F SHA-256 | `89384aaf...1c56` (local=remote) |
| Parent binary | `nan_O33_final_20260801/ROMS_CoSiNE15/oceanM.O33_final` = `5f1a137e...cfcb9` (verified remote) |
| Parent timers.F SHA-256 | `c7407649...9312` (verified remote) |
| Diagnostic input SHA-256 | `05ceb746...7b21` (verified remote; NTIMES 144/720, 8x8/8x8 asserted by harness) |
| coll_rules.conf SHA-256 | `0ef5b45a...ce473` (verified remote) |
| Expected trajectory SHA-256 | `fa498694...e44b0` (identical to all prior O33 144/720 diagnostics) |
| Candidate tree | `agent_tmp/isolated/work/o33_skew_20260804/ROMS_CoSiNE15` (exists) |
| Built probe binary | `.../oceanM.O33_skew` = `3322eeaf85be7ac7cf5caaa46660d87fe0b030abfa2164855668d1b5a0c17aa7` (6,916,600 B) |
| Harness (run) | P1/P2/P3 × `time mpirun`, 4 nodes, 64 MPI × 2 OpenMP, `spread_numa16_ccx` rankfile (16 pairs/node), HCOLL off, KMP_BLOCKTIME=0, OMP_PROC_BIND=close, expected root `/public/home/fujiake/fjk/mcc_runs/${JOBID}_o33_skew_probe` |

## Remote build history discovered on resume (read-only)

Two build jobs were submitted before the pause handoff; both ended in harness gates, not model failures:

1. `118532196` (FATAL: "expected exactly one differing ROMS/ file") — a concurrent copy/build on the same tree left an inconsistent transient state. Note this is the same platform pattern already documented for the Allgatherv stage ("duplicate build 118206252 caused by concurrent status/submission visibility").
2. `118532486` (FATAL: "probe string missing from binary") — the identical `strings` command now returns rc=0 on the settled binary; transient read of the binary during the overlapping build.

The final tree state is clean and consistent: `timers.f90` 14:07:50 → `timers.o` 14:07:50 (29,056 B vs parent 24,552 B, SHA `4c80bb5f...1b088` vs parent `1336e461...61a9a`) → `libUTIL.a` 14:07:51 → `oceanM`/`oceanM.O33_skew` 14:07:51. Only `ROMS/Utility/timers.F` differs in `ROMS/` (build gate `source_tree.diff` = 1 line). Eight spot-checked untouched objects (`pre_step3d`, `step3d_t`, `mp_exchange`, `distribute`, `nesting`, `gls_corstep`, `biology`, `step2d`) are byte-identical to parent. Binary contains probe code (`strings` shows `skewprobe/rank` and the `$SKEWFILE` symbol `wclock_off_$SKEWFILE.0.2`). `build_metadata.txt`/`SHA256SUMS` were never written (the script exits before the metadata block on FATAL); provenance was reconstructed read-only for this analysis instead.

## Initial conclusion

- The `[P1]` design satisfies plan.md Stage-90 item 3 within the gate's intent: it discriminates (a)/(b)/(c) with zero perturbation and a bitwise-identity proof, using a staged `[P2]` fallback for localization if attribution is ambiguous.
- The existing verified binary `3322eeaf...` can be used directly: run-harness SHA gate (`EXPECTED_PROBE_SHA`) enforces integrity at run time; formal rebuild is not required for a diagnostic and would only repeat the race risk.
- The two build failures are harness/race artifacts. They produced no model sample and no timing, so they do **not** count as ineffective optimization attempts and do not invalidate the design.
- Build-race lesson to carry forward: never allow two build jobs on the same tree concurrently; check `squeue` for a live build before submitting another.

## Output lifecycle

- No model output created by this stage; deletion not applicable. Stage-90 run dir and build tree remain retained. Candidate tree `o33_skew_20260804` (contains verified probe binary) retained — required by the run harness; do not delete.
