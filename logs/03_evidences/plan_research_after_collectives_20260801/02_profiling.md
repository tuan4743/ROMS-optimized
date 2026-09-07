# Profiling and quantitative gate

## Current validated anchor

- O33 full job `118346383`: `real=2142.793 s`, official validator `26/26 PASS`.
- Grid 01 2-D halo: `2123.110 rank-s`, `1.1851%`.
- Grid 02 2-D halo: `10134.729 rank-s`, `5.6573%`.
- Combined reported 2-D halo pool: `6.8424%` of the common profile denominator.
- Whole-run ambiguity floor: `2% = 42.85586 s`; promotion gate: `3% = 64.28379 s`.

## Why the direction remains only provisional

For each actual predictor/corrector pair, active `step2d.f90` has two `DUon/DVom` exchanges, one predictor-only `rzeta` exchange, two `zeta` exchanges, and two `ubar/vbar` exchanges, plus less-frequent averaging/auxiliary traffic. Moving `ubar/vbar` into the following `DUon/DVom` exchange removes calls but not their payload bytes.

- A naive equal-call estimate removes at most `2/7` of the fast-step call count. Applied to the entire 2-D halo pool, this is `6.8424% * 2/7 = 1.95497%`, below the 2% floor.
- A pure field-volume estimate is invalid because payload bytes remain; only latency, synchronization, and packing-launch overhead can be removed.
- The target calls might be disproportionate because of rank imbalance, so total timer arithmetic alone cannot reject or promote the branch.

Therefore the next task is site-resolved profiling, not a candidate A-B-B-A.

## Minimal-run P0

1. At the start of the new task, recheck the exact prior private audit path and the three collective-analysis files. There is no NetCDF to delete, so retain all logs.
2. Clone the immutable O33 source into a new private `/public/home/fujiake/fjk/agent_tmp/isolated/work/...` variant.
3. Add timing counters only around the beginning `DUon/DVom` and ending `ubar/vbar` `mp_exchange2d` calls in exact `Build/step2d.f90` source lineage, keyed by grid and predictor/corrector state. Do not change call order, arguments, arithmetic, or MPI behavior.
4. Compile with the exact O33 toolchain and unchanged optimization/runtime flags.
5. Run once at diagnostic `NTIMES=144,720`, four nodes, 64 MPI x 2 OpenMP, 8x8/8x8, current O33 rankfile/runtime/collective rules. Expect zero NetCDF and make no performance comparison from the instrumented wall time.
6. Aggregate site timers across all 64 ranks; separate Grid 01/Grid 02 and beginning/end sites.
7. Scale only repeated time-step traffic by the exact full/diagnostic step ratio 18. Startup traffic is not scaled.

## Decision gate

- Reject before a schedule-changing build if the measured end-site removable-time ceiling is `<42.85586 s` or `<2%` of full O33.
- If the ceiling is `2%-3%`, require a complete dependency/contact audit before one diagnostic A-B-B-A; do not promote on one noisy run.
- Only a matched candidate gain `>=3%`, DONE/trajectory consistency, and subsequent full `2592/12960` official `26/26 PASS` can replace O33.
- Any modification must remain a semantics-preserving MPI scheduling change. Physical grids, integration, time steps, output, fields, ecology, and two-way nesting remain frozen.

## Closed directions retained

Do not reopen blind collective algorithms, 3-D Allreduce batching, AVX2/microflags, broad OpenMP, output I/O, HCOLL/UCX, prior Ntile/rank layouts, receive-zero removal, biology exponential CSE, or generic whole-file nonblocking exchange without new contradictory evidence.

