# Stage 138 next optimization plan

## Step 1 — P0 zero-run contact-density map: EXECUTED 2026-08-10, POSITIVE alignment

1. Contact file `/public/home/fujiake/Inputfiles/Dongsha60/SCS_Dongsha60_contact.nc` SHA `bff3d2acfa...69`, 17026 datum, 2 contacts (supply SCS->Dongsha60 10213 pts; feedback 6813 pts), coarse 359x326 / fine 235x245, refine 5. Read-only.
2. Mapping to 8x8/8x8 (rank = Jtile*8 + Itile): coarse grid — 100% of contact traffic (supply source + feedback receive) owned by 6 center tiles (Jtile 4-5 x Itile 3-5, ranks 35/36/37/43/44/45); fine grid — 100% of supply points on boundary ring (rows/cols 0,7), west column heaviest, 0 interior.
3. Join to Stage-93 skew probe P3 (same 8x8/8x8): fine supply ownership vs G2 4D-halo wait **Pearson -0.8935** (matches Stage-127 step2d signature -0.8834, replicated exactly); top-8 overlap fine-supply ∩ late8 4D-halo = **6/8** (west column); coarse center block ∩ late8 G2 2D-halo = **6/8**, ∩ late8 G1 point-gathering = **5/8**. recv_g2 vs step2d CPU +0.8239.
4. Mechanism source-verified: `nesting(n2dPS/n2dCS)` called from inside the 2D fast loop immediately after each `step2d` (`main3d.F` 593/614/640/656+); receiver-side interp/assembly via `get_composite`->`get_contact2d` (`nesting.F` 1983-2236).
5. **Verdict: P0_POSITIVE_ALIGNMENT / CEILING_UNPROVEN.** Alignment passed; conservative removable ceiling from contact arithmetic alone not demonstrated >2% (static points-per-tile small vs tile 2D window; wall sits in halo wait; perfect-rebalance ceiling only 1.81-2.57%). Three-pass: `analysis/stage138_p0_contact_map_20260809/`.

Promotion gate: only if contact density/estimated traffic consistently identifies the late ranks **and** the conservative removable wall ceiling remains >2%. → Alignment yes; ceiling needs P1.

## Step 2 — P1 one-allocation diagnostic, conditional: DESIGN NEXT (not yet authorized)

If P0 is positive or ambiguous → prepare one source-neutral timing probe with in-memory accumulation and one final dump. Separate:

- pure `step2d` arithmetic;
- contact interpolation/assembly;
- packing/send/receive completion;
- 2-D and 4-D halo entry/exit;
- nesting feedback/synchronization.

Run one `144/720` diagnostic only after source-lineage, queue and disk gates. Require matching trajectory and persistent per-step/rank attribution.

P1 gates before build: fork frozen S32 source (`backup_S32_src_20260808.tar.gz` SHA `615ee717...`), phase timestamps in memory with single end-of-run dump, trajectory-neutral, 3 repeats, per-rank persistence; merge Stage-139 read-only NUMA/page/THP/TLB telemetry (no separate cache DOE); only a named phase with removable ceiling >2% on the specific late ranks authorizes P2/P3.

## Step 3 — candidate choice, conditional

- Contact-positive: inspect adjacency and dependencies of repeated 2-D contact calls. Consider one preallocated multi-field batch; never repeat per-call allocation/tiny P2P.
- Compute-positive: identify one late-rank-specific `step2d` loop/data-access mechanism. Uniform speedups remain disallowed as candidates.
- Neither: stop performance experiments and freeze S32.

## Standing experiment gate

Any candidate must fork the canonical S32 source, build zero-delta A-prime and B from the same tree, reproduce the parent in matched allocation, obtain two faster B legs and at least 3% short-run gain with matching mechanism, then run full `2592/12960` and official 26/26. Fine-grid `u` is checked first.

## Sources

- Official ROMS parallelization: https://www.myroms.org/wiki/Parallelization
- Official ROMS nesting optimization ticket 735: https://www.myroms.org/projects/src/ticket/735
- Official ROMS Phase III nesting discussion: https://www.myroms.org/forum/viewtopic.php?t=2912
- Official ROMS nested-grid metadata: https://www.myroms.org/wiki/index.php/Nested_Grids
- China-priority LICOM load-balance study: https://www.mdpi.com/2076-3417/13/4/2690
- Chinese regional-ocean-model parallel optimization: https://crad.ict.ac.cn/cn/article/doi/10.7544/issn1000-1239.2019.20180791

