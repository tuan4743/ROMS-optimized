# 02_profiling — why BcastHier missed wall

## Observation

Warm A2 (102.808 s) beat both B legs. Mean difference is noise (−0.09%). Trajectory identity proves the hierarchical tree did not perturb numerics.

## Hypothesis (post-measurement)

1. **Region 44 on the short PROFILE sample is not warm critical-path wall.** Much of G01 “data broadcast” may be init/forcing paths that shrink or hide behind other waits on a warm 144/720 A-B-B-A.
2. **Remaining `mp_bcast*` payloads are latency-dominated scalars/small arrays.** O9 already hierarchical-izes large `mp_scatter3d` fields; two-phase Bcast on count=1 messages adds split/setup cost that cancels any hop reduction on 4 nodes.
3. Stage 90 lesson again: a PROFILE CPU bucket ≠ wall-critical work.

## Closed by this measurement

Porting O9 from `mp_scatter3d` → `mp_bcastf/i/l_*` on S32. Do not retry with threshold tweaks or character-path extension; expected upside is below gate.
