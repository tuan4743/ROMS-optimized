# 02_profiling — Stage 127 denominator, ledger, Stage-90, I/O

## 1. S32 conversion factor

| quantity | value |
|---|---:|
| sample `REAL` (`118769550`) | `114.526` s |
| sum Elapsed CPU (64 ranks) | `9194.676` s |
| mean CPU / rank | `143.6668` s |
| **S32 factor** `mean_CPU / REAL` | **`1.254447`** |
| O33 factor (legacy) | `1.305676` |
| profile reported `total time` | `9194.673` / `9194.834` (= sum CPU; G01/G02 print independently) |

Wall share of a single-threaded timer:

`wall% = CPU_s / 64 / REAL = CPU% × factor`

Do **not** reuse O33 absolute CPU seconds ÷ S32 parent wall for compute timers (compute shrank with the champion). Absolute transfer is only plausible for **byte-bound I/O**.

## 2. S32 sample wall-share table (selected)

| timer | CPU-s (G01+G02) | CPU% | wall% | ≥2% pool? |
|---|---:|---:|---:|---|
| `set_avg` (output time-averaged) | 175.023 | 1.9035 | **2.3879** | YES |
| Writing of output (sample) | 0.177 | 0.0019 | 0.0024 | no (blind) |
| Processing of input data | 140.143 | 1.5242 | 1.9120 | no |
| Reading of input data | 173.728 | 1.8894 | 2.3702 | YES (startup; cold) |
| t3dmix S-surfaces | 432.227 | 4.7008 | 5.8970 | YES (already OpenMP/`[O25]`) |
| GLS | 1189.295 | 12.9346 | 16.2258 | YES pool / Stage90 blocks |
| 3D predictor | 1479.184 | 16.0874 | 20.1808 | YES pool / Stage90 blocks |
| Corrector tracers | 1445.772 | 15.7240 | 19.7249 | YES pool / Stage90 blocks |
| Model 2D kernel | 958.553 | 10.4251 | 13.0777 | YES; skew-linked |
| point gathering | 159.478 | 1.7345 | 2.1758 | YES pool |
| data scattering | 158.328 | 1.7220 | 2.1601 | YES pool |
| data reduction | 122.991 | 1.3376 | 1.6780 | no |
| 4D halo | 903.207 | 9.8232 | 12.3226 | YES (wait-dominated) |

## 3. Historical “below gate” re-audit (Stage 1554 / get_contact2d review)

Those notes listed **CPU%** and called the pools below gate. Corrected:

| pool | O33 CPU% | O33 wall% | verdict then | verdict now |
|---|---:|---:|---|---|
| `set_avg` | 1.7680 | **2.3085** | “below gate” | **pool clears 2%** (O33 and S32) |
| Writing of output | 1.4663 | 1.9146 | “below gate” | O33 fail; **S32 parent if abs I/O unchanged → 2.33%** |
| Processing of input | 1.6159 | **2.1098** | “below gate” | **pool clears 2% on O33**; S32 sample 1.91% |
| t3dmix geo / hmixing | 1.2569 | 1.6411 | below | still below as pool alone |

**Accounting error confirmed:** at least `set_avg` and input-processing were mis-closed by comparing CPU% to the 2% wall gate.

## 4. Stage 90 hypothesis test (skewprobe P3, Grid 02)

Convention: high halo Message Passage CPU ≈ early arrival (busy-poll wait); low ≈ late (straggler).

Pearson vs G02 4D-halo wait:

| region | vs h4 | vs h2 | spread |
|---|---:|---:|---:|
| GLS | +0.158 | −0.195 | 4.7% |
| predictor | +0.648 | +0.112 | 12.3% |
| tracer corrector | −0.032 | −0.024 | 5.2% |
| **step2d** | **−0.883** | +0.074 | 7.0% |
| biology | +0.653 | +0.168 | 26.3% |
| set_avg | +0.185 | +0.015 | 8.5% |

West column (`Itile=0`, low h4) vs rest: GLS/tracc flat; predictor **lower** on west; **step2d higher** on west (`w/r=1.034`).

Interpretation:

- **Hypothesis A (OpenMP↔MPI core contention as Stage-90 null cause): rejected** — Stage 90 already closed H2 (idle second thread) and showed targets sped up (`s≈1.74–1.95`) while wall did not move.
- **Hypothesis B (savings → sync wait / skew): confirmed** and sharpened: GLS / predictor / tracer-corrector are **not** the 4D straggler load; accelerating them is the Stage-90 failure mode. **`step2d` is the compute region aligned with 4D stragglers.**
- Therefore: **do not reopen GLS/predictor/corrector under share×speedup.** Critical-path residue remains Stage-93 skew / optional `[P2]` / step2d wet-dry structure (no legal land-skip on Dongsha — Stage 124).

## 5. I/O path survey

- Create: `def_his.F:100`, `def_avg.F:108`, `def_rst.F:95` → `netcdf_create` (`mod_netcdf.F:5925`). Serial branch: `OutThread` calls `nf90_create(TRIM(ncname), my_cmode, ncid)` then `mp_bcasti` of ncid. **No `nf90_set_fill` anywhere in Utility/Modules.**
- Write: `nf_fwrite3d.F` DISTRIBUTE path `mp_gather2d`/`mp_gather3d` then `IF (OutThread) nf90_put_var` (lines 521–571).
- Gather defs: `distribute.F` `mp_gather2d` @2548, `mp_gather3d` @2875 (tile collect + pack; optional land `SetFillVal` is **array fill in gather**, distinct from NetCDF library prefill).
- Full-run cadence: `NRST=NHIS=NAVG=864`, `NTIMES=2592` → 3 rst + 4 his + 3 avg generations; ~9 GB on disk (rst dominates).

### NOFILL ceiling (optimistic)

| assumption | % of S32 parent 1753.9 s |
|---|---:|
| Writing pool if abs I/O = O33 wall-s/rank | 2.33% |
| removable if 25% of Writing is classic prefill | **0.58%** |
| removable if 35% | **0.82%** |
| removable if 50% (upper bound) | **1.17%** |

Gather MPI + pack remain even with `NF90_NOFILL`. **NOFILL alone cannot clear the ≥2% gate.** A combined NOFILL+gather rewrite is unquantified without a timed split on an S32 full PROFILE.

## 6. Observation vs hypothesis

- Observation: ledger used CPU% as if wall%; S32 factor is 1.254; `set_avg` wall pool ≥2%; Writing sample-blind; no NOFILL in tree; Stage-90 targets off 4D critical path.
- Hypothesis (not proven): absolute Writing wall-s on S32 full ≈ O33’s 40.9 s/rank.
- Hypothesis (not proven): gather dominates Writing more than disk prefill (would further cut NOFILL upside).
