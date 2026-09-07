# Stage 145 source manifest

## Frozen lineage

- source archive: `/public/home/fujiake/nan/sprint/backup_S32_src_20260808.tar.gz`
- archive SHA-256: `615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`
- frozen performance binary: `/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/oceanM.s32_ifort2021_ipo.bak`
- frozen binary SHA-256: `d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2`
- parent `step3d_t.F`: `450c98928488310a7b0312596a1411312fecf7439396667857ace71271e5b62e`
- frozen `Linux-ifort.mk`: `38824c70b2e15fefd1e4a9bc377a2757455ba5afb6e6f5fe2475d2ff24794b68`

## Candidate files

- `experiments/s32_stage145_g4_vadv_vdiff_fusion_20260811/candidate/ROMS/Nonlinear/step3d_t.F`
  - SHA-256: `7c22a5c3c1ba82fe9f2f9282856ea33038bb4ca42e386d4217d2dff8fd02f6d8`
- `experiments/s32_stage145_g4_vadv_vdiff_fusion_20260811/candidate/ROMS/Nonlinear/step3d_t_vdiff_fused.h`
  - SHA-256: `3e861906e03cccb89a24ab022fa7cb736cf973144ade9ad5596c2fee7773be8b`

## Build harness

- `build_aprime_b.sh`: `b29c1bb345a9828a675334a9db2491045e47193c8794ec9052bf62efc17d571d`
- `build_aprime_b.slurm`: `ecbe1e9d61b6ad72d54699cc2ba4d3bcbabeb85ab92ae594aad27a2a9c83101d`
- remote private root: `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_stage145_g4_vadv_vdiff_fusion_20260811`
- remote `bash -n`: PASS for both scripts
- local/remote hashes: identical for all four uploaded files

The build job has not been submitted.

