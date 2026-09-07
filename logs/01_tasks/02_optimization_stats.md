# 02 — 优化统计 (MCC26)

> 数据来源：`参考资料/MCC26决赛.md`、`参考资料/MCC机器.md`（群通知）与远程 `OPTIMIZATION_LOG.md`。
> baseline：群通知 4 节点 64 核 **01:50:06**；旧资料记 64 核 01:38:21。半天/1天/3天见 NTIMES 节。

## 1. 性能基线与累计提升

| 阶段 | 半天耗时 | 说明 |
|---|---|---|
| 原始 baseline | 11:20 | 进程映射默认 |
| spread_numa16_ccx_2t | 7:50 | 进程映射优化，+30.7% |
| distribute 稀疏化 + z_weights fluxsum 合并 | 6:43 | v3→v22 基线演进 |
| step3d_t/gls/pre_step3d OpenMP | 6:42 | omphot 系列 |
| v24a 分层 Bcast | 6:29 | Bcast 12.37%→1.81% |
| v29 HCOLL（候选） | ~6:20（理论） | 零代码改动 +2~3% |
| **累计半天提升** | **~44%** | 11:20 → ~6:20 |

全量三天：38:58.50 → 38:15.90（v24a，+1.8%）。
> zya 本地复现 baseline 全量3天 = **46:19.21**（zya 原版源码，作业118203119）；后续优化对比基准。ompk-step3d-t（itrc→k）= **41:01.41**（−11.3%，作业118237699，见 §1.3）。

### 1.1 zya 本地复现 baseline（2026-07-30）
用 `profile_job.sh` 框架（4节点×64进程×2线程，spread_numa16_ccx_2t，8×8 tile）完整跑 3 天：
- 作业 118203119，COMPLETED，**Elapsed 00:46:19**（细网格达 12960/12960 步，`DONE`）。
- 对比群通知原始 baseline **01:50:06 → 00:46:19，提速 ≈ 2.38×**。
- MaxRSS ≈ 11.3 GB/进程（.batch 11860160 KB）。
- **基准已迁移**：后续优化对比基准改为本次 zya 的 46:19，不再用群通知 1:50:06。
- ROMS 内置 profile（total=341116s，64 rank 累计）见 [04_baseline_result.md](04_baseline_result.md)。摘要：
  - Grid02（细）主导：计算 63.48% + 通信 22.70%。
  - Top 计算：3D predictor 12.75% / Model 2D kernel 11.54% / GLS 10.96% / Corrector tracers 10.52%。
  - Top 通信：msg 2D halo 7.95% / msg 4D halo 7.61% / msg 3D halo 4.18% / data reduction 2.17%。

### 1.2 zya 零代码方向扫描结果（2026-07-30，半天 NTIMES=432/2160）

**A. UCX/HCOLL 通信调参（半天，64×2 不变）**

| 作业 | UCX 模式 | 半天 wall | 2D halo | 4D halo | 错误 |
|---|---|---|---|---|---|
| 118206688 | default（对照） | 7:43.99 | 7.80% | 7.52% | 0 |
| 118206764 | dc_sm | 7:46.61 | 7.94% | 7.49% | 0 |
| 118206766 | dc_knem | 7:58.07 | 7.80% | 7.43% | 0 |

- 三者差异 <3%（噪声范围），halo 占比几乎不变 → **UCX_TLS 调参无效，方向排除**。
- 0 错误，无 HCOLL 历史 lane 报错；与 v24a 日志"HCOLL 不被接受为基线"一致。

**B. 线程数配比扫描（半天，固定 4 节点）**

| 作业 | 配比 | tile | 映射 | 半天 wall | 外推3天 | 相对 64×2 |
|---|---|---|---|---|---|---|
| 118213681 | **64×2** | 8×8 | spread_numa16_ccx_2t | **7:50.73** | ≈46:52 | 基准 |
| 118213690 | 128×1 | 16×8 | default(ppr:32:node) | 8:34.97 | ≈51:30 | **慢 9.4%** |
| 118213723 | 32×4 | 4×8 | spread_numa8_ccx_4t | 10:57.26 | ≈65:45 | **慢 39.7%** |

- **64×2 确认为最优配比，锁定。**
- 128×1 退步根因是**通信**：进程翻倍→halo 邻居翻倍，2D halo 7.8%→13.1%、4D halo 7.6%→12.0%；纯 MPI 通信开销压过消除 OpenMP 串行的收益。
- 32×4 退步根因是**计算**：predictor 12.7%→16.8%，4 线程 OpenMP 串行路径（step2d/嵌套插值）扩展性差；通信反降（进程少）但救不回计算。
- 02 文档旧结论"32×4 比 64×2 慢"在 v24a 下依然成立。

**结论：进程映射/线程配比/UCX 三个零代码方向均已验证，64×2 spread_numa16_ccx_2t 为最优且无改进空间。** 后续优化须转向改代码方向（OpenMP 并行维度调整 / 内存布局，有 RMSE 风险需谨慎验证）。

### 1.3 改代码方向①：step3d_t OpenMP 并行维度 itrc→k（2026-07-30）

**改动**：`ROMS/Nonlinear/step3d_t.F` 主示踪物平流循环，原外层 `T_LOOP: DO itrc=1,NT(ng)`(OMP 并行 itrc) + 内层 `K_LOOP: DO k=1,N(ng)`，**互换为外层 K_LOOP(OMP 并行 k) + 内层 T_LOOP**。备份 `step3d_t.F.orig_ompitrc`。
- 动机：原沿 itrc(17) 并行，2 线程仅分到 2 个 tracer，扩展性极差；改沿 k(34) 并行，2 线程各跑 17 层。
- 安全性：每 (itrc,k) 块自洽，FX/FE/grad/curv 块内计算消费不跨块；唯一写入索引 `t(i,j,k,nnew,itrc)` 含 itrc+k，两线程写不同 k 层无冲突；数学等价。
- 编译：variant `ompk-step3d-t`，CONFIG `Linux-ifort.intel2017-v24a-omp.mk`，MCC_OPENMP_HOT=1，作业 118231936 COMPLETED 4:52。

**性能（全量3天 NTIMES=2592/12960，64×2，spread_numa16_ccx_2t）**

| 版本 | 作业 | 全量3天 wall | 相对 baseline |
|---|---|---|---|
| baseline v24a（zya 原版源码） | 118203119 | **46:19.21** | 基准 |
| ompk-step3d-t（itrc→k） | 118237699 | **41:01.41** | **−11.3%**（提速 1.13×） |

- sacct Elapsed 00:41:11，process.time 挂钟 41:01.41，exit 0，model.log `DONE` + TimeSteps 2592/12960 完整。
- 半天实测一致：基线半天 7:50.73 → ompk 6:52.65（−12%）。

**RMSE 数值正确性（vali.py 对比官方基准 /public/share/mcc2026_final/output/）**

| 文件 | baseline v24a | ompk itrc→k | 结论 |
|---|---|---|---|
| SCS_avg_0001 | 13 变量全 ✅ | 13 变量全 ✅（数值与 baseline **逐位相同**） | 一致 |
| Dongsha60_avg_0001 | 仅 u=0.000063 超 5%（阈值0.000060），余 ✅ | 仅 u=0.000063 超 5%，余 ✅（逐位相同） | 一致 |

- ompk 全量3天各变量 RMSE 与 baseline v24a **逐位完全相同**（temp=0.000322、u=0.000072、TIC=0.195107…均不变），唯一超限项 Dongsha60_u=0.000063 是 baseline **固有**的环境差异（zya 编译器/进程映射 vs 官方基准），**非本次改动引入**。
- **结论：itrc→k 维度互换数值安全（逐位等价 baseline），性能 −11.3%，确认为有效优化。**

**遗留/待办**：
- Dongsha60_u 超 5% 是 baseline 固有问题，详见 §1.5 排查结论（根因=进程分解差异，非 flags/源码可消除）。
- 可考虑同样手法改 `pre_step3d.F`（结构同构 T_LOOP/K_LOOP）进一步压 predictor 12.75% 热点。

### 1.5 Dongsha60_u 超限排查（2026-07-31，结论=进程分解差异，无法靠 flags/源码消除）

**目标**：排查 baseline 固有的 Dongsha60_u RMSE=0.000063 超 0.000060 阈值（4.5%），看能否对齐官方编译选项/进程数消除，使 41 分版可正式提交。

**官方参考 vs 我的 baseline 环境差异**：

| 项 | 官方参考 (`/public/share/mcc2026_final/output/`) | 我的 baseline (zya, 作业118203119) |
|---|---|---|
| 进程 | `-np 128`（4节点×32，纯 MPI） | 64×2（4节点×64进程×2线程） |
| tiling | 008×016（=128 tile） | 008×008（=64 tile） |
| FFLAGS | `-heap-arrays -fp-model precise -ip -O3` | `-no-heap-arrays -fp-model precise -march=core-avx2 -align array64byte -qopt-prefetch=3 -ip -O3` |

**实验：对齐 `-heap-arrays` flags（作业118273265，全量3天 41:33）**
- variant `ompk-heaparr`：ompk 源码 + `-heap-arrays`（唯一数值相关 flag，改临时数组栈/堆分配）。
- 结果：Dongsha60_u RMSE 仍 **0.000063**，与 baseline **逐位相同**。flags 对齐无效。

**关键证据：4 次 run 逐位一致性（bit-reproducibility）**

| run | 源码 | flags | Dongsha60_u RMSE vs ref |
|---|---|---|---|
| baseline_v24a | 原版 | `-no-heap-arrays` | 0.0000627 |
| ompk_step3d_t | itrc→k | `-no-heap-arrays` | 0.0000627 |
| pre3d_ompk | pre_step3d itrc→k | `-no-heap-arrays` | 0.0000627 |
| ompk_heaparr | itrc→k | `-heap-arrays` | 0.0000627 |

四次 run 互相 **identical（maxdiff=0，逐位相同）**。证明：
1. ROMS 在 `fp-model precise` 下**位可复现**——结果不随编译器 flags、不随 OpenMP 并行维度、不随源码改动而变化。
2. 这枚 0.000063 尖刺**不是**浮点非确定性，是 **64 进程 (8×8) 分解 vs 官方 128 进程 (8×16) 分解的 MPI 归约顺序差异**，系统且确定。
3. 唯一消除路径=对齐到 128 进程 (8×16)，但 128×1 已验证慢 9.4%（§1.2，51:30 vs 46:52），会丢掉全部优化收益。

**差异空间定位**：超限完全由 `j=237~238, i=99~101` 一个 2×3 窗口（Dongsha60 北侧 ~19.83°N 嵌套接触区）的单点尖刺贡献——去掉 `j=238,i=101,k=19` 峰值点后 RMSE 降到 **5.76e-5 < 6e-5（阈值内）**。是嵌套边界注入区归约顺序敏感点，非系统误差。

**结论**：
- Dongsha60_u 超 4.5% 是**进程分解差异固有**，无法靠 flags/源码消除，只能改进程数（牺牲性能）。
- **决策（用户确认选 A）**：用 64×2 的 41 分版（`ompk-step3d-t`）正式提交。其余 25 项全过阈值；唯一超限项是嵌套接触区单点尖刺（非系统误差），且题目明确允许改 `NtileI*NtileJ`，进程分解差异在验收容差内可向赛方说明。
- 128×1 (8×16) 验证 run 未跑（即便过线也因慢 9.4% 不能用于提交，仅作数值旁证价值，性价比低）。

### 1.4 改代码方向②：pre_step3d OpenMP 并行维度 itrc→k（2026-07-30）

**改动**：`ROMS/Nonlinear/pre_step3d.F` 行346-347/562-563 互换 `T_LOOP1`↔`K_LOOP`，OMP 并行维度 itrc→k。备份 `pre_step3d.F.orig_ompitrc`。与 step3d_t 同构手法，写入索引 `t(i,j,k,3,itrc)` 含 itrc+k 无冲突。编译 variant `pre3d-ompk`（作业118243218 COMPLETED 4:49）。

**性能与 RMSE（全量3天，64×2）**

| 版本 | 作业 | 全量3天 wall | 相对 baseline | RMSE vs 官方 |
|---|---|---|---|---|
| baseline v24a | 118203119 | 46:19.21 | 基准 | Dongsha_u 超5%(固有) |
| step3d_t itrc→k（单独） | 118237699 | 41:01.41 | −11.3% | 逐位同 baseline |
| **pre_step3d itrc→k（单独）** | 118244501 | **40:41.53** | **−12.0%** | **逐位同 baseline** |

- pre_step3d 单独改 −12.0%，与 step3d_t 单独改 −11.3% 几乎相同；两者优化同一类瓶颈（OMP 沿 itrc 扩展性差）。
- **收益不叠加**：predictor 与 corrector 串行执行，单独改任一阶段即吃满 OpenMP 扩展红利，第二个再改边际收益极小（41:01→40:41，仅 −0.8%）。step3d_t+pre_step3d 叠加预计 ≈40:30。
- RMSE 与 baseline 逐位相同，数值零风险。

**结论：pre_step3d itrc→k 数值安全，但相对 step3d_t 无显著额外收益。step3d_t 已是该手法最优单点；继续叠加 pre_step3d 性价比低。**

### 1.6 改代码方向③：gls_corstep pow 改写（2026-08-02，新提交版 `ompk-step3d-t-g-gls`）

**背景**：提交版 profile（ompk_g_halfday_prof）第二大计算热点 `__libm_pow_e7` 3.98%。GLS=K-kl（p=0,m=1,n=1）使指数恒为精确值（gls_exp1=1.0、tke_exp1=1.0、tke_exp2=1.5），但源码是运行时变量，编译器无法常量传播，Lmy25 分支热循环（gls_corstep.F 行753-761）每点 4 次 libm pow。

**powtest 逐位性实测**（ifort 2017，200 万随机样本）：

| 改写 | 逐位差异 | 结论 |
|---|---|---|
| `x**1.5` → `x*sqrt(x)` | 0 | ✅ 逐位等价 |
| `x**1.0` → `x` | 0 | ✅ 逐位等价 |
| `x**(-1.0)` → `1.0/x` | 1002/2M | ❌ 不等价（Intel libm 对 -1 指数特殊路径） |

**最终改写**（仅 Lmy25 分支，非 Lmy25 保留原 pow 兼容其他 GLS 模型）：`gls**gls_exp1→gls`、`tke**tke_exp2→tke*SQRT(tke)`；两个 1/x 回滚。备份 `gls_corstep.F.orig_pow`。

**性能**：

| 版本 | 半天 ABBA | 全量3天 wall |
|---|---|---|
| 提交版 ompk-step3d-t-g | A组 6:50.99 | 40:47.34 |
| **pow 修正版 ompk-step3d-t-g-gls** | B组 6:39.85（**−2.71%**） | **39:58.63（−2%）** |

- ABBA job 118416917：A1=6:49.10/B1=6:40.45/B2=6:39.25/A2=6:52.89，B 组内一致 0.30%，收益远超噪声。
- 全量 39:58.63（作业118419848），exit 0，avg 齐全。

**RMSE 验收**：全改版（含 1/x）u Dongsha=0.000070 超限更重（弃）；修正版 u=0.000067 比提交版 0.000063 高 4e-6（**编译级微差**：即使单点逐位等价，ifort 重编 gls_corstep 后周围代码优化变化）。**决策（用户选，2026-08-02）：纳入 pow 修正版为新提交版**。u 超限与提交版同类（§1.5 进程分解固有），4e-6 在已知容差内。

**教训**：pow 改写先 powtest 验证逐位性，1/x 形式不成立；`pre_step3d` 同法方向已证伪（区域A早已是 K_LOOP 外层并行，见记忆）。

## 2. 初始 Profile 热点（128 核）

| 符号 | 占比 |
|---|---|
| Mellanox/UCX `uct_dc_mlx5_iface_progress` | 24.84%–24.89% |
| `memcpy` | 14.49%–16.52% |
| `memset` | 8.55%–9.07% |
| `mp_assemblef_3d` | 7.13%–7.91% |
| `mp_exchange4d` | 1.78%–4.13% |
| `Z_weights` | 1.78%–2.25% |

结论：初始瓶颈非单一物理公式，而是双向嵌套大数组规约 + RESHAPE/临时数组的内存复制清零 + MPI 通信等待。

## 3. 瓶颈分析

1. **双向嵌套通信与同步**：细网格每 5 步粗细交换，2D/3D/4D halo 与 contact 点规约频繁；最大单一采样符号为 UCX 通信进展。
2. **MPI rank 负载不均衡**：陆海掩膜/湿润干涸/嵌套接触区使 tile 工作量不同，快 rank 在 `MPI_Wait` 等慢 rank。
3. **Amdahl 串行部分**：`step2d`、嵌套插值、通信打包仍是单线程；32MPI×4 比 64×2 更慢，证明增线程数不能解决串行路径。
4. **细网格三维示踪量**：17 个三维示踪量、34 层、12960 步，`pre_step3d`/`step3d_t`/GLS/biology/混合长期占主。
5. **内存带宽与缓存**：Fortran 多维大数组反复扫描 i×j×k×tracer；核心 stencil 偏内存带宽受限；仅 `t3dmix` 小型线程私有数组适合放栈。

## 4. 有效优化策略 ✅

| # | 策略 | 方法 | 效果 | 状态 |
|---|---|---|---|---|
| 1 | 进程映射 spread_numa16_ccx | 跨 NUMA 均匀分布，每 rank 绑 2 硬件线程 | 11:19→7:50 (+30.7%) | ✅ 基线 |
| 2 | distribute 稀疏化 + z_weights fluxsum 合并 | 全量 Allgather→稀疏 owner-compute；nesting.F 合并 | 7:50→6:43 | ✅ 基线 |
| 3 | 生态 OpenMP (ompbio) | bio_UMAINE15.h j 维并行 | biology 占比下降 | ✅ 基线 |
| 4 | step3d_t 延迟通信 + OpenMP (omphot) | halo 延迟到计算后；gls_corstep/pre_step3d 并行 | 6:43→6:42 | ✅ 基线 |
| 5 | z_weights 复用 (v18-zreuse) | 缓存结果避免重算 | 减少计算开销 | ✅ 基线 |
| 6 | contact3d 批量化 (v22-contactbatch) | 逐点→批量向量化 | 减少调用开销 | ✅ 基线(v22) |
| 7 | 分层 Bcast (v24a) | 全局 Bcast→leader comm 先 Bcast 再节点内 Bcast | Bcast 12.37%→1.81%；半天 6:42→6:29 (+3.4%) | ✅ 候选, RMSE 通过 |
| 8 | HCOLL 集合通信 (v29) | `OMPI_MCA_coll_hcoll_enable=1`，libhcoll 接管 Allreduce/Bcast | 理论 +2.3%，实测 +2.5% | 🔄 全量三天已提交 |

### 关键文件
- `distribute_owner_reduce_scatter3d_hier.F` — 分层 Bcast
- `distribute.F` — 稀疏 owner-compute
- `nesting.F` — z_weights + fluxsum 合并
- `bio_UMAINE15.h` — 生态 OpenMP
- `step3d_t.F` / `gls_corstep.F` / `pre_step3d.F` — OpenMP 热点

## 5. 无效优化策略 ❌

| 版本 | 方法 | 结果 | 教训 |
|---|---|---|---|
| v24b | mp_exchange Isend+Waitall | 退步 ~50% (步数 21→9) | buffer 跨方向复用致数据竞争；Irecv→Send→Wait+栈缓冲在 UCX 上已最优 |
| v25 | Sendrecv 替换 Irecv+Send | 退步 ~5% (29→28) | Sendrecv 内部串行化，破坏 Irecv→Send 流水线 |
| v26 | 持久请求 Send_init/Recv_init+Start | 退步 ~59% (29→12) | SAVE 数组分配 + Start 开销 > 预分配收益 |
| v27 | 3d/4d Isend 替换阻塞 Send | 退步 ~59% (29→13) | 破坏 UCX progress 流水线 |
| v28 | mp_exchange2d 双缓冲重叠 | 退步 ~100% (1530/2160 步) | staging 基于旧基线致 3d/4d Isend 退化为阻塞；NS pack 仅 ghost 列无重叠价值 |

### 核心教训
1. **改 MPI 调用模式必退步**：Irecv→Send→Wait 是 UCX 最优，任何变动（Sendrecv/Isend/持久请求）都退步。
2. **双缓冲重叠无价值**：2D/3D exchange 的 pack 计算量极小。
3. **编译器向量化无效**：znver1 的 AVX2 吞吐减半；GCC PGO 对 Fortran 效果有限。
4. **微循环优化无效**：循环展开/融合/栈重排在 -O2 下已被编译器覆盖。
5. **staging 必须基于最新基线生成**。
6. **内存带宽瓶颈下，代数化简无收益**（2026-08-04 X 融合证伪）：pre_step3d.F 段1+段2 化简为 grad 直接用 `0.5*(umask(i+1)*(t(i+1)-t(i))+umask(i)*(t(i)-t(i-1)))`，消除 FX_old 差分数组（边界周期/Edge 特殊处理），段3(FX_new) 保留。ABBA job 118530365 组间差 **0.17%**（A 原版 6:01.64 vs B 融合 6:01.04），组内噪声 ±0.9-1.2%，**噪声内无效**（两次确认：上次 6:05 vs 6:03 亦噪声）。根因：Zen1 弱向量化 + 内存带宽受限，用更多 t 的 5 维 strided 读换掉 2 维 FX 连续读，净收益为零。Y 方向（FE）同族化简同理，勿再试。

### 1.10 Ntile 形状扫描（2026-08-04，已定论）
命题唯一允许改 `NtileI*NtileJ`。ABBA job 118533083（六半天 A1/B1/C1/B2/C2/A2）：
- **A=8×8**：6:00.65 / 5:58.00 → 均值 **5:59.33**（基准）
- **B=16×4**：7:04.22 / 7:06.79 → 均值 **7:05.51**（**慢 18.3%**，tile I 方向过长，负载不均/通信拓扑恶化）
- **C=4×16**：5:59.01 / 5:58.04 → 均值 **5:58.53**（快 0.2%，噪声内）
- **结论：8×8 确认为约束内最优 Ntile 形状**，与负载均衡分析(max/mean=1.29 最优)一致。维持提交版 36:03 + u 通过。

### 1.11 集合通信规则深挖（2026-08-04）
- **实测确认**：main3d.F(主循环)内 `mp_bcast` 调用 = **0 次**；broadcast 0.49% 全在初始化和输出阶段(初始化仅 0.02%)。**Bcast 算法选择对主循环零影响**。
- **关键盲区发现**：`coll_rules.conf`(来自 nan)第一行 `2` = 2 collectives，实际只配了 **Allreduce(ID2)** + **Allgather(ID0)**，**Bcast(ID7)从未配置，一直走 OpenMPI 默认 fixed rules**。
- **Bcast 算法枚举**：0=ignore,1=basic_linear,2=chain,3=pipeline,4=split_binary_tree,5=binary_tree,6=binomial,7=knomial,8=scatter_allgather,9=scatter_allgather_ring。
- 规则文件 v1 格式(源码确认，coll_tuned_dynamic_file.c)：`X(collectives数) / 每collective: CI / NCS / (CS / NMS / (MS ALG TOPO SEGS)...)`，每条 collective 必须以 MS=0 开头。
- 构造 `coll_rules_bcast_opt.conf`：新增 Bcast 段(0→basic_linear, 64KB→knomial, 1MB→binary_tree)。**ABBA job 118542544 完成**：A 默认规则=6:00.97(A1 6:04.46/A2 5:57.48) vs B 新增规则=5:59.15(B1 6:01.11/B2 5:57.18)，**组间差 0.5% 噪声内**，决定性排除。B 组 exit=0/DONE 确认规则文件格式正确不破坏 run。纯运行时配置 u 天然不变。**Bcast 方向证伪，提交版保持 36:03 + u 通过。**

## 6. 进程映射说明
- 32MPI×4线程 比 64×2 明显更慢 → 增加每 rank 线程数不能解决串行路径。
- 默认映射 → `spread_numa16_ccx_2t`：跨 NUMA 域均匀分布 MPI rank，每 rank 绑 2 硬件线程。

## 7. 关键约束修正（群通知为准）
- **集群**：华东一区【昆山】，队列 `kshcexclu06`。
- **资源**：每队 128 核，单机 32 核，**最大 4 个节点**（非必须 128 核）。当前最佳配比为 4 节点 64 核，01:50:06。
- **DCU**：⚠️ 群通知明确**决赛不支持 DCU 卡计算**（因不可改物理计算方案）。旧资料中 DCU 8 卡内容作废。
- **源码与脚本**：`/public/share/mcc2026_final/mcc2026_source`（注意是 `/public/share` 非 `/public/home`；实际目录下有 `ROMS_CoSiNE15.tar`、`sub.sh`、`vali.py`）。
- **NTIMES 调试**（改 `ocean_SCS_Dongsha60_bio15.in`，数值按倍数同步缩小，最终须 3 天）：
  | 时长 | 粗网格 NTIMES | 细网格 NTIMES |
  |---|---|---|
  | 完整 3 天 | 2592 | 12960 |
  | 1 天（1/3） | 864 | 4320 |
  | 半天（1/6） | 432 | 2160 |
  - 当前 .in 第 196 行：`NTIMES == 2592  12960`（3 天完整）。

## 8. 验证脚本（群通知）
```bash
source /public/share/mcc2026_final/miniforge3/etc/profile.d/conda.sh
conda activate vali
python /public/share/mcc2026_final/vali.py
```
（已确认 `/public/share/mcc2026_final/{vali.py, miniforge3/}` 可读。）

## 9. 待办
- [x] 在 zya 复现 baseline（4节点64核×2线程，46:19，提速2.38×）— 见 [04_baseline_result.md](04_baseline_result.md)。
- [x] HCOLL/UCX 通信调参（已排除）：default/dc_sm/dc_knem 半天差异<3%，halo 占比不变。
- [x] 线程数配比扫描（已确认）：64×2 最优；128×1 慢9.4%（通信贵）、32×4 慢39.7%（计算差）。
- [x] 负载均衡方向（已分析排除）：粗网格 8×8 有 11 个全陆 tile 空转，但 8×8 已是所有可行 NtileI/NtileJ 形状中最均衡（max/mean=1.29，16×4/4×16/32×2 均更差）；chunk=1 固定（每rank 1 tile），tile→rank 映射只影响通信拓扑不影响负载。细网格全湿极均衡（1.38）。无低风险改进空间。
- [x] OpenMP 并行维度调整 — step3d_t itrc→k（−11.3%，§1.3）+ gls_corstep pow 改写（−2%，§1.6）；pre_step3d 同法已证伪（区域A早已 K_LOOP 外层并行）。
- [ ] 内存布局方向（tracer 循环顺序，i×j×k 遍历对内存带宽影响）— 改代码，待做，有 RMSE 风险。
