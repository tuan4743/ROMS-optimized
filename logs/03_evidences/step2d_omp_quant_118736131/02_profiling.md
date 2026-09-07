# step2d OpenMP 量化 — 性能档案（2026-08-07）

## 1. 数据

| Self % | 函数 | 归类 |
|---|---:|---|
| 13.19 | pre_step3d_tile | 计算 |
| 11.02 | uct_dc_mlx5_iface_progress | 通信轮询 |
| 10.41 | step3d_t_tile | 计算 |
| 8.90 | __libm_pow_e7 | 数学库 |
| 5.43 | t3dmix4_tile | 计算 |
| 4.95 | gls_corstep_tile | 计算 |
| 4.66 | biology_tile | 计算 |
| **4.50** | **step2d_tile** | **计算（本诊断目标）** |
| 3.41 | mp_exchange4d | 通信本体 |
| 2.30 | put_refine3d | 嵌套 |
| 2.18+2.15 | uct_mm + ucp_worker | 通信轮询 |

## 2. 与既往数据的交叉验证

- 2017 perf（118617130）：step2d_tile 6.35% → 冠军（2021）4.50%（2021 的 step2d 代码生成更好，与整体 −4.2% 一致）。
- PROFILE（冠军全量 118662236）：2D kernel 区间 CPU Grid01 4412.9（2.58%）+ Grid02 15378.6（8.99%）；2D halo 交换 1860.4 + 9034.7 → 2D 相纯计算 ≈ 5.2% 总 CPU，与 perf self 4.5% 同量级（rank-0 视角偏低）。
- 2D 相结构：每 3D 步 30 次快模积分 × 42 加权阶段，每阶段 6 处 mp_exchange2d 同步点 → 计算跨度短、同步频繁（Stage 93 实证中心块 straggler）。

## 3. 墙钟转化与门禁

- 单线程 timer 墙钟份额 = CPU × 1.3056（Stage 88 修正）→ 4.5% CPU ≈ 5.9% 墙钟窗口（含其中交换等待）。
- 纯计算部分（self 4.5%）2 线程加速 1.3-1.5x → 墙钟收益 1.2-2.3%，跨 2% 门禁下沿，不满足"保守 ≥2%"。
- Stage 90 同构实测（−0.45%）说明收益实际趋零。

## 4. 结论

step2d OpenMP 的预期墙钟收益 <2% 且机制上被同步 skew 吸收（两次独立证据链），不值得构建。
