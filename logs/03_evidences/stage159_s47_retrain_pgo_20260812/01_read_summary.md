# Stage 159 —— 精确 S47 PGO 重训练：读取与初步总结

- 日期：2026-08-12。
- 现状：S47 冠军配方的 `-prof-use` 指向 `/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s46_pgo`；目录中只有 2026-08-10 生成的 `pgopti.dpi` 2,004,280 B。
- 本地与远端脚本检索均未找到“精确 S47 源码重新 `-prof-gen` 训练”的记录。
- 新机制：用精确 S47 归档构建 pgogen，运行半天调试步数 `432/2160` 采集 profile，再决定是否构建同源 prof-use 候选。
- 不改公式/源码/MPI/网格/输出设置；训练阶段只使用组委会明确允许的调试 NTIMES。

## 2026-08-12 恢复检查

- Stage 162 强制检索已完成，确认 exact-S47 PGO 是区别于 selective-FMA/generic SIMD 的 profile/layout 机制；只恢复训练采集，不提前授权性能 A/B。
- 私有盘只读检查尚余 119 GB；pgogen MD5 `b61899e7ef9b406876d41d95caadcb85`，rules SHA-256 `0ef5b45a...473`。
- 失败启动的原 `profile/` 已整体改名为 `profile_invalid_119062578_20260812/` 保留；新建空 `profile/`，无删除。
- 修正脚本 SHA-256 `579f16ef...1575`；训练 job `119065976` 已提交，当前 PENDING，原因是用户/QOS 资源和同类请求占用，不是程序失败。
