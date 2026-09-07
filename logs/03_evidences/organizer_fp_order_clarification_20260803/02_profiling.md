# Stage 79 - organizer floating-order clarification: optimization impact

- This removes the prior compliance-only block on loop interchange, CSE caching, reduction-tree changes, compiler vectorization/FMA and mathematically equivalent implementation rewrites.
- It does not turn rejected routes into demonstrated candidates: `pow` rewrite, OpenMP region merging, mapping and generic asynchronous MPI remain below their evidence gates for separate performance/dependency reasons.
- For future candidates, precision risk becomes an experimental gate rather than a pre-build ban: preserve the physical algorithm, run one-variable diagnostic controls, then full `2592/12960` and official 26/26 validation before claiming an eligible result.
