# Pass 1 - MPI grid-partition rule clarification

- Date: 2026-07-30 (platform time)
- Evidence image: `organizer_grid_partition_clarification.png`
- Image SHA-256: `8242eb06422fcdcd509403e4940b8e423e60650bb1d75970adf79d51601b7bde`
- Task boundary: rule and plan update only; no source edit, build, model run, cancellation, or deletion

## Authoritative clarification

The supplied conversation distinguishes the immutable physical grid from the adjustable parallel decomposition:

- grid point count and grid dimensions may not change;
- internal MPI partitioning of the unchanged grid may be adjusted.

For this project, `NtileI` and `NtileJ` are MPI tile-decomposition parameters and are now allowed to change. Their product must match the MPI rank count used by each grid, and every decomposition must remain valid for the unchanged physical grid.

## Superseded rule

The earlier user-specific rule that froze `NtileI/NtileJ` at `8x8` is superseded. Its broader protections remain active: do not change physical grid dimensions, point count, resolution, vertical levels, grid files, physics, time step, integration duration, outputs, inputs, ecology, or bidirectional nesting.

The old correction documents remain historical evidence of what was believed at the time, but their tile-freeze conclusions are no longer operational.

## Immediate consequence

Both 64-rank and 128-rank pure-MPI configurations are legally available within the four-node/128-core ceiling. Examples include `8x8` for 64 ranks and `16x8` or `8x16` for 128 ranks. The two nested grids may use different orientations when both products equal the same communicator size.

This clarification changes what may be tested; it does not make historical job `118167715` a valid result. That run remains incomplete, source-mismatched, and unvalidated.
