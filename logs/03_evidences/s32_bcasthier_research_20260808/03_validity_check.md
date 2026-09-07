# 03_validity_check — research gate

## Pass 1 (summary) valid: yes

- Live parent S32 1753.9 s / job `118755216` / 26/26 / u=0.000052 confirmed in OPTIMIZATION_LOG Stages 118–121.
- Consecutive compiler STOPs `118766380`, `118768832` confirmed.
- PROFILE paths and percentages re-read from `118769550_s32_profile_diag_sample/profile_g01.txt` and `model.log` (not from memory).

## Pass 2 (profiling) valid: yes

- Confirmed in `distribute.F`: every `mp_bcast*` uses flat `MPI_Bcast` + `OCN_COMM_WORLD`; O9 hierarchical block exists only under `mp_scatter3d` (~line 5228).
- Region label 44 = data broadcast via `mod_strings.F`.
- Teammate README: O9 described as `mp_scatter3d` only; no later “hierarchical mp_bcast” experiment.

## Root cause / gain / scoring

| claim | status |
|---|---|
| Broadcast bucket is large enough for ≥2% | **supported** (5.34% observed) |
| O9 pattern is bitwise-safe and cluster-proven | **supported** (E046/O9 vali history) |
| Porting O9 to `mp_bcast*` yields ≥2% wall | **hypothesis** — needs A-B-B-A |
| Scoring validity of a win | requires later 1day+3day 26/26 |

## Reproduction

Not required for research. Next authorized step: one isolated S32 tree, single-file `distribute.F` edit, matched sample A-B-B-A (W0 discarded, `both_B_faster` + ≥2%), runtime libimf held at 2017.

## Output deletion

Research produces no model output. Candidate run output (when created) follows normal three-pass + deletion gate.
