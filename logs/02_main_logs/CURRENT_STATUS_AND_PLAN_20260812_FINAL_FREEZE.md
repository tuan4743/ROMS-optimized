# MCC26 ROMS-CoSiNE — Stage 152 FINAL FREEZE

## Current scored best

- S47 job `118946283`
- full real `1661.816 s`
- `NTIMES=2592 12960`
- official validation `26/26 PASS`
- runtime MD5 `1fc3be38a746ba1f5f5885eaf98e3bee`

## Final critical-path probe

Stage 152 used the byte-identical S47 binary with a preloadable PMPI aggregate
probe. It added no MPI call, barrier, gather, model-array access, source rebuild,
or communication reordering.

Final clean job `119004483`:

- `A-prime-pre 101.041 s`
- `P-clean-1 99.029 s`
- `P-clean-2 98.585 s`
- `A-prime-post 97.131 s`
- both clean legs: 64/64 rank files, zero overflow
- repeated maximum: `mp_assemblef_1d`, ranks 34/35
- repeated conservative whole-wall ceiling: `min(0.454%, 0.441%) = 0.441%`

This is an optimistic upper bound because the pre-collective gap may contain
more work than the exact local producer. It is still far below the 2% gate.

## Freeze decision

Stage 151 closed tracer blocking, nonuniform tile partitioning, and permanent
land execution on static ceilings. Stage 152 now closes the remaining
wall-critical imbalance hypothesis with repeated dynamic evidence.

`FINAL FREEZE`: do not start another performance candidate unless new external
evidence establishes a distinct mechanism with a conservative whole-wall
ceiling above 2%.

Retain all latest Stage 152 outputs. Deletion remains allowed only at the start
of a future task after the three analysis files are confirmed present.
