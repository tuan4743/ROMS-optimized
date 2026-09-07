# Stage 63 O33 full cold-start reproduction: validity check

- Date: 2026-08-02 +0800.
- Independent evidence re-read: Slurm `sacct`, run metadata, full model-log tail/profile, output manifest, validator log/time and validated-output SHA-256 records under `/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2`.

## Identity and completion checks

- Job identity: `118405320`, `COMPLETED`, exit `0:0`, four nodes `j01r2n[00-03]`, 128 allocated CPUs.
- Binary SHA-256 matches immutable O33: `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`.
- Input SHA-256 matches the recorded full input: `a3e8a5dbee769ced1e097cd22d9e0424eb326b0a7b1006451fe6609dd14779a8`.
- Input metadata confirms `NTIMES=2592,12960`, 8x8/8x8 tiles, 64 ranks x2 threads and cold start; no warm-start path is reported.
- Script and collective-rule hashes match the submitted metadata.
- Model log reaches both final step counts and `ROMS/TOMS: DONE`.
- Shell `real 35m36.310s` matches the reported `2136.310 s`; Slurm's larger `00:36:07` correctly includes setup and official validation.
- Output manifest contains exactly 16 expected NetCDF files totaling `9,048,193,920` bytes.
- Official validator checks SCS and Dongsha60 average outputs: all 26 thresholds pass. No threshold is reinterpreted or omitted.

## Cross-check against the first two passes

- Pass 1 valid: **yes**. Job, hashes, full scope, completion, output and official validation are supported by raw evidence.
- Pass 2 valid: **yes**. Profile values were re-read from the final model log; the comparison uses the same immutable O33 binary/layout/full scope, and it explicitly treats the single-run differences as variance rather than optimization attribution.
- Contradiction check: none found. `real=2136.310 s` lies within the earlier valid O33 interval `2129.853-2142.793 s` and is nearly identical to its mean `2136.323 s`.

## Final validity judgment

- Correctness/scoring validity: **proven for this exact run**, full official input and 26/26 official validation PASS.
- Reproduction validity: **proven**. This is a third full valid O33 timing consistent with the prior two valid timings.
- New performance gain: **not proven and not claimed**. No source/runtime variable changed; the `0.3025%` difference from the packaged run is within the known O33 timing range.
- Root cause of timer fluctuations: **not proven**.
- Additional reproduction required: **no**, unless the user specifically requests a variance study or final ceremony rerun.
- Output lifecycle: retain the current 8.5G output as the latest complete delivery/reproducibility package. At a future task start it may be considered for deletion only after the exact path, these three valid files, storage need and user-retention requirement are rechecked; current recommendation is to retain it.

All three mandatory analysis passes are valid.
