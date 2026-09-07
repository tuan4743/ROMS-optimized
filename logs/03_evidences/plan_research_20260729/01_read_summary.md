# Pass 1 - Read and initial summary

- Date: 2026-07-29
- Task: optimization-path research after two consecutive inconclusive or invalid accuracy candidates
- Experiment launched: none

## Current evidence

- The valid Intel baseline passed all 26 official checks but required `real 10383.89s`.
- v22, v24a, and v31 complete optimized outputs all retained the same failing signature: Dongsha60 `u` RMSE `0.000067` against a `0.000060` threshold.
- `-ffp-contract=off` and Intel `-fp-model precise` changed early diagnostics but did not provide evidence of improved final accuracy.
- Current ROMS timers identify nesting data gathering and MPI collectives as the first-order bottleneck; NetCDF I/O and biology are not first-order targets.

## External research read

1. Official ROMS 4.2 release notes state that ROMS implemented gathering/scattering with `MPI_GATHERV/MPI_SCATTERV` in PR #40. This is directly relevant to the old code's full-buffer gather/scatter path.
   - https://github.com/myroms/roms/releases
2. Zhang et al., *Performance Characterization and Efficient Parallelization of MASNUM Wave Model*, report gains from communication optimization, I/O optimization, and balanced two-dimensional decomposition.
   - https://crad.ict.ac.cn/article/doi/10.7544/issn1000-1239.2015.20131415
3. Wu, Ni, and Huang, *Regional Ocean Model Parallel Optimization in Sunway TaihuLight*, show that communication share rises with core count and warn that blindly increasing the parallel scale can stop helping or hurt. Their practical directions include outer-loop parallelism, contiguous memory access, and communication/computation overlap.
   - https://crad.ict.ac.cn/cn/article/doi/10.7544/issn1000-1239.2019.20180791
4. Chinese LICOM work reports deep MPI/OpenMP optimization of an ocean model, supporting hybrid parallelism only after bottleneck and scaling analysis.
   - https://www.mdpi.com/2076-3417/13/4/2690

## Initial conclusion

The next candidate should not change a floating-point reduction order. Start from the passing Intel baseline and replace only the wasteful full-size gather/scatter data movement with rank-ordered variable-count gather/scatter semantics modeled on current official ROMS. Keep physical equations, floating expressions, integration settings, and output settings unchanged.
