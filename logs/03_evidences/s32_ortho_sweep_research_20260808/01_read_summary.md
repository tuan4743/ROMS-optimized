# 01_read_summary — Stage 125 research: orthogonal sweep after land/wet close

- Date: 2026-08-08
- Trigger: user asked to dig further orthogonal directions after Stage 124 emptied the land/wet axis.
- Scope: read-only. Reconcile labeled-open items (shared-mem halo, scatter2d hier, 32×4, unequal G01/G02, literature) against S32 PROFILE `118769550`, Stage-93 skew, teammate closures, UCX SHM facts. No build/job.

## Candidates examined

| direction | prior status | this-pass fate |
|---|---|---|
| `mp_scatter2d` hierarchical (O9 extend) | untried on S32 | **FAIL gate** — scattering pool ≤1.72% PROFILE even at 100% |
| Intra-node `MPI_Win` shared-mem halo | labeled open (Stage 88 matrix) | **FAIL gate** — UCX already SHM; critical path is arrival skew |
| 32 MPI × 4 OMP / Ntile 4×8 | O36 measured | **CLOSED** — 0.894× vs O33 |
| G01/G02 unequal ranks | teammate + HiPC’24 paper | **CLOSED / no-project** — teammate ceiling notes + empty stub; needs communicator rewrite |
| Ntile 16×4 / tiling | Stage 94 + S15 | **CLOSED** — arithmetic + −12% |
| ImpI / BcastHier / land-wet / compilers | Stages 119–124 | **CLOSED** |
| Stage-93 west/center skew (2–3% / 3–4%) | measured, cause open | **only ≥2%-adjacent residue**; needs `[P2]` attribution before any candidate |

## Initial conclusion

No new build-authorized ≥2% candidate. The orthogonal ledger of previously “open” labels is empty under standing gates. The sole remaining ≥2%-scale pool is the already-measured fine-grid arrival skew, whose **removable cause is still unproven** after tiling and land/wet falsification.

## Output deletion

N/A (no model output).
