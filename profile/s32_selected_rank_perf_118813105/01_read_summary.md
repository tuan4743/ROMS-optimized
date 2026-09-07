# Stage 131 - S32 selected-rank perf: read summary

- Date: 2026-08-09 (+0800 on the cluster).
- Evidence state: `SMOKE_VERIFIED` diagnostic; not a scoring run.
- Job `118813105` completed `0:0` in `00:03:42` on four exclusive nodes `i17r1n[00-03]`, using 64 MPI ranks x 2 OpenMP threads and the existing 8x8/8x8 S32 partition and paired-core rankfile.
- Frozen binary: `/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_nofill_20260808/ROMS_CoSiNE15/oceanM.S32_parent`, SHA-256 `d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2`.
- Input: unchanged private S32 debug deck, SHA-256 `05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21`, `NTIMES == 144 720`; only each pass's output path was redirected.
- Runtime: HPC-X 2.7.4, HCOLL off, existing collective rules, `OMP_NUM_THREADS=2`, close/core binding, `KMP_BLOCKTIME=0`, hot teams enabled.
- Selected matched edge/interior pairs: `(8,10)`, `(24,28)`, `(40,42)`, `(48,53)`.

The job used two source-identical passes in one allocation:

1. `perf stat`: `task-clock`, `cycles:u`, `instructions:u`, `branches:u`, `branch-misses:u` on the eight selected ranks; diagnostic `real=105.505 s`.
2. `perf record`: software `cpu-clock:u` at 99 Hz on the same ranks, no call graph; diagnostic `real=108.195 s`.

Both passes printed `ROMS/TOMS: DONE`. All eight stat files, perf data files and symbol reports exist. Each report contains about 12K samples and `Total Lost Samples: 0`. The complete remote run is retained at `/public/home/fujiake/fjk/mcc_runs/118813105_s32_selected_rank_perf`; the local raw copy is under this analysis directory.

Initial finding: the four interior ranks retire **fewer**, not more, instructions than their matched edge ranks (`-2.00%` to `-4.67%`), while their task-clock is only `+0.28%` to `+1.03%`. This contradicts the earlier interpretation that larger interior PROFILE timers directly prove more retired computational work. The first-order explanation is a compute/communication-progress trade-off, not a one-sided interior workload excess.

No output is deleted. No ROMS source, model formula, physical grid, input field, time step, output schedule or two-way nesting behavior was changed.
