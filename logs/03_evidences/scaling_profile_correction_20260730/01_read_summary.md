# Pass 1 - Read and summarize the grid-setting correction

> Superseded on 2026-07-30 by `analysis/partition_rule_update_20260730/`: physical grid size remains frozen, but internal MPI `NtileI/NtileJ` partitioning is allowed. Retain this file only as historical reasoning.

- Date: 2026-07-30 (platform time)
- Task: correct the invalid scaling-profile plan after the user clarified that all grid-related settings are immutable.
- User evidence: the supplied contest-rule image states that the model calculation scheme, grid settings, integration time, time step, and output settings may not be changed. The user explicitly ruled that the proposed profiling grid changes are not allowed.

## Conflict found

The superseded plan proposed:

- 64 MPI ranks with Grid 01/Grid 02 `8x8`/`8x8`; and
- 128 MPI ranks with `16x8`/`8x16`.

Although `NtileI*NtileJ` had previously been treated as an adjustable rank decomposition, the user's stricter instruction classifies `NtileI` and `NtileJ` as frozen grid-related settings. The 128-MPI case therefore violates the current project rules and must not be submitted.

## Correct interpretation

- Freeze the validated baseline tile values and orientation: Grid 01 `8x8`, Grid 02 `8x8`.
- Freeze every physical grid, vertical/horizontal grid, nesting, and input-grid reference as before.
- Do not propose `16x8`, `8x16`, swapped orientations, or any other tile decomposition unless the user explicitly authorizes that exact change later.
- Because distributed ROMS requires the tile count to equal the MPI-rank count, the fixed 64-tile input also fixes the compliant MPI-rank count at 64.
- A 128-CPU experiment, if needed, must keep 64 MPI ranks and use two OpenMP threads per rank with an explicitly OpenMP-capable build. If that cannot be established safely, report that a compliant 128-core comparison is unavailable.
- The user subsequently clarified that MPI itself may be changed. This permits MPI communication/runtime/collective and placement optimization while the grid and frozen tile settings remain unchanged.

## Status of previous evidence

The read-only observations remain valid: job `118167715` timed out, its projection is not a completed result, complete 64-rank profiles show very small input-read cost and large MPI cost, and direct DRAM bandwidth was not measured. Only the proposed grid-changing experiment matrix is invalid.

## Output lifecycle

This correction task generated no model output. No result, teammate file, grid file, source, or running job was modified or deleted.
