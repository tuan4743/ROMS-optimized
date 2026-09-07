# O33 pre_step3d cross-tracer invariant validity check

## Independent checks

1. Evidence lineage: the active source hash `de54caa2...721b` belongs to the immutable O33 import, and the preprocessed source/report were copied from that exact tree.
2. Structural check: O33 already implements the horizontal K-outer/T-inner ordering. The newly identified redundancy is only the vertical `cff*pm*pn` term inside `T_LOOP2`.
3. Invariance check: within one `J_LOOP1` iteration, `cff` depends only on the time-step branch and grid, and `pm(i,j)`/`pn(i,j)` are read-only metrics. None depends on `itrc` or `k`.
4. Numerical-scope check: storing the existing `real(r8)` expression in a `real(r8)` scratch preserves the same explicit multiply order and intermediate precision. No mathematical formula, grid, time step, tracer count, ecology, nesting, MPI partition, or output setting is changed.
5. OpenMP check: the scratch must be declared private on the existing `J_LOOP1` parallel region. A shared scratch would be a race and is forbidden.
6. Gate check: the optimistic whole-program ceiling is only 3.0284%, while the memory-bound projection is below 2%. Therefore the result authorizes one short matched diagnostic only, not a performance claim or full run.
7. Lifecycle check: no prior output was deleted; Stage-49 evidence remains retained and contains zero NetCDF.

## Verdict

Pass 1 source reading: **VALID**. Pass 2 static profiling: **VALID**. Pass 3 independent scope/gate verification: **VALID**.

Final decision: **BUILD_ONE_DIAGNOSTIC_CANDIDATE** under the exact single-change and A-B-B-A gates above. Runtime effectiveness and official accuracy remain **UNVERIFIED**.

