# Second analysis: profiling and code review

Date: 2026-08-01

## Timing evidence

| Result | Full real | Official result |
|---|---:|---|
| EXP-0006 norecvzero | 5126.750 s | 26/26 PASS |
| O33 historical 118307015 | 2129.853 s | 26/26 PASS |
| O33 packaged 118346383 | 2142.793 s | 26/26 PASS |

Using the packaged full run, O33 is 2.393 times as fast as EXP-0006, a 58.20 percent runtime reduction. This is a cross-source aggregate comparison, not attribution to one change.

## ROMS profile comparison

O33 removes the dominant EXP-0006 gathering bottlenecks:

| Grid/profile item | EXP-0006 | O33 final |
|---|---:|---:|
| G01 point data gathering | 25.9982% | 1.5615% |
| G02 data gathering | 18.2708% | 0.2830% |
| G02 point data gathering | 7.2548% | 0.4335% |
| G02 corrector tracers | 16.8927% | 10.9390% |

The remaining O33 G02 hotspots are predictor 13.62%, corrector tracers 10.94%, step2d 10.56%, GLS 9.89%, 4D halo 7.17%, 2D halo 5.66% and biology 5.59%.

Selective OpenMP is not uniformly beneficial in raw accumulated timing: tracer corrector improves strongly, while predictor, GLS and step2d do not all fall. Preserve the validated combined stack and avoid broad new OpenMP changes.

## Code structure reviewed

- nesting.F: owner-packed fine-to-coarse aggregation, sparse contact3d peer exchange, packed boundary-flux collection, debug-only mass-flux elimination.
- distribute.F: MPI_IN_PLACE reductions, packed assemble helpers, collective selection and hierarchical scatter support.
- pre_step3d.F, step3d_t.F, gls_corstep.F, bio_UMAINE15.h and t3dmix4_s.h: selective OpenMP loop directives.
- mod_nesting.F, main3d.F and set_contact.F: guarded vertical-weight reuse.
- mp_exchange.F: byte-identical to EXP-0006.
- Linux-ifort.mk: selective OpenMP runtime and per-hotspot no-heap-arrays.

The source comparison found no physical-grid, DT, NDTFAST, output-variable/frequency, ecology or one-way-nesting change. The O33 base input differs from the validated full 8x8 input actively only by authorized diagnostic NTIMES; the final runner restores the full pair.

## Main review conclusions

1. Use the complete O33 package as the parent; its optimized files are coupled.
2. Harden the runner before reuse.
3. The best evidence-backed non-overlapping candidate is the two-site aggregate Arecv zero-fill removal from EXP-0006.
4. Remove only two of O33's six Arecv zero fills.
5. Keep HCOLL disabled and retain exact module/runtime/binding settings.

Pass 2 verdict: VALID.
