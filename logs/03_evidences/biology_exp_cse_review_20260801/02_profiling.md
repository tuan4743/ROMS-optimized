# Pass 2 - O33 biology exponential CSE performance bound

Date: 2026-08-01

## Full-run evidence reused

Validated O33 full job `118346383` has shell `real 2142.793 s`. Its common rank-CPU profile denominator is about 179144 seconds for both grids.

| Biology profile | Rank-CPU seconds | Whole-profile share |
|---|---:|---:|
| Grid 01 | 3571.913 | 1.9939% |
| Grid 02 | 10013.454 | 5.5896% |
| Combined | 13585.367 | 7.5835% |

The full grid/time dimensions are Grid 01 `359x326x34`, 2592 steps, and Grid 02 `235x245x34`, 12960 steps. `BioIter=1` on both grids. Ignoring halos, the removable `alts2` call is executed approximately:

- Grid 01: `10,313,972,352` times;
- Grid 02: `25,369,848,000` times;
- combined: `35,683,820,352` times.

This large count does not imply a large wall-clock fraction: the same cell path contains at least six mandatory `exp` calls, and the biology timer also includes extensive divisions, reactions, sinking, carbon, oxygen, memory traffic, and OpenMP work.

## Conservative upper bound

Make the deliberately impossible favorable assumptions that:

1. all 7.5835% of the combined biology profile is spent only in the six mandatory equal-cost cell-level `exp` calls;
2. removing one call has zero branch, spill, cache, or dependency overhead;
3. all saved CPU time converts directly to shell wall time.

Even then, the maximum whole-program reduction is:

`7.5835% / 6 = 1.2639%`, or about `27.083 s` from `2142.793 s`.

The predeclared continuation floors require 2% (`42.856 s`) for ambiguity and 3% (`64.284 s`) for promotion. The impossible upper bound misses even the 2% floor. The real gain must be lower because:

- the PIO/Q10/inhibition/light calls are only part of biology time;
- active carbon and oxygen paths contain more exponentials and non-exp work;
- the equality branch is evaluated in the hot loop;
- caching the raw light term extends a scalar lifetime in an object whose assembly already shows substantial stack spilling;
- the compiler has already hoisted the shallow-water `exp(cff2)` outside the K loop.

## Numerical and generality assessment

A guarded equal-parameter reuse can be general and preserve the original formula for unequal ecological parameters. For the equal case, the two original arguments are bitwise identical, so reusing the first `exp` result should preserve the second value. Nevertheless, any implemented source would still need short trajectory comparison and eventual official full validation.

No parameter may be hard-coded and no ecology value may be changed. Unconditionally assigning `alts2=alts1` would be non-general and is rejected.

## Decision

Do not create a candidate, rebuild `biology.o`, or run an A-B-B-A job. Static evidence proves that this isolated change cannot reach the current minimum performance gate even under an unrealistic upper bound. It remains a possible sub-percent cleanup for a later final polishing phase, not a time-critical experiment.

Pass 2 valid: **VALID** as a conservative performance-bound analysis. No measured gain is claimed.
