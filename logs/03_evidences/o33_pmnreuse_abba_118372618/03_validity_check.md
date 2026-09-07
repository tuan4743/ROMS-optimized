# O33 pre_step3d metric-reuse validity check

## Pass 3 checks

1. Allocation: job `118372618` completed `0:0` in `00:08:49` on exactly four nodes with 64 MPI x2 OpenMP and no node overlap with the separately observed teammate allocation.
2. Lineage: all runtime gates passed for parent/candidate binaries, candidate source/object, compiler rules, diagnostic input, collective rules and official validator file. Summary SHA-256 is `2594704a...c4e8`; harness `8a841373...14b58`; decision `f85fe8b7...0107e`; rankfile `ed46b52c...041e`.
3. Scope: the ROMS source-tree diff contains only `pre_step3d.F`, seven additions/three deletions. Grid, input, time integration, ecology, nesting, MPI layout and outputs are unchanged.
4. Compiler: the candidate target loop remains vectorized, so rejection is not caused by accidentally disabling SIMD.
5. Completion: all four runs have DONE, both grid time-range headers, both grid elapsed profiles, return code zero and zero NetCDF.
6. Numerical check: all four printed trajectories hash to `fa498694...e44b0`. This supports short diagnostic consistency but is not official field validation.
7. Independent performance reproduction: A=`129.9735 s`, B=`132.3100 s`, gain=`-1.797674%`; combined predictor gain=`0.165335%`. Both are below the promotion gate.
8. Failed-start separation: job `118372547` stopped before model launch on a missing private input symlink and contributes no timing sample. Its evidence remains retained and is not merged into the A-B-B-A result.
9. Lifecycle: successful and failed run roots contain zero NetCDF and remain retained. Nothing was deleted.

## Verdict

Pass 1 read summary: **VALID**. Pass 2 profiling: **VALID**. Pass 3 independent validation: **VALID**.

Final result: **STOP_BRANCH / INEFFECTIVE DIRECTION 2**. No full performance or official accuracy claim is permitted. The permanent two-consecutive-ineffective rule now requires mandatory PLAN research before any additional experiment.

