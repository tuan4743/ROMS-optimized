# Stage 63 O33 full cold-start reproduction: initial read

- Date: 2026-08-02 +0800.
- Attribution/status: `THIS_WORKFLOW`, immutable-parent reproduction; `REPRODUCED`, not a new optimization candidate.
- Job: `118405320`, `COMPLETED 0:0`, Slurm elapsed `00:36:07`, nodes `j01r2n[00-03]`, four nodes/128 allocated CPUs.
- Runtime layout: 64 MPI ranks x 2 OpenMP threads, both grids `NtileI x NtileJ = 8 x 8`, cold start.
- Binary: `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/oceanM`, SHA-256 `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`.
- Input: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/inputs/ocean_full_64_8x8.in`, SHA-256 `a3e8a5dbee769ced1e097cd22d9e0424eb326b0a7b1006451fe6609dd14779a8`; full `NTIMES=2592,12960`.
- Collective rules: SHA-256 `0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473`.
- Run script: `experiments/o33_full_reproduce_20260802/run_full_validate.slurm`, SHA-256 `edf60e58410212b7632c907b836ae84e3aa998463d8947c9db29f6f7b9207e45`.
- Raw run root: `/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2`.

## Raw result

- Shell timing: `real 35m36.310s` (`2136.310 s`), `user 710m38.955s`, `sys 32m52.130s`.
- Completion: final coarse/fine steps `2592/2592` and `12960/12960`; `ROMS/TOMS: DONE` is present.
- Output: 16 NetCDF files, exact byte sum `9,048,193,920` (`8.426787 GiB`, `du -sh=8.5G`). Both grids produced three average files, four history files and one restart file.
- Official validator: PASS. SCS and Dongsha60 each pass all 13 variables, 26/26 total. Dongsha60 `u RMSE=0.000052 <= 0.000060`.
- Validator script SHA-256: `97230e0b0dd4533a4000155bd691c81d243bdc45c24e6ceaeb09ffa6b1bb878a`.
- Validated output hashes: SCS average `28c0c9d8d6f14f4ae1918a97edab3cf0f9d7914bbf22f3175fd00a7395f7ea78`; Dongsha60 average `645080a43787c0627748b06a2b85bd248dd96bc155c4cae5587b3c1cda456085`.

## Initial conclusion

The immutable O33 parent is reproduced successfully on the full official scope. Its `2136.310 s` time is 6.483 s (`0.3025%`) below packaged O33 job `118346383` (`2142.793 s`) and lies inside the previously recorded valid O33 range `2129.853-2142.793 s`. It differs from that two-run historical mean `2136.323 s` by only `-0.013 s`. This is consistency evidence, not a new performance gain.

Limitation: this task contains one new full run; it does not by itself estimate a new variance distribution or attribute profile changes to code, compiler, runtime or hardware.

Output deletion status: retain `/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2`. It is the latest complete reproducibility/output package and is not eligible for deletion at task completion.
