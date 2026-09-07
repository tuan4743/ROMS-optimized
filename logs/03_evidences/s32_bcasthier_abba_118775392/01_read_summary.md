# 01_read_summary — [S32-BcastHier] A-B-B-A `118775392`

- Date: 2026-08-08
- Candidate: hierarchical `mp_bcast*` (O9 pattern) on S32 parent
- A: `oceanM.S32_parent` sha256 `d9a45dbb...` md5 `92ffbd01`
- B: `oceanM.S32_bcasthier` sha256 `40110318...` md5 `583c4a1a`
- Job: `118775392` COMPLETED 00:08:54; run root
  `/public/home/fujiake/fjk/mcc_runs/118775392_s32_bcasthier_abba_sample`
- Runtime: both legs resolve 2017 `libimf`/`libsvml` (harness log)
- Trajectory: **SAME** `fa498694...e44b0` on all scored legs

| leg | variant | real (s) |
|---|---|---|
| W0 | warmup | 109.223 |
| A1 | S32_PARENT | 106.133 |
| B1 | S32_BCASTHIER | 104.672 |
| B2 | S32_BCASTHIER | 104.449 |
| A2 | S32_PARENT | 102.808 |

- mean_A=104.471, mean_B=104.560, **gain=−0.0861%**, both_B_faster=**False**
- **verdict=`STOP_BRANCH`**

## Conclusion

Mechanism compiled and ran bit-identically, but delivered no warm-wall gain. The PROFILE region-44 share does not translate to ≥2% wall under this change. No 1day/3day authorized.

## Output

Retain sample root for evidence; no NetCDF scoring products.
