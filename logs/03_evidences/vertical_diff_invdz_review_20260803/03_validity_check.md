# Vertical-diffusion inverse-layer-depth reuse review (2026-08-03)

## 03 Validity check

- Re-read both source regions from the immutable tree (not from memory):
  `pre_step3d.F` 837-848 (division inside `itrc`), `step3d_t.F` 1096-1101
  (division inside `itrc` within `#else`).  Confirmed.
- Confirmed no `LMD_NONLOCAL`/MPDATA branch shadows the edited loops in
  the preprocessed `Build/*.f90` (both divisions present in preprocessed
  sources used for the binary).
- Confirmed `oDz` does not alias `t`, `z_r`, `Akt`, `FC`, `DC`; it is a
  fresh private scratch, no data-race (must be added to OMP PRIVATE list).
- Pass 1 valid: yes (exact lines quoted, equivalence argument sound).
- Pass 2 valid: yes (mechanism and boundary quantified, previous
  multiplication-reuse failure correctly distinguished).
- Root cause / gain / scoring validity: not yet proven (static only).
- Reproduction required: no model run yet; candidate build + one
  matched A-B-B-A diagnostic is the next step.
- Output deletion: none.
