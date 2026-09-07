# Exact S32 active mp_exchange inventory

- Preprocessed files: 272
- Active call statements: 165

## Counts by routine

| Routine | Calls |
|---|---:|
| mp_exchange2d | 103 |
| mp_exchange3d | 52 |
| mp_exchange4d | 10 |

## Immediately adjacent candidates

These have zero intervening logical statements. They are candidates for semantic review, not automatically mergeable.

| File | Subroutine | Lines | Calls | Nvar |
|---|---|---:|---|---|
| gls_corstep.f90 | gls_corstep_tile | 885-892 | mp_exchange3d -> mp_exchange4d | 3 -> 1 |
| ini_fields.f90 | ini_fields_tile | 470-475 | mp_exchange3d -> mp_exchange4d | 3 -> 2 |
| ini_hmixcoef.f90 | ini_hmixcoef_tile | 311-316 | mp_exchange2d -> mp_exchange3d | 2 -> 1 |
| nesting.f90 | fine2coarse | 2918-2923 | mp_exchange2d -> mp_exchange2d | 1 -> 4 |
| nesting.f90 | fine2coarse | 2923-2931 | mp_exchange2d -> mp_exchange3d | 4 -> 2 |
| nesting.f90 | fine2coarse | 2931-2937 | mp_exchange3d -> mp_exchange4d | 2 -> 1 |
| nesting.f90 | put_refine2d | 5062-5069 | mp_exchange2d -> mp_exchange2d | 3 -> 3 |
| nesting.f90 | put_refine3d | 5346-5353 | mp_exchange4d -> mp_exchange3d | 3 -> 4 |
| rho_eos.f90 | rho_eos_tile | 366-371 | mp_exchange3d -> mp_exchange2d | 2 -> 2 |
| rho_eos.f90 | rho_eos_tile | 371-376 | mp_exchange2d -> mp_exchange3d | 2 -> 1 |
| set_depth.f90 | set_depth_tile | 266-271 | mp_exchange2d -> mp_exchange3d | 1 -> 1 |
| set_depth.f90 | set_depth_tile | 271-276 | mp_exchange3d -> mp_exchange3d | 1 -> 2 |
| set_depth.f90 | set_depth0_tile | 503-508 | mp_exchange3d -> mp_exchange3d | 1 -> 1 |
| step2d.f90 | step2d_tile | 442-447 | mp_exchange2d -> mp_exchange2d | 3 -> 2 |
| step3d_uv.f90 | step3d_uv_tile | 764-771 | mp_exchange3d -> mp_exchange2d | 4 -> 4 |
| step3d_uv_org.f90 | step3d_uv_tile | 764-771 | mp_exchange3d -> mp_exchange2d | 4 -> 4 |
