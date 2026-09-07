# Stage 53: O33 square-node rank mapping profile

Timing scope is the same cold-start diagnostic input for all four serial A-B-B-A samples: 144/720 time steps, four exclusive nodes, 64 ranks x two threads, unchanged immutable O33 binary/input/rules and exact 8x8 tiles on each grid. This isolates rank placement only, but remains too short for a scoring claim.

The audited rankfiles reduce non-periodic cardinal inter-node tile edges per 8x8 grid from 24 to 16 (33.3333%), while increasing intra-node edges from 88 to 96; total edges remain 112. Their SHA-256 values are stripes `2c1624716a641e48ef938d5596a10dda9488f278efc1dae0b23561037fccf6df` and square `04295ecd3ab4bed31daccc54caa12e5be59e32e81a9f5db6d9907f3b637da20e`.

The observed internal halo timers do not support the expected transport benefit. Summing the Grid01/Grid02 2-D and 4-D halo entries gives:

| placement | samples (s) | mean (s) |
| --- | --- | --- |
| stripes A | 1536.395, 1521.106 | 1528.751 |
| square B | 1552.375, 1543.943 | 1548.159 |

B therefore increases this profile bucket by 19.409 s, or 1.2695%, even while its ABBA wall mean is 1.001 s lower. The run-order drift is material: A1 to A2 falls 4.134 s, whereas B1 to B2 falls 1.363 s. Hence the small wall difference cannot be causally attributed to fewer inter-node edges, and B is not consistently faster.

Observation: on this placement and MPI stack, reducing logical edge cuts did not reduce the directly relevant ROMS 2-D/4-D halo timers. Hypothesis: topology/rank placement is not the dominant part of these aggregate timer values, or the original core pairing/communication topology offsets the logical cut reduction. This experiment does not establish which mechanism dominates; it closes only this square-node rankfile route.

Profiling-pass validity: VALID for this matched diagnostic scope. It is not evidence of full-input performance or official numerical accuracy.
