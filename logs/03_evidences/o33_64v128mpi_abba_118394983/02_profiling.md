# Stage 55: O33 rank-count scaling profile

Timing scope is four matched cold-start diagnostic samples on the same four nodes and immutable O33 binary/input/rules. A uses 64 MPI x2 OpenMP with 8x8 tiles; B uses 128 MPI x1 OpenMP with 16x8 tiles. This is a legal internal MPI decomposition change, not a physical-grid change.

The directly relevant combined Grid01/Grid02 2-D+4-D halo timers are:

| configuration | samples (s) | mean (s) |
| --- | --- | --- |
| A: 64x2, 8x8 | 1570.823, 1588.084 | 1579.454 |
| B: 128x1, 16x8 | 6690.871, 6660.105 | 6675.488 |

The B halo bucket rises 322.6454%. Grid02 alone moves from approximately 1263 s to 5467 s. This large, repeatable increase accompanies a wall regression of 32.0999%, so it supports a causal communication/smaller-subdomain explanation rather than transient run-order noise. Both B samples agree within 0.515 s; A samples differ by 2.178 s, far below the 40.871-s mean gap.

Observation: increasing ranks from 64 to 128 halves per-rank tiles but incurs dramatically higher halo exchange cost. Hypothesis: halo surface-to-volume growth, extra rank synchronization, and higher global communication pressure dominate any increased compute parallelism. The exact subcomponent cannot be separated further from the existing profile, but a compensating compute improvement cannot overcome this measured communication increase.

Profiling-pass validity: VALID for short-scope rank-count comparison only. It is not full-input performance or official accuracy evidence.
