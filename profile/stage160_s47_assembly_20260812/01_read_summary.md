# Stage 160 第一次分析：S47 汇编读取与初步总结

- 日期：2026-08-12 EDT。
- 精确父本：`/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/oceanM.s47_SELQUANT_best_20260810.bak`，MD5 `1fc3be38a746ba1f5f5885eaf98e3bee`。
- 静态反汇编保存在 `raw/*.asm`；动态采样作业 `119063099` 的报告保存在 `raw/job119063099/`。
- 运行配置：4 节点、64 MPI × 2 OpenMP、`144 720`，real `105.362 s`，模型正常 `DONE`。这是 profiling 诊断，不是计分性能结果。
- 八个代表 rank 的 `cpu-clock:u` 无丢样。平均热点：PRE 14.175%、step3d_t 10.205%、scalar pow 7.353%、UCX mlx5 progress 9.542%、4D exchange 5.291%、biology 5.849%、t3dmix4 5.238%、GLS 本体 5.047%、step2d 4.380%。
- 初步判断：PRE、step3d_t、t3dmix4 的动态顶部指令已经是 256-bit YMM；主要矛盾不是“完全没向量化”。GLS 仍有 scalar `vdivsd` 与 `pow`，biology 有较强标量/寻址热点，但这两族已有精度或 wall-critical-path 负证据。

状态：`PROFILE_VALID / NO_PERFORMANCE_CLAIM`。
