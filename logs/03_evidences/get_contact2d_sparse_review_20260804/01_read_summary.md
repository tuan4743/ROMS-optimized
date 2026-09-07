# get_contact2d sparse owner-map review (2026-08-04)

## 01 Read summary

### Scope of this pass

Read-only remote review of the immutable O33 tree on SSH alias `MCC`, looking for an optimization
direction that is still open after the Stage-85 closure. No source, build, job, input or output was
created or modified; no teammate path was touched.

### Exact artifacts read

- Source tree: `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`
- `oceanM` SHA-256 `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9` (matches the recorded immutable parent)
- `ROMS/Nonlinear/nesting.F` SHA-256 `9d8434c7c7291309d4dd281b4c8531dff7ee988bfc038590301484516b53795c`
- `ROMS/Utility/distribute.F` SHA-256 `e1de89f3a01974084a91b09bb6064b7e4ff0d67be8276aee7e8d10ef0dcb743a`
- `ROMS/Utility/set_contact.F` SHA-256 `7ea74f68d797e1d1f89aa645d88ea59243b47020f977933a5302053e7ec14de1`
- Scored profile: `/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2/logs/model.log`
  (full `2592/12960`, four nodes, 64 MPI x2 OpenMP, 8x8/8x8, shell `real=2136.310 s`, official 26/26 PASS)
- Local read-only scan scripts: `experiments/remote_review_20260804/`

### Principal finding

O33 already contains an `[OPTIMIZATION O10]` sparse owner-map path that replaces full-communicator
assembly with donor-to-receiver point-to-point exchange, but it is implemented **only in
`get_contact3d`** (`nesting.F` 4884-5274, sparse block 5053-5271). The 2-D siblings still use the
original full-array collective:

- `get_contact2d` (`nesting.F` 4725-4880) ends with `CALL mp_assemble (dg, model, Npts, Aspv, Ac)` at line 4876.
- `get_persisted2d` (`nesting.F` 5277-5475) ends with the same call at line 5470.

`mp_assemble` for a 2-D array resolves to `mp_assemblef_2d` (`distribute.F` 1672-1790), whose body is a
single `MPI_Allreduce(MPI_IN_PLACE, A, Npts, MP_FLOAT, MPI_SUM, OCN_COMM_WORLD)` over the whole
contact array. The `[OPTIMIZATION O2]` marker there only removed the `RESHAPE`/`Asend` temporaries; the
full-communicator reduction itself is unchanged.

Call-site counts in `nesting.F`: `get_contact2d` 13, `get_contact3d` 8, `get_persisted2d` 2.

### Why the 2-D path is the hot one

`get_contact2d` is reached from the 2-D fast-mode nesting sections `n2dPS` (`main3d.F` 614) and `n2dCS`
(`main3d.F` 661), which sit inside the barotropic loop. The scored input uses `NDTFAST=30` and the run
log reports 42 weighted fast stages per 3-D step, so each 3-D step issues on the order of hundreds of
64-rank global reductions through this routine.

The other historical consumer of the same timer, `z_weights`, is **not** active per step: `set_contact.F`
198 sets `get_Vweights=.FALSE.` under the `[O20]` marker and only raises it for
`Lcomposite .and. .not.Lcoincident` grids. The scored case is refinement nesting, so the per-step
`nesting(ng, iNLM, nzwgt)` call in `main3d.F` 715 is skipped and its nine `mp_assemble` calls do not
contribute.

### Initial conclusion

`get_contact2d`/`get_persisted2d` sparsification is a legal, quantified and previously unexplored
direction. It is the same mechanism already validated once on the 3-D path inside this very source
tree, it is expected to be bitwise equivalent (see pass 2), and it does not overlap any route closed in
Stages 46-85 nor any variant currently being tried by the teammate tree.

Static review only: no runtime gain is claimed by this pass. Promotion still requires a candidate build,
one matched `144/720` A-B-B-A with both B samples faster and >=3% mean gain, then full `2592/12960` with
official 26/26.

### Coordination note recorded during this pass

Queue job `118524098` (`o33nopowbio_halfday.sh`, `WorkDir=/public/home/fujiake/zya`, four nodes,
started 2026-08-04T10:39:53) belongs to the teammate tree and was observed read-only and left
untouched. Its lineage (`build_ompk_o33nopow_bio.sh`, "nan O33 no-pow + bio all_land early-return +
heap-O2") overlaps the Stage-86 GLS pow identity direction. The candidate proposed here deliberately
does not touch `gls_corstep.F` or `bio_UMAINE15.h` and therefore does not collide with it.

### Output lifecycle

This pass produced no model output; deletion is not applicable. All previously retained results remain
retained.
