# Stage 138 P0 contact-density map — Pass 1: read and summary

- Date: 2026-08-10.
- Task: zero-machine-time contact-point density mapping (P0 of the Stage-138 critical-path plan).
- Scope: read-only analysis of the immutable shared contact NetCDF, joined with the Stage-93 skew-probe P3 per-rank data (O33, 144/720, 8x8/8x8 — same tile layout as S32). No source, grid, input, remote job, or model output changed.

## Inputs and integrity

| item | path | SHA-256 / identity |
|---|---|---|
| Contact file | `/public/home/fujiake/Inputfiles/Dongsha60/SCS_Dongsha60_contact.nc` | `bff3d2acfa1bb091d58599d4590dcdf803ce3f677a9f97fcc18de0ccf3889a69` |
| Skew probe P3 | `analysis/o33_skew_probe_118537688/raw/skewprobe_P3.tsv` | 4032 lines, 64 ranks x 2 grids x 63 pools |
| Grid sizes | contact file `Lm/Mm` | coarse 359x326 (grid 1), fine 235x245 (grid 2), refine factor 5 |

Contact structure (17026 datum points, 2 contacts):
- region 1: donor=grid1 (SCS coarse) -> receiver=grid2 (Dongsha60 fine), 10213 points, refinement, 2390 on physical boundary. Supply direction.
- region 2: donor=grid2 -> receiver=grid1, 6813 points, refinement, 0 on boundary. Feedback direction.

## Results

### 1. Coarse grid (G1): 100% of contact traffic on 6 center-block tiles

- Supply source (region-1 donor cells `Idg/Jdg`): all 10213 points in tiles (Jtile 4-5) x (Itile 3-5) = ranks 35, 36, 37, 43, 44, 45.
- Feedback receive (region-2 receiver points): 100% (6813) in the same 6 tiles; rank 36 alone receives 4279 pts (63%).
- Unique donor cells: same 6 tiles (199 cells at (4,4), 120 at (5,4), etc.).

### 2. Fine grid (G2): 100% of supply points on the boundary ring, zero interior

- Region-1 receiver points: rows/cols 0 and 7 only (0 points in interior tiles 1-6 x 1-6). West column (Itile=0) is the heaviest edge: 3643 pts vs east 2874 pts, north 3544, south 2805.
- Region-2 donor (feedback source): spread over all tiles uniformly (~102-120 pts/tile).

### 3. Correlation with Stage-93/127 late ranks (64 ranks, P3 warm)

| contact metric | vs G2 4D-halo wait | vs G2 2D-halo wait | vs G1 point-gathering wait | vs G2 step2d CPU |
|---|---:|---:|---:|---:|
| recv_g2 (fine supply interp) | **Pearson -0.8935 / Spearman -0.8286** | -0.2638 / -0.3293 | +0.8209 / +0.7869 | **+0.8239 / +0.7628** |
| recv_g1 (coarse feedback) | +0.1805 / +0.1886 | -0.3870 / -0.0486 | -0.3085 / -0.0888 | -0.2118 / -0.0423 |
| don_g1 (coarse supply source) | +0.2347 / +0.2197 | -0.4979 / -0.2670 | -0.3903 / -0.1483 | -0.2764 / -0.1164 |
| don_g2 (fine feedback source) | +0.2228 / +0.2859 | +0.2578 / +0.3676 | -0.2110 / -0.2199 | -0.2194 / -0.1869 |

Top-8 overlap of contact-heavy ranks with straggler (late) ranks:

| contact-heavy top8 | vs late8 h4(G2) | vs late8 h2(G2) | vs late8 pg(G1) | vs top8 step2d |
|---|---:|---:|---:|---:|
| recv_g2 | **6/8** [0,8,24,32,48,56] | 0/8 | 0/8 | 4/8 [0,7,8,56] |
| recv_g1 | 1/8 | 4/8 [36,37,44,45] | 4/8 [36,37,44,45] | 3/8 |
| don_g1 | 1/8 | **6/8** [35,36,37,43,44,45] | **5/8** [36,37,43,44,45] | 2/8 |
| don_g2 | 1/8 | 0/8 | 1/8 | 1/8 |

Stage-127 replication on the same P3 data: Pearson(step2d_G2, h4_wait_G2) = -0.8834 (reported -0.883); step2d vs h2 = +0.0738 (reported +0.074). Pipeline validated.

### 4. Mechanism placement

`main3d.F` calls `nesting(ng, n2dPS)` (line 614) and `nesting(ng, n2dCS)` immediately after each `step2d` tile pass inside the 2D fast loop (593/640), and `get_composite`->`get_contact2d` performs the receiver-side interpolation/assembly there (`nesting.F:1983-2236`). The contact supply work therefore executes inside the same Model-2D-kernel window that carries the Stage-127 step2d straggler signature, consistent with recv_g2 vs step2d +0.82.

## Pass-1 decision

P0 is **POSITIVE**: contact density/estimated traffic consistently identifies the late ranks on both grids — fine supply ring ranks are the 4D-halo late ranks (Pearson -0.89, the same signature as step2d); the coarse center-block ranks that own 100% of contact traffic are the G2 2D-halo and G1 point-gathering late ranks (top-8 overlap 5-6/8). The contact route is not excluded by density/ownership. Proceed to Pass 2 for magnitude interpretation, and prepare the P1 phase-timestamp probe design (one diagnostic allocation) per the conditional plan.
