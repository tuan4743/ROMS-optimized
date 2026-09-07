# Vertical-diffusion inverse-layer-depth reuse review (2026-08-03)

## 02 Profiling / mechanism

- Parent binary `5f1a137e...fcb9`; immutable O33 tree under
  `agent_tmp/isolated/imports/nan_O33_final_20260801`.
- Loop shape (`pre_step3d.F`): `DO j / DO itrc / DO k / DO i` with
  division inside `(k,i)`; `step3d_t.F` same nest inside the `#else`
  implicit vertical-diffusion branch.
- ifort report (audit `o33_ifort_optrpt_20260801`): step3d_t line-517
  loop vectorized, vector length 2, unroll 4, normalized overhead 0.120
  -> division executes as vector `divpd` per 2 lanes, repeated 17x.
- Why compiler cannot do it: hoisting across the `itrc` nest requires a
  new storage site; ifort LICM does not allocate arrays across loops.
- Mechanism: replace 17x division+2x z_r loads per `(j,k,i)` with 1x
  division + 17x L1 scratch read.  Saves 16/17 of the division work.
- Separate lesson from `pmnreuse` (failed 1.8%): that candidate reused a
  cheap *multiplication* (`cff*pm*pn`) and added scratch traffic.  Here
  the reused op is an expensive *division*; scratch traffic is the same
  pattern but the replaced cost is ~10x larger per op.
- Boundary: ceiling is below the strict 2% internal gate in conservative
  estimates, but the change is bitwise-safe and single-cause; the user
  authorized one attempt.  Only a matched 144/720 A-B-B-A can decide.

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
