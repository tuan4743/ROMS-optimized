# 01_read_summary — Stage 129 NF90_NOFILL full ABBA

- Date: 2026-08-08. User-authorized **below-gate** `nf90_set_fill(..., NF90_NOFILL)` after serial `nf90_create` in `netcdf_create`.
- Parent: `oceanM.S32_parent` sha256 `d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2`.
- Candidate: `oceanM.S32_nofill` sha256 `2ffebb27935eb151aa06ea6d9150004d6cd5dca4aecbb8ab71bb23d7677ab674` (build `118784293`).
- Job **`118784944`** COMPLETED `0:0`, elapsed `02:32:30`, nodes `j01r2n[04-07]`; 4n/64×2; full `NTIMES=2592/12960`.
- Run root: `/public/home/fujiake/fjk/mcc_runs/118784944_s32_nofill_abba_belowgate/` (~8.5G; A1 NC kept, W0/B*/A2 NC deleted after timing).
- Timings: W0 1773.975; A1 1767.012; B1 1911.368; B2 1914.954; A2 1772.018.
- Recorded harness decision: `mean_A=1769.515`, `mean_B=1913.161`, `gain_percent=-8.1178`, `both_B_faster=False`, `verdict=BELOW_GATE_STOP`, `scoring_candidate=no`.

## Headline

**Stage 132 correction (2026-08-09): this A-B-B-A is attribution-confounded.** A used the frozen S32 champion binary, while B was rebuilt from `/public/home/fujiake/nan/sprint/ROMS_CoSiNE15`, not the champion source tree/archive. The candidate rebuild omitted the champion AVX2/no-FMA/IPO stack and also inherited different `globaldefs.h` and `nesting.F`. The `-8.1178%` observation therefore cannot be attributed to `NF90_NOFILL`.

Correct result: `CONFOUNDED_ATTRIBUTION`. The route remains `BELOW_GATE_STOP` from independent Stage-127/129 bounds: Writing is only 1.5711% of aggregate CPU (about 2.0-2.2% translated wall) and the optimistic removable NOFILL fraction was 0.58-1.17% of S32 wall, below the standing >=2% gate. No rerun is justified.
