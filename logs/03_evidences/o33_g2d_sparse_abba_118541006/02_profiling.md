# [O34b] get_contact2d/get_persisted2d sparse A-B-B-A — Pass 2 (Profiling)

## Timing scope

Five matched runs (W0 warm-up + A1/B1/B2/A2), identical 144/720 diagnostic, four nodes, 64×2, 8x8/8x8, HCOLL off. `time real` and ROMS rank-CPU profiles (process `cpu_time`, Stage-88 unit correction applies: single-threaded message timers' wall share = CPU share × 1.305676).

## Wall results

| | A1 | A2 | B1 | B2 |
|---|---|---|---|---|
| real s | 126.011 | 125.943 | 129.547 | 128.173 |
| mean | 125.977 | | 128.860 | |
| gain | | −2.2888% | | |

`both_B_faster=False` (each B > each A), `trajectory_consistent=True`. The W0 warm-up (127.982) confirms the cold-start handling is not the story: B is consistently slower than both A samples and than W0.

## Target-pool effect (mechanism worked)

`Message Passage: point data gathering` (rank-CPU aggregate):

| run | G1 | G2 | G1+G2 |
|---|---|---|---|
| A1 | 131.486 | 37.659 | 169.145 |
| A2 | 144.651 | 37.7* | ~182.4 |
| B1 | 103.870 | 38.448 | 142.318 |
| B2 | 110.650 | 40.160 | 150.810 |

G1 mean 138.07 → 107.26 = **−22.3%**; G1+G2 mean ≈ 175.8 → 146.6 = **−16.6%** (~−29 CPU-s/rank-aggregate). The sparse owner-map transport removed the full-communicator `MPI_Allreduce` assembly exactly as designed, and the Dhit/Rhit owner validation passed silently (no invalid-map aborts, trajectory unchanged).

## Where the regression lives

- Total rank-CPU aggregate: A mean 10284.5 → B mean 10569.2 (**+284.7 CPU-s, +2.77%**) — 10× the point-gathering saving.
- Message-passage totals actually fell slightly (G1 887.8 → 862.2 mean; the assembly removal is visible), so the extra CPU is charged inside the **compute** regions enclosing the 13 `get_contact2d` + 2 `get_persisted2d` call sites (2-D/3-D coupling and nesting sections of the barotropic loop): G1 compute 2350.3 → 2429.1 (+78.8), G2 compute 6332.9 → 6542.3 (+209.4).
- Structural explanation: each call now (a) allocates/deallocates 10 allocatable arrays, (b) computes prefix sums, (c) issues one `mpi_irecv`/`mpi_isend` pair per peer holding contact data and a `mpi_waitall`. With records of only **4 doubles** and hundreds of call sites per 3-D step (42 fast stages × sections), this is hundreds of tiny point-to-point messages per step per rank. On HPC-X/UCX, small-message point-to-point latency and per-call heap traffic exceed the cost of the 64-rank Allreduce they replaced (the Allreduce over `4*Npoints` doubles of a small contact array was cheap; the platform lesson from Stages 25–27 — "Irecv→Send→Wait is UCX-optimal; call-pattern changes regress" — is corroborated in the inverse direction: replacing a collective with point-to-point regresses too).
- The 3-D `[O10]` sparse path (pre-existing, 8 sites, records of 136 doubles, less frequent) is not falsified: its message sizes are 34× larger, amortizing per-call and per-message overhead. The 2-D port inherits the mechanism but not the message economics.

## Alternative hypotheses checked

- Map-build cost: negligible (built once per (cr,Tindex), integer maps; no startup anomaly in B logs).
- Tag collisions: 2-D tags 1700+10·cr+Tindex are disjoint from 3-D (700+) and halo (1–4); trajectory identity over all runs rules out cross-talk.
- Load imbalance change: B message-passage spreads not shown to be worse (totals fell); the regression is additive per-call overhead, not sync degradation.
- Trajectory/bitwise: identical hash on all five runs — the sparse transport reproduces the reduction result bit for bit on this input.

## Conclusion

`STOP_BRANCH` is fully supported: correct but +2.29% wall. The direction is closed by measurement; the Stage-87 pool arithmetic (2.04% rank-CPU ceiling) was never the binding constraint — the implementation's per-call overhead is. No re-run, no half-day, no full validation.
