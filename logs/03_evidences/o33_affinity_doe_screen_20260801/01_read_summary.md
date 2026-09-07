# Stage 54: O33 affinity DOE read summary

- Date: 2026-08-01. This is a zero-run static screen after Stage 53; no source, binary, input, job, output, or model result was created.
- Inputs re-read: retained Stage-53 rank binding evidence in `analysis/o33_rankmap_abba_118373369/raw/118373369_o33_rankmap_abba_sample/A1/model.log`, rankfile, and script `experiments/rankmap_square_20260801/run_rankmap_abba.slurm`; live read-only host topology from the MCC platform.
- The compute-node topology reports one 32-core socket, 64 hardware threads, and four NUMA nodes. Current rankfile binds each of the 16 ranks per node to exactly two physical cores and the pair order distributes four ranks to each NUMA node.
- Runtime baseline explicitly sets `OMP_NUM_THREADS=2`, `OMP_PROC_BIND=close`, `OMP_PLACES=cores`, and `KMP_BLOCKTIME=0`. Open MPI reports every rank bound to exactly the rankfile pair.

Initial conclusion: changing only OpenMP affinity spelling or blocktime cannot change the two-core cpuset inherited by any rank; it has no demonstrated mechanism to meet the 2% diagnostic gate. No Slurm experiment is authorized by this screen. No output exists, so deletion is not applicable.

Read-summary validity: VALID for the stated no-run placement evidence only.
