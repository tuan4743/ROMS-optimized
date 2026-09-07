# 01_read_summary — Stage 128 set_data skew attribution + Stage 93 budget correction

- Date: 2026-08-08. Task: zero-machine-time attribution of fine-grid `Processing of input data` (region 4 = `set_data`) interior/edge 3.37× asymmetry, and correction of Stage 93 skew budget / west-column story.
- **No source edit, no build, no job.**
- Parent unchanged: S32 1753.9 s / 26/26 (`118755216`).
- Evidence: skewprobe P1/P2/P3 TSVs under `analysis/o33_skew_probe_118537688/raw/`; S32 sample profile `118769550`; source `/public/home/fujiake/nan/sprint/ROMS_CoSiNE15/ROMS` (`Nonlinear/set_data.F`, `Utility/set_2dfld.F`, `Utility/set_3dfld.F`, `Utility/mp_exchange.F`, `Utility/distribute.F` `mp_boundary`, `Include/bye24bio15.h`).

## Headline

1. **Stage 93 “west column” is a neighbor-count artifact**, not removable load imbalance. `corr(G02 4D halo, nb)=0.833`; all four edges low; nb=2/3/4 means 8.856 / 10.482 / 12.468.
2. **True stragglers are interior `nb=4` tiles** (heaviest compute: r28, r53, r44, …). Corners are lightest.
3. **Perfect-rebalance ceiling is 1.81–2.57% of diagnostic wall**, not Stage 93’s spread-based 3–4% (spread was 5.5–7.1%; ~3× overstatement of removable budget).
4. **Fine-grid `set_data` (region 4) interior/edge 3.37× is real and persistent** (cross-run corr 0.993–1.000), but **not a ≥2% candidate**:
   - S32 sample G02 pool wall share **1.43%**; G01+G02 **1.91%** (clearing the whole pool fails the gate).
   - Mechanism: (a) nested `mp_exchange2d` waits (`wclock_on(...,40)` inside region 4) track G02 2D-halo skew (warm `sd≈a+1.01·h2`, R²≈0.78); (b) interior tiles have more points (31620 vs edge ~27–30k, ~9% only); (c) LBC/`mp_boundary` are edge-only and cannot explain interior-heavier; G02 has no boundary-gather timer.
   - Residual ~1.19 CPU-s interior−edge after regressing out h2 is **not identified as dead work** (time interpolation of forcing is required; `TCLIMATOLOGY` etc. are `#undef`).
5. **Verdict: `BELOW_GATE_STOP`.** No A-B-B-A. Stage 93 residue demoted from “3–4% open budget” to ≤2.57% perfect-rebalance ceiling with no proven removable cause beyond structural tile geometry / sync nesting.

## Output lifecycle

No model output. Scripts: `experiments/s32_next_20260808/setdata_attrib.py`, `setdata_attrib2.py`. Deletion N/A.
