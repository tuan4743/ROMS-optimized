# Stage 138 P0 contact-density map — Pass 2: profiling interpretation

## What P0 measured

Per-tile contact point ownership of the immutable contact NetCDF under the production 8x8/8x8 decomposition (rank = Jtile*8 + Itile), joined to the only measured per-rank arrival-skew dataset that exists (Stage-93 skew probe P3, warm run). The skew-probe ranks are the same 8x8 tiles as S32 (decomposition unchanged since O33), so the join is rank-exact, not approximate.

## Interpretation: the contact supply sits exactly on the straggler ranks

### Fine grid (G2) — supply ring = 4D-halo late ranks

The fine grid's supply interpolation points (region 1 receiver) form a closed boundary ring (rows/cols 0 and 7) with zero interior points. The west column (Itile=0) is the heaviest edge of that ring. Those are precisely the ranks the skew probe found arriving late at the dominant 4D-halo pool (west column waits 20-38% less; top-8 overlap recv_g2 ∩ late8 h4 = 6/8). Pearson -0.8935 between fine supply ownership and 4D-halo wait is the strongest single predictor in the whole dataset and matches the Stage-127 step2d signature (-0.883) almost exactly. recv_g2 vs step2d CPU is +0.8239: contact assembly and step2d load occupy the same ranks, which is structurally consistent with `nesting` (n2dPS/n2dCS) being called from inside the 2D fast loop (`main3d.F` 593/614/640/656+; `get_composite`/`get_contact2d` in `nesting.F`).

### Coarse grid (G1) — center block = 2D-halo + point-gathering late ranks

All 10213 supply-source points and all 6813 feedback-receive points on the coarse grid are owned by six center-block tiles (Jtile 4-5 x Itile 3-5). Rank 36 alone receives 4279 of 6813 feedback points (63%). These are the same six ranks (35,36,37,43,44,45) that the skew probe found late at G2 2D-halo (top-8 overlap 6/8 for don_g1) and at G1 point-data-gathering (5/8). Point gathering (timer 49) and the 2D-halo pool are the Stage-93 center-block straggler pools; contact ownership is 100% concentrated there.

### What P0 does NOT claim

- P0 is a static ownership map, not a timing measurement. It proves alignment, not the removable wall seconds.
- The ring shape on the fine grid means supply interp points are small in number per edge tile (~300-770 pts); the interpolation arithmetic per point is O(1) plus the assembly collective.
- Contact points are on the boundary ring, so the fine-grid interior ranks do zero supply interp; the west column's lateness may also include its position in the halo graph (fewer neighbors to wait for).
- The feedback direction (region 2, don_g2) is uniform over the fine grid and shows no meaningful correlation with any straggler pool — the useful signal is unidirectional (supply on both grids, feedback receive on coarse).

## Magnitude estimate (conservative)

Pool wall shares on S32 (Stage-127 corrected): point gathering 2.18%, 2D halo wait 12.3%, 4D halo wait 12.3% (spread 52.6% on O33 probe), Model 2D kernel 13.1%.

- Perfect-rebalance ceiling for the whole skew: 1.81-2.57% of wall (Stage-138 pass 1, corrected).
- Contact-attributable subset: only the assembly/interp part of the 2D-engine window on ring/center ranks, plus the extra wait these ranks impose. The contact points per tile (~0.3-4.4k) are small against a full tile of 2D compute (45x41 fine, 45x41 coarse). Static ceiling of pure contact arithmetic alone is well under 1% of wall.
- The waiting (halo pools) is where the wall time sits; removing contact arithmetic from the straggler ranks shortens their step2d window by only the contact fraction.

Therefore: P0 is positive for alignment/mechanism, but the conservative removable wall ceiling from contact arithmetic alone is below the 2% gate. The discriminating number — how much of the straggler step2d window is contact assembly vs pure step2d arithmetic vs halo graph position — can only come from the P1 phase-timestamp probe (in-memory accumulation, one final dump, 144/720 diagnostic).

## P1 design requirements (conditional)

If P1 is authorized: fork the frozen S32 source lineage, add phase timestamps (pure step2d arithmetic / contact interp+assembly / packing+send / halo wait / nesting feedback sync) with in-memory accumulation and a single end-of-run dump, 144/720, trajectory-neutral, per-rank persistence across 3 repeats. Gate: persistent per-step attribution that localizes the delay to a named phase on the specific late ranks, with removable ceiling >2%.

## Direction ledger update

- Contact-route: P0 static alignment POSITIVE; P2 (preallocated multi-field batch) remains blocked until P1 quantifies the contact phase; Stage-95's per-call allocation + tiny P2P design stays closed.
- step2d-route: fine-ring ranks are contact-heavy AND step2d-heavy; P3 (late-rank-specific step2d loop transform) remains blocked until P1 splits the window.
- No build, no submission, no model time consumed in P0.
