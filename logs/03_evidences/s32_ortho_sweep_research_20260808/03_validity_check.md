# 03_validity_check — Stage 125 orthogonal sweep

## Re-read checks

- Scattering shares transcribed from `118769550` model.log (G01 1.4358%, G02 0.2862%).
- `mp_scatter2d` lacks O9; `mp_scatter3d` has O9 — confirmed on S32 `distribute.F` via `ortho_audit.sh`.
- O36 0.894× from nan mainline record (job pair `118304295`/`118304298`).
- Stage-93 min/mean/max G2 4D from `analysis/o33_skew_probe_118537688/` (min 7.206, mean 11.61, spread 6.11).
- UCX intra-node SHM: external HPC-X/UCX documentation (posix/sysv/cma/xpmem); not re-probed live `ucx_info` this pass — labeled as literature/platform fact, not a new measurement.
- Contact path exists (`SCS_Dongsha60_contact.nc`); per-tile contact density **not** computed this pass (deferred to `[P2]` / static nest model if pursued).
- Unequal-allocation stub file size 0 — confirms teammate did not leave a quantified reopen package.

## Pass marks

| check | result |
|---|---|
| Pass 1 valid | **yes** |
| Pass 2 valid | **yes** — ceilings separated from hypotheses; Stage 90 applied |
| New ≥2% candidate proven | **no** |
| Scoring validity | n/a |
| Reproduction required | no |
| Output deletable | N/A |

## Verdict

**`NO_NEW_MODEL_JOB_AUTHORIZED`.**

Orthogonal labels that survived Stages 119–124 are now closed or below gate. The research gate’s honest remainder is:

1. **Accept S32 plateau** under standing ≥2% / both_B_faster rules; or  
2. **Design `[P2]` attribution** (diagnostic instrumentation only) to decide whether Stage-93’s 2–3% west-column budget has a *removable* nesting/compute cause; only a positive removable mechanism would reopen a candidate gate.

Do not submit shared-mem halo, scatter2d hier, 32×4, or unequal-grid A-B-B-A.

## Contradictions resolved

- Stage-88 “shared-mem halo still open” vs Stage-125 close: openness was pre-UCX-argument and pre-Stage-90/93; evidence now contradicts a ≥2% wall claim.
- HiPC’24 unequal distribution vs teammate close: paper is general; local feasibility already rejected for this nesting/MPI product.
