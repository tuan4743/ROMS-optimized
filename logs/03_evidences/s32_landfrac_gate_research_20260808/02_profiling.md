# 02_profiling — Stage 124: land/wet-skip ceiling model

## Method

1. `ncdump` + awk/python tile map for `mask_rho` on Dongsha60 and SCS under the live 8×8 ROMS chunk formula `ChunkSize=(L+Ntile-1)/Ntile`.
2. Bathymetry depth histogram on Dongsha60 as a proxy for static shallow/WET_DRY load.
3. Bind to S32 PROFILE sample `118769550` and Stage-93 skew geography (not share×speedup alone).

Scripts: `experiments/s32_next_20260808/{landfrac3,bath_stats,wetdry_gate,tile_landfrac,profile_g01g02}.sh`.

## Observation (not hypothesis)

### Fine grid (Dongsha60 / G02) — zero static land budget

- Every rho point is water; every 8×8 tile including the Stage-93 center block has land_frac=0.
- Bathymetry never shallower than ~953 m → under any plausible free-surface, `WET_DRY` cannot create a material dry-point population on this grid.
- Therefore: **static land-skip ceiling on G02 = 0%; dynamic wet-skip ceiling on G02 ≈ 0%.**

### Coarse grid (SCS / G01) — large land, wrong place for wall

- Interior land_frac ≈ 34.5%; west column heavily land (mean 77%).
- Deliberately favorable arithmetic: remove all land arithmetic from G01 compute → `0.3447 × 23.30% ≈ 8.0%` of PROFILE CPU.
- Stage 90 forbids converting that to wall without critical-path proof.

### Critical-path mismatch (binding)

Stage 93 warm skew ≈ **3.7% wall**, dominated by:

- **G02** 4D halo west column (`Itile=0`) late arrivals;
- **G02** 2D halo / point-gathering center block late arrivals.

G02 tiles are **all wet**. Accelerating G01 land-heavy ranks cannot remove G02 stragglers. Speeding non-critical G01 land work is the Stage-90 failure mode (saving reappears as MPI wait).

Even mis-attributing the entire west-column 2–3% Stage-93 partial ceiling to “land” would still be factually wrong (that pool is G02) and would not authorize a land-skip edit.

### Prior teammate overlap

Biology `all_land` early-return already appears in teammate O33-era lineage (`build_ompk_o33nopow_bio.sh`). That is a biology-only land exit, not a general step2d/3D land-skip, and is not a new S32 ≥2% mechanism.

## Ceiling table

| mechanism | optimistic PROFILE arithmetic | critical-path wall ceiling | gate |
|---|---|---|---|
| Dongsha static land-skip | 0% | 0% | FAIL |
| Dongsha WET_DRY wet-skip | ≈0% (h≥953 m) | ≈0% | FAIL |
| SCS land-skip (all G01 compute) | ~8% PROFILE CPU | **unproven; likely ≪2% wall** (G02-bound) | FAIL |
| Combined land/wet on S32 | — | **below 2%** | **NO_BUILD** |

## Rejected alternatives considered in this pass

| idea | why not |
|---|---|
| Rebalance tiles by land_frac (unequal Ntile) | Stage 94 tiling arithmetic closed; perimeter explodes |
| ImpI / BcastHier / compiler micro-versions | Stages 119–123 closed |
| Treat Stage-93 “atoll wet/dry” as Dongsha land | Falsified: mask all 1, h all deep |

## Decision input for pass 3

Authorize **no** land/wet candidate. Residual ≥2% ledger under standing gates is empty unless a new orthogonal mechanism is proven.
