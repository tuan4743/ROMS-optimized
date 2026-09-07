# Next plan after Stage 131

## Decision

Do not spend another model run on tiling, square rank mapping, step2d OpenMP, generic MPI overlap/persistence, UCX tuning, compiler-version swaps or math-precision flags. Stage 131 supplies no new mechanism that can conservatively clear the >=2% diagnostic gate.

## One zero-run gate

Prepare an exact-production S32 compiler-report build for the six sampled hot objects:

1. `pre_step3d`
2. `step3d_t`
3. `biology`
4. `t3dmix`
5. `gls_corstep`
6. `step2d`

Collect per-loop vectorization, dependency, temporary, alignment and IPO diagnostics without changing the resulting production binary or launching ROMS. Cross-reference each missed loop with the Stage-131 symbol share and source legality.

Promote at most one candidate only when all conditions hold:

- exact source loop and compiler blocker identified;
- formulas, coefficients, neighbor stencil and output semantics unchanged;
- no already-closed flag/source route is being repeated;
- conservative whole-run ceiling exceeds 2%;
- one reversible, narrow change can test the mechanism.

If no loop clears the gate, freeze S32 as the final optimization parent and spend remaining time on full reproduction, validation screenshots, build/run documentation and delivery synchronization.
