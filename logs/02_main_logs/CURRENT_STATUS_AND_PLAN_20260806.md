# MCC26 ROMS-CoSiNE：恢复后状态入口（2026-08-06）

> Resume snapshot 2026-08-06. Read this first, then Skill `progress.md` / `plan.md`, then `OPTIMIZATION_LOG.md` (Stage 108–109).
> Stage 108（P0 组合包）与 Stage 109（编译器切换）均已完成并入库：两线均 STOP_BRANCH，ifort2021 冠军确认。

## 0. 一句话状态

计分父本仍是 immutable O33 `118405320`（2136.310 s，官方 26/26）。
**当前冠军 = O33 源码 + ifort 2021.3.0 + KMP_HOT_TEAMS 运行时 = 新计分候选，
全量 `118662236` real 2019.8 s，官方 26/26，轨迹与 O33 逐位一致（零数值风险）。**
gcc731 全量验证失败（Dongsha60 u 超限 0.000001）且更慢 → 关闭。
Stage 108 P0 组合包（biology-only fast=2 −2.82%、step2d 三循环融合 −1.74%）均 STOP_BRANCH → 关闭。

## 1. 当前最优计分结果

| Item | Value |
|---|---|
| **新候选（待采纳决定）** | O33 源码 + ifort 2021.3.0 + KMP_HOT_TEAMS |
| Retained run | `/public/home/fujiake/fjk/mcc_runs/118662236_o33_ifort2021_full_64x2` |
| Wall (`time real`) | **2019.8 s（33m39.809s）** |
| Layout | 4 nodes, 64 MPI × 2 OpenMP, 8×8/8×8, cold start, `NTIMES=2592,12960` |
| Correctness | `ROMS/TOMS: DONE`; official `vali.py` **26/26 PASS**; Dongsha u=0.000052 与 O33 相同 |
| Binary | `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_ifort2021_20260805/ROMS_CoSiNE15/oceanM.O33_ifort2021` SHA-256 `7cd466279e...dd9ff4` |
| vs 父本 O33 | 2136.310 → 2019.8 s（**−5.45%**） |
| vs 旧冠军 O33+HOT_TEAMS | 2109.183 → 2019.8 s（**−4.24%**） |

变更仅编译器版本（ifort 2017.5.239 → 2021.3.0 oneAPI classic，同 mk、同 flags、同源码）；
运行环境 + `KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2`。
轨迹 5/5 与 O33 逐位一致 → 无浮点风险。

## 2. Stage 109 证据

- 构建：ifort2021 `118661257`（bin `7cd46627...`）；gcc731 `118660950`（bin `c69fe383...`）。
- ABBA：ifort2021 `118661414` **+4.12%**（双 B 快，轨迹一致）；gcc731 `118662044` **+3.69%**（双 B 快，轨迹不同）。
- 全量：ifort2021 `118662236` **2019.8 s / 26/26**；gcc731 `118663696` 2059.2 s / **vali FAIL**（Dongsha60 u 0.000061 > 0.000060）。
- perf 热点（rank-0）：ifort2021 结构与 O33 相同（pre_step3d 13.3 / uct 10.6 / step3d_t 10.4 / pow 9.2 / t3dmix 5.4）；
  gcc731 结构改变（uct 升至 9.95% 第一，biology/t3dmix/step3d_t 的 _omp_fn 区上榜，pre_step3d/pow 出前四）。
- 完整表格：`analysis/compiler_switch_20260806/`。

## 2b. Stage 108 证据（P0 组合包，均已关闭）

- P0-1 biology-only fast=2 `118661763`：−2.82% STOP，轨迹 5/5 SAME；Biology −18.4% 被 GLS +21.6% 吸收。
  **归因修正**：gls_corstep.o 与 O33 逐字节相同 → GLS 吸收是 biology fast=2 浮点变化耦合传播所致，与 gls fp-model 无关（推翻 Stage 104 假设）。
- P0-2 step2d 三循环融合：首版 patch 残缺（`118667477` B1 NaN，诊断）；修复版 `118672304` −1.74% STOP，轨迹 5/5 SAME（融合算术 bitwise 正确）。
  机制：8x8 下 Drhs ≈7.5KB 全驻留 L1，无缓存压力；IISc 论文前提不适用。
- 三件套：`analysis/stage108_p0_20260806/`。日志：`OPTIMIZATION_LOG.md` Stage 108。

## 3. 方法论（继续遵守）

1. ROMS `PROFILE` 是进程 `cpu_time` 不是墙钟；MPI busy-poll 等待计入 CPU。
2. 区间份额 × 加速比模型对 3D 计算区失效；先证明区间在关键路径上。
3. A-B-B-A 首次跑常是冷启动 outlier；以 `both_B_faster` 为主闸门。
4. 换编译器=新机制：样本 ABBA 通过后必须全量 + 官方 26/26（轨迹可以不同）。
5. 平台两个坑：`sbatch` 的 `-o/-e` 日志目录必须先 `mkdir -p`（否则启动即被信号 53 杀）；
   gcc 二进制运行需 gcc 版 netcdf/hdf5 在 LD_LIBRARY_PATH（intel 库模块符号名不同）。

## 4. 当前计划

1. **待用户决定**：是否采纳 ifort2021 为最终交付二进制（推荐：零数值风险 + −5.45%，全量 26/26 已证）。
   采纳则更新交付脚本：构建环境 + oneapi 2021.3.0 两行 PATH/LD_LIBRARY_PATH，运行环境 + KMP_HOT_TEAMS 两变量；
   v4 归档重新打包或现场按新工具链冷编译并重新全量验证。
2. **未探明的 ifort2021 专属开关**（新空间）：`-fimf-*` 系列、`-align`/`-qopt-*`、5 个热点对象的 `-xCORE-AVX2` —
   均需单变量 A-B-B-A + 全量 26/26。
3. **P0 组合包（Stage 108）已关闭**：biology-only fast=2（−2.82%）、step2d 三循环融合（−1.74%）均 STOP_BRANCH，不再复活。
4. **只读观察**：队列当前只有队友 zya/nan 作业（`fast2_2021_abba_ompk`、`sprint_O84`、`base_ccx`），勿动。
5. 交付兜底不变：O33 `118405320`（若最终不采纳 ifort2021）。

## 5. 交付状态

同 Stage 83/107：可提交侧材料已齐（v4 源码包、可移植脚本、记录、PPT）；
若采纳 ifort2021，交付包需升级为「O33 源码 + ifort 2021.3.0 + HOT_TEAMS」并补一次干净构建+全量+26/26。

## 6. 协作与远端注意

- SSH 别名 `MCC`；只写 `/public/home/fujiake/fjk/...` 私有树。
- 我方会话作业已全部结束（最新 `118672304` s2dfuse ABBA STOP_BRANCH）；队列仅队友作业（zya `118713074`、nan `118712439`/`118713095`），只读勿动。
- 队列配额共享（QOSMaxCpuPerUserLimit）：提交前 `squeue`/`df` 刷新。
- 平台坑继续有效：`sbatch` 的 `-o/-e` 日志目录必须先 `mkdir -p`（否则启动即被信号 53 杀）。

## 7. Skill 与入口路径

| 副本 | 路径 | 同步状态 |
|---|---|---|
| 工作区包 | `决赛/03_交接Skill/skill-packages/mcc26-roms-cosine-handoff` | ✅ Stage 108/109 已同步（progress/plan/evidence-index） |
| 已安装（Codex） | `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff` | ⚠️ 需从工作区包手动复制 |
| BN 镜像 | `BN决赛/决赛/03_交接Skill/...` | ⚠️ 需手动复制 |

接手启动顺序（Skill 强制）：`SKILL.md`+`rules.md` → `progress.md`+`plan.md` → 只读状态检查 → `OPTIMIZATION_LOG.md` Stage 108–109 → 声明是否开新实验/可删除输出。

## 8. 证据快捷入口

- Stage 109 编译器切换：`analysis/compiler_switch_20260806/`
- Stage 108 P0 组合包（biofast/s2dfuse 双关闭）：`analysis/stage108_p0_20260806/`
- Stage 106-107 -O2 关闭：`OPTIMIZATION_LOG.md`；跨阶段瓶颈：`analysis/o33_hotteams_perf_20260806/`
- Stage 100-102 HOT_TEAMS：`analysis/hotteams_abba_118610383/`、`analysis/memset_slice_audit_20260805/`
- 全量复现（父本）：`analysis/o33_full_reproduce_118405320/`
- 总日志：`OPTIMIZATION_LOG.md`
