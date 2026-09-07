# Stage 75 - P2/P3 static source review

- Date: 2026-08-03 +0800. Read-only inspection of immutable O33 source and symbol table; no build, ROMS job, input, output or source edit.
- `__libm_pow_e7` is linked in `oceanM` at `0x9712a0`. The most relevant static power expressions are in `ROMS/Nonlinear/gls_corstep.F`, including variable-base and parameterized exponents in the vertical-advection/turbulence path.
- OpenMP regions are selective: `pre_step3d.F` lines 343/596/833/916; `step3d_t.F` lines 311/349/680; and one each in biology, GLS and `t3dmix4_s.h`.
- Initial conclusion: neither a semantics-preserving pow rewrite nor a merge of adjacent OpenMP regions is proven. No candidate build is authorized.
- Output lifecycle: no model output was generated; retain the current Stage-72 raw VTune data.
