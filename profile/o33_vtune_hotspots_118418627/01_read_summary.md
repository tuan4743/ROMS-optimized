# Stage 72 - VTune hotspots collection: read summary

- Date: 2026-08-03 +0800.
- Job: `118418627`, four nodes `j05r2n[11-14]`, 64 MPI x 2 OpenMP, 8x8/8x8, diagnostic `NTIMES=144,720`.
- Immutable binary: `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/oceanM`, SHA-256 `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`.
- Result root: `/public/home/fujiake/fjk/vtune_runs/118418627_o33_hotspots_64x2` (473 MiB). Per-node VTune results are `result.j05r2n11`, `result.j05r2n12`, `result.j05r2n13`, and `result.j05r2n14`.
- Raw model log confirms `ROMS/TOMS: DONE` at 2026-08-02 19:46:06 +0800. VTune collector returns `collect_rc=0`; instrumented shell timing is `real 3m51.559s` and is not a score time.
- Slurm top-level state is `FAILED 1:0` only because the post-processing block queried nonexistent aggregate path `.../result`; `summary_rc=1` and `hotspots_rc=1`. The collector writes node-specific results, not that aggregate directory.
- Initial conclusion: sampling completed and raw data are retained. This is a diagnostic profile only; no scoring timing, official validator, output NetCDF, or performance-gain claim exists.
- Output lifecycle: retain all raw VTune data. No deletion is authorized or performed.
