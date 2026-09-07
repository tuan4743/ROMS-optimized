# Tiling Design Pass — Pass 1 (Read Summary)

- Date: 2026-08-04. Task: mandatory research-cycle deliverable after the Stage-93 skew probe — static design pass over the decomposition/tiling direction (plan.md Stage-90 item 4 branch (a): "decomposition/tiling aspect ratio, or rank-to-node mapping"). Three-pass analysis at `analysis/tiling_design_20260804/`. **No build, no run, no submission** (this is the gate before any A-B-B-A).
- Inputs: probe result `analysis/o33_skew_probe_118537688/` (persistent structural skew; fine-grid west column + center block; ≈3.7% warm wall); exact grid sizes read from the diagnostic input `05ceb746...7b21`; frozen rules (physical grids frozen; `NtileI×NtileJ` per grid must equal the 64 MPI ranks; different orientations per grid allowed).

## Facts (read from `ocean_SCS_Dongsha60_bio15.in`)

- Coarse SCS: `Lm=359, Mm=326`; fine Dongsha60: `Lm=235, Mm=245`; `N=34`; current `NtileI == 8 8`, `NtileJ == 8 8`.

## Perimeter / halo-volume model (tile-edge units per full exchange, all ranks)

Per-rank 4-D/3-D/2-D halo volume ∝ total tile perimeter: `V = 2·(NtileI−1)·mean(Mtile) + 2·(NtileJ−1)·mean(Ltile)` (both directions counted). Ratios vs 8×8:

| tiling | coarse 359×326 | fine 235×245 |
|---|---|---|
| 8×8 (current) | 1.00× (V=1198.8) | 1.00× (V=840.0) |
| 16×4 | 2.15× | 2.29× |
| 4×16 | 2.35× | 2.21× |
| 32×2 | 8.45× | 9.06× |
| 2×32 | 9.30× | 8.69× |
| 64×1 | 34.3× | 36.8× |
| 1×64 | 37.7× | 35.3× |

8×8 is the exact global minimum for both grids (tile aspect ~1.00–1.10, near-square). Every alternative at least doubles per-rank halo volume.

## Translation to measured wall (using probe pool means, P1)

- Fine grid → 16×4 (2.29×): G2 4-D halo 11.61 → ≈26.6 (+15.0 CPU-s/rank), G2 3-D halo 4.55 → +5.9, G2 2-D halo 7.72 → +10.0. Halo timers are single-threaded busy-poll waits (CPU ≈ wall), so ≈ **+31 CPU-s/rank ≈ +23 s of the 128 s diagnostic ≈ +18% wall regression** — against a ≤6 CPU-s (~4%) skew budget.
- Coarse grid → 4×16 (2.35×): G1 4-D halo 2.99 → +4.0, G1 2-D halo 1.71 → +2.3, G1 3-D halo 1.43 → +1.9, G1 point gathering 2.10 → +2.8 → ≈ +11 CPU-s/rank ≈ +8.5% wall regression.
- Mixed orientation (e.g., coarse 8×8 + fine 16×4): fine-grid regression alone is +31 CPU-s vs the ≤6 CPU-s skew. The volume model is a lower bound on the halo-pool increase (it ignores fixed per-call and pack/unpack costs), so these projections are conservative — real regressions would be larger.
- Straggler geometry shifts (16×4 spreads the west column to 1/16 width and the atoll block over ≈2×10 tiles) are irrelevant: the halo-volume term dominates by 5×.

## Conclusion

**The decomposition/tiling direction is CLOSED by arithmetic.** The Stage-58 note ("8x8 already near-square, lower-perimeter; do not test 16x4/4x16") is now quantified and extended to all 64-factor tilings. The rank-to-node mapping sub-branch was already closed (Stage 53) and is corroborated by the probe's flat node dimension (±6%). Any tiling A-B-B-A is a guaranteed regression; no build is authorized or worthwhile.

Remaining quantified skew (~3.7% warm wall) decomposes into: (1) G2 2-D halo center-block straggler (spread 3.75–5.0 CPU-s, atoll step2d wet/dry load — no legal mechanism identified; attribution would need the `[P2]` probe) and (2) the point-gathering center-block straggler on the coarse grid (spread 2.37 CPU-s = timer-49 pool, which the retained Stage-87 `get_contact2d` sparse candidate targets, bitwise-safe). Point (2) is the only remaining legal route with a ≥2%-edge ceiling (pool 2.04% of rank-CPU ≈ 2.7% wall share; realistic removal below that, payload retained).

## Output lifecycle

No model output created; deletion not applicable. Probe run root and candidate tree retained. No teammate impact.
