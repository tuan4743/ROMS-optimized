# Stage 73 - Remaining evidence paths and gates

## Closed or unsupported

1. VTune hardware-event analyses (Memory Access, Microarchitecture Exploration, HPC Performance Characterization) are unsupported on Hygon C86. Do not use Intel sample screenshots as application evidence.
2. Existing closed branches remain closed: pure-MPI scaling/Ntile scan, rank mapping, generic UCX/HCOLL/collective sweeps, immediate-wait nonblocking halo, fine2coarse vtype guard, no-heap step2d, AVX2 objects, broad OpenMP, biology CSE and speculative compiler bundles.
3. Full runs are blocked operationally until storage is rechecked: the last observed free capacity was about 7.7 GiB, below the retained 8.5-GiB full-output footprint.

## Ranked work that is still justified

| Priority | Work | Cost / change | Promotion gate |
|---|---|---|---|
| P0 | Read all four existing node-local VTune reports and compare function distribution | No model run; no source change | Demonstrate a reproducible node/rank imbalance large enough to reopen mapping/placement analysis; otherwise close it. |
| P1 | `perf` capability probe with standard events on a trivial user process, then an allocation decision | No model run; no source change | Only proceed if unprivileged counts are nonzero, repeatable and clearly attributable on compute nodes. |
| P2 | Map `__libm_pow_e7` from sampled symbols to exact O33 call sites, then calculate a conservative whole-run ceiling | Static source/compiler review only | Must show one rule-compliant transformation can plausibly exceed 2% whole-run, and label any changed evaluation order `FP_ORDER_COMPLIANCE_PENDING`. |
| P3 | Audit named selective OpenMP regions and `__kmp_fork_call` frequency | Static source/build review only | Must prove frequent small regions and a conservative >=2% end-to-end ceiling before one isolated diagnostic. |

## Interpretation

P0 and P1 are measurement recovery, not optimization attempts. P2 is not a request to replace `pow` with an approximation; math-library replacement, algebraic reassociation, cached common subexpressions or precision changes are excluded unless semantics and the pending floating-point-order rule permit them. P3 must preserve every loop formula and dependency.
