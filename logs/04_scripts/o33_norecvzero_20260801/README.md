# O33 two-site norecvzero A-B-B-A experiment

Date: 2026-08-01

Parent: `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`

Private candidate: `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/ROMS_CoSiNE15`

Only `ROMS/Utility/distribute.F` changes. The patch removes the receive-buffer zero fill from `mp_aggregate2d` and `mp_aggregate3d`; four other `Arecv=0.0_r8` assignments remain.

The single diagnostic allocation runs exact O33 and the candidate in `A1-B1-B2-A2` order with `NTIMES=144,720`, four nodes, 64 MPI ranks, two OpenMP threads, 8x8 tiles, HCOLL disabled and the archived tuned collective rules. It does not submit a full run automatically.

Proceed to one full run only if `decision.txt` reports `PROCEED_FULL`; the raw logs and profile extracts must still be independently reviewed first.
