# Stage 147 第二次分析：profile 映射与收益门槛

## 当前瓶颈基准

全长 PROFILE 的聚合 CPU 池中：3-D predictor `17.1%`、tracer corrector `16.7%`、GLS `13.7%`、2-D kernel `11.0%`、biology `8.8%`；通信合计约 `25.8%`，其中 4-D halo `10.3%`、2-D halo `6.5%`、3-D halo `3.8%`。I/O 池 Writing `1.57%`、set_avg `2.02%`、input `1.58%`。

这些是聚合 rank-CPU 份额，不是可以直接相加的独占 wall time。VTune 节点样本还显示计算热点节点间极差约 2-5%，而 `mp_exchange4d` 的节点差异与 UCX progress 反向移动，尚未证明一个固定 late node。

## 研究方向与本题证据的映射

| 方向 | 文献/上游启示 | 本题已有证据 | 判定 |
|---|---|---|---|
| PRE/CORRECT 大融合 | 减少 3-D tracer 中间 materialization | G4 `+0.4288%`；G1 `-0.1865%` | 冻结家族 |
| 全面非阻塞/双缓冲 | 隐藏通信等待 | v24b-v28、Stage 11/44 已负或上限 `<0.4%` | 不重开 |
| persistent halo | 降低请求建立成本 | 保存 allocatable/request 变体已有回退 | 不重开 |
| 上游 mp_exchange 移植 | 复用新实现 | develop 与冻结版均已是 `Nvar` 聚合的同类协议 | 无移植价值 |
| 专用 I/O / PNetCDF | 大规模模式可显著减少写出等待 | 当前写出池仅 `1.57%`，set_avg `2.02%`；还会牺牲计算核 | 不进机时 |
| rank/tile 负载均衡 | contact/海陆掩膜可能产生尾部 | 完美再平衡 ceiling 仅 `1.81-2.57%`，Stage 128 已降级 | 只保留诊断，不做候选 |
| 调用者侧 halo 聚合 | 减少相邻消息启动与等待 | 尚未形成活动配置的完整邻接表 | **P0 零机时审计** |

## P0：活动 halo 聚合审计

对冻结 S32 的 BYE24BIO15 活动预处理结果，逐个记录：

1. 调用文件、行号、`mp_exchange2d/3d/4d`、`Nvar`、A-D 实参。
2. 每个实参的版本号/时间层、上一次写入点、下一消费者。
3. 两次调用之间是否存在读、写、BC、mask、nesting、reduction 或同步语义。
4. 是否能用现有 Nvar/A-D 接口无额外全场复制地合并。
5. 可删除的消息启动数、等待数和 pack sweep 数；将其与相应 halo timer 的可归因 self 区间相乘，给出保守整机 ceiling。

## 硬门槛

- `GO`：至少一个 fusion island 在两网格活动路径均语义闭合，且保守 wall ceiling `>2%`，目标 `>=3%`；没有新增等量 full-field copy；不跨越 BC/nesting/consumer。
- `NO-GO`：仅减少函数调用；只是将 pack 从两遍变成另一块临时数组的两遍；立即 wait；或 ceiling `<=2%`。
- 若 `GO`，下一阶段只做一个调用点族，先 A/A′/B 144/720；不同时改变 MPI API、rank mapping 或运行库参数。

## 为什么不直接跑 P1 late-rank 探针

现有 contact/halo 完美再平衡天花板本身只有 `1.81-2.57%`，跨过有效线但达不到稳健晋级线，且探针只解释偏斜、不会自动产生优化。时间紧张时，应先用 P0 判断是否存在可删除的真实通信工作；只有出现明确候选且 P1 能决定其实现，才花一条诊断作业。
