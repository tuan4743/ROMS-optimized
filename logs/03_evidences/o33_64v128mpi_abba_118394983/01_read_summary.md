# Stage 55: O33 64x2 versus 128x1 read summary

- Date: 2026-08-02. Corrected job `118394983` used four exclusive nodes `j05r2n[04-07]`, immutable O33 binary `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`, and organizer-permitted diagnostic 144/720 steps.
- A is 64 MPI ranks x 2 OpenMP threads with 8x8 tiles; B is 128 MPI ranks x 1 thread with legal 16x8 tiles. Physical grid, equations, time step, ecology, input fields, collective rules and binary remain unchanged.
- Raw evidence is retained locally under `raw/118394983_o33_64v128mpi_sample/` and remotely at `/public/home/fujiake/fjk/mcc_runs/118394983_o33_64v128mpi_sample`.
- Shell `real`: A1=128.412, B1=168.451, B2=167.936, A2=126.234 seconds. ABBA means are A=127.323 s and B=168.1935 s: 128x1 regresses 32.0999%.
- All four model samples return zero, reach `ROMS/TOMS: DONE`, have the same printed trajectory hash `fa498694109f9a578ca07133f55d8e58961dde55666ca5347707d86eb40e44b0`, and produce zero NetCDF files as expected. The final post-run `decision.txt` helper has a Python syntax error, but it occurs after the four complete model samples and does not alter their raw records.

Initial conclusion: 128 pure MPI is decisively slower in this matched diagnostic and is closed. Full official validation is not applicable because there is no candidate gain; scoring validity remains unverified. Output is retained and is not deleted.

Read-summary validity: VALID for the stated diagnostic evidence.
