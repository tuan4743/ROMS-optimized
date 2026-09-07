# Candidate [S21-2021]: teammate S21 base rebuilt with Intel classic ifort 2021.3.0

Date: 2026-08-07. Job submitted: `118736265` (sample A-B-B-A, 4N x 64 MPI x 2 OMP).

## 00 Why this candidate exists (context correction)

The whole O33 optimisation line this workspace has been pursuing **has been overtaken**.
Teammate `nan` runs a parallel sprint line whose current parent **S21 scores 3-day
`1979.6 s` (job `118690177`) with official vali fully passing**, i.e. 2.0% faster than our
own freshly crowned champion `2019.174 s`. Their record: `/public/home/fujiake/nan/README.md`
and `/public/home/fujiake/nan/sprint/README.md` (local read-only copy:
`experiments/champion_profile_20260807/nan_sprint_readme.md`).

Two independent facts make the compiler axis the one remaining opening:

1. **S21 is almost entirely a compiler-flag win, not a source rewrite.** Byte comparison of
   the immutable O33 tree against `nan/sprint/ROMS_CoSiNE15_s21`: `step2d_LF_AM3.h`,
   `gls_corstep.F`, `mp_exchange.F`, `pre_step3d.F` are all IDENTICAL; the whole `ROMS/`
   subtree differs in only 20 entries, 18 of which are per-job `.in` copies under
   `ROMS/External`. The only real source deltas are `ROMS/Include/globaldefs.h` and an added
   `ROMS/Nonlinear/metrics.F`. So `2136.310 s -> 1979.6 s` (-7.3%) came from flags:
   global `-no-heap-arrays -fp-model precise -march=core-avx2 -no-fma`, `biology.o` with
   `-fp-model fast=2 -no-prec-div -fp-speculation=fast`, `gls_corstep.o` with `-fp-model source`.
2. **The teammate closed the Intel 2021 route on evidence that does not apply here** (see 02).

## 01 Sources re-read

- `nan/sprint/ROMS_CoSiNE15_s21/Compilers/Linux-ifort.mk` (sha256[0:16] `27f0bf68c982004a`),
  all `FFLAGS` and `private FFLAGS` lines.
- `nan/sprint/ROMS_CoSiNE15_i21{,b,c,d}/Compilers/Linux-ifort.mk` and their `sub.sh`.
- `nan/README.md` sections O1-O84; `nan/sprint/README.md` sections S1-S27, I21-A/B/C.
- Our own `scripts/ifort2021_20260805/build_ifort2021.sh` (the validated 2021 recipe).
- Official `vali_result.txt` of runs `118405320` (O33), `118662236` and `118714595` (our 2021
  champions).

## 02 Mechanism, and why the teammate's I21 verdict does not transfer

The teammate recorded: "Intel 2021 (even all-precise) vali fails (chaos)" -- I21-A gave
Dongsha60 `u = 1.48e-3`, I21-C `u = 4.37e-4`, both far past the `6.0e-5` threshold. Taken at
face value this kills the present candidate. Three findings say otherwise.

- **Our own measurement contradicts it on a clean base.** Both 2021 full runs
  (`118662236`, `118714595`) report Dongsha60 `u RMSE = 0.000052` and SCS `u = 0.000057` --
  *identical to the 2017-compiled O33 baseline `118405320`*, 26/26 PASS. The 2021 compiler by
  itself therefore does not move the trajectory at all under `-fp-model precise`.
- **The I21 runs also swapped the run-time math library.** Their `sub.sh` line 20 loads
  `compiler/intel/2021.3.0` **at run time**, so `libimf`/`libsvml` change too. Under
  `-fp-model precise` the compiler must preserve IEEE basic arithmetic, but the *library*
  implementations of `pow`/`exp`/`log` are free to differ in the last ulp between releases --
  and in a chaotic model that is exactly the kind of perturbation that grows to `4e-4`.
  Our champion keeps the 2017 run-time modules, which is why its `u` never budged.
  Confirmed by `ldd`: our 2021-built binary resolves
  `libimf.so => .../intel-compiler-2017.5.239/.../libimf.so`.
- **The I21 bases predate S12/S15.** They carry the S8/S10 collect path, whose own `u` was
  already non-zero for reasons unrelated to the compiler; S12 (PROFILE off) and S15 (O33 fast
  collect) came later. So I21 measured "2021 x an already-perturbed base x a swapped math
  library", not "2021".

**Mechanism claimed here:** switching only the build compiler from `ifort 2017.5.239` to
`ifort 2021.3.0` improves generated code (measured -5.483% whole-run on O33, source
untouched) while leaving numerics unchanged, provided the run-time math library is *not*
swapped. S21's flag stack is orthogonal to the compiler version, so the two should compose.

**Expected gain.** O33 -> O33+2021 measured -5.483%. S21 already carries global AVX2, and part
of 2021's advantage is a better vectoriser, so overlap is expected. Conservative band
**-2% to -5%** on S21's 1979.6 s. Clears the >=2% reopen gate at the low end.

## 03 Validity check

- **One variable.** A and B share the source tree (byte-identical copy of S21), the same
  `Linux-ifort.mk` (hash-gated in the build script), the same `.in`
  (`05ceb746...`), the same `coll_rules.conf` (`0ef5b45a...`), the same rankfile, and the same
  run-time module set. Only the build-time compiler differs.
  A = `oceanM.S21_parent` md5 `6f355bef` sha256 `616670c7...`;
  B = `oceanM.S21_ifort2021` md5 `349c5a60` sha256 `33354fac...`.
- **Run-time library held constant deliberately.** The harness loads
  `compiler/intel/2017.5.239` for *both* legs and prints the resolved `libimf`/`libsvml` for
  each, so the log itself proves the library was not the variable. This is the single most
  important difference from the teammate I21 design.
- **Numerical risk.** Binding constraint is Dongsha60 `u` (`5.2e-5` against `6.0e-5`, ~13%
  headroom on S21, same as O33). Evidence that 2021 leaves `u` untouched on a precise base is
  direct (two full runs, 26/26). Residual risk: S21's `biology.o` carries `fast=2
  -no-prec-div -fp-speculation=fast`, and 2021 may reassociate differently there than 2017.
  If the 1day vali fails on `u`, the designed fallback is to demote only `biology.o` to
  `-fp-model precise` and re-measure -- that isolates the suspect object without abandoning
  the compiler switch.
- **Compliance.** Rules item 7 (compiler optimisation) and item 1; no source edit, no physical
  formula change, no algorithm change, no input change. The organiser permits changed floating
  execution order under the official RMSE gate. Full official 26/26 remains mandatory before
  any promotion.
- **Gate.** Sample A-B-B-A first, wall time only, promotion requires `gain >= 2.0%` **and**
  both B legs faster than both A legs; then 1day `864/4320` + official vali; only then 3-day
  `2592/12960`. The harness writes `decision.txt` with `verdict` computed by these rules.
- **Not repeating closed work.** Excluded by teammate evidence, not retried here: GLS `pow`
  CSE (O35, 0.935x), global AVX2 *with* FMA (S16/S17, `u=7.4e-5`), GLS `-no-prec-div
  -fp-speculation=fast` (S24, `u=6.8e-5` and slower), 4D-exchange overlap/non-blocking
  (S22/S23), PGO (zya, no gain), Ntile 16x4 (-12%), GCC 7.3.1, prefetch/unroll, `-fno-alias`.
  Excluded by our own measurement this session: swapping to the 2021 `libimf` at run time
  (micro-benchmark: 2021 `pow` slower on 5/5 exponents used by GLS).

## 04 Output lifecycle

Build tree `agent_tmp/isolated/work/s21_ifort2021_20260807` (retained, ~180 MB). Run outputs
under `mcc_runs/118736265_s21_ifort2021_abba_sample`. Teammate tree was read only; nothing was
written under `/public/home/fujiake/nan`.
