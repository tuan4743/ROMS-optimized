# Pass 1 - Time-budget constraint and initial reduction

- Date: 2026-07-30 (platform time)
- User direction: minimize the number of model runs because competition time is limited
- Task boundary: revise the plan only; no build, model run, validation job, cancellation, or deletion

## Existing evidence to reuse

- Full valid GCC result `118169717` already provides the accuracy anchor, complete ROMS profile, and two-node/64-rank time.
- Reproduction jobs `118196477` and `118196481` were already submitted before this direction. Their eventual results should characterize baseline variance without launching another two-node baseline.
- Source inspection already isolates the primary communication target as padded `MPI_Allgather` in `mp_aggregate2d/3d`.
- The organizer reports four nodes/64 cores as the current best layout, although that external time has no source/hash evidence.

## Runs removed from the active plan

- Remove the fixed `A-B-C-C-B-A` layout matrix.
- Do not run a standalone `Arecv=0` candidate; fold that deletion into the `MPI_Allgatherv` transport change because the receive layout is changed in the same routine.
- Do not schedule PMPI, HCOLL/UCX matrices, OpenMP feasibility, or multiple hotspot candidates by default.
- Do not require an automatic second full candidate run when the timing is consistent with the already measured baseline variance.

## Initial minimal path

After the two active reproductions are analyzed, use at most two half-day model diagnostics and one full candidate run:

1. one four-node/64-MPI/OMP1 half-day run of the unchanged valid GCC source;
2. one otherwise identical half-day run with the rank-ordered `MPI_Allgatherv` aggregate-path candidate, including removal of the now-unneeded aggregate receive zero-fill;
3. only if the short comparison is clearly favorable and numerically consistent, one full three-day candidate run followed by official validation.

This reduces the planned default from an exhaustive layout/profile/source matrix to three new model runs at most. Additional runs become conditional rather than scheduled.
