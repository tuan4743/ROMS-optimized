# 03 Validity Check

Status: **VALID**  
Date: 2026-08-02 +0800

## Independent checks

- Recomputed from `summary.tsv`: parent mean `126.1255 s`, clean mean `127.9595 s`, clean delta `+1.4541%`; this agrees with `decision.txt` after three-decimal display rounding.
- Each of A1/B1/B2/A2 contains exactly one `ROMS/TOMS: DONE`, the exact Grid 01 final step 144, the exact Grid 02 final step 720 and both grid profile sections.
- Recomputed trajectory SHA-256 is identical for all four runs: `fa498694109f9a578ca07133f55d8e58961dde55666ca5347707d86eb40e44b0`.
- All four output directories contain zero NetCDF files, as expected for this shortened diagnostic. Therefore no official `vali.py` result is claimed.
- Recomputed local hashes match the remote manifest for `summary.tsv`, `decision.txt` and `rankfile`: `153c6308...9042`, `2826e0b7...75a`, `cf6cc234...af2`.
- The final local `harness.log` SHA is `1ddef4a5...82e3`, while `SHA256SUMS` records an earlier `cad8dc0b...c12`. This is explained by script ordering: it hashes `harness.log` and then appends `HARNESS_DONE`. It is a manifest-finalization bug, not model corruption; future scripts must write the final marker before hashing or omit self-hashing of an open log.
- Slurm accounting reports top-level `COMPLETED`, exit `0:0`, elapsed `00:08:34`.

## Cross-check of the first two analyses

The initial summary's `DIAGNOSTIC_EQUIVALENT` result is supported: wall-time delta is below the declared 2% threshold and trajectory checks are exact. The profiling analysis is also supported by two independent samples per variant and consistent approximately 21.5% GLS increases on both grids.

## Final validity decision

Stage 66 is a valid short-run reproducibility result. It authorizes exactly one full clean-build validation run; it does not authorize calling the v3 archive submission-ready yet. Required next gate: full cold-start `2592,12960`, shell `time real`, 16 expected outputs and official `vali.py` 26/26 PASS. Keep all Stage-66 raw files and the Stage-63 full parent result; delete nothing.

