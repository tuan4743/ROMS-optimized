# step2d OpenMP 量化 — 读摘要（2026-08-07）

## 问题

Step 89 遗留的最后候选：step2d OpenMP（~60 循环 7 段，投影 1.4-4.4%，跨门禁）。用户决定：先 perf 量化再决定。

## 诊断

- 作业 `118736131`（fjk_STEP2D_PERF，4n/64×2，144/720，rank-0 perf -F 99 cycles:u -g，冠军二进制 7cd46627）。
- 模型 RUN_RC=0 DONE；harness exit-13 为已知化妆品故障（报告生成后置步骤），perf.data 完整（1.5MB），手动 perf report 产出。

## 结果（rank-0 self）

- **step2d_tile self = 4.50%**（纯计算 cycles；其内部 6 处 mp_exchange2d 的等待在 uct/ucp/opal 轮询中记账，不在 self 内）
- MPI progress 轮询合计 ≈ **18.6%**（uct_dc_mlx5 11.02 + uct_mm 2.18 + ucp 2.15 + opal 0.94 + libnbc 0.83 + pml 0.78 + timer 0.70）
- 更大计算热点：pre_step3d 13.19 / step3d_t 10.41 / pow 8.90 / t3dmix 5.43 / gls 4.95 / biology 4.66

## 判决

**step2d OpenMP 不构建，关闭。** 依据：
1. 计算仅 4.5% CPU → 2 线程 1.3-1.5x → 墙钟上限 1.2-2.3%（悲观到乐观边界，且假定临界路径）。
2. Stage 90 实测：四对象 1.7-1.9x 提速 → 墙钟 −0.45%（计算加速被同步 skew 吸收）。
3. Stage 93 skew probe：G2 2D 相中心块 straggler（wet/dry 负载不均）— 2D 相同步受限，OpenMP 无法跨 rank 平衡。
4. Stage 108 P0-2：step2d 三循环融合（缓存侧优化）全量 −1.74% — 2D 相数据移动优化已被证伪。
