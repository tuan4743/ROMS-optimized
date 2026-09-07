# Pass 1 - Build result read and initial summary

- Date: 2026-07-29
- Job: `118169519`
- Path: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/.mcc_opt/bin/original_gcc731_noomp/oceanM`
- Change: compiler/toolchain only, Intel 2017 to GCC 7.3.1 with HPC-X 2.7.4; original model sources; no OpenMP.
- Result: Slurm `COMPLETED`, exit code `0:0`, build result `success`.
- New binary SHA-256: `8c4bc0ae48330f3041ab9f223315fd9aa5fc4f0ca926cb67d5d65f4b767de9cf`.
- Original passing Intel binary remains unchanged at SHA-256 `903360ee3b94db17a628ee9332fd72ddb97bd15cd7e492ae04cda4db22deaf5c`.
- Output deletion: not applicable; the preceding source-audit task generated no model output.

Initial conclusion: the original source compiles cleanly with the isolated GCC 7.3.1 stack. Runtime speed and numerical validity are not yet established.
