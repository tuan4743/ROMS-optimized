# Pass 1 - Read and preliminary summary

## Scope

- Date: 2026-08-01.
- Purpose: profile the current validated O33 parent's collective calls without changing ROMS source, model physics, physical grids, tile layout, input fields, collective rules, or returned MPI values.
- Parent: `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/oceanM.O33_final`, SHA-256 `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`.
- Diagnostic input: `NTIMES=144/720`, 8x8 tiles on both grids, four nodes, 64 MPI ranks x 2 OpenMP threads. This is not a scoring run.
- Retained successful audit: `/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_collective_hist_118370068`, 614 KiB.

## Launch and completion

- Allocation `118370068` completed `0:0` in `00:02:19` on `j04r2n[16-19]`, four nodes and 128 allocated CPUs. The mpirun step completed in `00:02:08`.
- Shell timing under instrumentation is `real 2m10.730s`; it is profiler overhead-bearing evidence and is not used as a candidate performance result.
- The model reached `ROMS/TOMS: DONE`; all 64 expected per-rank histogram files exist; zero NetCDF files are expected for this short diagnostic.
- The profiler records 87 distinct buckets. Only `MPI_Bcast` and `MPI_Allreduce` occur; no intercepted `MPI_Allgather` or `MPI_Allgatherv` call occurs in this run.

## Initial result

- Mean rank lifetime is `126.240984 s` with rank range `126.226437-126.254287 s`.
- Timed collectives total `15.217087 s/rank`, or `12.053999%` of mean rank lifetime.
- `MPI_Bcast`: `9.820224 s/rank`, `7.778950%`.
- `MPI_Allreduce`: `5.396863 s/rank`, `4.275049%`.
- Largest buckets are 4-byte world Bcast (`2.301878 s`), 134,368-byte world Allreduce (`2.248578 s`), 626,416-byte world Allreduce (`1.475183 s`), and 12-byte world Bcast (`1.436706 s`). Large communicator-16 initialization Bcasts also contribute materially in this shortened run.

## Incidental failures retained

- Allocation `118369921` stopped before time stepping because the isolated working directory lacked the relative `ROMS/External/varinfo.dat` path. It produced no histogram or NetCDF result. The harness was fixed by adding a read-only `ROMS` symlink.
- Allocation `118370031` stopped before input generation because compute nodes lack `/usr/bin/python3`. It produced no model result. The harness was fixed to use the organizer's read-only `/public/share/mcc2026_final/miniforge3/bin/python`.
- Both failures are environment/harness failures, not ineffective optimization results, and their small private audits remain retained.

## Evidence

- Local raw copy: `analysis/o33_collective_hist_118370068/raw/`.
- Copied output hashes match the remote values: summary `af8c508d...c00e`, histogram `3d730cad...32c3`, model log `83488138...c6f`, harness log `01f75505...9c3`, manifest `05a666c7...9b9e`.
- The local copy contains all 64 rank files and all 64 have distinct SHA-256 hashes, consistent with independent per-rank measurements.

## Preliminary decision

The combined timed-collective share is below the predeclared `13.33%` provisional screen. Pass 2 must determine the full-run dilution and whether a collective-algorithm microbenchmark can still plausibly clear 2% end-to-end.

## Output lifecycle

At task start, the prior overlap result's three analyses were present and valid. Its audit had no model output, so deletion was not applicable. The current successful audit and two failed-launch audits are retained; nothing was deleted.
