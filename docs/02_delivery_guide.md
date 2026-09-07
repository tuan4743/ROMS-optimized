# 04 — 恢复与交付指南

> 从本目录(MCC26_optimize/)还原"官方原始 → S47 最终版 → 完整优化记录"的完整链路。

## 1. 还原官方原始与 S47 可编译树

```bash
# 官方原始(未修改)整树:本目录现成
修改前原版/ROMS_CoSiNE15/            # 7855 文件 + .svn(r830/834)
# 任何文件对照:官方 vs S47
diff 修改前原版/ROMS_CoSiNE15/Compilers/Linux-ifort.mk 最终修改版/Compilers/Linux-ifort.mk

# S47 可编译树(最简):解压完整快照
tar -xzf 最终修改版/backup_S47_FULL_SRC_20260811.tar.gz
cd ROMS_CoSiNE15_S47_FULL_SRC_20260811
bash build.sh        # 或 sbatch build.slurm
./sub_local.sh 3day ./oceanM
```

> **PGO 不要动**:S47 编译含 `-prof-use(-prof-dir=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s46_pgo)`;有记录证实"动 PGO 反而更差"(t3mixk 移植 −4.3%、combo2 反转 −1.04%,均因 profile 与代码结构错配)。仅当该路径在目标机不存在时,才按 `README_S47.md` 去掉这两行(必要例外,非优化动作)。

## 2. 定位某文件修改 → diff 三查

1. 官方原文:`修改前原版/ROMS_CoSiNE15/<path>`(完整树,任意文件都行)。
2. 最终版:`最终修改版/<path>`(17 个修改文件)。
3. 差异:直接 `diff` 或 `最终修改版/S47_全量差异_官方zip基线.txt`(17 文件 unified);归因看 `最终修改版/变更清单.md`。

## 3. 还原完整优化记录(叙事)

| 想看 | 入口 |
|---|---|
| 全貌 | `最终优化报告.md` |
| 团队早期 | `优化记录/00_加入前_团队记录/参考资料/MCC26决赛.md` |
| 任务文档 | `优化记录/01_加入后_任务文档/tasks/README.md`(入口)→ 01-07 |
| 逐阶段证据 | `优化记录/02_优化主日志/OPTIMIZATION_LOG.md`(Stage 0-163 全量)→ SESSION_MEMORY.md |
| 深入某 stage | `优化记录/03_分析证据/<stage目录>/`(三遍分析 01_read_summary/02_profiling/03_validity_check) |
| 实验与作业脚本 | `优化记录/04_实验与脚本/<experiments>/`(源码构建树除外,在原工作区) |
| profile 数据 | `profile/`(S47 raw perf.data×8 + 各阶段分析)+ profile_说明.md |
| 赛题/组委会 | `优化记录/00_加入前_团队记录/01_赛题与规则/` |

## 4. 如果要点"我们最后的版本"而不是 S47

- 团队独立优化峰值版本 = **ompk-s32-pgouse 28:53.33(3.80×,u=0.000052)**;来源:优化记录/01 tasks/README(08-10 收官)。
- 该版本的完整源码/二进制在远端(s32 构建树 mcc_runs 相关),本地仅保留记录;重建需按 tasks/README 中的 flag 组合复现。
- **若重投**:以 S47(3.97×)为基准 + `--mca mpi_yield_when_idle 1`(Stage 162;**PGO 保持不动**)。
- 现场 26:11 复刻条件:同 S47 二进制 + yield(可选 pinned),且需节点平静度/争抢环境相近;短档 → 半天 → 全量 vali 三级验证后才有意义。

## 5. 现场/交付清单(赛程口径)

- 成绩载体:S47 二进制(远端 mcc_runs/118946283)+ 源码包(backup tar.gz)。
- 官方验证:`source /public/share/mcc2026_final/miniforge3/etc/profile.d/conda.sh; conda activate vali; python /public/share/mcc2026_final/vali.py`。
- 答辩材料:`优化记录/05_收尾与答辩/`(模块占比 xlsx、PPT 图表数据、有效优化与选项 20260813)。
- 避雷:节点 j01r2n00-03/j01r2n12-15 慢 33-70%;PGO profile 与代码结构必须同源;competition 共享集群务必带 yield 参数。

## 6. 再验证路径(未上机)

本目录为归档重述。任何"恢复运行"都必须回到比赛集群或等效 Hygon 环境:
1. `git/var 对比` → 用 `最终修改版/S47_全量差异_官方zip基线.txt` 作为改动门禁。
2. 编译验证 → build.sh(注意 s46_pgo 路径)。
3. 短档(144/720)先跑 3 遍确认 DONE + 轨迹一致(ROMS 位可复现)。
4. 半天/1day ABBA 与 S47 参考对照(节点挑选 j01r2n04-07)。
5. 全量 + vali 26/26(u 必须 ≤6e-5;S47 实测 5.2e-5,余量 13%)。
