# Pass 2 - Profile interpretation and execution plan

> Rule update: 128 pure-MPI ranks with a legal 128-tile decomposition are now allowed. The `8x8`/64-rank constraint below is historical; current minimal-run policy is in `analysis/partition_rule_update_20260730/02_profiling.md`.

- Date: 2026-07-30 (platform time)
- Baseline anchor: valid original-source GCC job `118169717`, `real=9259.75 s`
- Constraint anchor: both grids remain `8x8`; MPI layout remains 64 ranks; 128 cores require selective `OMP_NUM_THREADS=2`

## What the existing profile supports

The complete valid GCC profile attributes about 32.07% of Grid 01 and 40.28% of Grid 02 aggregate rank time to message passage. Point/data gathering accounts for about 29.04% on Grid 01 and 24.63% on Grid 02. Grid 02 biology is only 1.4281%. Historical PMPI data from a different run reports `MPI_Allreduce` at 26.683% and `MPI_Allgather` at 11.139% of average rank elapsed time.

The ROMS timers overlap and the historical PMPI run is not the valid GCC binary, so these percentages are target-selection evidence, not an additive wall-clock model. Even so, biology-only OpenMP has a small ceiling: if its reported region halved perfectly, the implied whole-run reduction would be about 0.714%; even removing it entirely would be only about 1.43%. Biology-only is therefore a thread-safety/feasibility gate, not the main performance candidate.

The 15 GiB input tree is not a reason to expect 128-core scaling: input-reading timers are below 0.05%, while communication dominates. Direct memory-controller counters are still required before calling the run DRAM-bandwidth-bound.

## Ordered plan

| Gate | Exact change | Measurement | Accept/stop rule |
|---|---|---|---|
| R0 | Finish jobs `118196477` and `118196481`; change nothing | full `real`, ROMS profile, official validator, variance | Do not start a new optimization result until their three analyses are complete |
| P1 | Fixed-grid placement only: A=`2 nodes/64 MPI/OMP1`, B=`4 nodes/64 MPI/OMP1` | half-day uninstrumented ABBA, exact binding/topology; full run for winner | Continue only if the repeated improvement exceeds observed noise |
| P2 | Separate PMPI/hardware-counter cohort on the same passing binary and fixed layout | per-rank call count/time/payload, p50/p95/max; memory-controller counters if permitted | Do not infer bandwidth from one-rank cycles or input size |
| M1 | Remove only `Arecv=0` in `mp_aggregate2d/3d`; retain padded `Asend=0` | short numerical trajectory, bitwise/hash comparison where meaningful, repeated time | Reject on any numerical difference or no repeatable gain |
| M2 | Replace padded equal-count `MPI_Allgather` in `mp_aggregate2d/3d` with rank-ordered `MPI_Allgatherv` | actual counts/displacements, PMPI payload/time, full official validation | Every rank currently unpacks `Aglobal`; preserve packing and ascending-rank unpack order and all arithmetic |
| M3 | HCOLL/UCX/collective algorithm and rank binding, one setting at a time | separate uninstrumented ABBA and PMPI cohort | Retain only an explained, repeated improvement |
| H0 | Build-system feasibility: MPI driver remains without `_OPENMP`; only one audited object gets OpenMP and the runtime is linked | compile log, binary hash, runtime thread-count/binding proof | Stop if extra threads do not execute the intended region |
| H1 | Directive-only biology outer-J loop, same passing expressions, OMP1 versus OMP2 using one binary | half-day trajectory and repeated time | Treat as safety proof; do not expect it to deliver the target speedup |
| H2 | Add one clean hotspot at a time, guided by the new profile: tracer/mixing/GLS/pre-step; reconstruct from passing source | thread-safety review, short diagnostics, full validation after any useful gain | Never import the combined deferred `step3d_t` variant; stop after two ineffective candidates and return to PLAN research |

## Run discipline

- Use the authorized half-day `NTIMES=432,2160` only for diagnostics; use `2592,12960` for accepted full results.
- Keep both grids at `NtileI=8,NtileJ=8`; do not introduce 128 MPI ranks.
- Change one source or runtime factor per experiment and use unique private run/build paths.
- Instrumented PMPI/perf runs are not timing results.
- An effective result requires a repeated uninstrumented time, complete cold run, official validator pass, hashes, and the three analysis files.
- Retain the latest output; run the deletion gate only when the next task begins.

## Priority decision

The immediate next optimization experiment after the reproduction gate is P1, because it changes no source and directly tests the organizer-reported four-node/64-core regime. The first source change is M1, followed by the exact `mp_aggregate2d/3d` M2; do not initially rewrite the already exact-count master gather or the scatter/Bcast paths. Selective OpenMP is developed in parallel conceptually but enters measured testing only after H0 demonstrates real two-thread work under the fixed MPI grid.
