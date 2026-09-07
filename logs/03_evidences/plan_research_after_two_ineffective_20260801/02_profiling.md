# Pass 2 - Quantitative gate and ranked plan

## Performance anchors

- Validated full O33 job `118346383`: real `2142.793 s`, official validator `26/26` passed.
- Minimum ambiguity floor: 2% = `42.856 s` of that wall time.
- Promotion gate: 3% = `64.284 s`.
- Grid-02 profile floor: `pre_step3d` 13.6% plus `step3d_t` 11.0% = at least 24.6% of rank CPU. A transformation covering both must reduce that combined hotspot by about `2/24.6 = 8.13%` to reach the 2% end-to-end floor, or `3/24.6 = 12.20%` to reach the 3% gate. If it touches only `pre_step3d`, the respective kernel reduction must exceed 14.71%; if only `step3d_t`, 18.18%.
- Full two-grid halo profile: `1.1851 + 1.7673 + 5.6573 + 7.1699 = 15.7796%` for 2-D plus 4-D exchanges. A communication change must remove or hide about 12.67% of that bucket to reach 2% end-to-end, or 19.01% to reach 3%.

These are optimistic proportional bounds. They do not account for new branches, scratch storage, packing, cache interference, loss of vectorization, or residual waits.

## Ranked next plan

### P0 - zero-run compiler and active-path data-flow audit

Target exact O33 `pre_step3d.f90` and `step3d_t.f90`, not generic source text.

1. In a new private isolated directory, reproduce the existing object compile commands with reporting only: `-qopt-report=5 -qopt-report-phase=vec,loop,openmp`. Do not link a new scoring binary and do not submit a model job.
2. Map report remarks to the active preprocessed loops and existing assembly. Record vectorized versus scalar loops, alias/dependence blockers, gather/scatter, spills, and repeated loads of `Hz`, `pm`, `pn`, `Huon`, `Hvom`, `Akt`, and tracer-scheme flags.
3. Audit `pre_step3d` first because it is the largest compute kernel and has not received O25's cross-tracer K-outer reordering. Consider a guarded pair/block tracer path only if all affected tracers use the same unchanged scheme and each tracer's arithmetic order remains unchanged. Do not add O39-O42-style copy buffers.
4. Audit `step3d_t` second. O25's K-outer loop and O46's failed `nowait` mean a candidate must remove substantial array traffic or inner-loop control, not another fork/barrier.
5. `BUILD_CANDIDATE` gate: the static instruction/load model must plausibly reduce at least 15% of `pre_step3d`, 19% of `step3d_t`, or 8.2% across both. Otherwise reject before build.

Expected cost: one or two isolated object compilations, zero Slurm allocations, zero model output.

### P1 - exact caller-side halo dependency audit

Proceed only if P0 finds no viable candidate.

1. Build a static call/dependency table for the top O33 2-D and 4-D exchange sites: field, ghost width, producer, first consumer, whether interior cells are independent, and whether another exchange already establishes the needed ghost values.
2. Prefer eliminating one provably redundant exchange or grouping existing fields. O33 already batches all active MPDATA tracers with `mp_exchange4d`, so per-tracer grouping is not an open candidate.
3. An asynchronous candidate is legal only if the code can issue receive/send, compute a meaningful interior region, then wait and compute the boundary. Merely changing `MPI_Send/Recv` to `MPI_Isend/Irecv` with an immediate `Waitall` is rejected.
4. `BUILD_CANDIDATE` gate: the removable/reorderable dependency must plausibly cover at least 12.7% of the measured halo bucket and must preserve identical halo values and arithmetic. Whole-file `mp_exchange` rewrites remain closed.

### P2 - one minimal measured experiment, only after a static gate passes

- Use one four-node allocation and the existing matched O33 A-B-B-A harness at diagnostic `NTIMES=144,720`; 64 MPI x 2 OpenMP, 8x8 tiles, unchanged inputs.
- Require same completion signatures and trajectory hash before interpreting timing.
- Stop below 2%; promote at or above 3%; treat 2-3% as ambiguous and reproduce while retaining the latest result if storage permits.
- No half-day, full three-day, or official validator run until the short test passes the gate. Any full scoring claim still requires `2592,12960` and the official validator.

## Explicitly closed by this plan

- generic asynchronous MPI API replacement without independent work;
- another blind 8x8-neighbor Ntile scan, because 8x8 is already square and history shows 64 ranks is the local optimum;
- current-ROMs wholesale source replacement or any tracer-advection scheme change;
- biology single-expression CSE, GLS algebraic CSE, more OpenMP `nowait`, whole-file halo rewrites, persistent-communication retries, HCOLL/UCX tuning, 128-MPI scaling, output changes, mixed precision, DCU, land/grid changes, or one-way nesting;
- a new model run whose optimistic bound cannot reach 2% end-to-end.

## Pass 2 conclusion

The next task is P0 and is intentionally run-free. P1 is conditional. No optimization result is claimed by this plan.

