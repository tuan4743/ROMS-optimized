# Pass 2 - Source-change profiling

- Date: 2026-07-29
- Task: classify source changes by numerical and performance risk

## Original passing flow

`fine2coarse2d/3d` in the passing baseline performs:

1. `mp_aggregate2d/3d` to reconstruct the full fine-grid field.
2. On the rank owning each coarse contact point, traverse `Jadd` then `Iadd` in a fixed order.
3. Accumulate `my_sum`, `my_count`, and optionally `my_areasum`.
4. Write the averaged value to the coarse grid.

## Earliest sparse-contact change

`nesting_sparse_contact3d.F` changes simple averaging to:

1. Find the donor rank owning each stencil center.
2. Compute the average on that donor rank.
3. Store one value per contact point in `Packed`.
4. Call `mp_sum` over `Packed`.
5. Assign the reduced value on the receiver rank.

Although only one rank should contribute a nonzero value, this moves the floating calculation to a different distributed execution path and adds an MPI floating reduction. It therefore has higher numerical risk than pure data movement.

The same file also replaces full contact-array assembly with owner-to-receiver nonblocking point-to-point copies. That part moves already-computed values and is lower numerical risk if ownership and record ordering are correct.

## Earlier staging-distribute differences

Relative to the passing baseline, the staging distribute file used by v22 also:

- batches four boundary vectors through `mp_assemble4`;
- replaces temporary send/receive copies in 2-D and 3-D assembly with in-place `MPI_Allreduce(MPI_SUM)`;
- adds `mp_sum` for packed vectors;
- contains a conditional native reduction for uniform operations.

The old and in-place assembly paths both invoke `MPI_Allreduce(MPI_SUM)` on the same element sequence, so the copy elimination is lower numerical risk. The uniform-operation branch would change reduction order, but its controlling macros were not found in the actual compile commands. `mp_sum` becomes active because sparse nesting calls it and remains part of the high-risk combined change.

## Progressive diff sizes

- original to sparse contact3d: 415 insertions, 35 deletions;
- sparse contact3d to sparse z-weights: 58 insertions, 122 deletions;
- z-weights to fluxsum: 91 insertions, 48 deletions;
- fluxsum to z-exit: 3 insertions;
- z-exit to contact-batch: 601 insertions, 172 deletions;
- v22 distribute to v24a hierarchical distribute: 37 insertions, 4 deletions.

## Profiling conclusion

The best bisection is not v22 versus v24a. It is:

1. passing original source + original Intel;
2. passing original source + GCC, no hotspot OpenMP;
3. passing original source + GCC plus each hotspot source group;
4. only then add sparse nesting changes, beginning with data-movement-only portions.
