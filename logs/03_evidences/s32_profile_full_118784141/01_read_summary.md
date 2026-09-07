# 01_read_summary — Stage 129 PROFILE-on full diagnostic

- Date: 2026-08-08. User-authorized below-gate PROFILE-on full run (not scoring).
- Binary: frozen `oceanM.S32_profile_diag` sha256 `5b41590f…`; `NTIMES=2592/12960`.
- Job **`118784141`** COMPLETED `0:0`, elapsed `00:30:58`, nodes `j04r2n[06-09]`.
- Run root: `/public/home/fujiake/fjk/mcc_runs/118784141_s32_profile_full_belowgate/` (~8.5G).
- Shell `REAL=1852.823` s; `ROMS/TOMS: DONE`; NetCDF present under run root / output.
- vs S32 champion parent wall **1753.9 s** (`118755216`): PROFILE overhead **+5.64%** (1852.823/1753.9).
- Verdict label: `BELOW_GATE_PROFILE_FULL_DONE`.

## Headline I/O / set_avg absolute (both grids, CPU-s and %)

| Pool | G01 CPU-s (%) | G02 CPU-s (%) | Sum CPU% | wall% @ factor 1.254447 | abs/64 → % of 1753.9 |
|---|---|---|---|---|---|
| Writing | 1670.205 (1.0733) | 774.638 (0.4978) | **1.5711** | **1.97%** | 38.20 s → **2.18%** |
| set_avg (time averaged) | 813.732 (0.5229) | 2330.900 (1.4978) | **2.0207** | **2.53%** | 49.13 s → **2.80%** |
| Input processing | 633.956 (0.4074) | 1820.264 (1.1697) | **1.5771** | **1.98%** | 38.35 s → **2.19%** |

Total profile time ≈ 155619.3 CPU-s. Factor from Stage 127 sample job `118769550`.
