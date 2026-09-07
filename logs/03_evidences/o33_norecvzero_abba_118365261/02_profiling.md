# Pass 2 - Performance and profile analysis

Date: 2026-08-01

## Scope and repeat quality

The comparison contains two A and two B samples in one allocation in A1-B1-B2-A2 order. All four use the same nodes, rankfile, input scope and runtime configuration.

- A range: `4.692 s`, or `3.6846%` of its mean. A2 is materially faster than A1, so short-run drift exceeds the historical full O33 range.
- B range: `0.672 s`, or `0.5208%` of its mean.
- Ancillary exact-O33 A1 from job 118365058 was `129.380 s`, only 0.24% from this job's A1. It is not merged into the matched mean.

The observed drift makes sub-percent changes untrustworthy. The candidate nevertheless has no positive signal: its mean is 1.3303% slower and neither B sample beats the faster A2.

## ROMS profile means

ROMS profile values are aggregate CPU-time counters, not shell wall time.

| Metric | Grid | A mean | B mean | B-A |
|---|---:|---:|---:|---:|
| Profile total | 01 | 10285.191 | 10583.486 | +2.9002% |
| Profile total | 02 | 10284.914 | 10583.580 | +2.9039% |
| GLS vertical mixing | 01 | 384.418 | 470.552 | +22.4063% |
| GLS vertical mixing | 02 | 982.425 | 1194.748 | +21.6121% |
| 4D halo exchange | 01 | 178.660 | 194.306 | +8.7574% |
| 4D halo exchange | 02 | 712.566 | 754.234 | +5.8476% |
| point gathering | 01 | 145.835 | 140.586 | -3.5993% |
| point gathering | 02 | 42.189 | 44.146 | +4.6386% |
| 2D halo exchange | 01 | 117.532 | 112.556 | -4.2337% |
| 2D halo exchange | 02 | 519.910 | 497.104 | -4.3865% |

Observations:

- `Message Passage: data gathering`, the most relevant timer for this aggregate-path change, is absent from all four short profiles. There is no measurable aggregate-timer reduction to justify a full run.
- Point gathering moves in opposite directions on the two grids, so it does not show a coherent candidate benefit.
- B's total counters are about 2.9% higher on both grids, broadly consistent with the non-improving wall result.
- GLS and 4D-halo counters rise under B, but the parent/candidate `gls_corstep.o`, `biology.o`, `pre_step3d.o`, `step3d_t.o` and `t3dmix.o` hashes are identical. These timer shifts are observations, not proof that the two deleted assignments directly slow those kernels.
- The build issued 145 compiler commands after the module dependency changed, although audited unchanged hotspot objects rebuilt byte-identically. `distribute.o` is the intended differing object. This limits fine-grained attribution but does not rescue a candidate that misses the gate.

## Interpretation

O33 has already collapsed the old aggregate/gather bottleneck. Removing two additional zero fills has no demonstrated remaining end-to-end upside in this diagnostic. Because the affected timer is not measurable and the matched mean is worse, the branch should stop without a half-day or full run.

Pass 2 valid: **VALID** as diagnostic performance evidence. No full-run speedup, root-cause or scoring claim is made.
