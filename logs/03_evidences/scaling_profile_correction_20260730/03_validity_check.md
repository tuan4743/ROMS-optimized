# Pass 3 - Validate the corrected fixed-grid plan

> Historical validity only. A later organizer clarification in `analysis/partition_rule_update_20260730/` supersedes the tile-freeze premise and reauthorizes MPI grid partitioning.

- Date: 2026-07-30 (platform time)
- Task: verify that the corrected profiling plan complies with the user's grid-freeze rule and does not preserve the invalid 128-MPI proposal.

## Checks

- Pass 1 quotes and applies the user's stricter rule: all grid-related settings are frozen, including `NtileI/NtileJ`.
- The old analysis is retained for audit but now prominently marked superseded. Its former `Pass 2 valid: yes` statement is explicitly withdrawn.
- A, B, and C all retain Grid 01/Grid 02 `8x8`/`8x8` and 64 MPI ranks.
- The only resource difference between B and C is `OMP_NUM_THREADS=1` versus `2`, using the same planned OpenMP-capable binary and the same four-node placement.
- The plan does not claim that an OpenMP-capable original-source binary currently exists or is accuracy-valid. It requires source/directive audit, binding verification, and full official validation.
- The plan preserves the distinction between direct DRAM measurements and cache/stall proxies.
- The user's additional clarification that MPI may be changed is incorporated without relaxing the grid freeze: MPI runtime, communication, collectives, mapping, and binding are allowed at the fixed 64-rank/64-tile layout.
- No job was submitted and no output was generated or deleted.

## Validity decisions

- Pass 1 valid: yes.
- Pass 2 valid: yes as a compliant planning document, not as a measured performance result.
- Previous grid-changing matrix valid: no; permanently superseded.
- Grid-freeze compliance: yes.
- 128-core performance or accuracy proven: no.
- Memory-bandwidth root cause proven: no.
- Next permitted actions: audit the original passing source's existing OpenMP support for the fixed-grid OMP1/OMP2 comparison, and profile MPI runtime/placement variants one dimension at a time without touching grid settings. Do not submit the 128-core case until the audit shows both threads perform real model work.

## Output lifecycle

No model output belongs to this documentation-only correction task, so deletion is not applicable. Existing valid and reproduction outputs remain protected by their own lifecycle gates.
