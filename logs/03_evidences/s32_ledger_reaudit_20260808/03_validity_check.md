# 03_validity_check — Stage 127

## Raw integrity

- `118769550` harness: `REAL=114.526`, `PROFILE_EXTRACTED`, `HARNESS_DONE`. Elapsed CPU block: 64 ranks, sum independently recomputed `9194.676` (= printed `total time`).
- O33 Writing / set_avg / input lines re-grep’d from `118405320/.../model.log` (G01+G02 absolute seconds match Stage get_contact2d arithmetic).
- Skewprobe P3: 4032 rows, 64 ranks; tile map `Itile=rank%8`, `Jtile=rank//8` reproduces west column `{0,8,16,24,32,40,48,56}` and Stage-93 west low-h4 pattern (`w/r=0.726` on G02 h4).
- `netcdf_create` body read: no fill-mode call after `nf90_create`. Full-tree fill API hit_count for `nf90_set_fill`/`NF90_NOFILL` = 0 (only `nf90_create` / `netcdf_create` hits).

## Assumption tests

1. **“O33 factor still applies to S32”** — **false.** Measured S32 factor `1.254447` vs `1.305676`.
2. **“Stage 1554 below-gate on set_avg was wall-based”** — **false.** 1.768% was CPU%; wall was already 2.31%.
3. **“Stage 90 null means OpenMP contended with MPI cores (plan Hyp A)”** — **false as primary mechanism.** Stage 90 closed idle-thread H2; targets achieved `s≈1.86`; savings reappeared in MPI-containing untouched regions. This re-audit’s correlations support **Hyp B / critical-path skew**, not Hyp A.
4. **“NOFILL clears ≥2%”** — **false under optimistic 50% of Writing.** Ceiling ≤1.17% of S32 parent.
5. **“set_avg is therefore an authorized ≥2% candidate”** — **not yet.** Pool size clears 2%, but Stage-90 critical-path test fails (vs h4 `+0.185`, spread 8.5%, near-uniform). Authorizing without critical-path proof would repeat Stage 90.

## Pass validity

- Pass 1 valid: **yes** — sources, jobs, and numbers cited exist and were re-read.
- Pass 2 valid: **yes** — factor, ledger table, correlations, and NOFILL ceiling recomputed from raw artifacts.

## Root cause / gain / scoring

- Root cause of empty ≥2% **actionable** ledger after correction: pool-size clears ≠ removable critical-path clears. The accounting bug inflated “closed” labels but does not by itself mint a legal candidate.
- Performance gain claimed: **none** (research only).
- Scoring validity: **N/A** (no candidate run).

## Decision (decide-fullrun)

**Do not submit a full `2592/12960` A-B-B-A for NOFILL or for `set_avg` under standing gates.**

Optional next (user choice; still not a scoring ABBA unless a ≥2% critical-path mechanism is stated):

1. **One PROFILE-on full diagnostic of the frozen S32 binary** — measure Writing absolute wall on S32 (settles the 2.33% transfer hypothesis; no code change). Only if I/O is still of interest after seeing gather vs put_var need a deeper timer split.
2. **`[P2]` arrival-timestamp design** — still the only quantified ≥2% *budget* with unproven removable cause (Stage 93).
3. Accept S32 plateau under current gates.

Reproduction: not required (no performance claim). Output deletion: N/A.
