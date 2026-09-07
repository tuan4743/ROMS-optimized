# Pass 3 - Independent validity check

> **Later rule update:** `analysis/partition_rule_update_20260730/` supersedes the tile-freeze correction. MPI partitioning is allowed; the old 128-rank artifact nevertheless remains incomplete, source-mismatched, and unvalidated.

> **Post-review correction on 2026-07-30:** the earlier statement `Pass 2 valid: yes` is withdrawn. The user clarified that `NtileI/NtileJ` are frozen grid-related settings, so the proposed 128-MPI case violated the project constraint. Pass 1's read-only evidence remains usable; Pass 2 and the profiling-plan portion of this file are superseded by `analysis/scaling_profile_correction_20260730/`.

- Date: 2026-07-30 (platform time)
- Task: verify the evidence and conclusions in passes 1 and 2 before accepting the profiling plan.

## Raw-evidence recheck

- `sacct` identifies job `118167715` as four nodes and 128 allocated CPUs for `01:30:06`, but `process.time` records timeout exit `124` after `1:30:04`; therefore Slurm `COMPLETED` is not model completion.
- The raw model log ends after fine-grid step `6930` and contains SIGTERM stacks in `PMPI_Allreduce`; it does not contain a clean final ROMS profile or `ROMS/TOMS: DONE`.
- The full target is fine-grid step `12960`; the projection was recalculated as `10098.7013 s`. The comparison with `10383.89 s` yields `1.028240x` speedup, `2.746453%` projected time reduction, and `51.4120068%` efficiency after doubling ranks.
- The 128-rank binary hash `b5cfb381...` differs from the passing Intel binary `903360ee...`. More importantly, raw source hashing confirms `distribute.F` differs (`9ad6370e...` versus `f03d0175...`). Strict source-equivalent strong scaling is therefore not established.
- The complete Intel and GCC model logs independently show input-read shares below `0.05%` per grid and message-passing shares of `30.1428%` to `43.3469%`. This supports rejecting aggregate input-file size as the main scaling argument.
- The available PMPI wrapper records call counts, time, and payload per rank, while the current perf wrapper samples only cycles on one rank. Pass 2 correctly requires additional hardware-counter preflight before any memory-bandwidth claim.

## Validity decisions

- Pass 1 valid: yes. It accurately distinguishes complete validated 64-rank evidence from the incomplete, different-source 128-rank diagnostic and does not call the projection a result.
- Pass 2 valid: **no after user review**. Its 128-MPI case required changing `NtileI/NtileJ`; this violates the stricter permanent grid-freeze rule.
- Proven now: input-file reading is not a first-order cost in the two complete 64-rank profiles; the existing 128-rank sample shows severe saturation rather than large latent scaling.
- Not proven now: a DRAM bandwidth ceiling, a network-bandwidth ceiling, an exact 128-rank full runtime, or an accuracy-valid 128-rank configuration.
- Root cause proven: no.
- Performance gain proven for 128 ranks: no.
- Scoring validity: no; job `118167715` is partial and source-mismatched.
- Reproduction/profiling required: yes, using the controlled matrix in pass 2.

## Output and next-task gate

This task created documentation only, so there is no task output directory to delete. The partial teammate/team output and the private valid/reproduction outputs were not modified. Future diagnostic output may be deleted only at the start of a later task after its own three analysis files are confirmed valid and the exact private path is checked.
