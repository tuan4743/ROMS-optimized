# 03_validity_check — Stage 124 land/wet-skip gate

## Re-read of raw evidence

- Dongsha `mask_rho` dump: N=58539=237×247, land=0, min=max=1.0 — consistent across `landfrac3.sh` and `tile_landfrac.sh`.
- Dongsha `h` dump: min=953.125, frac_lt50=0 — consistent `bath_stats.sh`.
- SCS `mask_rho`: land_frac=0.3468; 8×8 west mean 0.768 — `tile_landfrac.sh` with ROMS chunk formula on Lm=359, Mm=326.
- PROFILE numbers transcribed from `118769550` `model.log` (G01 Total 23.3019%, G02 Total 59.5632%).
- Stage-93 straggler grids taken from `OPTIMIZATION_LOG.md` / Skill `progress.md` (G2 4D west, G2 2D center) — not re-run; treated as inherited measurement.

## Pass marks

| check | result |
|---|---|
| Pass 1 valid | **yes** — inputs, CPP, PROFILE shares, land maps recorded with paths |
| Pass 2 valid | **yes** — ceiling model separates PROFILE arithmetic from critical-path wall; Stage-90 rule applied |
| Root cause of “no ≥2%” | **yes** — fine-grid stragglers have zero land; coarse land is off critical path |
| Performance gain proven | **n/a** — no candidate run |
| Scoring validity | **n/a** |
| Reproduction required | no (read-only gate) |
| Output deletable next task | N/A |

## Verdict

**`NO_NEW_MODEL_JOB_AUTHORIZED` for land/wet-skip.**

Standing options after Stages 119–124:

1. **Accept S32 performance plateau** under current ≥2% / both_B_faster gates (teammate self-assessment: 1–3% residual, no silver bullet).
2. **User-authorized below-gate diagnostic only** (e.g. ImpI stack swap) — explicitly outside the ≥2% authorization rule.
3. **New research** only if a fresh orthogonal mechanism presents a conservative full-run ≥2% critical-path ceiling (not share×speedup on G01 land).

## Contradictions checked

- Stage-93 prose “atoll step2d wet/dry load” on G02 center is **hypothesis**, not measurement; bathymetry+mask falsify a static land/shallow explanation. Dynamic WET_DRY remains enabled in CPP but is physically inert on Dongsha depths.
- G01 west land-heavy vs G02 west late: different grids; must not conflate.

## Next log actions

Append Stage 124 to `OPTIMIZATION_LOG.md`; refresh `CURRENT_STATUS_AND_PLAN_20260808.md`; sync Skill `progress.md`/`plan.md` residual item to CLOSED.
