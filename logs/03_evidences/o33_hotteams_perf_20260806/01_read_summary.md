# perf 诊断 `118617130` 数据盘点（2026-08-06）

## 01 Read summary

- 任务：Stage 101 提交的 perf 诊断（HOT_TEAMS 运行时、4n/64×2、144/720、rank-0 only、15755 个 `cycles:u` 样本）。与 Stage 102 结论对齐后，本文件盘点 perf 报告与全部历史阶段的 PROFILE 原始数据，供 02 做瓶颈迁移分析。
- perf 作业 `118617130`：HARNESS_START 17:04:26，RUN_RC=0，`ROMS/TOMS: DONE`；`perf.data` 1.56MB 保留。harness 在 `perf report` 后因 `set -e` 中断（Stage 102 已记），但报告已完整落盘（本次从 perf.data 重新提取）。
- **perf top-12 self（rank-0 用户态 cycles）**：
  | rank | symbol | self % |
  |---|---|---|
  | 1 | pre_step3d_tile | 15.32 |
  | 2 | uct_dc_mlx5_iface_progress (libuct) | 10.02 |
  | 3 | step3d_t_tile | 9.48 |
  | 4 | __libm_pow_e7 | 6.73 |
  | 5 | step2d_tile | 6.35 |
  | 6 | t3dmix4_tile | 4.84 |
  | 7 | biology_tile | 4.59 |
  | 8 | gls_corstep_tile | 4.27 |
  | 9 | mp_exchange4d | 3.40 |
  | 10 | nesting put_refine3d | 2.31 |
  | 11 | ucp_worker_progress (libucp) | 1.91 |
  | 12 | uct_mm_iface_progress (libuct) | 1.88 |
  - 次席：set_avg 1.81 / rhs3d 1.75 / nesting get_contact3d 1.70 / opal_progress 1.63 / step3d_uv 1.62 / __libm_exp_e7 1.32 / ompi_coll_libnbc_progress 1.20 / nesting collect_bry_fluxes 1.14。
  - 通信 progress 合计（uct_dc 10.02 + ucp_worker 1.91 + uct_mm 1.88 + opal 1.63 + libnbc 1.20 + pml_ucx 0.30）≈ **16.94%**。
  - 数学库 pow 系（__libm_pow_e7 6.73 + __powr8i4 0.64 + pow 0.23）≈ **7.6%**。
- 阶段样本（全部 4n/64×2、8x8/8x8；占比为 G02 占进程总 cpu_time）：
  - S0 GCC 基线 `117981144`：real=10383.89 s；G02 2D 3.54% / bio 1.43% / GLS 3.62% / pred 4.38% / tracers 14.72%；MP 2D+3D+4D = 7.38%。
  - O33 父本 `118405320`：real=2136.310 s；G02 2D 10.65% / bio 5.61% / GLS 9.96% / pred 13.66% / tracers 11.00%；MP 2D+3D+4D = 15.32%。
  - O33+HOT_TEAMS 全量 `118616644`：real=2109.183 s；G02 2D 10.46% / bio 5.64% / GLS 9.94% / pred 13.66% / tracers 10.70%；MP 2D+3D+4D = 14.98%。
  - O33+HOT_TEAMS 采样 `118610383`（144/720）：ABBA +3.04%，A1/B1 结构见 02。
  - global -O2 采样 `118657958`（144/720，A=O33+HOTTEAMS，B=O33_o2+HOTTEAMS）：ABBA −1.92% STOP_BRANCH，轨迹 SAME；B1 G02 GLS 1191.3 (+22.4%) / 2D 1019.5 / bio 554.8 / pred 1362.0 / tracers 1064.8。
- 输出生命周期：perf run root + 各阶段 run root 全部保留；无删除。
