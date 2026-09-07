# Pass 3 - Validity check

## Recheck of Pass 1

- `sacct` confirms allocation `118370068` completed `0:0` on four nodes with 128 allocated CPUs.
- `harness.log` confirms exact hashes for the profiler, analyzer, final harness, immutable O33 binary, diagnostic input, and current collective rules before model launch.
- `model.log` contains both grid profiles and `ROMS/TOMS: DONE`.
- Histogram integrity is complete: exactly 64 files, ranks exactly 0-63, 87 aggregate buckets, and no missing-rank substitution.
- The audit is 614 KiB and contains zero NetCDF files. No scoring or official-accuracy claim is made.

Pass 1 is valid as a diagnostic completion and inventory statement. The two earlier allocations are correctly classified as pre-result harness failures.

## Recheck of Pass 2

- Bucket sums recompute to `MPI_Bcast=9.820223510 s`, `MPI_Allreduce=5.396863376 s`, total `15.217086886 s`.
- Dividing by mean rank lifetime `126.240984 s` reproduces `12.053999%` to reported precision.
- The direct required collective reduction is `16.592004%`; a 15% reduction yields `1.808100%` whole-program gain.
- The all-calls-scale full-run normalization reproduces `12.782736%` share and `1.917410%` gain at 15%, still below 2%.
- The fixed/scalable split is explicitly labeled heuristic and is used only to show likely dilution, not as a performance fact.
- The instrumentation adds wrappers and I/O at finalize, so its `real 130.730 s` is not compared as an optimization result.

Pass 2's provisional-stop decision is supported by both the direct diagnostic gate and the optimistic full normalization.

## Final validity conclusion

All three analysis passes are valid for the narrow conclusion that a 15%-class `coll_tuned` parameter sweep lacks the predeclared 2% end-to-end upside on current O33. No source, grid, input-data, model-rule, or collective-rule change was tested; no performance candidate or accuracy result was produced. Retain the complete local and remote evidence and leave O33 as the validated parent.
