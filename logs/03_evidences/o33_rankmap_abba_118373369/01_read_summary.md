# Stage 53: O33 square-node rank mapping A-B-B-A read summary

- Date: 2026-08-01. Job `118373369` completed `0:0` on `j04r2n[08-11]` using four nodes, 64 MPI ranks and two OpenMP threads per rank. Both unchanged physical grids use `NtileI*NtileJ=8*8`; diagnostic `NTIMES=144,720` is not a scored scope.
- Change: no ROMS source, binary, input physics, tiles, collective rules, or runtime options changed. A is the original contiguous 16-rank-per-node placement (four 8x2 logical stripes); B assigns one logical 4x4 tile block to each node. The immutable O33 binary is `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`.
- Raw evidence is retained locally in `raw/118373369_o33_rankmap_abba_sample/` and remotely at `/public/home/fujiake/fjk/mcc_runs/118373369_o33_rankmap_abba_sample`.
- Shell `real` samples are A1=128.132, B1=125.746, B2=124.383, A2=123.998 seconds. The harness ABBA mean is A=126.065 s and B=125.064 s: B improves only 0.7936%.
- All four samples return zero, print `ROMS/TOMS: DONE`, retain the identical trajectory SHA-256 `fa498694109f9a578ca07133f55d8e58961dde55666ca5347707d86eb40e44b0`, and produce zero NetCDF files as intended for this diagnostic. The official validator was not run; official accuracy and scoring validity are therefore unverified.

Initial conclusion: the mapping is numerically consistent in this short check but fails the 2% minimum performance gate and also fails the stronger `both_B_faster` check because B1 is slower than A2. The harness verdict `STOP_BRANCH` is supported. Output is retained; no deletion is permitted at this task end.
