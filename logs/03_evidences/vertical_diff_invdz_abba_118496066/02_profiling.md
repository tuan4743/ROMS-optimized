# vdiff_invdz ABBA diagnostic 118496066 (2026-08-03)

## 02 Profiling / mechanism

- Rank-CPU aggregate profile (seconds, mean of two samples per variant):
  | kernel | Grid | A (O33) | B (candidate) | delta |
  |---|---|---|---|---|
  | predictor `pre_step3d` | 01 | 457.73 | 454.40 | -0.7% |
  | predictor `pre_step3d` | 02 | 1355.39 | 1346.26 | -0.7% |
  | tracer corrector `step3d_t` | 01 | 383.14 | 375.25 | -2.1% |
  | tracer corrector `step3d_t` | 02 | 1086.63 | 1055.38 | -2.9% |
  | GLS | 01 | 388.44 | 472.61 | +21.7% |
  | GLS | 02 | 989.81 | 1203.67 | +21.6% |
  | 2D halo | 01 | 119.26 | 114.18 | -4.3% |
  | 2D halo | 02 | 550.57 | 510.25 | -7.3% |
  | 4D halo | 01 | 180.26 | 198.67 | +10.2% |
  | 4D halo | 02 | 712.53 | 758.82 | +6.5% |
  | step2d | 01 | 310.80 | 307.60 | -1.0% |
  | step2d | 02 | 1043.60 | 1025.84 | -1.7% |
  | biology | 01 | 199.50 | 199.60 | 0.0% |
  | biology | 02 | 558.03 | 560.09 | +0.4% |
- The two edited hotspots behave as statically predicted (small gains); the unedited GLS region regresses ~22% and 4D halo ~7-10%, which dominates and flips the net wall time to -1.57%.
- Plausible mechanism for the GLS/4D-halo regression: the new `(IminS:ImaxS,0:N)` scratch arrays are written in `pre_step3d`/`step3d_t` and re-touched every j-row; they occupy the same cache lines as `z_r`/`Akt` that GLS and halo packing stream next, adding write-allocate and read-write traffic to already bandwidth-bound stencils on Hygon C86.
- Consistent with the `pmnreuse` failure (-1.80%): O33 hot loops are already vectorized (VL2/unroll4 per `o33_ifort_optrpt_20260801`); a division hoist saves ~4-8 cycles per 17x occurrence, but the scratch pass costs more memory traffic than it saves arithmetic.
- No cache/bandwidth counter is available on this platform (Stage-76 perf boundary), so the mechanism is a static/load hypothesis, not a measured proof; the A-B-B-A wall data are the decision basis.

## 03 Validity check

- All four samples DONE with rc=0, dual-grid profile present, trajectory `fa498694...e44b0` consistent, zero NetCDF as designed.
- Harness gates: script/binary/source/object/input/rules/validator hashes all passed; disk >= 10 GiB; 4 nodes/64 tasks/2 cpus-per-task; CCX rankfile 64 ranks.
- A-B-B-A internal consistency: A1/A2 delta 1.17 s, B1/B2 delta 0.73 s; direction of B-vs-A regression is consistent in both paired samples (B1>A1 and B2>A2, also B1>A2).
- Decision: `STOP_BRANCH`; `gain_percent=-1.5696` fails the 2% reject boundary and is negative; `both_B_faster=False`.
- Consequence: no half-day/full-run attempt, no official validation, no accuracy claim (trajectory identical anyway). This is ineffective direction 3 after Stage-48 counting (after `pmnreuse` and the biology CSE static rejection), i.e. the second measured source-scratch-reuse failure.
- Output lifecycle: all three result roots retained (`118492146` harness-only, `118495850` harness-only, `118496066` full ABBA); no model output deleted.
