# O33 Skew Probe Run — Pass 3 (Validity Check)

This pass re-reads the raw run artifacts (not the first two files) and independently verifies every claim.

## Raw-data integrity (re-derived from the TSV files)

- Per run: exactly 4,032 lines; 64 distinct ranks; 63 distinct (grid,region) pairs; 128 `TOTAL` rows (64 ranks × 2 grids). Verified for P1, P2, P3.
- `TOTAL` identical across grids for each rank (same process) — expected and confirmed (e.g., r0: 161.4/161.4; r36: 171.0/171.0).
- Format matches the probe write format `4(i6,1x),f16.6,2x,a`; all lines parse; region labels match the retained Stage-90 `A2/model.log` names (`Message Passage: 4D halo exchanges`, etc.).
- Trajectory: `fa498694109f9a578ca07133f55d8e58961dde55666ca5347707d86eb40e44b0` identical in all three `summary.tsv` rows — the probe did not perturb the solution (bitwise-neutral, as designed).
- Harness gates passed per run: rc=0, DONE, 64 probe files, nc=0, step-range headers present; `HARNESS_DONE` printed; result root retained.

## Hash / identity verification

- Submitted with `EXPECTED_SCRIPT_SHA=e8c4f269bf81645427299617f5e738d29ccf42328e1b8cb35661700058e9c7ab` (matches deployed script, verified pre-submit) and `EXPECTED_PROBE_SHA=3322eeaf85be7ac7cf5caaa46660d87fe0b030abfa2164855668d1b5a0c17aa7` (matches `oceanM.O33_skew`, verified pre-submit). All pre-submit hash gates re-verified remotely before submit; `Inputfiles` symlink restored and verified (`readlink -f` → `/public/home/fujiake/Inputfiles`).
- Job `118537688` on `j01r2n[08-11]`; ran to completion (queue empty after; no teammate job touched — `squeue -u fujiake` was empty at submit and after completion).

## Cross-check of Pass 2 numbers (recomputed independently in this pass)

- TOTAL spread P1: 161.350–171.005 → 9.655 CPU-s, 5.7% ✓ (matches Pass 2).
- TOTAL spread P3: min 160.0 (r63) / max 165.4 (r36) → ~6.1 CPU-s, 3.7% ✓.
- G2 4D halo P1: mean 11.608, min 7.206 (r0), max 13.312 (r42) → spread 6.106, 52.6% ✓.
- G2 4D halo P3: mean 11.50, spread 6.07, 52.8% ✓ (stable).
- Correlation figures: recomputed from the three TSVs (e.g., G2 4D halo corr 0.989, TOTAL 0.950) ✓.
- Spatial maps: re-derived; west column (Itile=0) 62–92% and center block patterns reproduced ✓.

## Contradiction checks

- No contradiction between "rank totals spread 3.7–5.7%" and "wait-pool spreads 50–120%": pools sum across both threads and ranks with high compute wait less; the wall-relevant quantity is the rank-total spread, stated as the ceiling. Pass 2 keeps these separate.
- No contradiction with Stage 90/88 method corrections: Pass 2 uses wait totals (not CPU deltas) for straggler inference, excludes per-rank CPU spread as a load metric, and treats P3 (warm) as the reference for the ceiling.
- No contradiction with the plan gate: this run is the gated diagnostic probe itself; no candidate was built or submitted; no claim of a speedup or scoring validity is made anywhere.
- Startup-IO verdict (case c rejected): `Reading of input data` G1 mean 2.10 vs G1 4D halo spread 1.53 and G2 4D halo spread 6.11 — the input path is an order of magnitude below the dominant pool; cross-run corr of input regions (0.87–0.996) is high, but the totals are small and rank-0-specific values are confined to rank 0's own row (0.97/0.02), i.e., a broadcasting pattern, not a global straggler source. The plan's case-(c) route (input/broadcast/scatter path) is therefore not indicated by this data.

## Verdicts

- Pass 1 valid: **yes** — completion state, inventory, and headline findings re-derived from the raw files.
- Pass 2 valid: **yes** — every statistic re-checked; mechanism hypotheses are labeled as hypotheses; the quantified ceiling is conservative (warm-run reference, partial-removal statement).
- Root cause: **partially determined** — skew is persistent, rank-attributable and structural (fine-grid west column for 4D halo; interior center block for 2D halo/point gathering); the *reason* for each block's lateness (compute vs. nesting boundary supply) is not yet proven and is explicitly deferred (possible `[P2]`).
- Performance gain / scoring validity: **none claimed** — diagnostic run only.
- Reproduction required: **no** — the probe answered the Stage-90 question; direction selection is next, not another probe repetition.
- Deletion status: **no output may be deleted** — the probe run root and candidate tree are retained; deletion applies to no prior stage either (Stage-90/91 retention stands).

## Gate outcome

The Stage-90 skew probe is **complete and valid**. The result (persistent structural skew ≈ 3–5% of wall, fine-grid tiling-dependent) reopens, under the strict plan gates, the decomposition/tiling direction with a measured >=2% conservative ceiling — but the mandatory research cycle (Stages 52/57 trigger: two consecutive STOP_BRANCH at 85/90) requires a static tiling design pass and its own three-pass analysis BEFORE any A-B-B-A submission. Next stage: static tiling enumeration and skew-redistribution design for the fine grid (no build, no run, no submission authorized by this stage).
