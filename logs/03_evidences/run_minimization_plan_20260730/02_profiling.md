# Pass 2 - Minimal-run decision policy

- Date: 2026-07-30 (platform time)
- Existing scoring anchor: job `118169717`, `real=9259.75 s`, official validation passed
- Selected S0/S1 configuration: both grids `8x8`, 64 MPI ranks, cold start. This is a minimal-run choice, not a rule restriction; one conditional 128-rank S2 is allowed by the later partition clarification.

## Default run budget

| Run | Scope | Purpose |
|---|---|---|
| S0 | half-day `432,2160`; four nodes/64 MPI/OMP1; unchanged valid GCC source | establish a directly comparable four-node short baseline |
| S1 | same as S0; only aggregate-path rank-ordered `MPI_Allgatherv` plus removal of redundant aggregate `Arecv=0` | decide whether the communication candidate merits a full run |
| F1 | full `2592,12960`; same candidate/layout | establish scored runtime and official accuracy only after S1 passes |

Compilation and the official validator are not counted as model runs. S0 and S1 must be submitted close enough to reduce queue/platform drift; they do not need a repeated ABBA matrix by default.

## Adaptive decision thresholds

- Compute the baseline variability from completed jobs `118169717`, `118196477`, and `118196481` before S0/S1.
- Proceed directly from S1 to F1 when the improvement is at least `max(3%, 2 x observed baseline relative spread)`, the same progress interval is compared, ROMS completion/progress is normal, and printed numerical diagnostics remain consistent.
- If the improvement is 2%-3% or overlaps the measured noise, allow one additional half-day confirmation only when remaining time justifies it.
- Reject or defer the candidate when improvement is below 2%, the model trajectory differs unexpectedly, or communication time does not decrease.
- Run PMPI only if S0/S1 is inconclusive or contradicts the ROMS timers. Do not run PMPI routinely.
- After a valid F1, reproduce the full candidate only if its time is an outlier against the established spread, its accuracy is close to a threshold, or logs show instability.

## Deferred work

Until the aggregate candidate is decided, defer:

- HCOLL/UCX and collective-algorithm grids;
- two-node versus four-node repeated ABBA;
- 64 MPI x 2 OpenMP and hotspot-by-hotspot OpenMP;
- standalone receive-zero timing;
- lower-priority scatter/Bcast and exact-count master-gather changes.

This policy spends full-run time only on a candidate with prior same-layout evidence. It still preserves causal attribution because S0 and S1 differ only in one aggregate communication design.
