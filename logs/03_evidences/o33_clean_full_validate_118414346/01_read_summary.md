# 01 Read Summary — clean-source full validation 118414346

- Date: 2026-08-02.
- Job: `118414346`, four nodes, 64 MPI x2 OpenMP, 8x8/8x8, full cold start `NTIMES=2592,12960`.
- Binary `e64347f3bd44eb69c5c224684306ebeb8898e909ce81a0260c0878650bbd53bb`; input `a3e8a5dbee769ced1e097cd22d9e0424eb326b0a7b1006451fe6609dd14779a8`.
- Slurm top-level state is `FAILED 1:0`, while the model reaches both final steps and `ROMS/TOMS: DONE`; shell `real=2179.403 s`.
- Output: 16 NetCDF files, 8.5 GiB, at `/public/home/fujiake/fjk/mcc_runs/118414346_o33_clean_full_validate_64x2/output`.
- Official validator passes all 26 checks; Dongsha60 `u=0.000052 <= 0.000060`.
- Initial conclusion: `MODEL_AND_VALIDATION_PASS_WRAPPER_FALSE_FAILURE`. The wrapper fails after validation because its final `grep` expects a mojibake representation of the Chinese success line.
- Output is retained and is not eligible for deletion during the VTune task.
