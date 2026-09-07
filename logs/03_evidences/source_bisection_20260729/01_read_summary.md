# Pass 1 - Source lineage read and initial summary

- Date: 2026-07-29
- Task: identify the earliest high-risk source change shared by v22, v24a, and v31
- Model experiment launched: none

## Exact source facts

- Passing baseline `ROMS/Utility/distribute.F`: `f03d0175a421510bcb237351dd8c9cef04e1cf95f1713680921423f111342977`.
- Passing baseline `ROMS/Nonlinear/nesting.F`: `9e9e7f3b2acbcc54ad5199bbb52c0d1e7425c4fdfa946c5f938cb41bea807c12`.
- v22 build script selects `distribute_owner_reduce.F` and `nesting_sparse_zweights_fluxsum_contactbatch.F` plus GCC and hotspot OpenMP sources.
- Despite its name, staging `distribute_owner_reduce.F` is byte-identical to staging `distribute.F`: both SHA-256 `9ad6370e040d73834fe666002a126ccec2b01deb5867e0feda3fc3f0d6b172fa`.
- That staging distribute file is not identical to the passing baseline distribute (`f03d0175...`). It already contains boundary-vector batching, in-place `MPI_Allreduce` assembly, an `mp_sum` helper, and a conditional native-allreduce path for uniform reductions.
- No `REDUCE_ALLGATHER` or `COLLECT_ALLREDUCE` definition was present in the application headers or v22/v24a compile logs inspected, so the conditional replacement of fixed rank-order reduction with native `MPI_Allreduce` is not shown to be active in these binaries.
- v24a alone changes distribute to `distribute_owner_reduce_scatter3d_hier.F`, SHA-256 `9ecb0059e493dc6b33fae4b117c0148e7d568ecbbecdd064dda5719bc248512b`.
- v22 and v24a use the same final nesting source, SHA-256 `b28e430cfd9c6e4c7ca7779d26c7a5505c0f023f912028ab67925add95b1edb4`.

## Initial conclusion

The shared v22/v24a precision failure cannot be attributed to the v24a hierarchical-Bcast distribute change. Both the earlier staging-distribute changes and `nesting_sparse_contact3d.F` are shared, but the directly active floating-order change visible in the build lineage is sparse nesting's donor-side averaging plus `mp_sum`.
