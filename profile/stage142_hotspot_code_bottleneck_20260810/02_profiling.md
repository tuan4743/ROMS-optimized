# Stage 142 热点函数与瓶颈复核：第二次 profiling

详细函数、代码片段和瓶颈表见 `HOTSPOT_CODE_AND_BOTTLENECKS.md`。

## 交叉证据

- 全长 PROFILE 排名：3D predictor 17.0758%、tracer corrector 16.6550%、GLS 13.6465%、step2d 10.9933%、biology 8.7587%；全部 message timers 25.8051%。这些是累计 CPU timer share，不是 wall share。
- 8-rank perf 排名：`pre_step3d` 14.778%、`step3d_t` 12.958%、scalar pow 7.046%、UCX progress 8.073%、`mp_exchange4d` 6.558%、biology 6.369%、t3dmix 5.181%、GLS 4.955%、step2d self 4.485%。
- compiler report：六热点中许多内层循环已经向量化；GLS Thomas 前扫即使完全消除也只占全样本 0.322-0.477%；biology 辐射 loop permutation 的理想整机上限 0.4416%。
- arrival-skew：matched edge/interior task-clock 仅差 0.277-1.030%，但 interior compute/exchange 增、edge UCX progress 墐，组件互相抵消；contact ownership 与 late-rank 图高度吻合。

## 结论

瓶颈分类为 `LOAD_IMBALANCE / SYNCHRONIZATION_CRITICAL_PATH`，其上叠加大量 compute 和 halo work。`MEMORY_BOUND` 只能标为假设；现有 PMU 不支持该结论。

最小高价值下一步是条件式 P1 phase probe，而不是直接优化最大 CPU 函数。P1 之后只保留 `get_contact3d` 计划/缓冲复用与单个 4D face-pack 微结构两个条件分支。

## 第三方复核

先确认 `deepseek-v4-flash` provider 为 ready。因 `run_worker_agent` 的 research workspace 未登记 MCC 根，改用 `delegate_many` 发送两份脱敏纯文本摘要。沙箱内两项 `fetch failed`；授权网络重试后两项均消耗 token 但 `output=""`。按项目规则均判 `REJECTED_EMPTY_OUTPUT`，没有任何第三方结论进入本分析。
