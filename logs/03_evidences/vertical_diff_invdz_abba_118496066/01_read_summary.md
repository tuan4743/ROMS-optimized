# vdiff_invdz ABBA diagnostic 118496066 (2026-08-03)

## 01 Read summary

- Date: 2026-08-03. Matched four-node A-B-B-A of candidate `o33_vdiff_invdz_20260803` (hoist `1.0_r8/(z_r(i,j,k+1)-z_r(i,j,k))` out of the `itrc` tracer loop in `pre_step3d.F` and `step3d_t.F`) against immutable O33.
- Job `118496066`, 4 nodes, 64 MPI x2 OpenMP, 8x8/8x8, NTIMES=144/720, HCOLL off, dynamic coll rules, CCX rankfile 16 pairs/node; started 19:33 +0800, harness DONE 19:45 +0800.
- All 11 hash gates passed (script `4c133c21...ee49`, parent bin `5f1a137e...fcb9`, candidate bin `9d1295e7...0323`, both sources, both objects, compiler mk, input, rules, validator).
- First submission `118495850` failed pre-model at the `Inputfiles` symlink gate (candidate tree lacked the link because the build script `build_vdiff_invdz.sh` did not restore the shared-input symlink after `cp -a`; parent tree has no `Inputfiles` entry). Zero model samples; the build script was corrected (same pattern as `build_f2c_vtype.slurm` lines 47-53) and the candidate tree was fixed with `ln -s /public/home/fujiake/Inputfiles`; harness failure only, not an optimization result.
- Four runs all `rc=0`, `DONE`, zero NetCDF expected; trajectory SHA `fa498694...e44b0` identical across all four runs.
- Times: A1=125.407, A2=126.573, B1=128.334, B2=127.601 s.
- Verdict (harness): `STOP_BRANCH` (`gain_percent=-1.5696`, `both_B_faster=False`, `trajectory_consistent=True`).

## 02 Profiling / mechanism

- Rank-CPU aggregate profile (profile_extract.txt per run):
  - predictor `pre_step3d` Grid 01: A ~457.7 s vs B ~454.4 s (-0.7%); Grid 02: A ~1355.4 s vs B ~1346.3 s (-0.7%).
  - tracer corrector `step3d_t` Grid 01: A ~383.1 s vs B ~375.2 s (-2.1%); Grid 02: A ~1086.6 s vs B ~1055.4 s (-2.9%).
  - GLS Grid 01: A ~388.4 s vs B ~472.6 s (+21.7%); Grid 02: A ~989.8 s vs B ~1203.7 s (+21.6%).
  - 4D halo Grid 01: A ~180.3 s vs B ~198.7 s (+10.2%); Grid 02: A ~712.5 s vs B ~758.8 s (+6.5%).
- Both directly edited hotspots improved as predicted, but the two unedited regions (GLS, 4D halo) regressed far more, netting -1.57% wall time.
- Root-cause hypothesis: the new private scratch arrays (`DC`/`invdz`, shape (IminS:ImaxS,0:N)) sit in the same cache footprint as the arrays consumed by GLS and halo packing (`z_r`, `Akt`); the extra store/load traffic displaces the compiler's previously optimal streaming pattern for adjacent kernels. Same failure signature as `pmnreuse` (multiplication-reuse, -1.80%): any added scratch-array pass through the O33 hot region costs more than the hoisted operation saves.
- ifort evidence from `o33_ifort_optrpt_20260801`: the edited loops already vectorize (VL2, unroll 4); division is amortized as `divpd` over 2 lanes. Hygon C86 division latency is not the binding cost at 64 MPI x2 OpenMP.

## 03 Validity check

- Four samples complete with all harness assertions; trajectory identical (bitwise-equivalent arithmetic preserved, no numerical-risk claim needed).
- Both A samples (125.407/126.573) and both B samples (128.334/127.601) are internally consistent; B1/B2 cross-check each other (delta 0.73 s).
- Gate result: `gain_percent=-1.5696` is below the 2% reject boundary and negative; `both_B_faster=False`; decision `STOP_BRANCH` is fully supported by data.
- Pass 1 valid: yes. Pass 2 valid: yes (edited hotspots improved, unedited regions regressed). Pass 3 valid: yes (no promotion; no half-day/full run; no accuracy consequence since trajectory identical).
- Reproduction required: none. No full-run or official validation is authorized by this result.
- Output lifecycle: result root `/public/home/fujiake/fjk/mcc_runs/118496066_o33_vdiff_invdz_abba_sample` retained (small, zero NetCDF); no deletion. Failure root `118492146` (harness.log only) and `118495850` (harness.log only) retained.
