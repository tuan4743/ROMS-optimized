# Vertical-diffusion inverse-layer-depth reuse review (2026-08-03)

## 01 Read summary

- Date: 2026-08-03. Zero-run static review of a candidate that removes
  provably redundant division in the two hottest O33 kernels
  (`pre_step3d` 13.66%, `step3d_t` 11.00% rank-CPU aggregate).
- Evidence files (under `source_evidence/`):
  - `pre_step3d.F` lines 834-905 (O33 vertical-diffusion region)
  - `step3d_t.F` lines 680-1164 (O33 vertical region, `#else` branch)
- Finding: the expression `1.0_r8/(z_r(i,j,k+1)-z_r(i,j,k))` depends only
  on `(i,j,k)` and is recomputed `NT(ng)=17` times (once per tracer) inside
  `DO itrc=1,NT(ng)` in both files.  This is provable redundant work:
  identical divisor, identical result, no per-tracer dependence.
- Candidate: hoist the division out of the `itrc` loop into a private
  `(IminS:ImaxS,0:N)` scratch `oDz(i,k)`, computed once per `(j,k,i)`;
  use `oDz(i,k)` inside the tracer loop.
- Floating-point equivalence: bitwise identical.  Original computes
  `FC=cff3*cff*Akt*(...t2-t1...)` with `cff=1/dz`.  New computes
  `FC=cff3*oDz(i,k)*Akt*(...)` where `oDz(i,k)` stores the same IEEE
  division result; multiplication order `((cff3*oDz)*Akt)*dT` is unchanged.
  No FMA, no reassociation, no rounding change.
- Compliance: organizer item 4 (removal of work proven to have no consumer)
  explicitly allowed; physical formula unchanged.
- Estimated ceiling: roughly 1-2% full-run (division is ~4-8 cycles
  vectorized divpd on Hygon; the two loops are minor fractions of the
  kernels).  Boundary case for the internal >=2% gate; user explicitly
  authorized attempting this PLAN direction and self-submission.
- Deletion: none applicable (no model output created at review time).

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
