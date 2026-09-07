# Pass 1 - Read result and initial summary

- Date: 2026-07-30
- Task: isolate the GCC 7.3.1 toolchain using the original passing ROMS-CoSiNE sources and no OpenMP.
- Slurm job: `118169717`.
- Source root: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727`.
- Binary: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/.mcc_opt/bin/original_gcc731_noomp/oceanM`.
- Binary SHA-256: `8c4bc0ae48330f3041ab9f223315fd9aa5fc4f0ca926cb67d5d65f4b767de9cf`.
- Input snapshot SHA-256: `a3e8a5dbee769ced1e097cd22d9e0424eb326b0a7b1006451fe6609dd14779a8`.
- Run directory: `/public/home/fujiake/fjk/mcc_runs/118169717_original_gcc731_noomp_64_8x8`.
- Layout: two nodes `j05r2n[11-12]`, 64 MPI ranks, one CPU per rank, 8x8 tiles for both grids, full `NTIMES=2592,12960`, cold start.

## Raw result

- Slurm: `COMPLETED`, elapsed `02:34:21`, exit `0:0`.
- Shell timing: `real 9259.75`, `user 259938.69`, `sys 34201.71` seconds.
- Final steps: coarse grid `2592/2592`; fine grid `12960/12960`.
- Completion marker: `ROMS/TOMS: DONE`.
- Output: 16 NetCDF files totaling `8.5G`.
- Disk at completion check: `86G` free on `/public`.
- Official validation: not run at the time of this first pass.

## Initial comparison

- Validated Intel baseline job `117981144`: `real 10383.89 s`.
- This GCC run is `1124.14 s` faster, a provisional runtime reduction of `10.8258%` (`1.121401x` speedup) at the same two-node/64-rank/8x8/full-input scope.
- This is not yet an effective or scoring-valid optimization result because official accuracy has not been checked.

## Initial conclusion

The original sources compile and complete the full integration with GCC 7.3.1, and the comparable runtime is materially lower than the validated Intel baseline. The experiment has achieved its execution objective, but it has not yet answered the numerical-cause question. Profiling and official validation are required before deciding whether GCC alone reproduces the Dongsha `u` failure.

## Output lifecycle

- Output retained at the exact run directory above.
- Deletion is forbidden until profiling, official validation, pass 3, and the beginning of a later task satisfy the deletion gate.

