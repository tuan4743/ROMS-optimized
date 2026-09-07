# 04 — Baseline 复现结果 (MCC26)

> 2026-07-30 用 `profile_job.sh` 框架完整复现 3 天 baseline。

## 作业信息
| 项 | 值 |
|---|---|
| 作业 ID | 118203119 |
| 节点/进程/线程 | 4 节点 × 64 进程 × 2 线程 |
| 进程映射 | `spread_numa16_ccx_2t`（rankfile 绑核，每 rank 2 硬件线程） |
| tile 配置 | `NtileI==8 8 / NtileJ==8 8`（8×8=64 tile，两网格同形） |
| NTIMES | 2592 / 12960（完整 3 天） |
| 工具链 | intel2017（ifort 17.0.5 + HPCX MPI 2.7.4） |
| 输入 | `.mcc_opt/inputs/ocean_64_8x8.in` |
| 脚本 | `.mcc_opt/scripts/submit_baseline_v24a.sh` |
| 状态 | COMPLETED，正常 `DONE` |

## 耗时对比
| 来源 | real 耗时 |
|---|---|
| 群通知 baseline（4节点64核） | **01:50:06** |
| 旧资料（64核） | 01:38:21 |
| **本次 zya 复现** | **00:46:19** |

**提速 ≈ 2.38×**（110.1 min / 46.32 min）。  
注：群通知基线为优化前原始配置，zya 已含 v24a 全部有效优化（spread 映射 + 稀疏 distribute + z_weights 合并 + step3d_t/生态 OpenMP + 分层 Bcast），故复现值远低于群通知"原始 baseline"。本次复现确认 zya 当前 oceanM 与 v24a 配置一致、可正常跑完整 3 天且数值正常（粗 2592 / 细 12960 步，RESTART/HIS/AVG 输出齐全）。

## ROMS 内置 Profile（total = 341116.5 s，64 rank 累计）

### Grid 01（粗网格，占比小）
- 计算段 Total：67245.8（19.71%）
- 通信段 Total：25401.1（7.45%）

### Grid 02（细网格，主导，5 倍细化）
| 段 | 耗时(s) | 占比 |
|---|---|---|
| **3D predictor step** | 43477 | 12.75% |
| **Model 2D kernel** | 39372 | 11.54% |
| **GLS vertical mixing** | 37372 | 10.96% |
| **Corrector tracers** | 35883 | 10.52% |
| **msg 2D halo** | 27114 | 7.95% |
| **msg 4D halo** | 25947 | 7.61% |
| Biharmonic tracers S | 10653 | 3.12% |
| Biology source/sink | 10528 | 3.09% |
| msg 3D halo | 14271 | 4.18% |
| Corrector 3D momentum | 10116 | 2.97% |
| msg data reduction | 7395 | 2.17% |
| 计算段 Total | 216556 | 63.48% |
| 通信段 Total | 77425 | 22.70% |

### 瓶颈解读（基于本次 profile）
1. **计算占主导（63.5%）**：细网格 17 示踪量 × 34 层 × 12960 步，3D predictor / 2D kernel / GLS / corrector tracer 四项各 10%+。这部分受内存带宽与每步串行路径限制。
2. **通信占 22.7%**：4D halo（7.6%）+ 2D halo（7.9%）+ 3D halo（4.2%）为主。嵌套 contact 点的 point data gathering 在粗网格占 2.49%（细网格仅 0.5%，稀疏 owner-compute 已生效）。
3. **data reduction 仅 2.17%**：分层 Bcast + 稀疏 distribute 已将原 12%+ 的 Bcast 压到可忽略。
4. **Grid01 point data gathering 8492（2.49%）** 高于 Grid02（1706，0.5%）：粗网格 contact 区通信相对更重，但绝对值小。

## 关键结论
- 本次复现验证 zya 工作区**可独立产出比赛级结果**，baseline 牢固（46:19）。
- 后续优化应以本次 46:19 为对比基准，而非群通知 1:50:06。
- 优化发力点：细网格计算段（4 大热点）+ halo 通信（4D/2D）。负载均衡方向见 02 文档第 9 节。
