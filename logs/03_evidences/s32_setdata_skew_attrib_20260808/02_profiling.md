# 02_profiling — Stage 128

## A. Stage 93 corrections (from existing skewprobe P1/P2/P3)

Tile map: `Itile=rank%8`, `Jtile=rank//8`, `nb=(i>0)+(i<7)+(j>0)+(j<7)`.

### Neighbor-count vs “west-only”

| group | n | mean G02 4D halo (P3) |
|---|---:|---:|
| nb=2 (corners) | 4 | 8.856 |
| nb=3 (edges) | 24 | 10.482 |
| nb=4 (interior) | 36 | 12.468 |

- `corr(h4_G2, nb) = 0.833`
- Column means: Itile0=8.639 … Itile7=11.343 (both edges low)
- Row means: Jtile0=9.795 … Jtile7=10.525 (both edges low)

**Correction:** Stage 93’s west-column low-wait signal is the generic edge effect of fewer halo neighbors. It is not a removable west-only load defect.

### Perfect-rebalance ceiling (compute-only, excluding Message Passage)

| run | wall s | (max−mean)/wall | (max−min)/wall (Stage93-style) |
|---|---:|---:|---:|
| P1 | 133.595 | **1.808%** | 5.502% |
| P2 | 133.957 | **2.303%** | 6.503% |
| P3 | 127.979 | **2.568%** | 7.139% |

Heaviest compute ranks are all `nb=4` interior; lightest are corners. G02 interior−edge compute = +4.491 CPU-s; G01 only +0.276.

**Correction:** quote **1.81–2.57%** as the diagnostic perfect-rebalance ceiling. Do not reuse Stage 93’s 3–4% (derived from spread under busy-poll).

## B. set_data (region 4) attribution

### Ownership

- `Nonlinear/set_data.F:28–34`: `wclock_on/off (ng, iNLM, 4)` wraps `set_data_tile`.
- Calls: 41× `set_2dfld_tile`, 7× `set_3dfld_tile`, 26× `set_ngfld`, 3× explicit `mp_exchange2d`, 4× `mp_boundary`.
- `set_2dfld_tile` / `set_3dfld_tile`: on `update=.TRUE.`, call `mp_exchange2d` / `mp_exchange3d`.
- `mp_exchange2d` @ `mp_exchange.F:359`: `CALL wclock_on (ng, model, 40)` → **2D halo time nests inside region 4**.
- `mp_boundary` @ `distribute.F:1264`: `wclock_on (..., 48)` → boundary gathering; **G02 has no boundary-gather timer rows** (nesting supplies fine-grid edges; `bye24bio15.h` has `#define NESTING`, clima nudging `#undef`).

### Observed asymmetry (G02 Processing of input data)

| run | mean | interior | edge | ratio | persistence |
|---|---:|---:|---:|---:|---|
| P1 | 1.675 | 2.206 | 0.992 | 2.22 | |
| P2 | 2.384 | 3.453 | 1.010 | 3.42 | P1–P2 0.993 |
| P3 | 2.249 | 3.248 | 0.964 | 3.37 | P2–P3 1.000 |

G01 is opposite (ratio ≈0.81): fine-grid specific.

### Mechanism decomposition

1. **Nested 2D-halo wait (Stage-90 mode).** Warm regression `set_data ≈ a + 1.01·h2_G2` with R²≈0.78; cold R² lower. Warm growth of set_data interior−edge (+1.07 from P1→P3) matches growth of h2 interior−edge (+1.05). Edge set_data stays flat (~1.0) while interior rises → wait, not cold I/O.
2. **Tile point counts (structural, small).** G02 interior Npts=31620; edge/corner 26622–30600 (~9% fewer). Explains only a ~1.09× work ratio, not 3.37×.
3. **Not LBC/edge-only work.** `Western_Edge` / `mp_boundary` paths make edge tiles do *more* local packing; they cannot produce interior-heavier totals. G02 boundary-gather pool absent.
4. **Not identified dead work.** Forcing time interpolation (`set_*fld`) is required every step when records advance; `Lonerec` still copies. Climatology blocks are compiled out (`TCLIMATOLOGY` etc. undef). No “interior-only optional” branch found.

Residual interior−edge after regressing out h2 ≈ **+1.19 CPU-s** on all three runs: stable but unexplained beyond Npts; not shown to be removable without changing required interpolation or decomposition.

### Critical-path check

Among heaviest G02 compute ranks, set_data is **not uniform** (r28=3.01, r44=0.53, r36=0.44). `corr(set_data, compute)=0.526` vs `corr(set_data,h2)=0.88`. Speeding set_data compute would not systematically unload the straggler set.

## C. S32 ceiling statement

From `118769550` (REAL=114.526, factor 1.254447):

| pool | CPU-s | wall% |
|---|---:|---:|
| G02 Processing of input data | 104.757 | **1.43%** |
| G01+G02 Processing of input data | 140.143 | **1.91%** |

Even zeroing the entire pool fails ≥2%. Removable fraction (asymmetry / nested wait) is a subset. **Does not clear the standing ≥2% gate.**

## Observation vs hypothesis

- Observation: neighbor-count explains 4D edge pattern; perfect-rebalance ≤2.57%; set_data tracks h2; pool <2% wall.
- Hypothesis (unproven detail): residual +1.19 CPU-s after h2 regression is mostly Npts + measurement nesting leakage, not a new dead-work knob.
