# Stage 162 第二次分析：PGO 机制与实验门禁

## 为什么未被 Stage 158/161 关闭

| 方向 | 改变内容 | 已有结论 |
|---|---|---|
| Stage 158 | 更激进的静态 loop multiversion heuristic | 无新增可识别快路，静态关闭 |
| Stage 161 | 三个对象允许 FMA contraction | 仅删约 108 条静态指令加权，整机 ceiling 约 0.1198% |
| exact-S47 PGO | 用真实执行频率重做 hot/cold layout、branch/register/vector/IPO 决策 | 尚未完成训练；机制独立 |

S47 当前 profile 来自旧 S46 路径。恢复 Stage 159 的直接目的不是“再开一个编译旗标”，而是消除 profile/source/workload 漂移，并检查 feedback 是否真正覆盖 S47 热函数。

## 最小继续方案

1. 复用已验证的 exact-S47 pgogen binary；把失败启动产生的旧 profile 目录整体改名保留，不删除。
2. 修正私有运行目录的 `ROMS/External` 链接后，仅执行一次 `432/2160`、4 节点、64 MPI x2 OMP 训练。
3. 训练有效门：exit 0、`ROMS/TOMS: DONE`、无 blow-up、`.dyn` manifest 非空且明显晚于失败启动证据。
4. 训练不是性能证据。训练通过后，先生成 `pgopti.dpi` 并构建 exact-tree A-prime/B：A-prime 使用冻结旧 S46 profile，B 使用新 S47 profile。
5. feedback build 必须检查：源码/旗标/链接/runtime 一致；编译报告列出 applied/missing/stale profile；最终二进制和热点符号汇编存在可解释差异；不得把单纯代码地址漂移当优化。
6. A/A-prime 先证明零改重建没有不可接受偏差。随后才允许匹配 A-prime-B-B-A-prime；`<2% STOP`，`2–3% REVIEW`，`>=3%` 且双 B 快才进入 full。
7. 任何晋级仍需 `2592/12960`、官方 26/26 PASS；不得更改物理公式、网格、输出、生态、双向嵌套或正式步数。

## 风险与停止条件

- profile 只覆盖初始化或短训练不具代表性：STOP。
- 编译报告显示大量热函数 missing/stale：STOP 或重新采集，不计候选。
- A-prime 无法复现冻结父本：不得归因 B。
- 新 profile 只造成二进制布局漂移、无热函数应用证据：不进入 ROMS timing。
- 训练输出空间不足：保留现状并报告，不删除最新有效输出。

结论：历史 2.24% 只提供“可能跨过门槛”的继承天花板；exact-S47 是否有增益仍必须实测。
