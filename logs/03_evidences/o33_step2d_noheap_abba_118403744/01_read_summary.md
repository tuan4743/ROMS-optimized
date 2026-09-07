# Stage 61 result — initial read

- Date: 2026-08-02 +0800 / 2026-08-01 EDT.
- Raw output: `/public/home/fujiake/fjk/mcc_runs/118403744_o33_step2d_noheap_abba_sample`; job `118403744`, `j05r2n[10-13]`, four nodes/128 CPUs, 64 MPI x2 OpenMP, 8x8/8x8, diagnostic `NTIMES=144,720`.
- Parent: O33 binary `5f1a137e...fcb9`. Candidate: only `step2d.o` compiled with `-no-heap-arrays`, binary `d35f2c77...60e1e`. The compiler-config diff is one line; no ROMS source, input, grid, model, output, MPI or ecology change.

| sample | variant | real (s) | exit/DONE | trajectory | NetCDF |
|---|---|---:|---|---|---:|
| A1 | O33 | 129.753 | 0 / yes | `fa498694...e44b0` | 0 |
| B1 | step2d noheap | 132.023 | 0 / yes | `fa498694...e44b0` | 0 |
| B2 | step2d noheap | 130.071 | 0 / yes | `fa498694...e44b0` | 0 |
| A2 | O33 | 127.992 | 0 / yes | `fa498694...e44b0` | 0 |

A mean is `128.873 s`; B mean is `131.047 s`; B regresses `1.6873%`. Both B samples are slower than both A samples. This is diagnostic evidence only: zero NetCDF is expected and official accuracy validation was not run. Retain the raw output; it may only be considered for deletion at a later task start after the deletion gate.
