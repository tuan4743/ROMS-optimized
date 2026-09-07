# Pass 1 - PLAN research after AVX2 and P1 overlap rejection

Status: **VALID planning evidence; no new experiment**.

## Trigger and lifecycle gate

- Trigger time: 2026-08-01 after allocation `118369338` completed.
- Two consecutive post-PLAN directions are below the whole-run gate: two-object AVX2 regresses `3.5457%`; caller-side halo overlap has an optimistic ceiling of only `0.37321%`.
- Before starting this PLAN task, `analysis/mpi_overlap_probe_118369338/01_read_summary.md`, `02_profiling.md`, and `03_validity_check.md` were confirmed present and valid. The latest artifact is a 166-KiB private audit with no NetCDF/model output, so deletion is not applicable and all evidence remains retained.

## Primary sources reviewed

1. Chinese swPOM paper, Wu et al., *基于“神威·太湖之光”的区域海洋模式并行优化*: https://crad.ict.ac.cn/fileJSJYJYFZ/journal/article/jsjyjyfz/HTML/2019-7-1556.shtml
   - Communication share rises as local tiles shrink; blindly adding ranks can reduce efficiency.
   - Halo overlap requires a substantial inner-region computation, matching the condition that our P1 probe quantified and rejected for the clean O33 window.
2. Chinese LICOM work, Hao et al., *Deep Parallel Optimizations on an LASG/IAP Climate System Ocean Model*: https://www.mdpi.com/2076-3417/13/4/2690
   - Prioritizes packing, communication elimination, and replacing communication with redundant local calculation; hybrid MPI/OpenMP was not automatically beneficial at small scale.
3. Open MPI official `tuned` documentation: https://docs.open-mpi.org/en/main/tuning-apps/collectives/tuned.html
   - Fixed rules are derived on other hardware and may be suboptimal; dynamic rules select by communicator and message size.
4. Open MPI official tuning repository: https://github.com/open-mpi/ompi-collectives-tuning
   - Uses OSU/Intel microbenchmarks to sweep collective algorithms and generate a decision file; its documented algorithm counts are derived from Open MPI 4.x.
5. Official ROMS MPI material: https://www.myroms.org/wiki/images/c/cc/ROMS_MPI.pdf
   - Confirms MPDATA needs three ghost points and ROMS performs east-west then north-south exchanges, validating why the four-direction overlap probe is an optimistic ceiling.

## Live platform and current-rule facts

- Cluster `ompi_info`: Open MPI `4.0.4rc3`.
- `coll_tuned` exposes Allreduce algorithms 0-6 and Allgather algorithms 0-6, matching the current legacy rule IDs.
- Current rule file SHA-256 `0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473`:
  - Allreduce: `<64 KiB -> recursive doubling (3)`, `64 KiB..4 MiB -> Rabenseifner (6)`, `>=4 MiB -> ring (4)`.
  - Allgather: `<1 MiB -> Bruck (2)`, `>=1 MiB -> ring (4)`.
- O21 previously improved matched one-day wall time about `4.3%` when these dynamic rules were introduced, so collective selection is a proven legal runtime axis. The current O33 message-size distribution, however, has not been measured.
