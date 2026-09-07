# perf `118617130` 完整展开（rank-0，cycles:u，15755 samples，2026-08-06）

> 数据源：`/public/home/fujiake/fjk/mcc_runs/118617130_o33_hotteams_perf_diag/perf.data`
> 采样：`perf record -F 99 -e cycles:u -g`，仅 rank 0，HOT_TEAMS 运行时，4n/64×2，144/720（约 4 分钟窗口，15755 样本 ≈ 159 s 有效采样）
> 环境：Hygon C86 7185（2.482 GHz），CentOS 7.5，perf 3.10；`exclude_kernel=1`（用户态 only）

## 1. Self 完整 Top-25（按函数自身开销）

| # | Self % | Symbol | 归属 |
|---|---|---|---|
| 1 | **15.32** | `pre_step3d_mod_mp_pre_step3d_tile_` | 计算（3D predictor） |
| 2 | **10.02** | `uct_dc_mlx5_iface_progress` (libuct_ib) | 通信（IB DC 传输轮询） |
| 3 | **9.48** | `step3d_t_mod_mp_step3d_t_tile_` | 计算（tracer corrector） |
| 4 | **6.73** | `__libm_pow_e7` | 数学库（精确 pow） |
| 5 | **6.35** | `step2d_mod_mp_step2d_tile_` | 计算（2D kernel） |
| 6 | **4.84** | `t3dmix_mod_mp_t3dmix4_tile_` | 计算（biharmonic 混合） |
| 7 | **4.59** | `biology_mod_mp_biology_tile_` | 计算（生态源汇） |
| 8 | **4.27** | `gls_corstep_mod_mp_gls_corstep_tile_` | 计算（GLS 湍闭合） |
| 9 | **3.40** | `mp_exchange_mod_mp_mp_exchange4d_` | 通信（4D halo 交换本体） |
| 10 | **2.31** | `nesting_mod_mp_put_refine3d_` | 嵌套（粗→细插值） |
| 11 | **1.91** | `ucp_worker_progress` (libucp) | 通信（UCX worker 轮询） |
| 12 | **1.88** | `uct_mm_iface_progress` (libuct) | 通信（共享内存传输轮询） |
| 13 | **1.81** | `set_avg_mod_mp_set_avg_tile_` | 输出（均值累积） |
| 14 | **1.75** | `rhs3d_mod_mp_rhs3d_tile_` | 计算（3D RHS） |
| 15 | **1.70** | `nesting_mod_mp_get_contact3d_` | 嵌套（接触点收集） |
| 16 | **1.63** | `opal_progress` (libopen-pal) | 通信（OpenMPI 进度） |
| 17 | **1.62** | `step3d_uv_mod_mp_step3d_uv_tile_` | 计算（uv corrector） |
| 18 | **1.32** | `__libm_exp_e7` | 数学库（精确 exp） |
| 19 | **1.20** | `ompi_coll_libnbc_progress` | 通信（非阻塞集合进度） |
| 20 | **1.14** | `nesting_mod_mp_collect_bry_fluxes_` | 嵌套（边界通量） |
| 21 | **1.07** | `rho_eos_mod_mp_rho_eos_` | 计算（状态方程） |
| 22 | **1.06** | `opal_timer_linux_get_cycles_sys_timer` | 通信（计时器，等待内） |
| 23 | **0.90** | `prsgrd_mod_mp_prsgrd_` | 计算（压力梯度） |
| 24 | **0.72** | `biology_mod_mp_co2_flux_` | 计算（CO2 通量） |
| 25 | **0.71** | `mp_exchange_mod_mp_mp_exchange3d_` | 通信（3D halo 交换本体） |

小项：wetdry 0.67 / __powr8i4 0.64 / gls_prestep 0.63 / __memcpy_sse2 0.63 / hmixing 0.52 / __memset 0.49 / fine2coarse3d 0.47 / omega 0.45 / mp_exchange2d 0.34 / mca_pml_ucx_progress 0.30 / sin 0.10 / cos 0.09。

## 2. 分类汇总（Self）

| 类别 | 合计 | 明细 |
|---|---:|---|
| **计算 tile**（5 个 OpenMP 对象 + rhs3d/uv/rho_eos/prsgrd/wetdry） | **≈50%** | pre_step3d 15.32 + step3d_t 9.48 + step2d 6.35 + t3dmix4 4.84 + biology 4.59 + gls_corstep 4.27 + rhs3d 1.75 + step3d_uv 1.62 + rho_eos 1.07 + prsgrd 0.90 + co2_flux 0.72 + gls_prestep 0.63 + wetdry 0.67 + hmixing 0.52 + omega 0.45 等 |
| **通信 progress 轮询** | **≈16.9–18%** | uct_dc_mlx5 10.02 + ucp_worker 1.91 + uct_mm 1.88 + opal_progress 1.63 + libnbc 1.20 + pml_ucx 0.30 + opal_timer 1.06 |
| **通信交换本体** | **≈4.6%** | mp_exchange4d 3.40 + 3d 0.71 + 2d 0.34 + memcpy 0.63 |
| **数学库** | **≈9.1%** | pow_e7 6.73 + powr8i4 0.64 + pow 0.23 + exp_e7 1.32 + exp 0.14 + sin 0.10 + cos 0.09 |
| **nesting 系** | **≈6.6%** | put_refine3d 2.31 + get_contact3d 1.70 + collect_bry_fluxes 1.14 + bry_fluxes 0.68 + fine2coarse3d 0.47 + set_ngfld 0.26 + fine2coarse2d/put_refine2d 0.05 |
| **输出/杂项** | **≈3%** | set_avg 1.81 + netcdf 0.37 + nf_fread3d 0.24 + memset 0.49 等 |

## 3. Children 视角（含调用链归属）

| Children % | Self % | Symbol | 解读 |
|---|---:|---:|---|
| 46.12 | 0.00 | libiomp5 `0x84317` / `0xb5d43` | OpenMP 并行区公共入口（fork 调度）。**46% 的采样位于 OpenMP 区域内**；其下直接挂 pre_step3d 15.3 / step3d_t 8.9 / pow 6.4 / biology 5.8 / t3dmix4 4.8 / gls_corstep 3.6 / exp 0.9 |
| 23.04 | 0.00 | libiomp5 `0x5c82e` | OpenMP 循环分发/静态调度路径，same 下游分布 |
| 23.16 | 0.00 | [kernel] `0x10000080` | 采样中断 RIP 落在内核区间（NMI/中断上下文，非用户计算；`exclude_kernel=1` 下按 IP 符号化的边界假象） |
| 16.63 | 15.32 | pre_step3d_tile | **几乎纯 self（children-self 仅 +1.3%）→ 单层深计算，无大调用树** |
| 10.14 | 9.48 | step3d_t_tile | 同上，纯计算 |
| 10.02 | 10.02 | uct_dc_mlx5_progress | **纯 self → 轮询自耗，无子函数**（典型 busy-poll 等待循环） |
| 7.70 | 6.35 | step2d_tile | +wetdry 0.87 子调用 |
| 6.73 | 6.73 | __libm_pow_e7 | 纯 self，来源=OpenMP 区内的 gls_corstep/biology 调用点 |
| 4.33 | 2.31 | nesting put_refine3d | **children 接近 self 两倍 → 其内部调 mp_exchange4d（1.84%）→ 4D halo 的主要驱动者是 nesting** |
| 3.41 | 3.40 | mp_exchange4d | 调用者：put_refine3d 1.83 / step3d_t 0.59 / pre_step3d 0.50 |
| 3.71 | 0.00 | [kernel] `0x1` / opal 链 | opal_progress 1.19 / libnbc 0.92 / opal_timer 0.79 的公共等待路径 |
| 1.96 | 0.03 | main3d | 主循环，含 rho_eos 1.11 |

**关键调用链事实**：
1. `mp_exchange4d` 的三名调用者 = put_refine3d（nesting）1.83% > step3d_t 0.59% > pre_step3d 0.50% → **4D halo 交换过半来自 nesting 粗细网格插值，而非 tracer 时间推进**。
2. `__libm_pow_e7` 6.73% 全部通过 OpenMP 调度入口（0x5c82e 3.25% + 0x10000080 3.13%）→ pow 在 5 个 OpenMP 对象的并行区内执行（GLS 634–652 + biology 调用点），无串行 pow。
3. `pre_step3d_tile` children≈self → 编译器已把该 tile 内调用内联干净，perf 无法看到 tile 内部的子函数分布（需 `perf annotate` 到指令级才能定位 pre_step3d 内具体行）。

## 4. 与 PROFILE / VTune 交叉验证

| 来源 | predictor | corrector | 2D kernel | GLS | biology | 通信 |
|---|---|---|---|---|---|---|
| PROFILE G02（118616644 cpu%） | 13.66 | 10.70 | 10.46 | 9.94 | 5.64 | 15.0 |
| perf self（rank0 cycles） | 15.32 (pre_step3d) | 9.48 (step3d_t) | 6.35 (step2d) | 4.27+0.63 (corstep+prestep) | 4.59+0.72 | progress 16.9 + 交换 4.6 |
| VTune（Stage 72，j05 节点） | 382.8 s | 250.1 s | 169.4 s | 116.7 s | 120.6 s | mp_exchange 134.4 |

- 排序一致：predictor 第一、corrector 第二、2D 第三；GLS/bio 同级。
- **perf 独有贡献**：把"通信 15%（PROFILE 只计交换）"拆成"交换 4.6% + 轮询 16.9%"——轮询是 PROFILE 看不见的跨区间 CPU 记账（busy-poll）。
- VTune 的 pow 182.4 s（≈6.5–7% 节点 CPU）与 perf 6.73% 互相印证。

## 5. 方法学边界（perf 此数据能/不能说明什么）

能说明：
- rank-0 上用户态周期的真实分布与排序；pow/progress 两大跨区间头寸首次被量化。
- mp_exchange4d 的调用者归属（nesting 驱动 4D halo）——通信结构事实。
- OpenMP 区域覆盖 46% 采样（5 对象高频并行区）。

不能说明：
- 其他 63 个 rank 的分布（rank-0 可能偏斜；样本仅 15755）。
- 内核态/系统调用时间（exclude_kernel=1）。
- cache/带宽/IPC（Hygon C86 上 cache-references=0，Stage 76 已证事件不可用）。
- 墙钟归因：cycles 是 CPU 记账，busy-poll 等待的墙钟已包含在同步时间内，perf 无法区分"等待"与"计算"对墙钟的贡献（Stage 90 方法论）。
- tile 内指令级归属（需 perf annotate + debuginfo，二进制无 -g，不可用）。

## 6. 对候选方向的映射（与历史判决对照）

| 热点 | 已测/已判 | perf 是否给出新信息 |
|---|---|---|
| pow 7.6% | GLS 恒等式/E071/mathreuse/nopow 全关 | 确认 pow 全部在 OpenMP 区内、纯 self（CSE 后仍剩）——不改变关闭判决 |
| progress 16.9% | O34/重叠/v24b-v28/HCOLL 全关 | 首次量化轮询占比；仍无墙钟级替换机制 |
| pre_step3d 15.3% | pmnreuse −1.80%/invariant 审 | children≈self 说明 tile 内联干净，无子函数级新攻击面 |
| 4D halo 3.4% | fine2coarse guard −（Stage 60b，GLS+22%） | **新增信息：4D halo 54% 由 nesting put_refine3d 驱动**——指向 nesting 插值通信量，但 fine2coarse 实测已否决该家族 |
| nesting 系 6.6% 合计 | O10 owner-packed 已吸收、F2C 关闭 | put_refine3d 2.31% 是当前未单独攻击的项（含 1.84% 4D halo），但其机制 = 插值+通信混合，天花板 ≈2.3%×插值占比，低于门禁预期 |
