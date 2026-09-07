# 01_read_summary — Stage 124 research: land/wet-skip ≥2% gate

- Date: 2026-08-08
- Trigger: residual open item after Stage 123 (ImpI closed); mandatory research before any new A-B-B-A.
- Scope: read-only. Dongsha60 + SCS `mask_rho` / bathymetry land-fraction model; S32 PROFILE `118769550` G01/G02 shares; Stage-93 skew geography; `WET_DRY`/`MASKING` CPP. No build/job.

## Facts gathered

| item | evidence |
|---|---|
| Dongsha60 `mask_rho` | N=58539, **land=0**, min=max=1.0 (all water) |
| Dongsha60 `h` | N=58539, **min=953.1 m**, mean=3519.9 m; frac\<50 m = 0 |
| Dongsha 8×8 center J3–6×I3–5 | mean land_frac = **0.0000** |
| SCS `mask_rho` | N=118408, land=41059, **global land_frac=0.3468**; interior=0.3447 |
| SCS 8×8 west col Itile=0 | mean land_frac=**0.768**, max=1.0 |
| SCS center block | mean land_frac=0.207 |
| CPP | `bye24bio15.h`: `#define WET_DRY` and `#define MASKING` |
| S32 PROFILE G01 compute | **23.30%** of timer base (`2142.5 / 9194.7`) |
| S32 PROFILE G02 compute | **59.56%** |
| Stage-93 stragglers | **G2** 4D west-col + **G2** 2D center-block (≈3.7% wall skew) |

## Initial conclusion

**Land/wet-point skip does not clear the conservative ≥2% full-run gate on S32.** Fine-grid critical-path tiles are 100% wet and deep; coarse-grid land exists but does not map onto the measured wall stragglers. No build authorized.

## Output deletion

N/A (no model output).
