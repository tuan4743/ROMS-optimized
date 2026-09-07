# Pass 1: result read and initial summary

## Verdict

**VALID as a diagnostic result; `STOP_BRANCH` for the two-object AVX2 candidate.**

The candidate is slower in the matched A-B-B-A allocation. No half-day or full run is justified.

## Experiment identity

- Job: `118368170`, `COMPLETED 0:0`, elapsed `00:08:42`, nodes `j05r2n[00-03]`.
- Run root: `/public/home/fujiake/fjk/mcc_runs/118368170_o33_avx2hot_abba_sample`.
- Layout: four nodes, 64 MPI ranks x 2 OpenMP threads, 16 ranks per node, exclusive 128 CPUs, unchanged 8x8/8x8 MPI tiles.
- Scope: organizer-permitted diagnostic `NTIMES 144/720`; unchanged physical grids, schemes, time steps and output settings; zero NetCDF output expected.
- Parent A: exact validated O33 binary SHA-256 `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`.
- Candidate B: `oceanM.O33_avx2hot`, SHA-256 `c061e82aca104828416f35bfd42b1b1a38a30ffdd40f5be3532347b6d73e7973`.
- Candidate change: only `pre_step3d.o` and `step3d_t.o` use `-march=core-avx2`; baseline `-fp-model precise` is retained. The source, input, compiler file and communication rules are unchanged.
- Preflight-only job `118368098` is not part of the timing set. It failed before A1 because the private copied tree lacked the common-input symlink; no model ran.

## Matched timings

| Order | Variant | real seconds | DONE | trajectory SHA-256 | NetCDF |
|---|---:|---:|---:|---|---:|
| A1 | O33 | 129.238 | yes | `fa498694...e44b0` | 0 |
| B1 | O33_AVX2HOT | 131.404 | yes | `fa498694...e44b0` | 0 |
| B2 | O33_AVX2HOT | 132.009 | yes | `fa498694...e44b0` | 0 |
| A2 | O33 | 125.155 | yes | `fa498694...e44b0` | 0 |

- Mean A: `(129.238 + 125.155) / 2 = 127.1965 s`.
- Mean B: `(131.404 + 132.009) / 2 = 131.7065 s`.
- Gain: `(127.1965 - 131.7065) / 127.1965 = -3.545695%`.
- Both B runs are slower than both A runs: `min(B)=131.404 > max(A)=129.238`.
- All four printed trajectories have one identical SHA-256.

## Initial decision

The predeclared gate requires at least 3% gain plus both B runs faster for promotion. This result instead regresses by 3.5457%, so the decision is `STOP_BRANCH`. No additional performance reproduction is needed to decide this candidate.

The identical printed trajectory is useful diagnostic evidence only. The run produced no scoring outputs, so official `vali.py` validation was neither applicable nor run. It cannot support an accuracy or scoring claim.

## Evidence and lifecycle

- Remote `summary.tsv` SHA-256: `5fa2aee113e022269f4c9d224bcd45ba7a5b7a86c81ef4add60d20be3abb132e`.
- Remote `decision.txt` SHA-256: `135b7f7cd6562f38639254afa86af069170051fa4e4d78b95956423809b54ab2`.
- Remote `harness.log` SHA-256: `6455f924e9e2c39785c270545eb9af8e8ae7d4a869dd6e4a713c2568dbc79cf1`.
- Run size: `1.4M`, zero NetCDF files.
- The run root and preflight-failure root remain retained. Nothing was deleted.

Pass 1 is valid and proceeds to profiling analysis.
