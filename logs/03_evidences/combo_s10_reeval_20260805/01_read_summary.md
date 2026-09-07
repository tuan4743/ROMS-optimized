# 组合优化候选评估：S10（biology fast=2 编译 + KMP_HOT_TEAMS 运行时）（2026-08-05）

## 01 Read summary

- 任务：用户要求"将之前 >0.5% 的优化组合在一起，看量变能否引起质变"。本文件盘点队友矩阵中的 >0.5% 组合项并评估其可移植性；只读，不授权构建。
- 关键事实 1（本工作流视角）：O33 已包含本工作流全部已验证正收益优化（映射、稀疏通信、分层 Bcast、itrc→k、5 对象 OpenMP、HCOLL 等）——"本工作流内 >0.5% 未吸收项"为零。
- 关键事实 2（队友矩阵）：zya 的 nopow 系列（相对其自身基线 −1.9~−3.0%，其基线比 O33 慢 ~15%，不可跨工作流比较；无官方 26/26）；zya pipeline 循环融合（ABBA 实测 B 慢，6:04/6:07 vs 6:00/6:01 → 负向，关闭）；nan N2 fno-alias（采样 2m7.2s 持平）；zya axavx2/avx2（本工作流 Stage-48 已否 AVX2）。
- **关键事实 3（本次发现）**：nan 的 sprint 线 S10 = S8 二进制（md5 `176e7125...`）+ 运行时 `KMP_HOT_TEAMS=1` / `KMP_HOT_TEAMS_MAX_PARALLEL=2` / `OMP_STACKSIZE=1G`。官方 3 天全量 `118576545`：**34m46.339s（2086.3 s）**，官方 vali 26/26 通过（`vali_sprint_3day_118576545.log`，Dongsha u=0.000052 与 O33 相同）。对比：本工作流 O33 `118405320` = 2136.310 s → **S10 快 2.34%**。
- S10 相对 O33 的有效差异（经逐项核对）：
  1. **编译**：`biology.o` 增加 `-fp-model fast=2 -no-prec-div -fp-speculation=fast`（sprint mk 注释 [S1]）；`gls_corstep.o` 从 O33 的 `-fp-model precise` 改为 `-fp-model source`。其余编译标志相同（-no-heap-arrays -fp-model precise 全局 + 5 对象 -qopenmp）。
  2. **运行时**：KMP_HOT_TEAMS=1 + KMP_HOT_TEAMS_MAX_PARALLEL=2（纯运行时，零代码）。
  3. **源码**：sprint 树与 O33 仅 `nesting.F` 不同（O84 整层 assemble）；nan 报告 `N1_S10_O33pack.md` 裁决"O33 垂向打包无收益 → 回退"（N1 vs S10 = 34:45.2 vs 34:46.3，持平）→ nesting 差异无效。
- 结论：**S10 是唯一有官方 26/26 + 全量 3 天证据的 >2% 组合候选**，且其两个有效组件（fast=2 编译、KMP_HOT_TEAMS 运行时）均为"可移植到 O33"的独立因果轴。KMP_HOT_TEAMS 是纯运行时参数，**零代码、零编译、可叠加到 O33 二进制**；biology fast=2 需要重新编译 biology.o 并过官方验证。
- 队列快照（只读）：nan `118607684` E084-ucxrndv（j05r2n[10-13]）、`118607703` E085-ucxsch（j04r2n[08-11]）在跑；zya pipeline 已结束（失败）。磁盘 72G 可用。
- 输出生命周期：只读评估，无模型输出；删除不适用。

## 02 Profiling / mechanism

- 组合假说：两个 >0.5% 组件叠加 → 总收益 >2%（量变→质变）。
- 组件 1（KMP_HOT_TEAMS，运行时，零风险）：
  - 机制：Intel OpenMP 运行时对频繁 fork/join 的热并行区复用线程组，减少每次并行区的创建/销毁开销。O33 有 5 个热点对象（biology/pre_step3d/step3d_t/t3dmix/gls_corstep）在 12960 步内高频进入并行区，潜在收益与步数正相关。
  - 证据强度：S10 全量已验证（26/26），但 S10 中 KMP_HOT_TEAMS 与 fast=2 未分离——单组件收益未知（0.5%~2.34% 之间）。
  - 数值风险：KMP_HOT_TEAMS 只改线程调度/复用，不改每个并行区内的迭代划分（OMP_NUM_THREADS=2 不变、STATIC schedule 不变）→ 预期位级一致（轨迹 hash `fa498694...` 可验证）。
- 组件 2（biology fast=2 编译）：
  - 机制：`-fp-model fast=2` 允许 fast-transcendentals + 向量化 libm，biology 有 30+ 处 exp/log/sqrt 调用（sprint mk 注释）。O33 的 biology.o 是 `-fp-model precise`，编译器用标量精确 libm。
  - 证据强度：包含在 S10 已验证的 2.34% 内；单个组件收益未知。
  - 数值风险：**有**（fast=2 改变浮点语义）；nan 官方 26/26 过了（u=0.000052 与 O33 同打印值），但本工作流未独立验证；移植后必须独立跑官方 vali。
  - 注意：Stage-48 队友 O48 biology exp CSE 被否（1.554% 局部 ≈ 0.12% 全局）；fast=2 是不同机制（编译器变换而非源码 CSE），未被该证据覆盖。
- 组合顺序建议：先测组件 1（KMP_HOT_TEAMS，零代码零编译，一天内可出 A-B-B-A 结果）；若 ≥2% 且位级一致 → 已可构成独立收益；再叠加组件 2（fast=2 重新编译，需官方验证）。
- 保守估计：S10 总 2.34% 为组合上界；单组件若各 ~1%，叠加也可达 2% 量级——正是用户要求的"量变组合"。

## 03 Validity check

- 事实复核：
  - S10 全量 34m46.339s：`TIMING_sprint_3day_118576545.txt` 直接读取 ✓
  - 官方验证：`vali_sprint_3day_118576545.log` 尾部 26/26 全过、Dongsha u=0.000052 ✓（读的是官方 `/public/share/mcc2026_final/vali.py` 复制版，未改阈值）
  - S10 定义：`report_his/N1_S10_O33pack.md` 写明"S10: oceanM.S8_gls_source.bak + KMP_HOT_TEAMS=1/MAX_PARALLEL=2/OMP_STACKSIZE=1G"✓；`sub_n1_3day.sh` 环境变量一致 ✓
  - 源码差异：sprint 树 vs O33 导入树 diff 仅 nesting.F + 新增 metrics.F（未编译进主链或无关）✓
  - 编译差异：sprint Linux-ifort.mk 的 biology/gls_corstep 私有 FFLAGS 直接读取 ✓
  - zya/pipeline/nopow 结果均从 run_metadata/process.time 直接读取 ✓
- 边界声明：
  - **S10 2086.3 s 是队友测量（继承证据）**，与本工作流 O33 2136.310 s 的对比跨工作流、跨构建、跨日期——2.34% 不能直接采信为 O33 上的收益，必须独立 A-B-B-A。
  - S10 未拆分 fast=2 与 KMP_HOT_TEAMS 的各自贡献。
  - O33 的 biology.o 使用 `-fp-model precise`（无 fast=2）；若移植 fast=2 属于浮点顺序变化，需完整官方验证（规则允许但需证据）。
- 三份文件一致性：01 事实 ↔ 02 机制 ↔ 03 边界一致；有效。
- 建议下一步（未授权）：单变量 A-B-B-A——A=O33 二进制+现运行时，B=同一 O33 二进制+KMP_HOT_TEAMS=1/MAX_PARALLEL=2/OMP_STACKSIZE=1G（零编译）。轨迹 hash 必须一致；both_B_faster + ≥3% 才推进；之后再评估 fast=2 编译。
- 输出生命周期：无模型输出；删除不适用。
