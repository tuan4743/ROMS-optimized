# 03 Validity Check — clean-source full validation 118414346

- Re-read local copies under `raw/{logs,metadata,validation}` and remote Slurm accounting.
- Model log contains exact final steps, one `ROMS/TOMS: DONE` and `real=36m19.403s`.
- Manifest contains exactly 16 expected NetCDF files. Remote output directory is 8.5 GiB.
- Official validation contains all 13 variables for both grids and the final all-normal conclusion; Dongsha60 `u=0.000052`.
- Script review confirms the only post-validation failing command is a `grep` for a mojibake literal not present in the correctly decoded validation text. Only final hashes/status markers were skipped.
- Pass 1 valid: yes. The completed model and official pass are proven despite top-level Slurm `FAILED`.
- Pass 2 valid: yes. `2179.403/2136.310-1 = 2.017%`, and the GLS increase is present in short and full evidence.
- Scoring/portability: accuracy valid and clean-source reproducible; performance is slower than immutable O33 and not a best-result claim.
- Reproduction required: no additional full run. Fix only the wrapper success test for future scripts.
- Output lifecycle: retain `/public/home/fujiake/fjk/mcc_runs/118414346_o33_clean_full_validate_64x2`; do not delete when starting VTune.
