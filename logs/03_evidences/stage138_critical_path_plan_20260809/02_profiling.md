# Stage 138 critical-path plan — Pass 2: profiling interpretation

## Critical-path interpretation

Aggregate PROFILE CPU shares are not wall-critical shares. Stage 90 demonstrated the failure mode directly: a local 3-D compute speedup was absorbed as extra MPI wait. Therefore `pool share × local speedup` is prohibited unless the accelerated ranks are the ranks delaying the next synchronization.

The surviving causal chain is:

`fine-grid step2d/contact supply -> rank arrival spread -> 2D/4D halo waiting -> whole-step wall`

The current evidence proves the arrival spread but does not distinguish the first two causes. The corrected perfect-rebalance ceiling is `1.81-2.57%`; any useful implementation would need to remove most of it to clear the standing 2% gate. This makes mechanism precision essential.

## Ranked plan

| Rank | Direction | Cost | Promotion evidence | Immediate falsifier |
|---|---|---:|---|---|
| P0 | Map contact points/donor ownership to current 8x8 tiles | zero model time | contact counts/traffic align with Stage-93/127 late ranks | weak spatial/rank correlation |
| P1 | One short in-memory phase timestamp probe | one diagnostic only | persistent per-step delay localizes to nesting supply or a named `step2d` subsection | delay moves between phases/runs or removable ceiling <2% |
| P2 | Preallocated, batched 2-D contact exchange | conditional build | P0/P1 show contact supply on critical ranks; call sites are adjacent and values/times are unchanged | unavoidable dependencies prevent batching, or estimated removal <74% of the 2.7% optimistic pool |
| P3 | Differential, generic critical-rank work reduction | conditional source study | a specific `step2d` loop dominates only the delaying tiles and has a semantics-preserving transform | benefit is uniform across ranks and only becomes wait |
| P4 | Exact historical step2d loop-fusion archaeology | read-only only | recovered patch materially differs from the failed s2dfuse experiment | literature-local 1.6% still translates to only about 0.18% whole-run |

## P0 design

Read the immutable contact NetCDF only. Extract contact point index/region variables and map donor/refinement indices to the production grid bounds and 8x8 tile ranges. Produce, per grid/tile:

- number of contact points;
- unique donor cells and refinement cells;
- boundary/contact-region counts;
- estimated bytes per repeated 2-D field call;
- correlation and top-k overlap with existing late-rank/`step2d` maps.

No grid setting changes. This is analysis of the existing grid partition.

## P1 diagnostic design, only if P0 is ambiguous or positive

Instrument exact phase boundaries around pure `step2d` compute, contact interpolation/assembly, packing, halo entry/exit, and nesting synchronization. Accumulate timestamps in memory and dump once at finalization. Use the frozen S32 source lineage and a `144/720` diagnostic; require trajectory neutrality. Avoid per-step I/O.

## P2 implementation boundary

Do not repeat Stage 95's per-call allocation plus tiny-message P2P design. A genuinely different candidate must reuse preallocated buffers and batch several adjacent 2-D fields while preserving recipients, values, feedback times and two-way nesting semantics. It remains blocked until P0/P1 proves critical-rank causality and static call-site review proves batching legality.

## Compiler-report disposition

The step2d report already shows extensive inner-loop vectorization. Forcing `!DIR$ VECTOR ALWAYS`, broad SIMD, loop fusion or extra OpenMP without rank-critical evidence is lower priority and risks repeating Stage 90/61: lower local timer but unchanged or worse wall.

## Delegated review

A sanitized DeepSeek V4 Flash request consumed 1,570 tokens but returned an empty final output. Disposition: `REJECTED`; no delegated claim is used in this plan.

