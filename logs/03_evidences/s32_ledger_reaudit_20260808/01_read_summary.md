# 01_read_summary — Stage 127 S32 ledger / I/O / Stage-90 re-audit

- Date: 2026-08-08 (local). Task: zero-machine-time re-audit per plan `s32_output_path_and_ledger_re-audit`. **No source edit, no build, no job.**
- Parent unchanged: teammate S32, full **1753.9 s**, 26/26, job `118755216`.
- Evidence used (read-only):
  - S32 sample PROFILE job `118769550` (`REAL=114.526`, sum Elapsed CPU `9194.676`, 64 ranks).
  - O33 full PROFILE `118405320` (`real=2136.310`, sum CPU `178516.604`).
  - Skew probe warm run P3 TSV: `analysis/o33_skew_probe_118537688/raw/skewprobe_P3.tsv`.
  - Source tree `/public/home/fujiake/nan/sprint/ROMS_CoSiNE15/ROMS` (create/fill/gather).
  - Full-run output sizes from `118746683_s21_ifort2021_3day/output` (~9.0 GB on disk).

## Headline

1. **S32 CPU→wall factor is `1.254447`**, not the O33-era `1.305676`. Profile `total time = 9194.67` equals the sum of per-rank Elapsed CPU (same definition as O33). Message+compute percentages sum >100% because message timers nest inside compute (Stage 88).
2. **Stage-1554 “below gate” labels on `set_avg` / input processing used CPU share, not wall share.** Corrected wall shares already cleared 2% on O33 (`set_avg` 2.31%, input processing 2.11%). On S32 sample, `set_avg` is **2.39% wall**.
3. **`Writing of output data` is invisible in every sample A-B-B-A** (`nc_count=0`). O33 full Writing wall share 1.91%; if absolute I/O wall-s transfer to S32 parent 1753.9 s → **2.33% pool**. Source has **no `nf90_set_fill` / `NF90_NOFILL`**; create path is `netcdf_create` → `nf90_create` in `mod_netcdf.F:5925+`.
4. **Stage 90 stands.** Hypothesis A (OpenMP second thread vs MPI core contention) was already rejected by Stage-90 accounting. Skewprobe correlation shows GLS / predictor / tracer-corrector are **not** concentrated on 4D-halo stragglers; `step2d` is. Share×speedup on the three big pools remains invalid.
5. **Decision: do not authorize a full `2592/12960` A-B-B-A for NOFILL or `set_avg` under standing gates.** NOFILL optimistic removable fraction of Writing is **0.58–1.17% of S32 parent** (<2%). `set_avg` pool clears 2% but fails the Stage-90 critical-path test (near-uniform across ranks).

## Output lifecycle

No model output created. Scripts retained under `experiments/s32_next_20260808/{io_path_survey.py,ledger_reaudit.py}` and remote copies in `/public/home/fujiake/fjk/agent_tmp/`. Deletion N/A.
