# 当前状态与计划（2026-08-09 Stage 132 关闭）

## 当前最佳

S32 父本：作业 `118755216`，`1753.9 s`，官方验证 `26/26 PASS`。冻结二进制 SHA-256：`d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2`。

## Stage 129：运行记录保留，两个旋钮归因已由 Stage 132 更正

| 项 | 作业 | 结果 |
|---|---|---|
| PROFILE-on 全长 | `118784141` | Writing ~2.0–2.2%；set_avg ~2.5–2.8%；input ~2.0–2.2% |
| set_avg OMP 采样 ABBA | `118784623` | `CONFOUNDED_ATTRIBUTION / BELOW_GATE_STOP`；−7.84% 不可归因于旋钮 |
| NF90_NOFILL 全长 ABBA | `118784944` | `CONFOUNDED_ATTRIBUTION / BELOW_GATE_STOP`；−8.12% 不可归因于旋钮 |

三遍分析：`analysis/s32_profile_full_118784141/`、`analysis/s32_setavg_abba_118784623/`、`analysis/s32_nofill_abba_118784944/`。

## Stage 132：冠军谱系更正与硬性 harness

- `118755216` 确认运行于 `nan/sprint/ROMS_CoSiNE15_s22b`；冠军备份与冻结父本 SHA-256 同为 `d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2`。
- Stage-129 两个候选脚本误从非 s22b 树复制。其构建日志中 AVX2/no-FMA/IPO 编译行均为 0；错误树的 `globaldefs.h`、`nesting.F` 也与冠军树不同。因此旧 ABBA 只能证明“混合候选 B 比冠军 A 慢”，不能隔离 set_avg/NOFILL。
- NOFILL 的“create/write 路径交互”推断已撤销。两路线继续 STOP 的依据改为独立天花板：NOFILL 乐观可移除仅 0.58-1.17% wall；set_avg 虽约 2.5-2.8% wall，但不在已证明的到达关键路径。
- S32 源码唯一入口冻结为 `/public/home/fujiake/nan/sprint/backup_S32_src_20260808.tar.gz`，SHA-256 `615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`。当前 s22b 裸 `oceanM` 已是不同的提交重建版 `907e6ecb...`，不得作为隐式父本。
- 新硬规则：所有源改实验都从该归档的私有解包副本 fork；同时构建零改动 A′。先在同一分配做 A/A′ matched control，只有 A′ 复现冻结 A 的性能/轨迹/验证边界后，才允许用同树 A′ 对 B 归因。否则标记 `HARNESS_LINEAGE_FAIL`，不得解释 B。
- 队友刷新：S38 只有一日 592.534 s；S42 全长 `118811124` 为 1769.205 s、26/26 PASS，较 S32 慢 0.874%；S44b 仅一日结果。父本不移动。
- Stage-132 三遍分析：`analysis/stage132_stage129_lineage_correction_20260809/`；零机时，无远端修改、作业或输出删除。

## Stage 131：匹配 rank perf 诊断

- 作业 `118813105`，4 节点、64 MPI x2 OpenMP、8x8/8x8、冻结 S32、调试 `144/720`；Slurm `COMPLETED 0:0`。
- 两遍诊断：selected-rank stat `105.505 s`，99 Hz cpu-clock record `108.195 s`；两遍均 DONE，8 个 rank 零丢样。
- 内部 rank 的 task-clock 仅高 `0.28-1.03%`，但退休指令低 `2.00-4.67%`。内部的模型计算与 ROMS exchange 时间较多，边缘 rank 的 UCX/MPI progress 时间较多，二者近似抵消。
- 结论：先前 PROFILE 的内部高计时主要混有等待，不能据此继续做非均匀 tile。square rank mapping、step2d OpenMP、通用异步/持久通信、数学精度 sweep 均不重开。
- 三遍分析：`analysis/s32_selected_rank_perf_118813105/`；远端约 5 MB 结果保留，无删除。

## 下一步（零运行门）

只从上述 S32 源码归档生成六个热点对象的精确生产编译器优化报告，检查可证明的向量化、依赖、对齐或临时量阻塞。没有保守全程序上限大于 2% 的具体循环，就冻结 S32，转交付与复现；不再盲跑参数。任何后续候选必须先通过 A/A′ 谱系复现门。
