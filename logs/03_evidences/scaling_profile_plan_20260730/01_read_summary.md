# Pass 1 - Existing scaling evidence read and initial summary

- Date: 2026-07-30 (platform time)
- Task: assess whether four-node/128-core execution is limited by bandwidth, whether the large input tree implies additional 128-core potential, and define a correct profiling plan if existing evidence is insufficient.
- Scope: read-only inspection of existing jobs, logs, sources, inputs, and profiling tools. No build, model run, validation run, output creation, or output deletion was performed.

## Evidence read

### Complete 64-rank references

- Intel job `117981144`: two nodes, 64 MPI ranks, one thread per rank, `8x8` tiles for both grids, full `NTIMES=2592,12960`, shell `real=10383.89 s`, `ROMS/TOMS: DONE`, and official validation job `117981681` passed.
- GCC job `118169717`: the same original model source, two nodes, 64 MPI ranks, one thread per rank, the same full input and `8x8` tiles, shell `real=9259.75 s`, `ROMS/TOMS: DONE`, and official validation job `118196173` passed.
- The two retained input copies have the same SHA-256: `a3e8a5dbee769ced1e097cd22d9e0424eb326b0a7b1006451fe6609dd14779a8`.

### Existing four-node/128-rank sample

- Job: `118167715`, name `intel128_full3d`.
- Allocation: four nodes `j04r2n[08-11]`, 128 MPI ranks, one thread per rank, `ppr:32:node`, core binding, HCOLL disabled.
- Input: full `NTIMES=2592,12960`; Grid 01 tiles `16x8`, Grid 02 tiles `8x16`; copied input SHA-256 `afccd9c698c0e02a672e5de526b59127c8b1bcd92ad2d8bce33cb5c27e45cf6f`.
- Binary: `.mcc_opt/bin/oceanM.baseline`, SHA-256 `b5cfb381dc985573fea814cfb01093fa379067ba0ad16d33913add9379cd1793`.
- The wrapper imposed `timeout=5400 s`. `/usr/bin/time` reports wall `1:30:04` and exit `124`; the model was killed by SIGTERM while ranks were in `MPI_Allreduce`.
- Last printed progress was coarse Grid 01 step `1380/2592` and fine Grid 02 step `6930/12960` at model date day 1 14:30. There is no final ROMS timing profile and no `ROMS/TOMS: DONE`.
- Output is partial: eight NetCDF files, approximately 4.0 GiB. The partial-output validator failures do not establish full-run accuracy.
- Slurm accounting reports job state `COMPLETED` only because the enclosing batch script handled the timeout; the model process itself did not complete.

### Source-comparability check

- The 128-rank binary is not source-identical to the passing private original tree.
- Team-tree `ROMS/Utility/distribute.F`: `9ad6370e040d73834fe666002a126ccec2b01deb5867e0feda3fc3f0d6b172fa`.
- Passing original `ROMS/Utility/distribute.F`: `f03d0175a421510bcb237351dd8c9cef04e1cf95f1713680921423f111342977`.
- `nesting.F`, `step3d_t.F`, and `biology.F` matched in the sampled comparison, but one active source mismatch plus a different binary hash is sufficient to reject a strict same-source scaling claim.

### Input and ROMS profile evidence

- `/public/home/fujiake/Inputfiles` occupies approximately 15 GiB; the largest file is about 4.17 GB.
- In the complete Intel 64-rank profile, input reading is `0.0347%` on Grid 01 and `0.0118%` on Grid 02. Message passing is `32.0680%` and `40.2845%` respectively.
- In the complete GCC 64-rank profile, input reading is `0.0450%` on Grid 01 and `0.0159%` on Grid 02. Message passing is `30.1428%` and `43.3469%` respectively.
- Dominant communication entries include fine-grid data gathering (`24.6331%` Intel, `27.6635%` GCC) and point data gathering (`8.1799%` Intel, `7.5027%` GCC).

## Initial conclusion

The existing evidence strongly suggests strong-scaling saturation dominated by communication and/or per-node memory effects, but it does not directly prove a memory-bandwidth ceiling. The 128-rank sample is incomplete, lacks PMPI and hardware-counter data, and uses a different `distribute.F` lineage.

The large input tree does not by itself create additional 128-core compute potential. Its runtime read cost is below 0.05% per grid in both complete profiles. The relevant large working set is the distributed two-grid, 17-tracer state advanced repeatedly; its scaling is governed by local memory behavior, halo/collective communication, tile geometry, and imbalance rather than by the aggregate size of files read at startup.

## Output lifecycle

This planning task generated no model output directory, so deletion is not applicable. Existing valid output and both active reproduction outputs were left untouched.
