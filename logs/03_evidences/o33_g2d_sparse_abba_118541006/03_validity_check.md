# [O34b] get_contact2d/get_persisted2d sparse A-B-B-A — Pass 3 (Validity Check)

This pass independently re-reads the raw run artifacts.

## Re-checks performed

1. **summary.tsv** (re-read raw): rows W0/A1/B1/B2/A2 with `real` 127.982/126.011/129.547/128.173/125.943, rc=0, done=yes, one trajectory SHA `fa498694109f9a578ca07133f55d8e58961dde55666ca5347707d86eb40e44b0`, `nc_count=0` everywhere. Re-computed: mean A (126.011+125.943)/2 = 125.977; mean B (129.547+128.173)/2 = 128.860; gain = (125.977−128.860)/125.977×100 = −2.2888%. `both_B_faster`: max(B)=129.547 < min(A)=125.943? No → False. ✓
2. **Trajectory identity** — all five `trajectory.txt` hashes identical to the known O33 144/720 trajectory `fa498694...e44b0` (hard-gated in `run_one`); the candidate is bitwise-equivalent on this run. ✓
3. **Hash gates** — script `b8e63067...`, A `5f1a137e...`, B `f3d318cd...`, candidate nesting.F `9bf9c9cc...`, input/rules/validator hashes: all verified by the harness (HASH_OK lines in harness.log). Candidate source differs from parent in exactly one ROMS/ file (build gate `source_tree_files.txt` = 1 line), Compilers untouched, hunk scope limited to the two routines, `#ifdef/#endif` balanced (291/291). ✓
4. **Point-gathering numbers** — re-read from B1/B2/A1 model.log: G1 point gathering A1 131.486 / B1 103.870 / B2 110.650; G2 B1 38.448 / B2 40.160. Re-derived −22.3% (G1 mean). ✓
5. **Total-CPU regression** — re-read `Total:` lines: A1 10285.102, A2 10283.875, B1 10631.009, B2 10507.381 → +2.77% mean. ✓
6. **Build provenance** — r1 tree failed at CPP (`#endif without #if`, preprocessor-balance bug, fixed in make_candidate.py); r2 and r3 produced byte-identical binaries `f3d318cd...`; the strings gate flaked once per build on a stale FS read (string verified present afterwards in both binaries: 3 matches); only nesting.o rebuilt (four spot-checked objects byte-identical to parent); manual build record written with the flake note. All documented in this analysis's raw folder context. ✓
7. **Harness defect** — the auto-decision block crashed with AssertionError because W0 was tagged `O33` (not `WARMUP`) and therefore entered the scored list; `decision.txt` was written manually from the complete summary.tsv with the note. This is a harness-only defect after all runs completed; it does not affect the raw data or the verdict. ✓

## Contradiction checks

- No contradiction between "target pool fell 22%" and "total +2.8%": the pool is 1.3–1.4% of rank CPU, so a 22% pool cut is −0.3%; the additive per-call overhead appears in enclosing compute regions and dominates. Pass 2 states this explicitly.
- No contradiction with the 3-D `[O10]` path being proven in-tree: the 2-D port differs in record size (4 vs 136 doubles) and call frequency; the mechanism is the same, the message economics are not. The 3-D path is not part of this candidate.
- No contradiction with Stages 25–27 (point-to-point pattern regressions): this result is the collective→point-to-point direction of the same platform lesson.

## Verdicts

- Pass 1 valid: **yes**. Pass 2 valid: **yes**.
- Performance gain: none (measured −2.29%). Scoring validity: unchanged (O33 `118405320`, 26/26, `2136.310 s`).
- Root cause: per-call point-to-point/allocation overhead exceeds the removed Allreduce on small 2-D contact records; bitwise correctness confirmed.
- Reproduction required: **no** (clear STOP_BRANCH; two B samples + one discarded warm-up all consistent).
- Deletion: **no output may be deleted** — run root, candidate trees (r1/r2/r3) and all prior retained evidence stay.

## Gate outcome

Stage-87 fallback is **closed by measurement** (STOP_BRANCH). This is an ineffective attempt in the sequence; with Stages 85/90 already STOP_BRANCH, the research gate is already active and the tiling design pass (Stage 94) already closed decomposition. Performance work now has no open legal ≥2% candidate; the active track is delivery (O33, venue-manual steps per Stage 83).
