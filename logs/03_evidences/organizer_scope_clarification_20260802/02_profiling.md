# 02 Profiling — rule impact on optimization branches

- Date: 2026-08-02.
- Timing scope and repeated runs: none; this is policy/data-flow profiling, not a performance experiment.
- Confirmed allowed implementation classes: loop/OpenMP transformations, MPI layout/communication, proven dead-work removal, two-way nesting traffic reduction, memory/data-layout work, compiler optimization and I/O implementation.
- Cross-cutting unresolved dependency: item 2 governs MPI/OpenMP reduction order, vectorization/FMA, common-subexpression reuse and order-changing loops. It also intersects the aggressive floating-point portion of compiler item 7.
- Item 9 establishes a four-part promotion gate: unchanged model/discretization semantics, full `2592/12960`, all official checks and organizer source review. RMSE pass alone cannot prove compliance.
- Practical classification: order-preserving candidates can proceed under their allowed item; order-changing candidates remain `FP_ORDER_COMPLIANCE_PENDING` even when their method category is allowed.
- No performance gain, bottleneck change or scoring improvement is claimed.
