# Stage 143 — P1 同-rank持续时间探针细化：Pass 3

## 独立复核

- `MPI_Wtime` 绝对时间跨节点不可比：已由 MPI Forum 与 Open MPI 官方文档支持。
- 新规范没有加入 barrier、时钟同步或模型数据访问；物理公式、网格、时间步、输入、生态和双向嵌套语义均未改变。
- phase 拆分覆盖用户要求的 step2d、contact、halo、MPI、nesting 和 OS telemetry；`get_contact2d/3d` 均为六段。
- late-rank 判据同时要求 work excess 与 next-wait deficit，避免把早到后等待的 rank 错认成慢 rank。
- 两条 clean probe legs 与独立 sidecar leg隔离了 OS 采样扰动。
- 旧 Stage 140 patch 的 thread race、unreachable exit、未声明符号和 phase 混叠已明确关闭；旧补丁不可提交。

## 有效性结论

- Pass 1 valid: **yes**。设计边界、旧草案缺陷和输出生命周期均有明确证据。
- Pass 2 valid: **yes**。计时口径和 work-wait 配对能够回答具体优化归因问题。
- Root cause proven: **no**。探针尚未构建或运行。
- Performance gain proven: **no**。
- Scoring validity: **not applicable**。
- Reproduction required: 若以后运行，必须有两条 clean probe legs，并由 A′ 前后腿包围。
- Output deletion: 本阶段无模型输出；删除不适用。旧草案与设计证据保留。

状态：`DESIGN_REFINED_VALID / LEGACY_DRAFT_REJECTED / NO_JOB`。

