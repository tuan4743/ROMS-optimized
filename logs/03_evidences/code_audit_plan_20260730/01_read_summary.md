# Pass 1 - Code inspection and initial summary

> Rule update: the 2026-07-30 organizer clarification now permits changing internal MPI `NtileI/NtileJ` while the physical grid remains fixed. Statements below that treat selective OpenMP as the only 128-core route are superseded.

- Date: 2026-07-30 (platform time)
- Task: inspect the valid original-source lineage and inherited optimization code, then define the next optimization plan
- Change boundary: documentation only; no model source, input, grid/tile setting, binary, job, or output was changed

## Evidence inspected

- Passing private source: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727`
- Read-only team staging: `/public/home/fujiake/lsd/mcc2026_final/ROMS_CoSiNE15/.mcc_opt`
- Local imported compiler rules: `ROMS_CoSiNE_final_20260727/lsd_v24a/`
- Valid GCC run and profile: job `118169717`, `analysis/toolchain_run_118169717/`
- Historical PMPI support: job `117845239`; inherited OMP diagnostics and full v22/v24a runs
- Exact downloaded evidence: `source_evidence/passing_distribute.F`, SHA-256 `f03d0175a421510bcb237351dd8c9cef04e1cf95f1713680921423f111342977`; `source_evidence/passing_makefile`, SHA-256 `219747441f5ec0dbfbef3cb8b683bfd6eadd014beb7bfd6652cb891bf39d8a8`

Interactive remote commands timed out, but read-only `scp` retrieved the exact passing files into this analysis directory. The `distribute.F` hash matches the established passing-source hash, so the aggregate path below was rechecked line by line before the plan was finalized.

## Confirmed program and parallel structure

1. `makefile` explicitly rejects global `USE_MPI` and `USE_OpenMP` together. Enabling the standard ROMS OpenMP switch is therefore not a valid route to `64 MPI x 2 OpenMP`.
2. The nonlinear driver contains normal ROMS tile-level OpenMP regions, but they are removed when `_OPENMP` is absent. In the MPI build, each of the 64 ranks owns one of the fixed `8x8` tiles on each grid.
3. The inherited hybrid build avoids the global switch. It keeps the MPI driver single-threaded, compiles only selected objects with `-fopenmp` or `-qopenmp`, links the OpenMP runtime, and relies on explicit directives inside those selected objects.
4. The inherited biology-only source is a particularly clean feasibility case: `bio_UMAINE15_omp_j.h` adds one outer-`J_LOOP` parallel-do region and a private-variable list without changing model expressions. `bio_UMAINE15_omp_j_v2.h` also rewrites storage/expressions and is not an equivalent low-risk candidate.
5. The inherited `step3d_t_deferred_omp_hot.F` is not a clean OpenMP-only change: it is based on a deferred-communication variant. It must not be copied wholesale into the passing source.
6. `t3dmix4_s_omp_hot.h` and `gls_corstep_omp_hot.F` appear directive-only in the audited staging comparison; `pre_step3d_omp_hot.F` adds several loop regions. Each still needs a new exact diff against the passing source before use.

## Confirmed MPI target

The dominant execution path is `fine2coarse3d -> mp_aggregate3d -> MPI_Allgather` in `nesting.F` and `distribute.F`. The exact source distinguishes three mechanisms:

- `mp_gather2d/3d` already sends each rank's exact `MySize(rank)` with nonblocking point-to-point receive/send and assembles only on the master. It is not the first variable-count target.
- `mp_scatter2d/3d` broadcasts the global buffer and unpacks locally. It is not the measured first-order target.
- `mp_aggregate2d/3d` computes `Npts` as the maximum tile count, zero-fills `Asend` and `Arecv`, performs an equal-count `MPI_Allgather`, and then every rank unpacks all ranks in ascending rank order. Unequal tiles therefore transmit padded zeros.

This makes two isolated candidates concrete:

1. remove only `Arecv=0` in `mp_aggregate2d/3d`; `MPI_Allgather` overwrites every element that the subsequent unpack can read, while `Asend=0` must remain to initialize transmitted padding;
2. replace the padded equal-count call with `MPI_Allgatherv`, using the already computable per-rank tile counts and prefix displacements, then unpack each rank from its displacement. All ranks require `Aglobal`, so root-only `MPI_Gatherv` is not semantically equivalent here.

Both candidates must preserve local packing order, ascending-rank unpack order, and all floating-point arithmetic. Mapping, binding, HCOLL/UCX, and collective selection remain independent experiments.

Do not begin from inherited donor-side averaging, `mp_sum`, flux-sum merging, owner-reduce, broad nonblocking exchange, or combined optimized sources. Those changes either alter floating-point order or have failed to produce scoring-valid output in the inherited lineage.

## Initial conclusion

The primary line is MPI/nesting data movement and synchronization on the officially passing GCC source. Selective inner-loop OpenMP is technically feasible and is the only currently identified way to use 128 cores without changing the frozen `8x8` decomposition, but it is a separate staged line. No speedup or accuracy result is claimed by this inspection.
