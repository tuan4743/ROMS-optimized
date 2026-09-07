# 第一次分析：Stage 146 首次 lineage

- 作业 `118934731`，COMPLETED `00:08:54`，节点 `j04r2n[04-07]`。
- 配置：4 节点、64 MPI×2 OpenMP、8×8/8×8、144/720；所有腿 rc=0、DONE=yes、0 NetCDF。
- W0/A1/AP1/AP2/A2：`106.011 / 103.848 / 103.169 / 104.179 / 109.827 s`。
- 五条腿轨迹 SHA 全为 `fa498694...e44b0`，数值轨迹一致。
- 脚本判定：A mean `106.838s`，A′ mean `103.674s`，delta `-2.9610%`，超过 ±2% 门禁，`lineage_pass=False`；按设计没有运行 B。
- 远端输出 `/public/home/fujiake/fjk/mcc_runs/118934731_s146_g1_gate`，1.7 MiB，保留。

初步结论：这是 lineage 未决，不是候选失败。A2 比 A1 慢 5.76%，而两条 A′只相差 0.98%；单个尾部 A2 主导了均值偏差。

