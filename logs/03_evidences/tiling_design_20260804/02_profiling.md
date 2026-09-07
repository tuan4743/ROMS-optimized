# Tiling Design Pass — Pass 2 (Model and Mechanism)

## Model derivation

- ROMS tile split: tile `i` gets `Lm/NtileI + (i < mod(Lm,NtileI) ? 1 : 0)` interior points (same for `Mm`/`NtileJ`). Verified arithmetic for both grids:
  - 359 = 8×44 + 7 → coarse 8×8 tiles 44.9 × 40.8
  - 326 = 8×40 + 6 → tiles 44.9 × 40.8 (J: 6×41 + 2×40)
  - 235 = 8×29 + 3 → fine tiles 29.4 × 30.6 (I: 3×30 + 5×29)
  - 245 = 8×30 + 5 → fine tiles 29.4 × 30.6 (J: 5×31 + 3×30)
  - Aspect ratios ≈ 1.00–1.10 — near-square, the minimum-perimeter configuration.
- Halo volume per exchange across all ranks: `V = 2·(NtileI−1)·mean(Mtile) + 2·(NtileJ−1)·mean(Ltile)` (EW interfaces counted once per direction pair; NS likewise). Per-rank average = V/64. This is the volume of the payload moved in each 2-D/3-D/4-D halo call, so every message-passage pool that scales with payload (all six halo pools: 2-D/3-D/4-D on both grids) scales with V.
- Ratios (full table in Pass 1): 16×4 → 2.15×/2.29×, 4×16 → 2.35×/2.21×, 32×2 → 8.45×/9.06×, 2×32 → 9.30×/8.69×, 64×1/1×64 → 34–38× (coarse/fine respectively). 8×8 is the exact minimum for both grids (verified by enumeration over all 7 factorizations of 64).

## Impact accounting (measured → projected)

Measured message-passage pool means (probe, P1, CPU-s/rank, single-threaded busy-poll ≈ wall):

| pool | mean | 16×4 fine (×2.29) | 4×16 coarse (×2.35) |
|---|---|---|---|
| G2 4-D halo | 11.61 | +15.0 | — |
| G2 3-D halo | 4.55 | +5.9 | — |
| G2 2-D halo | 7.72 | +10.0 | — |
| G1 4-D halo | 2.99 | — | +4.0 |
| G1 2-D halo | 1.71 | — | +2.3 |
| G1 3-D halo | 1.43 | — | +1.9 |
| G1 point gathering | 2.10 | — | +2.8 |

- Fine-grid 16×4 total ≈ **+31 CPU-s/rank** ≈ +23 s wall on the 128 s diagnostic (**≈ +18%**). Coarse-grid 4×16 ≈ **+11 CPU-s/rank** ≈ +8.5%. Mixed orientations sum the regressions.
- The skew budget these tilings would be meant to remove: ≤6 CPU-s/rank (warm per-rank total spread, 3.7% of wall). The halo-volume increase is 5× (fine) larger than the entire skew budget. **The lever is inverted: tiling trades a small skew for a large payload increase.**
- Conservatism: the model scales only the payload; per-call fixed costs, pack/unpack CPU and rendezvous latency also grow with the increased interface count (16×4 has 15 EW interfaces vs 7). Projections are lower bounds on the regression.

## Where the straggler loads move (for completeness)

- 16×4 on the fine grid: west column shrinks to 1/16 of the width (straggler set would be the narrower west column + the atoll block spread over ≈2 J-rows × ≈10 I-tiles). The 2-D-halo center-block lateness would persist in the atoll row-tiles (J-row 1 and/or 2, whose tiles are 61-deep and contain the reef).
- 4×16 on the coarse grid: tiles 58.8 × 15.3 (short-wide); the coarse-grid center block (fine-grid contact) would spread across ≈4 I-tiles × ≈10 J-tiles.
- None of these geometry shifts can recover the ≥5× payload penalty; the mechanism conclusion is unaffected.

## Mechanism conclusion

1. **Tiling: closed** — 8×8 is the global perimeter minimum; every alternative multiplies halo payload by ≥2.15×, regressing ≥8.5% wall for ≤4% possible gain. No A-B-B-A is warranted (the outcome is predictable: B slower by construction).
2. **Rank-to-node mapping: closed** (Stage 53; probe node dimension ±6% corroborates).
3. **Remaining quantified skew components:**
   - G2 2-D halo center-block straggler (spread 3.75–5.0 CPU-s): step2d wet/dry load of the atoll center tiles; no legal mechanism identified; would need `[P2]` per-step attribution before any further idea. Currently the decomposition floor.
   - **G1 point gathering center-block straggler (spread 2.37 CPU-s):** this is timer 49, the Stage-87 `get_contact2d` sparse-owner-map target (pool 2.04% of rank-CPU in the full run; ≈2.7% wall share upper bound). The probe now supplies the supporting profile story: point gathering is exactly the persistent center-block straggler sync on the coarse grid, i.e., the fine-grid contact feedback assembly on the coarse-grid center tiles. Its removal would cut both the pool and the arrival-skew it injects into subsequent syncs. Bitwise-safe design (owner-map port from `get_contact3d`), one A-B-B-A already authorized by the Stage-87 plan gate (both B faster; reject below 2%; only ≥3% + profile support → full run).
4. **No other legal ≥2% route exists** after this pass and the Stage-90/91 closures.

## Recommendation

- Do NOT spend an A-B-B-A on tiling (predicted regression ≥8.5%; the arithmetic is the gate).
- If performance work is to continue, the only remaining candidate is the Stage-87 `get_contact2d` sparsification, now strengthened by the probe evidence; it must pass its own one-A-B-B-A gate and, only on ≥3% + profile support, the full 2592/12960 + official 26/26 validation.
- Otherwise the active track remains delivery (O33 `118405320`, 26/26 PASS; venue-manual steps per Stage 83).
