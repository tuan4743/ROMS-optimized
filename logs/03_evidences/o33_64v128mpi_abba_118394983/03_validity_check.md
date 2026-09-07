# Stage 55: independent validity check

Raw `summary.tsv`, all four model logs, profiles, trajectory files, Slurm accounting, rankfiles and harness log were independently re-read. The later `decision.txt` was not trusted because its Python formatting helper fails after A2; direct arithmetic from `summary.tsv` is used.

- Job identity is `118394983`, four nodes `j05r2n[04-07]`, allocation 128 MPI slots x one CPU. A intentionally launches 64 ranks with the verified 64x2 rankfile; B launches 128 ranks with the verified 128x1 rankfile. Both tile products are valid (64 and 128).
- Each sample has `rc=0`, `done=yes`, correct 144/720 headers, zero NetCDF, and the same trajectory SHA. The source/binary/input/rules hashes are verified by the harness before runs.
- Independent arithmetic gives A `(128.412+126.234)/2=127.323`, B `(168.451+167.936)/2=168.1935`, and gain `(A-B)/A=-32.0999%`. Both B samples are slower than both A samples.
- The profile values in pass 2 reproduce directly from the four `profile_extract.txt` files. Their mean halo increase is 322.6454%, consistent with the wall regression.

Pass 1 valid: yes. Pass 2 valid: yes. A model/runtime cause is supported at bucket level: 128-rank halo cost is dominant. No performance gain and no scoring validity are established. Reproduction is not required because the regression is large and paired samples agree. The remote raw result is retained; it may only be considered for deletion at the beginning of a future task after all lifecycle checks, and it is not deleted now.
