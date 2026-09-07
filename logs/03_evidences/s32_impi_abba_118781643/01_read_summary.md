# 01_read_summary — Stage 126 BELOW_GATE ImpI ABBA `118781643`

- Date: 2026-08-08
- Authorization: user explicit below-gate override (not a scoring candidate).
- Job: `118781643`, partition `kshcexclu06`, nodes `i17r1n[00-03]`, 4×64 MPI ×2 OMP, diagnostic `NTIMES=144,720`.
- A binary: `oceanM.S32_parent` sha256 `d9a45dbb…` (HPC-X Open MPI link)
- B binary: `oceanM.S32_impi` sha256 `af6b6816…` (Intel MPI 2021.3.0 / `libmpi.so.12`)
- Run root: `/public/home/fujiake/fjk/mcc_runs/118781643_s32_impi_abba_belowgate/`
- Slurm: COMPLETED 0:0, elapsed 00:09:59; all five legs `ROMS/TOMS: DONE`, rc=0, nc_count=0.

## Timing

| label | variant | real_s | trajectory |
|---|---|---:|---|
| W0 | WARMUP | 106.084 | `fa498694…e44b0` |
| A1 | S32_HPCX | 104.926 | `fa498694…e44b0` |
| B1 | S32_IMPI | 141.295 | `6b481e41…` |
| B2 | S32_IMPI | 135.017 | `eb3c15a4…` |
| A2 | S32_HPCX | 103.239 | `fa498694…e44b0` |

- mean_A=**104.083 s**, mean_B=**138.156 s**, gain=**−32.737%**, both_B_faster=**False**
- verdict=`BELOW_GATE_STOP`, scoring_candidate=no

## Initial conclusion

Intel MPI 2021.3.0 stack is substantially **slower** than the live HPC-X S32 parent on this matched sample and does not reproduce the champion trajectory. Axis closed for performance; confirms Stage-123 ≥2% gate rejection with measurement.

## Output deletion

Not applicable at task end; retain run root until a later deletion gate.
