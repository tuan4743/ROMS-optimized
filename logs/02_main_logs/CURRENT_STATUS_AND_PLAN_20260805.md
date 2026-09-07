# MCC26 ROMS-CoSiNE：恢复后状态入口（2026-08-05）

> Resume snapshot after the 2026-08-04 pause. Read this first, then Skill `progress.md` / `plan.md`, then `OPTIMIZATION_LOG.md` (Stage 96).
> Performance route re-evaluation (user requested, read-only) is COMPLETE; no new model run authorized.

## 0. 一句话状态

计分父本仍是 immutable O33 全量复现 `118405320`（`real=2136.310 s`，官方 26/26 PASS）。
用户要求重新评估性能路线；本次只读综合（Stage 96）关闭了最后一个未决候选 **Stage-86 GLS pow**（.O14.bak 回滚原因 = 队友 nan O35 mathreuse 实测零收益；E071 代数改写精度不过；zya nopow 全量仅 −1.9~−3.0% 且低于门禁）。
**结论：任何 ≥2% 候选都不存在，性能路线保持关闭，活动轨道 = 交付**（现场手工步骤仍待做）。

## 1. 当前最优计分结果（勿改、勿删）

| Item | Value |
|---|---|
| Retained run | `/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2` |
| Wall (`time real`) | **2136.310 s** |
| Layout | 4 nodes, 64 MPI × 2 OpenMP, 8×8/8×8, cold start, `NTIMES=2592,12960` |
| Correctness | `ROMS/TOMS: DONE`; official `vali.py` **26/26 PASS** |
| Binary | `oceanM` SHA-256 `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9` |
| Input | full `.in` SHA-256 `a3e8a5db...79a8` |

## 2. Stage 96 只读结论（2026-08-05）

- 前置核对 1：`.O14.bak` = `[O14] mathreuse: cache repeated ** powers`；队友 nan `failure_analysis_O34_O35.md` 记录 O35 同思路在 O33 上 GLS PROFILE 行 992.5→991.9（0.999× 零收益）、墙钟 0.935×；ifort `-O3 -qopenmp -no-heap-arrays` 已在基本块内 CSE 相同 `**`；E071 代数去 pow 精度不过。
- 前置核对 2：zya `nopow*` full3d（其基线 `base_g_full3d`=40:47.34，非 O33 父本）：`o33nopow_full3d` 40:03.90（−1.8%）、`gls_full3d_O2_2` 39:32.65（−3.0%）；无官方 26/26（其 vali 为收紧阈值版）。
- 判决：**GLS pow 候选关闭**；无剩余 ≥2% 机制；不构建/不提交任何性能候选。
- 证据：`analysis/gls_pow_route_reeval_20260805/{01_read_summary,02_profiling,03_validity_check}.md`（三份均有效）。

## 3. 方法论（继续遵守）

1. ROMS `PROFILE` 是进程 `cpu_time`，不是墙钟；单线程计时器墙钟占比 ≈ CPU 占比 × 1.305676。
2. "区间份额 × 加速比"模型对 3D 计算区已失效；先证明区间在关键路径上。
3. MPI busy-poll 等待记入 `cpu_time`；CPU 上涨不等于计算变慢。
4. A-B-B-A 第一次运行常是冷启动 outlier；以 `both_B_faster` 为主闸门。
5. 连续无效后进入强制 PLAN 门禁；当前已无候选，禁止盲目提交。

## 4. 当前计划（冻结为交付）

1. **性能路线关闭**（tiling 算术 / 点收集实测 / GLS pow 继承证据 / OpenMP / scratch / AVX2 / halo / mapping 全部关闭）。
2. **活动轨道 = 交付**：冻结 O33 `118405320`；按 Stage 83 完成现场手工步骤：填脚本变量 → v4 干净构建（期望 `5f1a137e...`）→ 全量运行 + 官方 26/26 → PPT 截图与自动播放检查。
3. 重开性能需全新精确 ≥2% 机制 + 单变量 A-B-B-A（both B faster ≥3%）+ 全量 26/26。
4. 只读观察（勿动）：zya `118606516` pipeline_abba（`ompk-pipeline` vs `ompk-o33nopow-bio`，约 15:30 出）、nan `118605188` N1_3day。任何 ≥2% 结果仅作继承证据，需独立复核。

## 5. 交付状态（可提交侧）

已完成：v4 全量输入源码包、可移植 build/run 脚本、委员会记录、PPT、平台复检。
现场手工仍缺：填脚本变量 → 干净构建 → 全量运行+官方验证 → PPT 截图与自动播放检查。
入口：`决赛/04_提交准备/O33_交付清单_20260802/`。

## 6. 协作与远端注意

- SSH 别名：`MCC`。只写 `/public/home/fujiake/fjk/...` 私有树。
- 远端队友作业（只读、勿动）：`zya` 下 `pipeline_abba_ompk`（118606516）、`nan` 下 `N1_3day`（118605188）等；不要取消、不要读其大结果树除非用户要求。
- `/public` 300G 配额，当前 72G 可用（够一次全量 ~8.5G 输出）；提交前刷新 `df` 与 `squeue`。

## 7. Skill 与入口路径

| 副本 | 路径 |
|---|---|
| 工作区包 | `决赛/03_交接Skill/skill-packages/mcc26-roms-cosine-handoff`（Stage 96 已同步） |
| 已安装（Codex） | `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff` |
| BN 镜像 | `BN决赛/决赛/03_交接Skill/skill-packages/mcc26-roms-cosine-handoff` |

接手启动顺序（Skill 强制）：读 `SKILL.md`+`rules.md` → `progress.md`+`plan.md` → 只读状态检查 → `OPTIMIZATION_LOG.md` Stage 88–96 → 声明是否开新实验/可删除输出。

## 8. 证据快捷入口

- Stage 96 GLS pow 关闭：`analysis/gls_pow_route_reeval_20260805/`
- Stage 95 ABBA：`analysis/o33_g2d_sparse_abba_118541006/`
- Stage 90 ABBA：`analysis/omp4_selective_openmp_118529765/`
- 全量复现：`analysis/o33_full_reproduce_118405320/`
- 总日志：`OPTIMIZATION_LOG.md`

## 9. 恢复声明

截至本快照：性能路线关闭，无待提交构建或模型作业；不删除任何远端输出；不推进实现候选。
恢复交付工作时以 Skill 三处 SHA 一致为前提。
