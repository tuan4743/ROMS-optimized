# get_contact2d sparse owner-map review (2026-08-04)

## 03 Validity check

This pass independently re-derives the claims of passes 1 and 2 from the raw artifacts and records the
limits that must not be overstated.

### Arithmetic re-derivation

All shares recomputed against the Grid-01 aggregate denominator `178516.604 s` printed in
`118405320/logs/model.log`. The Grid-02 block prints `178516.326 s`; the `0.278 s` difference is
`1.6e-4 %` of the total and does not affect any conclusion, but the single denominator is used
throughout for consistency and is stated here rather than hidden.

- point data gathering: `2900.985 + 734.698 = 3635.683`; `3635.683 / 178516.604 = 2.03661%`.
  Component checks reproduce the log's own printed shares: `2900.985 / 178516.604 = 1.62504%` (log
  `1.6251%`) and `734.698 / 178516.604 = 0.41156%` (log `0.4116%`). Pass 2 is correct.
- t3dmix S-surfaces: `2397.588 + 6408.981 = 8806.569`; `= 4.93318%`.
- t3dmix geopotentials: `613.585 + 1630.196 = 2243.781`; `= 1.25690%`.
- set_avg bucket: `823.430 + 2332.788 = 3156.218`; `= 1.76800%`.
- writing: `1703.609 + 914.040 = 2617.649`; `= 1.46633%`.
- input processing: `659.825 + 2224.761 = 2884.586`; `= 1.61586%`.
- predictor `32531.513 = 18.22287%`; tracer corrector `26443.761 = 14.81303%`;
  GLS `24639.978 = 13.80260%`; 2-D kernel `24612.191 = 13.78703%`; biology `13580.483 = 7.60739%`.

All figures in pass 2 are reproduced. Valid.

### Runtime evidence for the "z_weights is not per-step" claim

Pass 1 and pass 2 assert that the nine `mp_assemble` calls inside `z_weights` do not contribute to the
scored timer. This was verified directly rather than inferred from source reading:

- `model.log` line 393: `GET_VWEIGHTS (O20=O7-on-O11): dynamic vertical weights = F`.

The master-printed runtime value is `F`, so `main3d.F` 715 `IF (get_Vweights) THEN` is false for the
whole scored run and `nesting(ng, iNLM, nzwgt)` never executes per step. Note that `model.log` line 1484
reports `NESTING  Nesting grids: Composite and Refinement.` at CPP level; the runtime `F` supersedes any
inference from that label, because `set_contact.F` 199-203 raises the flag only for
`Lcomposite .and. .not.Lcoincident`. Claim valid.

### Runtime evidence for the fast-stage multiplier

Pass 2 states that `get_contact2d` is exercised on every barotropic stage. Supporting evidence:

- `model.log` line 1736: `Time Splitting Weights for Grid 01:    ndtfast =  30    nfast =  42`
- `model.log` line 1784: `ndtfast, nfast =   30  42   nfast/ndtfast =  1.40000`
- `main3d.F` 614 (`n2dPS`) and 661 (`n2dCS`) place the nesting calls inside the 2-D loop.

So 42 weighted fast stages per 3-D step is a logged fact, not an estimate. Claim valid.

### Precondition check for reusing the O10 owner map

The 3-D sparse path aborts unless `NtileI(dg)*NtileJ(dg)`, `NtileI(rg)*NtileJ(rg)` and the communicator
size are all equal. From `model.log` lines 88 and 242 both grids run `Tiling: 008x008` with
`Parallel Nodes: 64`, so `64 = 64 = 64` and the precondition holds for the scored layout. This also
means the candidate inherits the same restriction: it is valid only while both grids use a
decomposition whose product equals the rank count, which the project rules already require.

### Bitwise-equivalence claim: what is proven and what is assumed

Proven from source: `Aspv = 0.0_r8` (`nesting.F` local parameter), the whole `4*Npoints` array is set to it
before the fill (`nesting.F` 4806-4812), and the fill is guarded by a tile-range test. Proven from the
3-D path: the `Dhit`/`Rhit` validation rejects any contact index that does not have exactly one donor
owner and one receiver owner, over the same horizontal index set the 2-D routine uses.

Assumed, and therefore listed as a build-time gate rather than a conclusion: that the guard in
`get_contact2d` selects the same single owner as the map built from `BOUNDS`. The candidate must
re-run the `Dhit/Rhit` validation for the 2-D staggering types instead of trusting the 3-D result,
because `get_contact2d` uses `IstrT/IstrP` on the donor grid only, whereas the map derives both donor
and receiver ownership.

Recorded edge case: an owner value of exactly `-0.0` reduces to `+0.0` under `MPI_SUM` but survives as
`-0.0` under direct transport. The two are numerically equal and feed only `Lweight` interpolation, so
no trajectory divergence is expected, but the claim is "equal in value and expected bit-identical for
all finite non-negative-zero values", not "provably bit-identical for every representable input".

### Implementation risk found during the check

`get_contact2d` declares `real(r8), intent(inout) :: Ac(Npoints,4)` in the non-`ASSUMED_SHAPE` branch,
while its body and initializer index `Ac(1,m)` through `Ac(4,m)`, i.e. a `(4,Npoints)` layout. The
build almost certainly compiles the `ASSUMED_SHAPE` branch (`Ac(:,:)`), which makes this inconsistency
harmless today, but any packing loop added by the candidate must follow the actual `(4,Npoints)` access
pattern used by the existing code. Confirm the active branch in `globaldefs.h` before writing the
candidate. This is a correctness trap, not a performance issue.

### Limits that must not be overstated

- The `2.0366%` figure is the whole timer-49 bucket. It has not been decomposed into `get_contact2d`,
  `get_persisted2d` and initialization-time assemblies, and no site-resolved instrumentation was run in
  this pass. The realized addressable fraction is strictly smaller and is currently unknown.
- No runtime, speedup, accuracy or trajectory result exists. This pass performed no build, no job and no
  model execution.
- The candidate sits at the 2% reopen gate, not above it. Under the Stage-77/78 rule this authorizes at
  most one candidate build and one matched `144/720` A-B-B-A; promotion still requires both B samples
  faster, >=3% mean gain, consistent trajectory hash, then full `2592/12960` with official 26/26 PASS.
- The teammate job `118524098` was read-only evidence. Nothing in its tree was modified and its result is
  not attributed to this workflow.

### Verdict

Pass 1 valid. Pass 2 valid, with the ceiling correctly stated as an upper bound rather than an expected
gain. Pass 3 is static only; reproduction is required. Output lifecycle: no model output created,
deletion not applicable.
