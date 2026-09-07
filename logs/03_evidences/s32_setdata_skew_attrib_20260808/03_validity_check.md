# 03_validity_check — Stage 128

## Raw integrity

- Skewprobe math recomputed locally from `skewprobe_P{1,2,3}.tsv` (4032 rows/run).
- Region 4 ownership confirmed at `set_data.F:28/34`; `mp_exchange2d` wclock 40 at `mp_exchange.F:359`; `mp_boundary` wclock 48 at `distribute.F:1264`.
- G02 tile Npts table from `118769550` `model.log` lines 400–463 (I/J extents match Dongsha fine grid).
- S32 wall shares use Stage-127 factor `1.254447` and `REAL=114.526`.

## Assumption tests

1. **“West column is a removable load defect”** — **false.** Neighbor-count monotonicity + all four edges low.
2. **“Stage 93 3–4% is the perfect-rebalance ceiling”** — **false.** Correct ceiling `(max−mean)/wall` = 1.81–2.57%; spread overstated ~3×.
3. **“set_data 3.37× is pure compute dead work on interior”** — **false as primary.** Warm set_data skew tracks 2D-halo wait (R²≈0.78, slope≈1); clearing the pool still <2% wall.
4. **“set_data clears ≥2% and is on the critical path”** — **false.** Pool ≤1.91%; heaviest compute ranks are not uniformly set_data-heavy.

## Pass validity

- Pass 1 valid: **yes**
- Pass 2 valid: **yes**

## Root cause / gain / scoring

- Root cause of Stage 93 overstatement: busy-poll wait on edges with fewer neighbors misread as west-only imbalance; spread used instead of max−mean.
- Root cause of set_data asymmetry: nested halo wait inside region 4 + minor Npts geometry; not proven dead work.
- Performance gain claimed: **none**.
- Scoring validity: **N/A**.

## Gate decision

**`BELOW_GATE_STOP` — do not authorize A-B-B-A for set_data.**

Standing ≥2% actionable ledger remains empty after Stage 127–128 corrections.

User options:

1. Accept S32 plateau (turn to delivery; delivery docs still describe O33 2136 s).
2. Explicitly authorize a below-gate diagnostic (must name the mechanism).
3. Optional research-only: design `[P2]` only if a new removable critical-path hypothesis appears — current perfect-rebalance ceiling alone does **not** authorize a candidate.

Reproduction: not required. Output deletion: N/A.
