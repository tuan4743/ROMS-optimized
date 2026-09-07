# Pass 1 - Teammate O48 read summary

Status: **VALID as read-only teammate evidence**.

## Scope and provenance

- Review time: 2026-08-01 20:48 +0800.
- No teammate file was copied, edited, deleted, or used as an attribution claim.
- Teammate root: `/public/home/fujiake/nan/ROMS_CoSiNE15` (read-only for this workflow).
- Job `118368357` (`nan_O48_1day`) is `COMPLETED 0:0`, elapsed `00:13:17`, allocated 128 CPUs on `j05r2n[00-03]`.
- Shell `time real`: `739.184 s` from `TIMING_O48_1day_118368357.txt`.
- Parent comparison recorded by the teammate: O33 one-day `725.47 s`, same 64 MPI x 2 OpenMP, 8x8/8x8, CCX rankfile, dynamic collective rules, HCOLL disabled, and `KMP_BLOCKTIME=0`.

## Exact change

Only `ROMS/Nonlinear/Biology/bio_UMAINE15.h` differs from the O33 parent:

1. hoist `cff2` and `exp(cff2)` outside the vertical `k` loop and reuse `cff3`;
2. compute the light-limitation exponential for `parsats1` once and reuse it for `parsats2` only when the two parameters are equal, retaining the original second exponential otherwise.

Parent biology SHA-256 is `f4fb45d7552d44c3955a7a38a1fa6fa721fb1d6068125ef395d97c0639859abe`; O48 biology SHA-256 is `b4f9b821e97a0e457f1eef1c7d978dc2860b5bee67b09ff8b66e1848d6d585e4`; O48 binary SHA-256 is `ff1bdd5ea1c2a5f4a3c8d5aea002308efdcdfd12677d1732b75814e49a4f3b04`.

## Completion and accuracy evidence

- The model log reaches `ROMS/TOMS: DONE` and contains both grid profiles.
- Output directory `/public/home/fujiake/nan/ROMS_CoSiNE15/output_O48_1day_118368357` contains eight NetCDF files totaling about 4.0 GiB.
- Official-validator log SHA-256 is `49a516412c1d922c1da78a7346bbb3c3d2d79c3873c688ca5dd025b229f8633e`.
- All 26 variables pass; Dongsha `u RMSE=0.000052 <= 0.000060`.

## Initial conclusion

Accuracy is accepted for the one-day diagnostic. Performance is not promoted: `725.47/739.184 = 0.98145x`, about a `1.89%` wall-clock regression, and there is no matched A-B-B-A allocation. O33 remains the performance parent.
