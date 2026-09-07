# Stage 57: convergence and delivery plan

## Confirmed starting point

- Immutable parent: O33, 64 MPI x2 OpenMP, 8x8 tiles, binary `5f1a137e...fcb9`.
- Closed directions: 64-rank square placement, affinity variables, 128 pure-MPI 16x8, collective-rule sweep, 3-D Allreduce batching, overlap, broad/targeted compiler variants, and prior source micro-edits.
- Stage 55 128x1 regression is 32.0999% with 322.6454% higher halo timer. Stage 56 mandatory PLAN finds no new >=2% mechanism.

## Plan

1. **Freeze the parent and evidence.** Retain raw run roots and all three-pass analyses. Repair only the post-model decision-helper script for reproducibility; do not alter O33 or submit a job.
2. **Delivery readiness audit.** Reconcile the inherited full O33 job `118346383`, exact binary/input hashes, full `2592/12960` output manifest, `time real`, and 26/26 validator receipt with the source/configuration package. This is evidence consolidation, not a new benchmark.
3. **Conditional one full parent run.** Run the unchanged parent once only if the delivery audit finds a missing required local submission artifact or an unverifiable provenance link. It must use the full input, four-node/64x2/8x8 layout and official validator; it is a reproducibility/qualification run, not an optimization experiment.
4. **Innovation gate.** No new candidate may be built/submitted until a new static/site-specific proof identifies one legal O33 64x2 change with a conservative >=2% full-run ceiling. It must not reopen any closed direction or modify physical grid, timestep, outputs, fields, ecology, or nesting. Otherwise stop.
5. **Submission package.** Prepare source lineage, compiler configuration, run script, validation receipt, three-pass analyses, optimization log, and performance-report/PPT evidence with explicit diagnostic-versus-full labels.

Read-summary validity: VALID. No job/output is created by this planning task.
