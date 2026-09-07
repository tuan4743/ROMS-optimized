# KMP_HOT_TEAMS A-B-B-A `118610383`：+3.04%，PROCEED_FULL_REVIEW_REQUIRED（2026-08-05）

## 01 Read summary

- 任务：Stage 97/99 提交的零代码零编译 A-B-B-A——同一 immutable O33 二进制（`5f1a137e...`），仅运行时差异 KMP_HOT_TEAMS=1 + KMP_HOT_TEAMS_MAX_PARALLEL=2。作业 `118610383`（j04r2n[12-15]，4n/64×2，144/720，HCOLL off），15:53 +0800 起跑，全部 5 个 run 完成，rc=0，`ROMS/TOMS: DONE`。
- 结果（summary.tsv 直接读取）：
  - W0 (warm-up, 丢弃): 225.744 s
  - A1/A2 (O33): 227.003 / 219.951 → mean_A = 223.477 s
  - B1/B2 (HOT_TEAMS): 218.219 / 215.150 → mean_B = 216.685 s
  - **gain = +3.0395%**，**both_B_faster = True**（max(B)=218.219 < min(A)=219.951）
  - trajectory_sha 5/5 全部 `fa498694109f9a578ca07133f55d8e58961dde55666ca5347707d86eb40e44b0` → **位级一致，零数值风险**
  - nc_count=0（144/720 诊断不产 NetCDF，符合预期）
  - **verdict = PROCEED_FULL_REVIEW_REQUIRED**（≥3% + both faster + 轨迹一致 三条件全满足）
- 对比基准：Stage 97 继承证据（nan sprint S10 = fast=2 编译 + HOT_TEAMS 运行时，全量 2086.3 s vs O33 2136.3 s ≈ 2.34%）——本次证明 **HOT_TEAMS 单组件即达 3.04%**，fast=2 编译不是收益来源（甚至可能是负贡献，需后续拆分验证）。
- 含义：零代码、零编译、位级不变的 3% 收益——这是 Stage 95 关闭"全部 ≥2% 路线"后重新打开的第一个有效候选，且规则完全合规（MPI/OpenMP 运行时配置允许变更；物理/算法/输出不变；轨迹位级一致则官方验证预期全过）。
- 输出生命周期：run root `/public/home/fujiake/fjk/mcc_runs/118610383_o33_hotteams_abba_sample` 保留；无删除。

## 02 Profiling / mechanism

- 机制：KMP_HOT_TEAMS 让 OpenMP 运行时对高频 fork/join 的热并行区复用线程组，免去每次并行区创建/销毁线程的开销。O33 有 5 个热点对象带 `-qopenmp`（biology/pre_step3d/step3d_t/t3dmix/gls_corstep），在 12960 步 × 2 网格内高频进入并行区。
- Profile 对比（G02 rank-CPU 秒，A2 vs B2 直接读取）：
  - **Model 2D kernel: 1796.6 → 1700.9（−5.3%）** ← 最大降幅；step2d 本身无 OMP 标记，但由 OpenMP 编译的调用链（或 2D halo 线程池）间接受益
  - **Biology: 708.4 → 669.4（−5.5%）** ← 直接受益（biology.o 带 -qopenmp）
  - **Tracers: 2017.5 → 1956.7（−3.0%）** ← 直接受益（step3d_t.o 带 -qopenmp）
  - GLS: 1675.3 → 1850.4（+10.4%）、Predictor: 1724.8 → 1853.4（+7.5%）— CPU 上升但墙钟下降；按 Stage 90 方法论，busy-poll 等待计入 cpu_time，CPU 上涨≠计算变慢；两区域的 MPI 等待被 HOT_TEAMS 释放的空闲线程更早进入 UCX busy-poll，记入其计时区间
  - 2D halo: 1724.8 → 1624.2（−5.8%）；3D halo 958.6→998.9、4D halo 1255.4→1402.9（等待重新分布，总量持平）
- 墙钟权威性：A-B-B-A 同节点组同二进制，仅环境变量差异；4/4 采样 B 更快（max(B)<min(A)），增益 3.04% 远超 3% 门禁。
- 与 S10 组合的关系：fast=2 编译（S10 的另一半）若叠加可能带来额外收益或为负——HOT_TEAMS 单独已达标，fast=2 需独立构建+官方验证，列为后续组合轴。
- 数值安全：轨迹 5/5 位级一致 → 官方 26/26 预期全过（与 O33 完全相同的浮点路径）。

## 03 Validity check

- 事实复核：
  - summary.tsv / decision.txt 直接读取（A1/A2/B1/B2 墙钟、rc、done、trajectory、nc）✓
  - harness.log 全部 HASH_OK（脚本 `c141991f...`、O33 二进制 `5f1a137e...`、input `05ceb746...`、rules `0ef5b45a...`、validator `97230e0b...`）✓
  - 轨迹 hash 5/5 与 Stage 63+ 全量/诊断全部一致（`fa498694...`）✓
  - A/B 为同一二进制（a_bin=b_bin），仅 KMP_HOT_TEAMS 环境变量差异 → 单因果变量 ✓
  - profile 数字从 model.log 直接读取 ✓
- 边界声明：
  - 这是 144/720 诊断结果，非计分运行；必须跑全量 2592/12960 + 官方 vali.py 26/26 才算数。
  - 墙钟绝对值（~216-227 s）高于此前诊断（~126 s）——节点组（j04 vs j01/j05）与平台状态差异；A/B 同组对比不受影响。
  - fast=2 编译轴未验证；本结果只证明 HOT_TEAMS 运行时单组件。
  - 与 S10 的 2.34% 无冲突：S10 是 fast=2+HOT_TEAMS 组合在 nan 构建/全量条件下的值；本结果为其组件拆分的运行时侧。
- 三份文件一致性：01 事实 ↔ 02 机制 ↔ 03 边界一致；有效。
- 建议下一步：全量 2592/12960（KMP_HOT_TEAMS=1/MAX_PARALLEL=2 运行时）+ 官方 26/26；通过后 O33+HOT_TEAMS 成为新计分候选；随后可选评估 fast=2 叠加。
- 输出生命周期：run root 保留；无删除。
