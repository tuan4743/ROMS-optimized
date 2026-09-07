# 01_read_summary — Stage 132 Stage-129 lineage correction

- Date: 2026-08-09. Scope: zero-machine-time read-only provenance/profile/team-result audit; documentation and harness-rule correction only.
- No remote source, input, job, model output, or teammate file was changed. No output was deleted.
- Champion job `118755216` (`sprint_O84`) WorkDir: `/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b`.
- Champion backup and frozen private parent are byte-identical, SHA-256 `d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2`, size 6,783,248 bytes.
- Current `s22b/oceanM` is not that champion: it equals `oceanM.s32_SUBMIT_20260808.bak`, SHA-256 `907e6ecb1e14d413c1246883b66b141894cef26bda47e99c468d1c9c65988b88`, size 6,783,200 bytes.
- Canonical S32 source archive: `/public/home/fujiake/nan/sprint/backup_S32_src_20260808.tar.gz`, SHA-256 `615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`, size 23,818,870 bytes.
- The archive's `Linux-ifort.mk`, `globaldefs.h`, and `nesting.F` hashes match the current s22b files: `38824c70...`, `87e62231...`, `9d8434c7...`.

## Initial conclusion

Stage-129 set_avg and NOFILL timings are real completed-run observations, but their causal attribution is invalid: A used the champion binary while B was rebuilt from a different tree/flag stack. Both branches remain stopped for independent below-gate reasons, not because the knobs were measured at -7.84%/-8.12%.

Pass 1: **VALID**.
