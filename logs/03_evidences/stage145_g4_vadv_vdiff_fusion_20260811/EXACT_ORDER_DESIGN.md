# G4 exact-order design

## Frozen active order

```text
horizontal C4 sweep over k,itrc
collect_bry_fluxes
parallel j loop
  for every itrc
    construct vertical-advection FC
    t_nnew = t_nnew - divergence(FC)      <- global intermediate store
  for every itrc
    DC = t_nnew                            <- global intermediate load
    implicit vertical-diffusion solve
    t_nnew = final solution
end parallel j loop
BC/mask/final 4-D halo
```

## Candidate order

```text
horizontal C4 sweep over k,itrc            (unchanged)
collect_bry_fluxes                         (unchanged)
parallel j loop
  for every itrc
    construct vertical-advection FC        (same statements/order)
    RHS0 = t_nnew - divergence(FC)         (same arithmetic target)
    implicit vertical-diffusion solve      (same statements/order)
    t_nnew = final solution
end parallel j loop
BC/mask/final 4-D halo                     (unchanged)
```

`RHS0` is in the existing OpenMP `PRIVATE` list. No rank or thread can observe another thread's column.

## Diagnostics equivalence

`DIAGNOSTICS_TS` is active in the frozen application. In the original path, the vertical-diffusion diagnostic subtracts the advected `t_nnew` value. In the candidate it subtracts `RHS0`, which is assigned by the identical expression before the solve. Thus the diagnostic reference value is preserved without an intermediate global write.

For `SPLINES_VDIFF`, the original normalization `t_nnew *= oHz` is applied to `RHS0` at the same point. The spline differences and final `RHS0+cff1` use the same normalized RHS.

## Preprocessor audit

Local active-macro preprocessing used the frozen application header and full archive include tree. Both original and candidate preprocess with zero errors.

| Active statement/call | A′ | B |
|---|---:|---:|
| `CALL bry_fluxes` | 1 | 1 |
| `CALL collect_bry_fluxes` | 1 | 1 |
| `CALL mp_exchange4d` | 1 | 1 |
| active `DO itrc=1,NT(ng)` | 4 | 3 |
| intermediate `t_nnew=t_nnew-cff1` | 1 | 0 |
| later `DC=t_nnew` | 1 | 0 |
| `RHS0=t_nnew-cff1` | 0 | 1 |
| `DC=RHS0` | 0 | 1 |

The removed tracer loop is the second vertical pass, not any horizontal/nesting/BC loop.

