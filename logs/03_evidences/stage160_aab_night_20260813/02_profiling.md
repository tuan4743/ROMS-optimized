# Stage 160 夜间 AAB 迭代——性能刻画（2026-08-13 凌晨）

## 1. 尝试矩阵（5 次尝试 + 1 次 B 审查）

| # | 机制 | 类型 | 作业 | mean_A | mean_B | delta | 判定 |
|---|---|---|---|---|---|---|---|
| A1 | mpi_yield_when_idle=1 | 零构建 MCA | 119071517 | 103.480 | 100.754 | −2.63% | 无效* |
| A1rep | 同上（重复） | 零构建 | 119072082 | 102.221 | 101.195 | −1.00% | 无效（both_B=False） |
| A2 | gls_corstep source→precise | 构建 | 119073147 | 101.797 | 101.491 | −0.30% | 无效 |
| A3 | mpi_leave_pinned=1 | 零构建 MCA | 119073864 | 99.505 | 99.188 | −0.32% | 无效 |
| A4 | KMP_HOT_TEAMS_MAX_PARALLEL=1 | 零构建 env | 119074429 | 97.640 | 97.518 | −0.13% | 无效 |
| A5 | UCX_TLS=rc_x,shm,self | 零构建 env | 119075002 | 98.959 | 98.584 | −0.38% | 无效 |

*A1 是唯一出现方向性信号的：user CPU 33m→30m（−10%）但墙钟只降 1-2.6%，重复 ABBA 不满足 both_B_faster。

## 2. 机理统一归因

- A1 的 user CPU 大降 + 墙钟微降 = **同步受限结构铁律的第 N 次复现**（Stage 90/113、A2 的向量化加速同样被吸收）。
- A2 向量化实证生效（4396 向量指令）但 CPU 加速不达墙钟。
- A3/A4/A5 全部 ±0.4% 内 = 无作用。
- 结论：**任何"均匀加速计算/降低轮询 CPU/传输协议替换"都不改变墙钟**——墙钟由最慢 rank 的到达 skew 决定（P1 判决 ceiling 0.441% + 队友 s58 关闭 + 本夜间 5 连测）。

## 3. B 阶段产出

- 代码审查：pre_step3d（OMP+AVX2 已最优）、mp_exchange2d（两阶段阻塞三方验证最优）、mp_exchange4d（gather/scatter 结构固有）、gls（标量→向量化 A2 已测）、biology（分支密集，fast=2 已测）。
- 论文搜索：Springer"渤黄东海 ROMS 优化"（Vector/IB/Parallel I/O 提升 270%）→ Parallel I/O 评估关闭（平台 netcdf 4.4.1 串行 NC-4 Parallel:no + 池 1.47% CPU <2% + 短诊断不可测 + vali 兼容风险）；halo shared-memory 已由 uct_mm 覆盖。
- **B 产出 = 无 ≥2% 新候选。**

## 4. 夜间结论

- 5 连测全部无效，证据链完整（每项有 ABBA 数据 + 哈希门）。
- 夜间自主迭代的价值：把"运行时微调轴"彻底闭合（MCA/env/旗标/传输协议四大类均实测）。
- 剩余唯一有效路径：**等待队友 s62_nb2d/s63_allland 的 1day 结果**（s63 预期 3-8s，若过 vali 团队直接受益）或用户回来后的新授权。
