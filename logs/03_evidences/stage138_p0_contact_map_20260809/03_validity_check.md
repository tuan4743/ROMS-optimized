# Stage 138 P0 contact-density map — Pass 3: validity check

## Cross-checks

1. **Contact file identity**: SHA-256 `bff3d2ac...` recorded at read time from the shared tree; read-only access via the `vali` conda env's netCDF4; nothing copied, modified, or written back. File format NETCDF3_64BIT_OFFSET, dims `datum=17026`, `Ngrids=2`, `Ncontact=2`; Lm/Mm (359/326, 235/245) match the frozen grids.
2. **Region semantics**: region 1 donor_grid=1/receiver_grid=2 (supply), region 2 donor_grid=2/receiver_grid=1 (feedback), both refinement=1, interpolate=1. Index ranges consistent with a factor-5 nested pair (coarse donor cells 180-229 x 170-221 centered; fine receiver covers full ring incl. halo -3..238).
3. **Rank join**: skew-probe ranks use the identical 8x8/8x8 decomposition (rank = Jtile*8 + Itile). Tile ownership computed from grid Lm/Mm with the same integer-division convention; ring/interior counts verified by direct index inspection (Irg/Jrg ranges fall on ring columns/rows only for region 1 receiver).
4. **Stage-127 replication**: Pearson(step2d_G2, h4_wait_G2) = -0.8834 vs reported -0.883; step2d vs h2 = +0.0738 vs +0.074. The join pipeline reproduces the published correlations, so the contact correlations are computed with the same code path.
5. **Correlation sanity**: the four contact metrics are mutually consistent (recv_g2 and don_g2 are geometrically distinct: ring vs uniform; recv_g1/don_g1 identical center block, hence near-equal correlations with the same targets). No sign inversion or NaN artifact; N=64, no missing pools (labels normalized by truncating the dots column).
6. **Mechanism placement**: `nesting(ng, n2dPS/n2dCS)` verified in `main3d.F` (lines 614, 656+) immediately after `step2d` tile passes inside the 2D fast loop; `get_contact2d` verified as the receiver-side assembly routine (`nesting.F:1983-2236`). This is static source verification, not a timing claim.
7. **Rule compliance**: no physical formula, grid, decomposition, input, time step, I/O, ecology, or nesting semantics changed; no build, no Slurm job, no model output, no remote write to shared trees (script placed only under the private `fjk/agent_tmp` path, which is the user-private tree).

## Gate assessment (plan: promotion requires alignment AND conservative removable ceiling >2%)

- **Alignment: PASSED.** Contact supply ownership identifies the late ranks on both grids (fine ring -> 4D-halo late, Pearson -0.8935, top-8 6/8; coarse center block -> 2D-halo/point-gathering late, top-8 5-6/8).
- **Removable ceiling: NOT YET DEMONSTRATED ABOVE 2%.** Contact arithmetic alone (points per tile ~0.3-4.4k) is a small fraction of a tile's 2D window; the wall time sits in halo waiting. The 1.81-2.57% perfect-rebalance ceiling means a 2% scoring gain needs removal of ~78-100% of the imbalance, which contact arithmetic alone cannot provide on static evidence.

## Verdict

`P0_POSITIVE_ALIGNMENT / CEILING_UNPROVEN / NO_MODEL_CANDIDATE`.

- The contact route is NOT excluded: the alignment is the strongest rank-level predictor seen in the project and the causal chain (contact assembly inside the step2d window -> fine-ring/coarse-center rank lateness -> halo wait) is source-verified.
- The conditional next step per the Stage-138 plan is exactly one P1 phase-timestamp diagnostic (144/720, in-memory, one dump, trajectory-neutral) to split the straggler step2d window into pure arithmetic / contact assembly / packing / halo wait / nesting sync. That measurement decides P2 vs P3 vs freeze.
- No build or submission is authorized before P1 passes its own three-pass design gate with queue/disk/source-lineage checks.

## Evidence artifacts

- `evidence/p0_map_clean.json` — per-tile donor/receiver point counts, both grids.
- `evidence/p0_corr_output.txt` — full per-rank table, correlations, top-8 overlaps, spatial tables.
- `p0_contact_map.py` / `p0_correlate.py` — read-only analysis scripts (reproducible; remote copy at `/public/home/fujiake/fjk/agent_tmp/p0_contact_map_20260809/`).
- Input contact file SHA-256 `bff3d2ac...`; skew probe P3 local copy `analysis/o33_skew_probe_118537688/raw/skewprobe_P3.tsv`.
