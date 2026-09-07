# Pass 3 - Validity check of the code audit and plan

> Historical validity only for the source audit. The later partition-rule update supersedes the fixed-`8x8` planning constraint.

- Date: 2026-07-30 (platform time)
- Objects checked: Pass 1 source interpretation and Pass 2 profiling/plan

## Check of Pass 1

- The global MPI/OpenMP incompatibility and the selective-object workaround are independently visible in the make/build rules: the inherited rules add OpenMP only to named objects and leave the MPI driver without the global `_OPENMP` definition.
- The plan does not treat combined v22/v24a sources as isolated evidence. Those full runs are fast but fail the official Dongsha `u` threshold.
- The clean biology directive is separated from the expression-changing v2 source and from the communication-changing deferred `step3d_t` source.
- The exact passing `distribute.F` was downloaded read-only and its SHA-256 matches `f03d0175...`. Direct line inspection confirms that `mp_aggregate2d/3d`, not `mp_gather2d/3d`, contains the padded `MPI_Allgather` path and that every rank unpacks the result.

Pass 1 is valid as a code-architecture audit. It is not a compiled or executed optimization result.

## Check of Pass 2

- The priorities match the valid GCC timer: nesting communication/gathering first, biology-only work later.
- `MPI_Allgatherv` is selected from confirmed all-rank consumer scope. Root-only `MPI_Gatherv` is excluded from this first aggregate-path design, and scatter/Bcast is deferred.
- The biology ceiling is used only as an approximate Amdahl-style prioritization because ROMS aggregate timers overlap.
- All proposed tests preserve the fixed `8x8`/`8x8` grid decomposition and 64 MPI ranks.
- The 128-core path uses `64 MPI x 2 OpenMP` conditionally; it does not assume that merely setting `OMP_NUM_THREADS=2` creates useful work.
- The plan separates timing cohorts from PMPI/hardware-counter cohorts and requires per-rank tail statistics.
- Every numerically relevant source or collective change requires a complete official validator pass. Debug `NTIMES` is not accepted as final evidence.
- No action writes to `/public/share`, modifies inputs, changes equations/output, disables ecology, changes nesting direction, or deletes retained results.

Pass 2 is valid as the next execution plan. It does not prove memory-bandwidth saturation or predict a speedup.

## Three-pass conclusion

Passes 1 and 2 are mutually consistent and valid for planning. The next task remains gated by completion and three-pass analysis of the two active reproduction outputs. This task created only documentation, so it created no model output eligible for deletion at the next task boundary.
