# Pass 3 - Independent validity check of biology exp CSE decision

Date: 2026-08-01

## Independent evidence checks

- Re-read local and immutable remote O33 source: both SHA-256 values are `f4fb45d7552d44c3955a7a38a1fa6fa721fb1d6068125ef395d97c0639859abe`.
- Re-read existing parent `biology.o`: SHA-256 `1db6cb478c1c943020105892afa0d65db04a5fcaaae24ce98010cb7be6aafdd6` and 42 `exp` relocations.
- Object disassembly independently confirms that the shallow-water `exp(cff2)` is already outside the compiled K loop and that separate `alts1` and `alts2` calls remain at relocations `0x8c40` and `0x8dc0`.
- Both Grid 01 and Grid 02 logs independently report `BioIter=1`, `parsats1=80`, `parsats2=80`, `pis1=5.59`, and `pis2=4.00`.
- The full O33 raw profile uses one common total of about 179144 rank-CPU seconds. Grid 01 and Grid 02 biology shares are therefore additive: `1.9939%+5.5896%=7.5835%`.
- Recalculated full cell-layer-step counts reproduce `35,683,820,352` removable equal-parameter `alts2` calls.
- Six mandatory per-cell/per-level exponential calls are present, so `7.5835%/6=1.2639%` is already an intentionally loose upper bound. Extra biology work can only reduce the realizable fraction.
- `1.2639%` is below the predeclared 2% ambiguity floor and 3% promotion gate. No timing experiment is needed to reject this isolated direction under the time-critical policy.

## Contradiction and boundary checks

- The source opportunity is real; the performance case is not. The conclusion does not incorrectly claim that ifort already eliminated `alts2`.
- The estimated 35.7-billion-call count is aggregate across all full-run cells and steps, not per rank or per second. It is not reported as measured profiler data.
- Bitwise preservation is a design hypothesis until compiled and run. Because no candidate is authorized, no numerical result is claimed.
- Official accuracy and scoring validity remain unchanged for the parent O33 only; this unbuilt idea has neither.
- No source file, binary, input, ecological parameter, or output was modified.

## Validity verdict

- Pass 1 valid: **yes**. Source identity, active parameters, loop structure and assembly calls support the identified CSE opportunity.
- Pass 2 valid: **yes**. The bound is deliberately optimistic and still below the continuation threshold.
- Root cause proven: **no**. Retained call sites and runtime parameters are proven; the exact compiler decision is inferred without an optimization report.
- Performance gain proven: **no**; only an upper bound is established.
- Scoring validity: **not applicable**; no candidate exists.
- Build or model reproduction required: **no** under the current 2% minimum gate.
- Full run authorized: **no**.

Final validity: **VALID** for the decision `REJECT_BEFORE_BUILD`.

This is the second consecutive ineffective optimization direction after O33 two-site norecvzero. Stop experiments and enter PLAN research as required; do not submit another model job until the research task selects a stronger direction.

Output deletion: not applicable. The previous diagnostic contains zero NetCDF files and this static task creates none.
