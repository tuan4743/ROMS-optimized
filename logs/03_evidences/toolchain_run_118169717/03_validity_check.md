# Pass 3 - Independent validity check

- Date: 2026-07-30
- Model job: `118169717`.
- Official validation job: `118196173`.
- Run directory: `/public/home/fujiake/fjk/mcc_runs/118169717_original_gcc731_noomp_64_8x8`.

## Independent evidence checks

- Slurm independently reports model job `COMPLETED`, elapsed `02:34:21`, exit `0:0`; validation job `COMPLETED`, elapsed `00:00:17`, exit `0:0`.
- The model log ends with `ROMS/TOMS: DONE`; a case-insensitive fatal-error scan found no blow-up, segmentation, floating-exception, MPI-abort, or `error:` marker.
- The run input and validated Intel baseline input are byte-identical, SHA-256 `a3e8a5dbee769ced1e097cd22d9e0424eb326b0a7b1006451fe6609dd14779a8`.
- The run used the isolated GCC binary SHA-256 `8c4bc0ae48330f3041ab9f223315fd9aa5fc4f0ca926cb67d5d65f4b767de9cf`.
- Critical sources retain passing hashes: `distribute.F` is `f03d0175...`; `nesting.F` is `9e9e7f3b...`.
- The run generated the expected 16 NetCDF files and metadata records `model_result=done`, `8.5G output`, and `validation_result=pass`.
- Official validator SHA-256: `97230e0b0dd4533a4000155bd691c81d243bdc45c24e6ceaeb09ffa6b1bb878a`.
- Validated output hashes: SCS average `d1cbdc3d...`; Dongsha60 average `7100c1f2...`.
- Official result: all variables for both grids pass. SCS `u` RMSE is `0.000079 <= 0.000400`; Dongsha `u` RMSE is `0.000057 <= 0.000060`.

## Validation of passes 1 and 2

- Pass 1 valid: yes. Completion, timing, hashes, layout, and output claims match independent Slurm, metadata, model-log, and filesystem evidence.
- Pass 2 valid: yes for the observed one-run performance/profile comparison. The shell-time reduction (`10.8258%`) agrees with the ROMS summed-CPU reduction (`10.85%`), and the compared runs use byte-identical inputs and equivalent layouts.
- Performance variance characterized: no. Only one full run per compiler is available.
- Official scoring accuracy: yes, for this run. All official thresholds pass.

## Root-cause conclusion

The original source with GCC 7.3.1 passes official accuracy, so GCC alone is not sufficient to reproduce the v22/v24a/v31 Dongsha `u=0.000067` failure. The failure should now be bisected in the shared optimized-source lineage, prioritizing sparse nesting's donor-side averaging plus floating `mp_sum`. A compiler/source interaction is not excluded, but it is secondary to source bisection.

## Three-pass verdict

- Pass 1 valid: yes.
- Pass 2 valid: yes, with a one-run variance limitation.
- Pass 3 valid: yes; independent evidence supports passes 1 and 2.
- Task objective achieved: yes. The toolchain isolation question is resolved sufficiently to select source-level bisection.
- Effective result: yes for this exact run—officially valid and `10.8258%` faster than the comparable Intel baseline.
- Reproduction required: yes. The performance result may vary and has only one run; the permanent rules authorize reproduction while retaining this latest output.
- Output deletion: no. Keep the full output through the reproduction task; do not apply the next-task deletion gate because this is the latest valid result needed for variance reproduction.

