# Tiling Design Pass — Pass 3 (Validity Check)

This pass independently re-verifies Passes 1–2 against raw artifacts.

## Re-checks performed

1. **Grid sizes and tiling** — re-read from the diagnostic input (`05ceb746...7b21`, hash-verified in this session): `Lm == 359 235`, `Mm == 326 245`, `NtileI == 8 8`, `NtileJ == 8 8`. No discrepancy with Pass 1.
2. **Tile-split arithmetic** — recomputed for all 7 factorizations of 64 for both grids by enumeration (`tile_split`), not by hand: ratios 2.15×/2.29× (16×4), 2.35×/2.21× (4×16), 8.45×/9.06× (32×2), 9.30×/8.69× (2×32), 34.3×/36.8× (64×1), 37.7×/35.3× (1×64). 8×8 = exact minimum. ✓
3. **Pool means used in the impact table** — re-derived from `skewprobe_P1.tsv` (this session's earlier independent computation): G2 4-D halo 11.61, G2 3-D halo 4.55, G2 2-D halo 7.72, G1 4-D halo 2.99, G1 2-D halo 1.71, G1 3-D halo 1.43, G1 point gathering 2.10 (CPU-s/rank). ✓
4. **Regression arithmetic** — fine 16×4: (11.61+4.55+7.72)×(2.29−1) = 23.88×1.29 ≈ +30.8 CPU-s/rank; coarse 4×16: (2.99+1.71+1.43+2.10)×1.35 ≈ +11.1. Wall conversion: single-threaded busy-poll waits (CPU ≈ wall); diagnostic wall 128–134 s → ≈ +23 s (+18%) and ≈ +8.5%. ✓
5. **Skew budget** — warm per-rank total spread 6.07 CPU-s (P3, from `skewprobe_P3.tsv`); the fine-grid halo regression (+31) exceeds it by ≈5×. ✓
6. **Cross-references** — Stage-58 closure ("near-square, lower-perimeter; do not test 16x4/4x16") is consistent and now quantified; Stage-53 mapping closure is consistent with the probe's node dimension (±6%); Stage-87 timer-49 pool (2.04% rank-CPU in the full run, `analysis/get_contact2d_sparse_review_20260804/`) is consistent with the probe's G1 point-gathering mean/spread. ✓
7. **No build/run was performed** for this stage; queue untouched; no output created; nothing deleted. ✓

## Contradiction checks

- No contradiction with the probe: the probe measured the *existing* 8×8 skew; this pass models *alternatives* and finds them worse — the two claims are complementary, not conflicting.
- No contradiction with the plan's direction branch: the plan says decomposition/mapping for case (a); the static pass exhausts both sub-branches with numbers and closes them, which is a legitimate research-cycle outcome. The Stage-87 fallback survives as the only remaining route (it was never cancelled).
- The projection conservatism is stated (payload-only scaling; fixed per-call costs would increase the regression), so no over-claim is made.

## Verdicts

- Pass 1 valid: **yes**. Pass 2 valid: **yes**.
- Root cause of the skew: still partially determined (point-gathering component is now attributable to the coarse-grid center contact-assembly load; 2-D-halo component remains unattributed without `[P2]`).
- Performance gain: none claimed (static pass). Scoring validity: unchanged (O33 `118405320`, 26/26).
- Reproduction required: **no** (no measurement to reproduce).
- Deletion: **no output may be deleted**; probe run root and candidate tree retained.

## Gate outcome

The decomposition/tiling direction is **CLOSED by arithmetic** — no tiling A-B-B-A is authorized or worthwhile (predicted regression ≥8.5% vs ≤4% possible gain). The research cycle's remaining actionable item is a decision on the Stage-87 `get_contact2d` sparse candidate (one A-B-B-A, its own gate), now supported by the probe's point-gathering straggler evidence. No build/run/submission was made by this stage.
