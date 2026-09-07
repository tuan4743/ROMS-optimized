# Stage 151C — 第三次有效性复核

- 复核 ghost cells：统计只用 NetCDF interior `[1:Mm+1,1:Lm+1]`，与 contact 文件 Lm/Mm 一致。
- 复核掩膜语义：只讨论永久 `rmask`，动态 wet/dry 不进入候选。
- 复核 ceiling：2.12% 已假设所有粗网格 GLS/biology 陆地成本可免费删除，属于不可能达到的乐观值；任何安全 stencil halo、已有 rmask 分支或 span overhead 均使其低于门槛。
- 复核数值风险：跳过 land 还会改变 land scratch/halo 的确定值，必须逐 kernel 证明；现有 ceiling 不支持承担该工程风险。
- 本阶段无模型运行、无精度结果。最终判定 `STATIC_VALID / ABSOLUTE_OPTIMISTIC_ONLY_2.12 / REJECT_BEFORE_BUILD`。
