# Stage 61 result — independent validity check

Raw re-read sources are `/public/home/fujiake/fjk/mcc_runs/118403744_o33_step2d_noheap_abba_sample/{harness.log,summary.tsv,decision.txt,SHA256SUMS}` plus every sample's `model.log`, `trajectory.txt`, and `profile_extract.txt`.

- Slurm job `118403744` completed `0:0` in `00:08:45` on `j05r2n[10-13]`.
- All four runs have exit code 0 and `ROMS/TOMS: DONE`; their trajectory SHA-256 is identical.
- Raw summary arithmetic reproduces A=`128.873 s`, B=`131.047 s`, gain=`-1.6873%`, and `both_B_faster=False`.
- Candidate build evidence shows the sole config line and no candidate `step2d.o` `for_allocate`/`for_deallocate` reference; the parent retains both. Thus the tested causal dimension is identified.

Pass 1 valid: **yes**. Completion and wall-time evidence proves a regression in this matched diagnostic.

Pass 2 valid: **yes**. Internal profile extracts verify the step2d decrease and the larger GLS increase, supporting rejection.

Performance gain proven: **no**. Root cause of the GLS interaction: **not proven**. Scoring validity: **no**—shortened input creates no NetCDF and official `vali.py` was not run. Reproduction is not required because both B samples are slower than both controls. The raw result is retained and cannot be deleted during this task.
