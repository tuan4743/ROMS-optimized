# Stage 145 next plan

1. Wait for the team allocation to free; do not add another pending job while one 128-core job runs and two 64-core jobs already wait.
2. Submit only `build_aprime_b.slurm` (one node, build only). It extracts two fresh trees from the same frozen archive and builds A′ and B with ifort 2021.3.0, AVX2, no-FMA, IPO, and the frozen object flags.
3. Verify source delta is exactly modified `step3d_t.F` plus new `step3d_t_vdiff_fused.h`; verify the A′ and B compile lines and binary hashes.
4. Prepare one conditional runtime allocation: discarded warm-up; A/A′/A′/A lineage control; only if that gate passes, A′/B/B/A′ at `144/720`.
5. Require all legs DONE, same step ranges, zero unexpected NetCDF, and trajectory evidence. Reject B unless both B legs are faster and the mean gain reaches the established gate with lower `step3d_t` time.
6. Only a promoted diagnostic may receive a full `2592/12960` run and repeated official 26/26 validation.

