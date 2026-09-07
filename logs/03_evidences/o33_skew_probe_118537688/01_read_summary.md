# O33 Skew Probe Run — Pass 1 (Read Summary)

- Date: 2026-08-04. Task: execute the approved `[P1]` rank arrival-skew probe (design gate passed at `analysis/skew_probe_design_20260804/`) and read the raw result.
- Job: `118537688` (`fjk_skew_probe`), `kshcexclu06`, 4 nodes `j01r2n[08-11]`, 64 MPI × 2 OpenMP, `--exclusive`, diagnostic `NTIMES=144,720`, 8x8/8x8, HCOLL off, `KMP_BLOCKTIME=0`, `OMP_PROC_BIND=close`, `OMP_PLACES=cores`, spread_numa16_ccx rankfile (16 rank pairs/node, order as scripted).
- Probe binary: `agent_tmp/isolated/work/o33_skew_20260804/ROMS_CoSiNE15/oceanM.O33_skew` = `3322eeaf85be7ac7cf5caaa46660d87fe0b030abfa2164855668d1b5a0c17aa7` (hash-gated at submit). Run script SHA `e8c4f269...9c7ab`. Input `05ceb746...7b21`, rules `0ef5b45a...ce473` (hash-gated). Inputfiles symlink restored to `/public/home/fujiake/Inputfiles` before submit (missing from the copied tree — the Stage-85 failure mode; fixed in the private tree, verified `SYMLINK_OK`).
- Results root: `/public/home/fujiake/fjk/mcc_runs/118537688_o33_skew_probe` (retained). Three runs P1/P2/P3.

## Raw completion state (summary.tsv)

| Run | `real` s | rc | DONE | trajectory SHA | probe files | nc |
|---|---|---|---|---|---|---|
| P1 | 133.595 | 0 | yes | `fa498694...e44b0` | 64 | 0 |
| P2 | 133.957 | 0 | yes | `fa498694...e44b0` | 64 | 0 |
| P3 | 127.979 | 0 | yes | `fa498694...e44b0` | 64 | 0 |

All harness gates passed: DONE, step-range headers, trajectory byte-identical across all three runs (probe is bitwise-neutral), exactly 64 probe files/run, `nc_count=0` (expected for 144/720). Job completed cleanly (queue empty after).

## Data inventory

- `skewprobe_all.tsv` per run: 4,032 lines = 64 ranks × 2 grids × 63 (grid,region) pairs; format `rank ng imodel iregion seconds label`. Local copies: `analysis/o33_skew_probe_118537688/raw/{skewprobe_P1,P2,P3}.tsv` (+ `P1/..P3/skewprobe_all.tsv`, `summary.tsv`, `rankfile`).
- Integrity check: 64 ranks and 128 `TOTAL` entries (64×2 grids) per run; totals identical between grids (same rank process). Per-region sums need not equal TOTAL because message-passage timers nest inside compute timers (Stage-88 unit note) and `TOTAL` is the rank process total.

## Headline findings (initial conclusion)

1. **The skew is persistent and rank-attributable (case a), not jitter (b), not rank-0 I/O (c).**
   - Cross-run Pearson correlation of per-rank patterns: TOTAL 0.95; fine-grid (G2) pools 0.81–0.99 (4D halo 0.989, 3D halo 0.992, 2D halo 0.930, point data gathering 0.974, pre_step3d 0.970); coarse-grid (G1) pools 0.72–0.999. Startup pools (input read/broadcast) also correlated but small.
   - Rank-0 I/O is NOT the driver: `Reading of input data` (G1) mean 2.10 CPU-s/rank (of ~169 total), `data broadcast` 3.2–3.8, `data scattering` 1.4–4.2 — a few percent of rank CPU, with spread much smaller than the halo pools.
2. **Magnitude:** per-rank TOTAL CPU spread: P1 9.65 CPU-s (5.7%), P3 6.07 CPU-s (3.7% — warm steady state). The dominant wait pool is G2 `Message Passage: 4D halo exchanges` (mean 11.6 CPU-s/rank, spread 6.1 CPU-s = 52.6%, stable across runs). Under busy-poll, wait CPU ≈ wall, so the skew is on the order of 3–5% of the 128–134 s diagnostic wall (≈ 4–6 s), and conservatively projects to ≈ 3–5% of a full run (60–110 s of 2136 s).
3. **Structure:** G2 4D halo — the whole west tile column `Itile=0` waits 20–38% less than the interior (62–92% vs 103–115% of mean); G2 2D halo and G1 point data gathering — the interior center block (tiles ≈ Jtile 3–6, Itile 3–5; r36/r44/r45 family) waits 25–50% less; G2 pre_step3d has a mild interior-center excess (+4% at r45). Node dimension is small (G2 4D halo node means 10.8–12.3, ±6%), consistent with the Stage-53 mapping closure.
4. **Straggler identity is pool-specific, not a single slow rank:** the least-wait set differs between 4D halo (west column), 2D halo/point gathering (center block) and 3D halo (mixed). This means the skew is load-structure-driven per synchronization point, not one globally slow rank or node.
5. **Direction per plan.md Stage-90 item 4:** decomposition/tiling aspect ratio (or load-aware tiling) for the fine grid is the indicated lever; node mapping and rank-0 I/O paths are demoted by this data; the compute-overlap route (b) is rejected (persistence too high).

## Limitations

- Values are process-CPU seconds (`my_wtime = cpu_time`, no `_OPENMP` in `timers.o`); wait pools are single-threaded, so CPU ≈ wall under UCX busy-poll, but 2-threaded compute regions sum both threads.
- Cumulative whole-run totals: they separate startup from steady-state pools but cannot give per-step or intra-step arrival dynamics; if the next stage needs arrival *timestamps*, the staged `[P2]` probe (in-memory arrival accumulation at the GLS 3-D halo entry, end-of-run dump) is the designed follow-up — not started.
- This is a diagnostic `144/720` run: no NetCDF, no official validation, no scoring claim.

## Output lifecycle

- Run output retained at the remote result root (small, ~MBs). No deletion. Candidate tree with the probe binary retained (further probe stages may reuse it). Teammate tree untouched.
