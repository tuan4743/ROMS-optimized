# Pass 3 - Validity check of the reduced-run plan

- Date: 2026-07-30 (platform time)
- Pass 1 valid: yes
- Pass 2 valid: yes

## Pass 1 verification

- The plan reuses one completed valid baseline and two already submitted reproductions rather than requesting another two-node baseline.
- The proposed new-run ceiling is explicit: two half-day diagnostics and one full candidate run by default.
- Removed experiments are deferred, not misrepresented as completed or unnecessary in all circumstances.

## Pass 2 verification

- S0 and S1 have identical grid, tile, rank, node, `NTIMES`, input, and runtime settings; only the aggregate communication implementation changes.
- The two source edits are one inseparable transport candidate: variable counts eliminate padded receive slots, so separately timing the old receive-buffer zero-fill would waste a run.
- The adaptive threshold accounts for variance from the three full GCC observations once both reproductions finish.
- Shortened runs remain diagnostic. Only F1 with full `2592,12960` and official validation can become a scoring result.
- PMPI and repeat runs remain available when evidence is ambiguous, but are not paid for preemptively.
- The plan changes no grid setting, physics, integration step, output, inputs, ecology, or nesting direction.

## Conclusion

The first two passes are valid as a time-constrained execution policy. No performance, accuracy, or bandwidth result is created. This task generated documentation only, so no model output is eligible for deletion at the next task boundary.
