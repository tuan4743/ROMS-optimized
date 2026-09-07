# Pass 1 - O33 biology exponential CSE source read

Date: 2026-08-01

Task: decide statically whether repeated-argument `exp` common-subexpression elimination in O33 `bio_UMAINE15.h` justifies a build or model run.

## Exact identity and scope

- Immutable parent: `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`.
- Source: `ROMS/Nonlinear/Biology/bio_UMAINE15.h`, local and remote SHA-256 `f4fb45d7552d44c3955a7a38a1fa6fa721fb1d6068125ef395d97c0639859abe`, 2776 lines/100467 bytes.
- Existing object: `Build/biology.o`, SHA-256 `1db6cb478c1c943020105892afa0d65db04a5fcaaae24ce98010cb7be6aafdd6`, 117416 bytes, x86-64 relocatable and not stripped.
- Build configuration: Intel ifort/HPC-X, `-fp-model precise -ip -O3`; `biology.o` additionally uses `-qopenmp -no-heap-arrays`; `CARBON`, `OXYGEN`, `SINK_OP1`, `BIO_UMAINE15`, and `PROFILE` are active. `OPTICS_OP1` is not active.
- This task changes no source, binary, ecological parameter, grid, input, time step, output setting, or physical calculation. It submits no build or model job.

## Source findings

The active per-cell/per-level biology path contains these six mandatory exponential calls:

1. light attenuation `EXP(-cff1)` at source line 622;
2. temperature factor `Q10=exp(...)` at line 658;
3. small-phytoplankton ammonium inhibition at line 729;
4. small-phytoplankton light limitation `alts1` at line 761;
5. diatom ammonium inhibition at line 878;
6. diatom light limitation `alts2` at line 898.

An additional shallow-water `exp(cff2)` appears textually inside the vertical loop at line 630. Existing object code already hoists it: the `exp` relocation at `0x7b95` is before the compiled K loop beginning near `0x7be8`. Source-level hoisting would therefore not remove a runtime call.

The only remaining exact repeated argument is:

```fortran
alts1 = 1.0_r8-exp(-PAR(i,k)*ADPT(i,k)/parsats1(ng))
alts2 = 1.0_r8-exp(-PAR(i,k)*ADPT(i,k)/parsats2(ng))
```

Both grids load `parsats1=80.0` and `parsats2=80.0`, while `pis1=5.59` and `pis2=4.00`. Therefore only the two light-limitation calls are equal; the ammonium-inhibition calls are not.

## Assembly check

The existing `biology.o` retains 42 `exp` relocations overall. In the main biology cell path, distinct calls remain at:

- `0x8af2`: Q10;
- `0x8b68`: `pnh4s1`;
- `0x8c40`: `alts1`;
- `0x8cd2`: `pnh4s2`;
- `0x8dc0`: `alts2`.

Thus ifort did not eliminate the equal-parameter `alts1/alts2` pair.

## General candidate shape

A universal implementation would cache the raw `alts1` exponential result and reuse it only when `parsats1(ng)==parsats2(ng)`, with the original `alts2` call retained as the unequal-parameter fallback. The cached scalar must be OpenMP-private. No hard-coded value of 80 is acceptable.

## Initial conclusion

One runtime `exp` per three-dimensional biology cell-step is statically removable for the current parameters, with a general fallback preserving other parameter sets. The compiler already performs the other obvious loop-invariant hoist. Performance viability is deferred to Pass 2; no measured speedup or numerical validation exists.

Pass 1 valid: **VALID** as a source/assembly observation.

Output lifecycle: the preceding diagnostic produced zero NetCDF files, and this task produces no model output. Deletion is not applicable; logs remain retained.
