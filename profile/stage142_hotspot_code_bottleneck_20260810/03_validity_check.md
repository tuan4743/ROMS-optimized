# Stage 142 热点函数与瓶颈复核：第三次有效性检查

日期：2026-08-10 EDT / 2026-08-11 +0800。

## 独立复核

- 重新读取远端 `118784141` 原始 `model.log`：`2592/12960`、`ROMS/TOMS: DONE`、累计 CPU `155619.296 s`、`real=1852.823 s`；两网格原始阶段数字与本报告重新计算的百分比一致。
- 重新解析 `118813105` 八份 `rank_*.report.txt`；top symbols 的 mean/min/max 与既有 Stage 131 文档一致，Total Lost Samples 为 0。
- 冻结源码只通过 `tar -xOf` 读取，路径和 SHA 与强制规则一致；没有使用当前可漂移的裸 `s22b/oceanM` 或工作树作为源码真相。
- `step2d`、4D halo、contact3d、GLS、biology、pre/step3d_t 的代码行均来自冻结归档；没有把队友后续 s46/vdiff 代码写成 S32。
- PROFILE 与 perf 的比例在文档中保持不同口径，没有把 CPU share 误写为 scoring wall share。
- 第三方两次最终 output 均为空，已经拒绝；未把 token 消耗或 provider success 当作有效分析。

## 判定

- Pass 1 valid: **YES**。来源、父本、作业和证据边界完整。
- Pass 2 valid: **YES**。热点排序由全长 phase + 函数采样 + 源码 + 负实验交叉支持。
- Root cause proven: **PARTIAL**。arrival skew/synchronization critical path 已证；具体 late phase 仍需 P1。
- Performance gain proven: **NO**。本阶段没有候选、构建或模型运行。
- Scoring validity: **NO NEW RESULT**。正式 S32 `1753.876 s / 26/26` 不变。
- Reproduction required: P1 只有在用户继续授权模型诊断时执行；P2 未授权。
- Output deletion: 本阶段没有模型输出；删除不适用。Stage 139b 既有输出继续保留。

最终状态：`STATIC_ANALYSIS_VALID / P1_ONLY_NEXT`。
