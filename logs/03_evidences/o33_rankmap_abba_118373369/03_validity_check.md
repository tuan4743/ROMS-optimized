# Stage 53: independent validity check

Raw evidence was re-read from `raw/118373369_o33_rankmap_abba_sample/summary.tsv`, `decision.txt`, `harness.log`, four model logs, rankfiles, and `rank_mapping_audit.json`, rather than trusting the first two passes.

- Job identity and resource context agree: `118373369`, four nodes `j04r2n[08-11]`, 64 MPI ranks, two threads, and Slurm exit `0:0`.
- The harness verifies the immutable binary, input, rules, `mp_exchange.F`, validator script, rankfiles, and audit. No model source or input setting changed beyond the authorized diagnostic output-path substitution.
- Each run has `rc=0`, `done=yes`, correct 144/720 step headers, and the same printed trajectory hash. There are zero NetCDF files, expected because shortened diagnostic output is redirected; no official validator result exists.
- The ABBA computation from raw times independently gives `(128.132+123.998)/2=126.065 s`, `(125.746+124.383)/2=125.0645 s`, and `(126.065-125.0645)/126.065=0.7936%`. The script's `both_B_faster=False` is also correct: `max(B)=125.746` is greater than `min(A)=123.998`.
- The profile sums in pass 2 reproduce directly from the four `profile_extract.txt` files. B's mean combined halo timer is higher, not lower.

Pass 1 valid: yes. Pass 2 valid: yes. Root cause is not proven; only the absence of a practical gain for this placement is proven at the diagnostic scope. Performance gain is not established and scoring validity is not established. Reproduction is not required because the route is below the 2% threshold and inconsistent in paired ordering. The retained remote result may be considered for deletion only at the beginning of a future task after the three-pass lifecycle gate; it is not deleted now.
