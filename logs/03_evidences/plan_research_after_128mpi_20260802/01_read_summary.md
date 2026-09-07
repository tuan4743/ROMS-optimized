# Stage 56: mandatory PLAN after 128x1 rejection

- Date: 2026-08-02. This is mandatory research after the two post-Stage-52 ineffective runtime directions: square-node 64-rank placement and 128-rank pure-MPI scaling. No code, build, job, output, or performance result is created here.
- China-priority evidence: NEMO code-modernization work identifies compiler/SIMD/memory-bandwidth/hotspot optimization as distinct from blind process growth; the related Chinese multi-node study reports communication share increasing as processes increase and identifies a mixed MPI/OpenMP setting as locally best for its platform.
- Open-source/ocean-model evidence: NEMO's benchmarking work treats decomposition choice and halo/collective accounting as the starting point for performance work, and specifically notes that nested AGRIF parent/child domains must share a task count, making per-grid optimal decomposition rare.
- Exact O33 evidence: Stage 55 changes only legal internal decomposition from 64x2/8x8 to 128x1/16x8, but regresses 32.0999% with a 322.6454% combined 2-D+4-D halo increase. Stage 53 rank placement also failed below 2%.

Initial conclusion: the measured O33 problem is already on the communication-limited side of strong scaling at 64 ranks. Neither increased ranks nor mapping adjustment yields a valid runtime route. No new model job is authorized by this PLAN.

Read-summary validity: VALID as a research/static reconciliation, not a measured gain.
