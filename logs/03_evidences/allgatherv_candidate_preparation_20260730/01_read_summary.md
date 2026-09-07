# 第一次分析：Allgatherv 候选源码读取与初步总结

- 日期：2026-07-30（平台时间）
- 阶段：S1 源码准备；尚未形成编译或运行结果
- 原始源码：`analysis/code_audit_plan_20260730/source_evidence/passing_distribute.F`
- 原始 SHA-256：`f03d0175a421510bcb237351dd8c9cef04e1cf95f1713680921423f111342977`
- 本地候选：`experiments/allgatherv_20260730/ROMS/Utility/distribute.F`
- 远端隔离源码：`/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/ROMS/Utility/distribute.F`
- 候选 SHA-256：`d573dcec715b2531c7f15a86a1a30a43c7baa7ff2affd24e01bf3eb94e0561df`
- 构建脚本：`/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/build_allgatherv_gcc731.slurm`
- 构建任务：`118204040`，本分析写入时因 `QOSMaxCpuPerUserLimit` 排队

## 修改范围

只修改 `mp_aggregate2d` 和 `mp_aggregate3d`：

1. 为每个 rank 计算真实 `recvcounts`；
2. 按 rank 前缀和生成 `displs`；
3. 将按最大 tile 长度补齐的 `MPI_Allgather` 改为精确计数 `MPI_Allgatherv`；
4. 解包起点由 `rank*Npts` 改为 `displs(rank)`；
5. 删除 aggregate 接收缓冲区的全量 `Arecv=0.0_r8`，保留 `Asend` 初始化。

未修改物理或生态计算、网格、积分时间、时间步长、输出设置、初边界/强迫/生态文件、变量数、双向嵌套方向及任何浮点公式。打包顺序、rank 顺序、解包顺序和同一点覆盖顺序均保留。

## 初步结论

候选是独立私有源码副本，不覆盖已验证基线。源码差异为 1 个文件、30 行新增、20 行删除。当前只能确认修改范围与意图；构建、运行时间和精度均待验证，不能声称加速有效。
