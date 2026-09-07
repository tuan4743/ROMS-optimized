# Stage 138 critical-path plan — Pass 3: validity check

## Cross-checks

- Champion identity and validation: consistent with Stage 132-137 records (`118755216`, `1753.876 s`, 26/26).
- Skew ceiling: uses corrected `1.81-2.57%`, not the obsolete spread-based 3-4% claim.
- Critical-rank logic: consistent with Stage 90 (local compute savings became wait), Stage 127 (`step2d` alignment) and Stage 137 (GLS not aligned).
- Tiling: no proposal changes grid size or rank decomposition; P0 only analyzes current 8x8 ownership.
- Contact route: Stage 95 remains closed for its exact sparse-P2P implementation. P2 is explicitly a different, conditional batching/preallocation design and is not promoted by assumption.
- Numerical/competition boundary: no physical formula, coefficient, neighbor stencil, grid, time step, integration length, I/O schedule, input field, ecology variable or two-way nesting semantic is altered.
- Machine-time boundary: no build, Slurm submission, ROMS timestep, official validation, remote write or output deletion occurred.
- Evidence boundary: compiler reports and literature are `STATIC`; they are not performance measurements.
- Delegation boundary: empty DeepSeek output is rejected.

## Gate arithmetic

With only `1.81-2.57%` perfect-rebalance headroom, a 2% scoring gain requires removing about `77.8-100%` of the observable imbalance. For the earlier ~2.7% optimistic point-gather wall pool, clearing 2% would require more than 74% removal before considering new overhead. This is why no communication candidate is authorized before P0/P1.

## Result

`PLAN_VALID / ZERO_MACHINE_TIME / NO_MODEL_CANDIDATE_YET`.

The next task is P0 contact-density mapping. If it does not correlate with stragglers, close the contact route and perform at most one P1 phase probe aimed at pure `step2d`; if that also lacks a >2% removable mechanism, freeze S32 for delivery.

