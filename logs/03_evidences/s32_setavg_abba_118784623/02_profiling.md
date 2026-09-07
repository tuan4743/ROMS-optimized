# 02_profiling — set_avg OMP sample ABBA

- Scope: diagnostic sample 144/720; one allocation W0+A1+B1+B2+A2; PROFILE off.
- Both B legs were slower than both A legs (114.3/113.2 vs 107.3/103.7), but A and B did not share a build/source lineage.
- Stage 132 build audit: both candidate setup scripts copied the non-s22b tree; the candidate build log contains zero `-march=core-avx2`, zero `-no-fma`, and zero `-ipo` compile lines. The wrong tree also has different `globaldefs.h` and `nesting.F` hashes.
- The earlier fork/join/private-loop explanation is therefore only a possible local cost, not an observed root cause. The `-7.84%` delta cannot reject or quantify the set_avg-OMP knob.
- Independent evidence still closes the route: full PROFILE `118784141` gives `set_avg=2.0207%` of aggregate CPU (about 2.5-2.8% translated wall), while prior rank analysis shows this near-uniform pool is not the limiting arrival path. No conservative >=2% removable critical-path gain is established.
- Correct label: `CONFOUNDED_ATTRIBUTION / BELOW_GATE_STOP`; no new model run.
