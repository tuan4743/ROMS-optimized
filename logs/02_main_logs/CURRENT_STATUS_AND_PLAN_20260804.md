# MCC26 ROMS-CoSiNE：暂停交接入口（2026-08-04）

> Pause / handoff snapshot. Read this first, then Skill `progress.md` / `plan.md`, then `OPTIMIZATION_LOG.md`.
> This document does **not** authorize a new model run.
> Dynamic queue/disk facts must be refreshed with SSH alias `MCC` before acting.

## 0. 一句话状态

计分父本仍是 immutable O33 全量复现 `118405320`（`real=2136.310 s`，官方 26/26 PASS）。
最近测量的四对象选择性 OpenMP `[O34]`（作业 `118529765`）已 `STOP_BRANCH`：线程加速比很好，但墙钟几乎不动——临界路径在同步等待/rank arrival skew，不在单线程 3D 计算。
工作已暂停；下一动作被门禁在“先测 skew、再选方向”。交付材料（v4 源码包、可移植脚本、记录、PPT）此前已齐，现场手工步骤仍待做。

## 1. 当前最优计分结果（勿改、勿删）

| Item | Value |
|---|---|
| Retained run | `/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2` |
| Wall (`time real`) | **2136.310 s** |
| Layout | 4 nodes, 64 MPI × 2 OpenMP, 8×8/8×8, cold start, `NTIMES=2592,12960` |
| Correctness | `ROMS/TOMS: DONE`; official `vali.py` **26/26 PASS** |
| Binary | `oceanM` SHA-256 `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9` |
| Input | full `.in` SHA-256 `a3e8a5db...79a8` |

Organizer external reference remains ~6606 s; do not treat it as this workflow's measurement.

## 2. 最新关键测量（Stage 90）

- Build `118529296` / ABBA `118529765` → verdict `STOP_BRANCH`.
- Warm-vs-warm: A2 `124.457 s` vs B2 `125.012 s`（B 慢 0.45%）；轨迹四跑一致 `fa498694...e44b0`。
- OpenMP 本身有效：四对象合并加速比约 `1.857`（`rho_eos/hmixing/rhs3d/step3d_uv`），高于既有 `[O25]` 的 `1.651`。
- 预测应省墙钟约 `3.65%`，实际未进入墙钟；节省量转移到含 MPI 的未改区域等待（尤其 GLS / 3D halo）。
- `[O34]` **不合入**。源码与 makefile 改动按哈希归档在 `analysis/omp4_selective_openmp_118529765/source_evidence/`，可在 skew 解除后复活。
- 原始结果根（1.4 MB，`nc_count=0`）：`/public/home/fujiake/fjk/mcc_runs/118529765_o33_omp4_abba_sample`。
- 候选构建树约 518 MB 仍保留：`agent_tmp/isolated/work/o33_omp4_20260804`（删除须走删除门禁，勿默认清）。

## 3. 方法论纠正（接手后必须遵守）

1. ROMS `PROFILE` 是进程 `cpu_time`，不是墙钟。单线程计时器墙钟占比 ≈ CPU 占比 × `1.305676`。
2. “区间份额 × 加速比”模型对 3D 计算区已失效：Stage 89 算对了计算，估错了墙钟回报。未来必须先证明区间在关键路径上。
3. MPI busy-poll 等待会记入 `cpu_time`；CPU 上涨不等于计算变慢，先看该区间是否含通信。
4. A-B-B-A 的第一次运行常是冷启动 outlier；以 `both_B_faster` 为主闸门，必要时加一次丢弃预热。
5. 连续两次无效（Stage 85 + Stage 90）后，进入强制 PLAN / 研究门禁；禁止盲目提交新候选。

## 4. 当前计划（冻结）

权威决策树见 Skill `references/plan.md` Stage 90：

1. **已关闭**：继续给更多 3D 计算对象加 `-qopenmp` / `[O25]` 式扩展。
2. **降级未启动**：`step2d` OpenMP（同一预测模型不可信，编辑成本极高）。
3. **必须先做**：per-rank arrival-timestamp skew 探针（诊断 `144/720`）；局部脚本已起草于 `experiments/skew_probe_20260804/`（若启动须先完成三段式设计门禁并与现进度对齐）。
4. 探针结果再分流：
   - 持久且可归因到特定 rank → 分解/映射；
   - 随机抖动 → 重叠或缺同步点；
   - rank-0 I/O 集中 → 输入/广播路径（队友矩阵未覆盖）。
5. Stage 87 的 `get_contact2d` 稀疏化保留为较小、按位更安全的后备（约 2% 量级上限），不是当前主轴。
6. Stage 86 GLS pow：勿直接构建；须先核对 `gls_corstep.F.O14.bak` 回滚原因与队友 `zya` `nopow*` 结果。

## 5. 交付状态（可提交侧）

已完成：v4 全量输入源码包、可移植 build/run 脚本、委员会记录、PPT、平台复检。
现场手工仍缺：填脚本变量 → 干净构建 → 全量运行+官方验证 → PPT 截图与自动播放检查。
入口：`决赛/04_提交准备/O33_交付清单_20260802/`。

## 6. 协作与远端注意

- SSH 别名：`MCC`。只写 `/public/home/fujiake/fjk/...` 私有树。
- 暂停时远端可见队友作业（只读、勿动）：`zya` 树下如 `ntile_abba_ompk` / `nopow*` 等；不要取消、不要读其大结果树除非用户要求。
- 保留不可变导入：`/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801`。
- `/public` 与 home 配额会变；提交前刷新 `df` 与 `squeue`。

## 7. Skill 与入口路径

| 副本 | 路径 |
|---|---|
| 工作区包 | `决赛/03_交接Skill/skill-packages/mcc26-roms-cosine-handoff` |
| 已安装（Codex） | `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff` |
| BN 镜像 | `BN决赛/决赛/03_交接Skill/skill-packages/mcc26-roms-cosine-handoff` |

接手启动顺序（Skill 强制）：

1. 读 `SKILL.md` + `references/rules.md`
2. 读 `references/progress.md` + `plan.md`
3. 需要时读 `project-structure.md` / `evidence-index.md`
4. 跑只读状态检查（`scripts/status.ps1` 或等价 `ssh MCC`）
5. 读本文件与 `OPTIMIZATION_LOG.md` 的 Stage 88–90
6. 声明是否开新实验、上一段输出是否可删；禁止静默删除

## 8. 证据快捷入口

- Stage 90 ABBA：`analysis/omp4_selective_openmp_118529765/`
- Stage 89 对象审计：`analysis/omp_object_audit_20260804/`
- Stage 88 规则矩阵/计时单位：`analysis/thread_headroom_rules_matrix_20260804/`
- Stage 87 2D contact 后备：`analysis/get_contact2d_sparse_review_20260804/`
- 全量复现：`analysis/o33_full_reproduce_118405320/`
- 总日志：`OPTIMIZATION_LOG.md`

## 9. 暂停声明

截至本快照：本会话不再提交构建或模型作业；不删除任何远端输出；不推进实现候选。
恢复工作时以 Skill 三处 SHA 一致为前提，并以“skew 探针设计通过后才能开实验”为硬门禁。
