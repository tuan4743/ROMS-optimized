# Pass 1 - MPI overlap probe read summary

Status: **VALID diagnostic evidence; no ROMS performance result**.

## Launch lineage

- Probe source: `experiments/mpi_overlap_probe_20260801/mpi_overlap_probe.c`, SHA-256 `6855a75a2457247dbdef65a5b0ad7d89d45d263e695e0ebda199ad8ae2bb1a90`.
- Resource script: `experiments/mpi_overlap_probe_20260801/run_mpi_overlap_probe.slurm`, SHA-256 `f7af245b229a5f9141b23a7b7cb92024ca30a8e2ff72d14aa6017379059ad924`.
- Jobs `118369309` and `118369327` both failed before script entry with Slurm `JobLaunchFailure`, exit `0:53`, and no audit root. They contain no experimental result and do not count as optimization failures.
- The unchanged hash-gated script then ran inside explicit allocation `118369338`, which completed `0:0` in `00:00:11` on `j05r2n[14-17]`, four nodes/128 allocated CPUs, 64 MPI ranks x 2 OpenMP threads.
- Audit root: `/public/home/fujiake/fjk/agent_tmp/isolated/audits/mpi_overlap_probe_118369338`, 166 KiB. Probe binary SHA-256 `65a85841adbf89b41b6a22b8a30be1b86ccc8d8d27bc68968c6b3a9bf2aa4748`.
- The probe itself took `real 5.172 s`; it did not read inputs, execute `oceanM`, alter a physical grid, or create NetCDF/model output.

## Experiment shape

- Logical topology is 8x8 with the same four-node rank grouping and two CPUs per rank as O33.
- `grid02_like`: 512 KiB to each neighbor and 40,000 reciprocal operations.
- `grid01_like`: 704 KiB to each neighbor and 75,000 reciprocal operations.
- Each row uses 12 warmups and 96 measured iterations for communication-only, compute-only, and post-Isend/Irecv-compute-Waitall overlap phases.

## Primary rep=1 result

| Case | Communication | Independent compute | Overlapped total | Saved | Overlap efficiency |
|---|---:|---:|---:|---:|---:|
| Grid02-like | 0.483780 ms | 0.080481 ms | 0.482584 ms | 0.081677 ms | 1.014863 |
| Grid01-like | 0.666417 ms | 0.179383 ms | 0.708238 ms | 0.137562 ms | 0.766866 |

Initial conclusion: the platform can progress nonblocking point-to-point communication during an `oHz`-like independent kernel. This proves API feasibility, not whole-application usefulness.
