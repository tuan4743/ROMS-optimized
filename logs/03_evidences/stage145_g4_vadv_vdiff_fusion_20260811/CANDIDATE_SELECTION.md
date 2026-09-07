# Stage 145 candidate selection

Date: 2026-08-11 EDT

## Decision

Select G4: fuse the non-MPDATA vertical-advection consumer with the immediately following implicit vertical-diffusion solve inside `step3d_t_tile`.

Do not select G1 yet: it requires changing the horizontal predictor from a `k`-parallel sweep to a `j`-column schedule and transplanting the full C4 face-flux calculation. The dependency is legal, but the OpenMP/granularity risk is larger.

Do not select G2 yet: a real fusion would have to carry `Akt/z_r/btflx/stflx/srflx/swdk` into the biharmonic kernel or recompute vertical interface fluxes. This is a wider interface and duplicates work.

## Exact removable materialization

Frozen source currently performs, for each `j`:

1. loop over all 17 tracers, compute vertical-advection RHS and write it to global `t(i,j,k,nnew,itrc)`;
2. loop over all 17 tracers again, load the same RHS into `DC(i,k)` and solve implicit vertical diffusion.

The candidate performs, for each `j,itrc`:

1. compute the same RHS into an OpenMP-private `RHS0(i,k)` column;
2. immediately consume `RHS0` in the unchanged tridiagonal solve;
3. write the final solution to global `t(...,nnew,itrc)` once.

This removes one complete global tracer-state intermediate store and later load. It does not introduce a full 4-D scratch, a new halo, or a new whole-field scan.

## Static work-set bound

`RHS0(IminS:ImaxS,0:N)` is one `i-k` column per OpenMP thread. With `N=34` and a conservative local `i` extent below 55 including scratch bounds, it is below 15.1 KiB/thread. The existing `CF/BC/DC/FC` columns are unchanged. This is far smaller than the approximately 770 MiB two-grid physical-interior tracer state documented in Stage 144.

## Scope preserved

- horizontal C4 advection and flux extraction order is unchanged;
- `bry_fluxes` and `collect_bry_fluxes` remain before the fused vertical island;
- `t3dbc_tile`, masks, final periodic exchange, and `mp_exchange4d` remain after it;
- no grid, scheme, coefficient, time step, nesting time, output, input, or ecology option changes;
- MPDATA retains the original unfused code path;
- SPLINES_VDIFF and DIAGNOSTICS_TS are explicitly preserved through `RHS0`.

## Promotion gate

Static gate: PASS. Build and runtime attribution remain unverified.

