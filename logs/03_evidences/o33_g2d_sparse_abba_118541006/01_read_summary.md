# [O34b] get_contact2d/get_persisted2d sparse A-B-B-A — Pass 1 (Read Summary)

- Date: 2026-08-04. Task: one matched `144/720` A-B-B-A for the revived Stage-87 candidate (sparse owner-map port of the validated `[O10]` 3-D path into `get_contact2d` + `get_persisted2d`).
- Job: `118541006` (`fjk_O33_G2D_ABBA`), `kshcexclu06`, 4 nodes `j05r2n[04-07]`, 64 MPI × 2 OpenMP, 8x8/8x8, HCOLL off, KMP_BLOCKTIME=0, spread_numa16_ccx rankfile. Runs: W0 (discarded warm-up) + A1/B1/B2/A2.

## Exact artifacts

| Item | Value |
|---|---|
| A binary | immutable O33 `5f1a137e...cfcb9` (hash-gated) |
| B binary | `oceanM.O33_g2d` = `f3d318cd2ab6b5cc8425e81529f012aca90ea276050e8116b40bf90e419b0f13` (hash-gated; identical in r2 and r3 trees) |
| Candidate source | `nesting.F` = `9bf9c9cca7acbad87a1fe87c595610729d0601965253dfcd9268ed1337290c36` (2 sparse blocks; only file differing in ROMS/; Compilers untouched) |
| Parent nesting.F | `9d8434c7...95c` (immutable) |
| Input / rules / validator | `05ceb746...` / `0ef5b45a...` / `97230e0b...` (hash-gated) |
| Script | `run_g2d_abba.slurm` = `b8e63067...1c72` (deployed = local) |
| Result root | `/public/home/fujiake/fjk/mcc_runs/118541006_o33_g2d_abba_sample` (retained) |
| Candidate tree | `agent_tmp/isolated/work/o33_g2d_r3_20260804` (r1 = CPP-balance failure evidence; r2 = identical binary, strings-gate flake evidence) |

## Raw completion state (summary.tsv)

| label | variant | real s | rc | DONE | trajectory | nc |
|---|---|---|---|---|---|---|
| W0 | O33 (warm-up) | 127.982 | 0 | yes | `fa498694...e44b0` | 0 |
| A1 | O33 | 126.011 | 0 | yes | `fa498694...e44b0` | 0 |
| B1 | O33_G2D | 129.547 | 0 | yes | `fa498694...e44b0` | 0 |
| B2 | O33_G2D | 128.173 | 0 | yes | `fa498694...e44b0` | 0 |
| A2 | O33 | 125.943 | 0 | yes | `fa498694...e44b0` | 0 |

- **Trajectory byte-identical across all five runs — the candidate is bitwise-equivalent to O33** (the `-0.0`-vs-`+0.0` edge case did not manifest in any trajectory row).
- Mean A 125.977 s, mean B 128.860 s, **gain −2.289%** (regression), both_B_faster=False.

## Verdict

**STOP_BRANCH.** The candidate is correct (bitwise) but 2.29% slower. No half-day/full run, no official validation, per the Stage-87 gate (reject below 2% / not both B faster).

## Mechanism accounting (Pass 2 detail)

- The target pool dropped exactly as designed: `Message Passage: point data gathering` G1 138.07 → 107.26 CPU-s (−22.3%); G2 37.7 → 39.3 (+1.7% — small, G2 donors differ). Sparse transport removed the full-communicator assembly.
- The regression lives in the overhead: rank-CPU aggregate total 10284.5 → 10569.2 (+284.7, +2.77%). Per-call heap allocate/deallocate of 10 arrays (Scount/Rcount/Sdisp/Rdisp/Scursor/Rcursor/Request/Status/Sbuffer/Rbuffer) plus 4-double point-to-point messages with 64-rank tag matching at every barotropic stage; on this HPCX/UCX platform small-message point-to-point and per-call allocation costs exceed the removed Allreduce (consistent with Stages 25–27: MPI call-pattern changes regress here).
- The 3-D `[O10]` path (pre-existing in O33, larger records `reclen=4*N=136`) is not falsified by this result; the 2-D port's record size (4 doubles) is the difference.

## Output lifecycle

- Run output retained (small; `nc_count=0` for all five runs). No deletion. Candidate trees retained (r1/r2/r3, all under the private work area). Teammate queue untouched (empty at submit; no interference).
- Harness defect logged: the W0 row was tagged variant=O33 (not WARMUP), so the auto-decision block crashed after completion (AssertionError on label order); `decision.txt` was computed manually from the complete `summary.tsv` and carries the note.
