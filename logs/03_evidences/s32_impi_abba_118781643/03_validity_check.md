# 03_validity_check — Stage 126 ImpI ABBA

## Re-read

- `decision.txt` and `summary.tsv` match harness tail and poll capture.
- All five legs DONE/rc=0; step ranges asserted in harness.
- A/B binary hashes match build `118781462` record (`d9a45dbb…` / `af6b6816…`).
- sacct COMPLETED 0:0 on `i17r1n[00-03]`.

## Pass marks

| check | result |
|---|---|
| Pass 1 valid | **yes** |
| Pass 2 valid | **yes** |
| Performance gain | **no** (−32.7%) |
| both_B_faster | **False** |
| Scoring candidate | **no** |
| Reproduction required | no (clear stop) |
| Output deletable next task | only after next-task deletion gate |

## Verdict

**`BELOW_GATE_STOP`.** Intel MPI closed by measurement under user-authorized below-gate diagnostic. Standing ≥2% research gate remains empty; S32+HPC-X parent unchanged.

## Note

Harness startup `ldd` of A without modules may resolve HPC-X 2.11.0 gcc paths; actual A runs used `mpi/hpcx/2.7.4/intel-2017.5.239` `mpirun` and reproduced `fa498694…` — no A contamination.
