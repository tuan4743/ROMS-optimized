# Authorized cleanup - read summary

- Date: 2026-08-03 +0800.
- User explicitly authorized deletion of exactly two private targets after the read-only candidate scan.
- Deleted target 1: `/public/home/fujiake/fjk/mcc_runs/118414346_o33_clean_full_validate_64x2` (8.5 GiB). Its local three-pass analysis exists and the result is a slower clean-source validation run.
- Deleted target 2: `/public/home/fujiake/fjk/mcc_runs/agent_k3_20260731/EXP-0006_norecvzero_gcc731_4n64_full_8x8/output` (8.5 GiB). This is a user-authorized exception to the three-pass gate; only `output/` was removed, while `metadata/` and `validation/` remain.
- No other path was targeted. Approximate reclaimed storage: 17 GiB.
