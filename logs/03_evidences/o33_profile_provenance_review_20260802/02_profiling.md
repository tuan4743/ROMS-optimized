# 02 Profiling — derivation method

- O33 was compiled with ROMS `PROFILE` instrumentation retained. Hot routines call `wclock_on/wclock_off`, for example biology timer 15, GLS timer 19, `pre_step3d` timer 22 and `step3d_t` timer 35; MPI exchange/distribution paths use timers 40–49.
- At shutdown ROMS prints one CPU figure per MPI rank, their aggregate `Total`, and per-grid compute/message-passage timer tables. Job `118346383` reports approximately `179144.3` aggregate rank-CPU seconds from 64 MPI ranks.
- Every printed percentage is computed against that ROMS aggregate denominator, not shell wall time. Example: Grid-02 predictor `24392.018 / 179144.331 * 100 = 13.6158%`; Grid-02 4-D halo `12844.396 / 179144.331 * 100 = 7.1699%`.
- `g02_hotspot_final3day_118346383.txt` is only an `rg` extraction of selected lines from the full model log, created by `sub_final_3day.sh`; it performs no sampling, estimation or extrapolation.
- Shell `time real=2142.793 s` is the scoring time and is independent from the rank-CPU denominator. Per-grid/profile percentages are not mutually exclusive wall-clock phases and must not be summed or substituted for `real`.
- The independent job `118405320` reports about `178516.6` rank-CPU seconds and nearly the same ordering: predictor 13.6563%, tracer corrector 10.9957%, step2d 10.6543%, GLS 9.9602%, 4-D halo 7.2090%, biology 5.6066%, 2-D halo 5.5326%.
- The full O33 profile is aggregate hotspot attribution only. Fine-grained collective histograms and overlap probes came from separate shortened profiling jobs and must not be attributed to the fastest full run.
