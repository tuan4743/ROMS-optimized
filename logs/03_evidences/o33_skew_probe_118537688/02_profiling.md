# O33 Skew Probe Run — Pass 2 (Profiling and Mechanism)

## Timing scope and repetition

- Three repeats of the identical probe binary/input on the same allocation (P1/P2/P3). Walls: 133.595 / 133.957 / 127.979 s. P3 is ~5.5 s faster than P1/P2 — a node-state warm-up effect, not a measurement error (P1 here is NOT the outlier it was in A-B-B-A jobs; P1≈P2, P3 faster). All per-rank conclusions below are stable across all three runs.
- Units: all per-rank numbers are process-CPU seconds (`cpu_time`, since `my_wtime` is `cpu_time` without `_OPENMP`; Stage-88 unit correction). Wait regions run single-threaded and busy-poll, so 1 CPU-s ≈ 1 wall-s there. 2-threaded compute regions sum both threads.

## Per-rank spread across ranks (P1; P3 in parentheses)

| Pool (grid, region) | mean CPU-s | spread CPU-s | spread % |
|---|---|---|---|
| TOTAL (G1/G2 identical) | 168.9 | 9.65 (6.07) | 5.7% (3.7%) |
| G2 4D halo | 11.61 | 6.11 (6.07) | 52.6% (52.8%) |
| G2 2D halo | 7.72 | 3.75 (5.00) | 48.6% (60.4%) |
| G2 3D halo | 4.55 | 4.47 (4.65) | 98.4% (102.8%) |
| G1 4D halo | 2.99 | 1.53 (1.55) | 51.2% (52.2%) |
| G1 point data gathering | 2.10 | 2.37 (2.31) | 112.9% (119.0%) |
| G2 pre_step3d (predictor) | 21.31 | 2.46 (2.61) | 11.6% (12.3%) |
| G2 step3d_t (tracer corr) | 16.56 | 0.82 | 4.9% |
| G2 data broadcast | 3.24 | ~0.5 | ~14% (rank 0 ≈ 0.02) |
| G1 Reading of input data | 2.10 | 1.17 | 55.7% (rank 0 = 0.97) |

## Spatial structure (P1, % of mean; same shape in P3)

- **G2 4D halo (dominant pool, 52.6% spread):** `Itile=0` column 62–92% (corners lowest: (0,0)=62.1%, (0,7)=68.1%), interior `Itile=1..6` 104–115% (max at (5,5)=114.7%, (5,3)=113.4%). Jtile 0 row also reduced (81–90%). Node means 10.8/12.1/12.3/11.3 (±6%).
- **G1 4D halo (51.2%):** same family — `Itile=0` column 68–94%, interior center up to 119% at (4,3)/(5,5).
- **G2 2D halo (48.6%):** center block Jtile 4–5 × Itile 3–5 waits 29% less (70.6–77.4%: r36/r37/r44/r45 family); corners wait more (117–119% at (0,0),(6,1)).
- **G1 point data gathering (112.9%):** center block Jtile 3–6 × Itile 3–5 waits 40–50% less (52.2–66.6%); corners wait more (up to 165% at (0,0)).
- **G2 pre_step3d (11.6%):** interior center +2–4% (r45 104.5%), east/south edges −4–7% (r63 92.9%).
- **G2 step3d_t (4.9%):** essentially flat — no load signal in the tracer corrector.

## Persistence (cross-run Pearson, all three runs)

- TOTAL 0.949–0.950; G2 4D halo 0.989; G2 3D halo 0.992; G2 2D halo 0.930; G1 point gathering 0.988; G2 pre_step3d 0.970; G2 step3d_t 0.909; data broadcast 0.81–0.92; Processing of input data 0.995; only tiny/one-off regions (alloc init 0.37, ocean state init 0.13–0.42, omega 0.55) decorrelate. The dominant pattern is stable to rank identity across runs.

## Mechanism (observation → hypothesis)

- Observed: (1) rank totals span 161.4–171.0 CPU-s (P1) and the spread is dominated by the wait pools; (2) the straggler sets (least-wait ranks, i.e., those arriving last at each sync) are structurally different per pool: west column for 4D halo, interior center block for 2D halo/point gathering; (3) G2 pre_step3d shows a matching interior-center compute excess (+4%); (4) node-to-node spread is small; (5) startup I/O pools are small and symmetric.
- Hypothesis A (structural load imbalance in the fine grid): the interior-center tiles of the 8x8 fine grid carry slightly more predictor work (reef/shallow land complexity of the Dongsha60 domain center), so they arrive last at 2D-halo and point-gathering sync points; the west column's 4D-halo pattern reflects a different, boundary-side load (nesting contact/boundary supply on the fine grid's west side). Wall is set by these arrivals; the freed `[O34]` compute simply reappeared as extra busy-poll wait on the other ranks (consistent with Stage 90: GLS/3D-halo/4D-halo CPU rose exactly where the freed time vanished).
- Hypothesis B (startup-phase transient): rejected — startup pools are small and symmetric; the pattern is present in steady-state pools with high cross-run correlation.
- Hypothesis C (single slow rank or node): rejected — straggler identity moves with the pool; node means are nearly flat.
- Not proven: the *reason* the west column / center block is late (compute volume vs. halo-volume vs. nesting boundary supply). That attribution requires either the `[P2]` arrival-timestamp probe or a static tile-load model. For direction selection it is not required.

## Quantified ceiling and gate compliance

- Conservative whole-run potential: steady-state per-rank spread ≈ 6 CPU-s ≈ 3.7% of the diagnostic wall (P3), dominated by the 6 CPU-s G2 4D-halo spread. If the structural skew were removed entirely, the wall ceiling gain is ~3–4% of a full run (≈ 65–85 s of 2136 s); a partial removal targeting the west-column 4D-halo imbalance alone is worth ≈ 2–3%.
- This is the first measured >=2% mechanism since Stage 90 and satisfies the reopen gate: exact source/profile mechanism (per-rank arrival skew at halo sync points, now measured), conservative ceiling >=2%, and an unchanged-physics implementation route (decomposition/tiling is explicitly allowed; full validation still required).

## Direction selection (plan.md Stage-90 item 4)

- Result class: (a) persistent, rank-attributable, structural → **decomposition/tiling aspect ratio** (or a load-aware tiling) is the indicated direction. Node mapping is demoted by the flat node dimension (Stage-53 closure consistent). Rank-0 I/O path is demoted (startup pools minor). Overlap/fewer-sync-points (b) is rejected by the high persistence.
- Before any build: the mandatory research cycle (two consecutive STOP_BRANCH at Stages 85/90) applies — the next stage is a static design pass that (1) enumerates legal 64-factor tilings for the fine grid (e.g., 16x4 / 4x16 / 2x32 / 32x2; both grids may use different orientations with the same product), (2) computes per-tile column/row widths and halo volumes for 235x245 and 359x326, (3) models where the west-column and center-block loads move under each tiling, and (4) states the expected skew reduction before one A-B-B-A is authorized (both B faster and >=3% mean, trajectory `fa498694...e44b0`, then full 2592/12960 + official 26/26).
- `[P2]` arrival-timestamp probe remains the fallback if attribution between compute-volume and boundary-supply becomes necessary for the tiling choice.

## Method notes

- The `analyze_skew.py` filter `startswith('Message Passage')` matches the real region names; the straggler rule (least total wait = arrives last) is applied pool-by-pool and reproduced the same sets in P2/P3.
- Cold-start treatment: P1 is not excluded here (P1≈P2); P3 (127.98 s) is treated as the warmest reference for the ceiling estimate.
