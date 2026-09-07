# Authorized cleanup - storage analysis

- Before cleanup, `mcc_runs` occupied 26 GiB: the two selected targets accounted for about 17 GiB, while the retained O33 full reproduction occupies 8.5 GiB and VTune data 473 MiB.
- After cleanup, `mcc_runs` occupies 8.8 GiB and `vtune_runs` 473 MiB.
- The cleanup does not alter model performance evidence, source, binary, validator logs, inputs, or the retained immutable O33 reproduction.
