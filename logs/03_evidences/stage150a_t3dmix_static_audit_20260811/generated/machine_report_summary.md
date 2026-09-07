# Exact Stage 134 t3dmix compiler-report summary

- Report section lines: 752
- OpenMP parallelized remarks: 1
- Assumed-shape stride multiversion remarks: 6
- Vector-length-4 remarks: 13
- Vector-length-2 remarks: 9
- Vectorized-loop remarks: 18
- Scalar-replacement remarks: 4

The six main i-loops at source lines 221, 232, 247, 317, 327 and 340 all have vectorized unit-stride versions. The first/second flux and final update loops use AVX2 vector length 4 in the unit-stride version. The compiler emits runtime stride multiversioning for assumed-shape dummies; the fallback uses vector length 2 or strided-load emulation. Whole allocatable actual arrays are expected to select the unit-stride path, so eliminating the fallback is a code-size/dispatch opportunity, not a 40% kernel mechanism.
