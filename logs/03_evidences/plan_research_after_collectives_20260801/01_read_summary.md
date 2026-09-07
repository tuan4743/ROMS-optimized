# Mandatory PLAN research after collective directions

## Scope and trigger

- Date: 2026-08-01 21:26-21:52 +0800.
- Trigger: two consecutive below-gate directions after the latest reset: current-O33 collective-rule screening and 3-D nesting Allreduce batching.
- This pass used read-only web research, existing local evidence, and read-only inspection of the immutable O33 source. It did not edit source, build a binary, submit a Slurm job, create model output, or delete retained evidence.
- Immutable parent: `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`.

## Research observations

1. The NEMO communication-grouping study reports that a free-surface time-splitting schedule can delay one exchange and combine it with the next, reducing three communications per short step to two. It also warns that communication count, not only payload volume, can limit scaling. Source: <https://gmd.copernicus.org/preprints/gmd-2021-320/gmd-2021-320-manuscript-version4.pdf>.
2. Chinese swPOM work reports increasing communication share with rank count and useful overlap only where independent work exists; broadcast and reduction are not generally hidden by that method. Source: <https://crad.ict.ac.cn/fileJSJYJYFZ/journal/article/jsjyjyfz/HTML/2019-7-1556.shtml>.
3. Chinese NEMO modernization work used Intel profiling before compiler, SIMD, scalar and memory-bandwidth work, with a combined reported gain. That supports measured hotspot selection, not blind flag enumeration. Source: <https://www.ams-journal.org.cn/website/article/doi/10.3969/j.issn.1671-6647.2021.01.007>.
4. Official ROMS PR 40 adds variable-count `MPI_SCATTERV/GATHERV` support. O33 PMPI observed no Allgather/Allgatherv, and prior aggregate variants are already closed, so this is not reopened. Source: <https://github.com/myroms/roms/pull/40>.
5. Open MPI tuned collectives are message/platform dependent, but the measured O33 collective share failed the 2% screen. No blind rule sweep is justified. Source: <https://docs.open-mpi.org/en/main/tuning-apps/collectives/tuned.html>.

## Exact O33 source findings

- Preprocessed `Build/step2d.f90` SHA-256: `9806a56ea5cd9dfaf267c4f7bc4942c3207e1b72efa06c002ad1a59e99cb1ff5`.
- Source include `ROMS/Nonlinear/step2d_LF_AM3.h` SHA-256: `0f03de3175e5454f617cfc2476093336d2fb3d957b1daf64e16627346c5c98a7`.
- O33 already batches fields at each exchange site: `DUon+DVom`, `Zt_avg1+DU_avg1+DV_avg1`, `DU_avg2+DV_avg2`, and `ubar+vbar`.
- Each actual predictor/corrector step still exchanges `DUon/DVom` near the beginning and `ubar/vbar` at the end. The next invocation computes `DUon/DVom` before the first stencil consumption of `ubar/vbar` ghost cells.
- The active dual-nesting driver calls `nesting(...,n2dPS/n2dCS)` between predictor and corrector. `nesting.f90` explicitly gathers `zeta`, `rzeta`, `ubar`, and `vbar` contact data, so a delayed exchange must preserve contact semantics and cannot be copied mechanically from NEMO.
- The auxiliary `nfast+1` predictor executes the beginning flux/exchange section and returns before time stepping. This can provide a final delayed halo refresh if the dependency proof and diagnostic support it.

## Result

Select one bounded P0 profiling task: instrument only the two exact `step2d` exchange sites on an isolated O33 copy and run one diagnostic `144/720` allocation with no NetCDF expected. Measure the end-of-step `ubar/vbar` exchange directly. No communication-schedule candidate is allowed unless the measured full-run-scaled removable site time is at least 2% of O33 and the source diff preserves all arithmetic, physical grids, time stepping, output settings, ecology, and two-way nesting.

