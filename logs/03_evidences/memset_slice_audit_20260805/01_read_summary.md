# memset 手写循环 + 切片打包重组 静态审计（2026-08-05）

## 01 Read summary

- 任务：用户要求审计两条优化线：(1) memset→手写循环写 0（if ifort 未自动优化）；(2) 切片打包重组。只读静态审计 + 作业状态检查；不授权构建。
- 审计对象：immutable O33 导入树 `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`。
- **memset 线结论：不值得做。**
  - 全数组清零（`Asend=0.0_r8; Arecv=0.0_r8`）只出现在 `distribute.F` 行 2734/3072/5767，位于 **`mp_boundary`** 子程序内（`distribute.F:1194`）。
  - `mp_boundary` 的调用者 = `set_data.F` + `set_tides.F`（仅）——**输入读取/初始化阶段**，非每步热路径（16 个调用点全在 set_data/set_tides）。
  - 热路径前 5 热点（pre_step3d/step3d_t/step2d/biology/GLS）的 `=0.0_r8` 全是**条件分支内的 per-point 赋值**（`grad(i,j)=0.0_r8` 在 IF 内、`FC(i,0)/FC(i,N)` 边界点）——编译器不会将其向量化为 memset，手写循环也无从下手（不是全块清零）。
  - `mp_exchange.F` 无 `memset` 调用（grep 0 命中）。
  - 输入阶段总占比 ~1.6% 墙钟（Stage 87 profile），mp_boundary 只是其中一小部分 → 收益上限 <<0.5%。
  - 历史佐证：norecvzero（删清零）在 O33 上已实测负向（`118365261` +1.33%）。
- **切片打包重组线结论：已被系统性关闭，不重开。**
  - `mp_exchange.F`（7132 行）的 pack 循环（405-497 行区域）是沿 j 列的 1D 拷贝，每层仅 ghost 列/行——v28 已实测"NS 方向只打包 ghost 列（角点），计算量极小，重叠收益 <0.1%"。
  - v24b/v25/v26/v27/v28 五连败证明任何 MPI 调用模式改动（Isend/Sendrecv/持久请求/双缓冲）都会破坏 UCX progress 流水线（−50%~−100%）。
  - Stage 44 探针证明平台可异步推进但 ROMS 分支全量上限仅 0.37%。
- 附带产出：perf 诊断 `118617130` 完成（15755 samples，rank 0）：pre_step3d_tile 15.32%、uct_dc_mlx5_iface_progress 10.02%、step3d_t_tile 9.48%、__libm_pow_e7 6.73%、step2d_tile 6.35%——HOT_TEAMS 生效后热点仍以 3D 计算 + UCX 等待为主。
- 全量验证 `118616644` 运行中（20+ 分钟/预计 35-36，输出 8/16）；perf 作业 `118617130` 已完成（其 harness 在写 summary 前中断——`set -e` 下 `grep -q DONE` 通过但后续某步退出；数据完好，报告在 harness.log 内）。
- 输出生命周期：无新模型输出；perf run root 保留。

## 02 Profiling / mechanism

- memset 机制链：ifort 对整块 `A=0.0_r8` 编译为 memset 或 SIMD 循环。若编译器未优化，手写 `DO i=1,N; A(i)=0.0_r8; END DO` 可能更快——但仅在"热路径存在大块清零"时才有意义。
- 实测（只读代码审查）：O33 中唯一整块清零在 mp_boundary（输入路径）；热路径无整块清零。→ 机制前提不成立。
- 切片打包机制链：把 pack/unpack 的切片拷贝重组（如合并 ghost 列、预打包重叠）减少 DRAM 流量。但 v28 根因 2 已证明 mp_exchange2d 的 NS pack 只含 ghost 列（角点），3d/4d 是每 k 层标量级——打包计算量本身可忽略，重组无收益空间；根因 1（staging 基于旧基线把 Isend 退化为阻塞 Send）导致 -100%。
- perf 数据的额外价值：`uct_dc_mlx5_iface_progress` 10.02% 是 UCX 通信进展（busy-poll 等待计入 CPU），与 Stage 90 的"等待在 MPI 区间"结论一致；`__libm_pow_e7` 6.73% 与 Stage 96 关闭的 GLS pow 同一来源（其代数改写被 E071 精度否决，不重开）。
- 结论：两条线均无 ≥2% 机制；不构建。当前唯一有效路线 = KMP_HOT_TEAMS（+3.04% 已过 ABBA，全量验证进行中）。

## 03 Validity check

- 事实复核：
  - `Asend/Arecv=0.0_r8` 三处位置（2734/3072/5767）及所属子程序 mp_boundary（1194）直接读取 ✓
  - mp_boundary 16 个调用点全部位于 set_data.F/set_tides.F（grep -rln 输出确认，排除 Adjoint/Tangent/Representer 的 .svn 副本）✓
  - 热路径零填充为条件 per-point 赋值（step3d_t.F:438/499/727/751，pre_step3d.F:431/492/662/686 直接读取）✓
  - mp_exchange.F 无 memset；pack 循环结构与 v28 记录一致 ✓
  - perf 报告从 harness.log 直接读取（15755 samples，`Samples: 15K of event cycles:u`）✓
  - norecvzero 负向（118365261 +1.33%）为 OPTIMIZATION_LOG 记录 ✓
- 边界声明：
  - 静态审计未构建任何候选；"收益 <<0.5%"为结构推断（输入路径占比 ~1.6% 墙钟的上界缩放），非测量。
  - mp_boundary 虽非每步热路径，但 12960 步内的嵌套接触更新（nesting.F 的 mp_assemble 路径）不经过 mp_boundary——该路径的清零（`Ac(1,m)=Aspv` 等）是逐点 owner 写，不属于"整块 memset"范畴。
  - perf 为单 rank 采样（rank 0），热点占比反映 rank-0 视角，不构成全局 MPI 关键路径证据（Stage 77 边界）。
- 三份文件一致性：01 事实 ↔ 02 机制 ↔ 03 边界一致；有效。
- 建议：两条线关闭；等待全量验证 `118616644` 结果（若 26/26 通过，O33+HOT_TEAMS 成为新计分候选）；之后可选评估 biology fast=2 叠加（S10 编译侧，需重建+验证）。
- 输出生命周期：无新模型输出；perf/ABBA run root 保留。
