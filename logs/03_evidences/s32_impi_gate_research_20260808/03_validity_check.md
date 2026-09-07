# 03_validity_check — Intel MPI gate research

## Pass 1 valid: yes

Remote survey confirms Intel MPI 2017.4.239 tools present; S32 links HPC-X Open MPI; teammate RT_impi never measured; PROFILE percentages re-read from `118769550` files.

## Pass 2 valid: yes

Ceiling argument uses measured skew (Stage 93), measured BcastHier null result (`118775392`), and teammate coll_rules neutrality — not share×speedup fiction (invalidated Stage 90).

## Decisions

| claim | status |
|---|---|
| ImpI exists and could be built | yes |
| ImpI is orthogonal / untested | yes |
| ImpI conservatively clears ≥2% wall on S32 | **no** |
| A-B-B-A authorized | **no** |
| Optional diagnostic if user overrides gate | yes (label clearly; not a scoring candidate until ≥2% + both_B) |

## Reproduction

Not applicable. No output created.

## Next

Either (a) research wet-point/land-skip skew mechanism with a quantitative land-fraction model, or (b) user-authorized below-gate ImpI diagnostic, or (c) accept S32 as performance plateau under current gates.
