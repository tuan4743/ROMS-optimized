# 当前状态与计划（2026-08-11，Stage 145 G4 vadv-vdiff fusion）

## Stage 145 最新状态：VALID_DIAGNOSTIC / STOP_BRANCH

- 同配方构建由 `118929462` 完成：A′ SHA `9aa56d040...de00`，B SHA `846548cb...0ed9`；ifort 2021.3 + AVX2 + no-FMA + IPO 编译路径一致，A′/B ROMS 源差异严格为候选两项。
- 条件式短程 `118930762` 已完成：A/A′ 谱系偏差 `+0.7575%` 且轨迹一致；直接 A′/B 配对仅 `104.478 → 104.031 s`，表观增益 `0.4288%`，两 B 均更快但不越 2%/3% 门。
- 构建三遍证据：`analysis/stage145_g4_build_118929462/`。构建失败任务 `118929211`、`118929383` 都在编译前由 harness 终止，根因分别为 archive 缺 Master 和 locale 排序门禁，不是候选源码失败。
- 运行三遍证据：`analysis/stage145_g4_abba_118930762/`。最终 `STOP_BRANCH`，不跑全长、不做官方验证；短程 trajectory 一致不等同 26/26。
- `118930470` 是可选 PROFILE 提取导致的 harness-only 失败；`118930470` 与 `118930762` 输出全部保留，本任务不删除。

- 选择 G4 的最小岛：在 `step3d_t_tile` 同一 `j,itrc` 内，将垂向平流产生的 RHS 直接交给隐式垂向扩散；不合并整个 PRE/CORRECT。
- 候选把原来全局 `t(...,nnew,itrc)` 的一次中间写回和后续 `DC=t_nnew` 读取替换为 OpenMP-private `RHS0(i,k)` 单列（保守 <15.1 KiB/thread），然后只写最终解。
- 活动宏预处理门禁通过：`bry_fluxes=1`、`collect_bry_fluxes=1`、final `mp_exchange4d=1` 均不变；垂向段 active tracer loop 4→3；CPP 零错误。
- 候选源码与 A′/B 同配方构建脚本已同步到个人私有目录 `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_stage145_g4_vadv_vdiff_fusion_20260811`，远端 `bash -n` 与 SHA 对齐通过。
- 三遍静态、构建、运行分析均已闭合。下一步若继续，只能先静态评估 G1；若 G1 也实测无效，则按永久规则进入强制 PLAN+联网研究。

## Stage 144 最新状态：STATIC_DAG_VALID / CANDIDATES_CONDITIONAL / NO_JOB

- 冻结源码：`backup_S32_src_20260808.tar.gz`，SHA-256 `615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`；本地证据位于 `analysis/stage144_s32_tracer_pipeline_dag_20260811/`。
- 本阶段按 `tracer3d_pipeline` 建模，未把 `pre_step3d_tile` 与 `step3d_t_tile` 粗暴拼接。完整版本化矩阵、DAG 与候选分级见 `DATAFLOW_MATRIX.md`、`TRACER_PIPELINE_DAG.md`、`FUSION_ISLANDS.md`。
- 关键反证：PRE 末端 `t(...,3,:)` 在 CORRECT 前被 `t3dbc`、4-D halo 和 `nesting(nrhst)` 真实读写；中间还依次产生新版 `Hz/Huon/Hvom/W/Akt`。因此不存在跨 PRE→CORRECT 的全场无用户直边。
- 仍保留四个局部岛：G1 PRE 内 provisional `t3`→vertical RMW（绿、首选）；G2 PRE `nnew` base→`t3dmix4` final RMW（绿/黄）；G3 biology writeback→CORRECT（黄）；G4 `step3d_t` 内 horizontal→vertical→implicit VDIFF column pipeline（绿、首选）。
- 既有全长 PROFILE 中 PRE+CORRECT 合计 33.74% CPU；要形成 2% 整体 CPU 收益，池内至少需减少 5.928%。两网格一次完整 tracer state 物理内点约 770.0 MiB，一次 store+reload 的源码层逻辑访问 footprint 约 1.504 GiB/步；它不是 DRAM 下界，不得换算成 wall gain。
- 下一步仍为零机时：先做 G1/G4 的 exact-order loop/scratch 生存期设计和编译器报告门禁；只有证明至少移除一次完整 tracer materialization 且不新增等价 scratch/halo，才允许 isolated patch 与 144/720 A′-B-B-A。
- 三遍分析：`01_read_summary.md`、`02_profiling.md`、`03_validity_check.md` 均存在并完成交叉验证。本阶段无构建、无作业、无模型输出、无删除；冻结源码快照保留。

## Stage 143 最新修订：只比较同-rank持续时间

- 禁止比较不同 ranks 的 `MPI_Wtime()` 绝对时间戳；不依赖 `MPI_WTIME_IS_GLOBAL`，也不新增 barrier 做时钟同步。
- late rank 用“本地 work 高 + 紧邻 next-wait 低”识别，并要求同一 rank/tile 在两条 clean probe legs 重复。
- step2d 拆 arithmetic / BC / conservation；contact2d 与 contact3d 都拆 plan/count、allocate/free、pack/interp、post、waitall、unpack；2D/4D halo 按 WE/SN 拆 pack、Irecv post、blocking Send、Wait、unpack；nesting 拆 feedback compute/sync。
- 作业腿修订为 `A′ → P-clean-1 → P-sidecar → P-clean-2 → A′`。sidecar 腿只做 NUMA/THP/TLB 相关性，不参与主要 ceiling 判定。
- 保守可移除量定义为 `min(work excess, wait deficit)`；两条 clean legs 的较小 ceiling 都超过 2% 才授权 P2。
- Stage 140 未提交 patch 已静态否决：共享 `p1_t0` 有线程竞争，五处 total `probe_exit` 位于 `RETURN` 后，且存在未声明符号与 phase 混叠。不得直接提交旧 patch。
- 完整规范：`analysis/stage143_p1_duration_probe_refinement_20260810/P1_DURATION_PAIRING_SPEC.md`。本阶段无构建、无作业、无模型输出或删除。

## 0. 一句话状态

**PGO 复现路线已终止**：s46 谱系（step3d_t vdiff）8 次全量矩阵证实间歇性数值错误（同二进制同节点族 j01r2n 一次 26/26、一次 FAIL u=0.0032），候选不可靠，不采信队友 s46_pgo 1714.6 s 记录。**正式参考不变：S32 冠军 92ffbd01（1753.876 s，26/26 PASS，作业 118755216）。** 队列当前被队友作业占用（sprint_O84×2 R + zya combo PD 等 QOS 限额），我方无运行窗口；下一步零机时工作 = P1 相位探针设计。

## 1. Stage 139b 终局结论（2026-08-10 晚 → 08-11 凌晨，完整实验矩阵）

| 作业 | 二进制 | 节点 | 3day vali | 判定 |
|---|---|---|---|---|
| 118875253 | fork_pgouse 6b8fc2d6 | i17r2n | FAIL u=0.0031 | s46+PGO 全量不通过 |
| 118882814 | fcbfa6dc（nan 版） | j05r2n | FAIL u=0.0030 | 队友二进制复现 FAIL |
| 118886183 | fcbfa6dc | i17r1n | FAIL u=0.0030 | 同上，排除节点 |
| 118889780 | O33 冠军 93089acc | j05r2n | **26/26 PASS** | 环境/输入/vali 链正确 |
| 118892030 | fork_norhoomp 1822d1cd | j01r2n | **26/26 PASS**（u=0.000052） | rho_eos OMP 为 bug 源 |
| 118906138 | fork_norhoomp | i17r1n | FAIL u=0.0032 | 同二进制跨节点 FAIL |
| 118907159 | fork_norhoomp | j01r2n | FAIL u=0.0032 | **同二进制同节点族 PASS/FAIL 各一 → 间歇性实锤** |
| 118909891 | fork_profile | i17r1n | FAIL | PROFILE 宏排除 |

**排除项**：节点、PROFILE 宏、rho_eos OMP 指令、输入文件（md5 稳定）、vali 链。**剩余差异**：step3d_t vdiff（`itrc.le.2` 包装，静态审查无 bug）——无法定位根因，不深挖。

**判决**：PGO 候选不可靠，不能作为计分参考；S32 冠军 92ffbd01 保持正式参考。队友 s46_pgo（1714.6 s 26/26）继承证据失效。已告知 nan（`agent_tmp/pgo_repro_notes/NOTE_TO_NAN_rho_eos_omp_bug.md`）。

**平台经验（固化为规则）**：候选全量验证需 ≥2 次运行均 26/26 才可靠；单次 26/26 不足以证明稳定。/public I/O 争抢期全量时间膨胀 30-60%。

## 2. 下一步（零机时，进行中）

1. **P1 探针需按 Stage 143 规范重新实现**：冻结 S32 源 fork（`backup_S32_src_20260808.tar.gz` SHA `615ee717...`），一次 144/720 诊断，A′ 前后包围两条 clean probe legs 和一条独立 sidecar leg；只记录同 rank `Δt`。**只有 work excess 与紧邻 wait deficit 配对后的保守 ceiling 在两条 clean legs 均 >2% 才授权 P2/P3**。
2. 设计完成后：等待队列清空（队友 sprint 作业结束）→ 过 source-lineage/queue/disk 门禁 → 提交唯一诊断作业。
3. 交付收尾（可选并行）：PPT/清单核对（S32 已 26/26，交付物无需因 PGO 变更）。

## 3. 队列/磁盘（2026-08-11 10:02 快照）

- `118919549` sprint_O84 R，i17r1n[08-11]（队友 nan）
- `118919515` sprint_O84 R，j01r2n[04-07]（队友 nan）
- `118919720` submit_combo_final.sh PD（zya），`QOSMaxCpuPerUserLimit` 被队友作业占用 → **我方提交前必须等队列空出**
- 只读检查，未动任何队友作业。

## 4. 相关证据

- PGO 复现全记录：`analysis/stage139_pgo_replication_20260810/01_review_notes.md`；OPTIMIZATION_LOG Stage 139b 续 1-5
- P1 设计（本阶段产出）：`analysis/stage138_p1_phase_probe_design_20260811/`
- P0 contact 映射：`analysis/stage138_p0_contact_map_20260809/`
