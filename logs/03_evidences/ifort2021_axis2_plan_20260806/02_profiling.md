# ifort2021 轴 2 计划 — 性能档案（2026-08-06/07）

## 1. ifort2021 冠军 perf 热点（`118663698`，rank-0，cycles:u，15755 样本）

| Self % | Symbol | 归类 |
|---|---|---:|
| 13.27 | pre_step3d_tile | 计算（3D predictor） |
| 10.55 | uct_dc_mlx5_iface_progress | 通信（IB DC 轮询等待） |
| 10.37 | step3d_t_tile | 计算（tracer corrector） |
| 9.20 | __libm_pow_e7 | 数学库（精确 pow） |
| 5.40 | t3dmix4_tile | 计算（biharmonic 混合） |

辅助：exp_e7 1.52 / powr8i4 0.78 / step2d 与 biology/gls_corstep 并列次级。

## 2. pow 调用点静态归因（objdump -dr，2026-08-07 本阶段新证据）

| 对象 | pow 重定位数 | 说明 |
|---|---:|---|
| gls_corstep.o | **40** | K-kl 湍闭合 634–652（gls_p=0.0/m=1.0/n=1.0 → 指数 1.0/1.0/1.5） |
| biology.o | **47** | bio_UMAINE15.h CoSiNE 15 变量源汇、光衰减、硝化/再矿化等 |
| pre_step3d / step3d_t / t3dmix / step2d / gls_prestep / rho_eos / hmixing | 0 | 无 pow |

- 二进制内 `__libm_pow_e7` 为静态链入（libimf），perf 显示 shared object = oceanM 本体。
- 全部 pow 调用发生在 OpenMP 并行区内（children 树经 libiomp5 0x84317/0xb5d43 调度入口，无串行路径）。

## 3. 数学库总账（rank-0 cycles，含 busy-poll 记账）

pow 9.20 + exp 1.52 + powr8i4 0.78 ≈ **11.5%**；2017 基线同为 ≈9.1%（6.73+1.32+0.64+0.23+0.19）。
ifort2021 下 pow 份额上升（6.7→9.2%）但墙钟下降 4.2% —— 2021 代码生成收益落在未符号化区，pow 是 2021 下可定点攻击的最大库函数头寸。

## 4. 候选 C 可行性（HPC-X 2.11 运行态）

- 冠军二进制 soname：libmpi.so.40 / libmpi_mpifh.so.40 / libucp / libuct（hpcx 2.7.4 链入）。
- 实测登录节点 `module swap mpi/hpcx/2.7.4/intel-2017.5.239 mpi/hpcx/2.11.0/intel-2017.5.239` 后
  ldd 全部解析成功（指向 `/opt/hpc/software/mpi/hpcx/v2.11.0/intel-2017.5.239/lib/`），无 not found。
- 组件（coll/mca）从运行模块加载，不烘焙进二进制 → 运行态替换合法且可逆。
- 靶点：uct progress 10.55%（2.7.4 的 UCX/IB DC 轮询路径，2.11 有更新实现）。

## 5. 候选 B1/B2 可行性（fimf 开关）

- 2017 侧 `-fimf-use-svml` 不支持（仅 warning）；2021 oneAPI 完整支持 SVML/fimf 族 → 新空间。
- 87 个 pow 调用点只分布在 2 个对象 → 逐对象加 `-fimf-precision=low` 或 `-fimf-use-svml` 即可全覆盖。
- 已知风险：2017 上 biology 编译级浮点变化 → GLS 区间 CPU +21.6% 的"吸收"现象（Stage 104/108）。
  2021 下 GLS 区间已名义 +18%（含 poll 记账），吸收是否复现未知 → 以墙钟 ABBA 为准绳。
- 精度风险：vali 阈值裕量 Dongsha u 0.000052 vs 0.000060（15%）；gcc731 教训（0.000061 超限）说明
  阈值敏感 → 每个浮点候选必须全量官方 26/26。

## 6. 数据来源与边界

- perf.data：`/public/home/fujiake/fjk/mcc_runs/118663698_o33_ifort2021_perf_diag/perf.data`（rank-0 单视角，144/720 诊断）。
- objdump：`/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_ifort2021_20260805/ROMS_CoSiNE15/Build/*.o`（冠军构建树，与提交时逐字节同源）。
- 边界：cycles 是 CPU 记账非墙钟；rank-0 可能偏斜；Hygon 无 cache 事件（Stage 76）。
