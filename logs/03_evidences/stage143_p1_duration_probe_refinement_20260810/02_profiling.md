# Stage 143 — P1 同-rank持续时间探针细化：Pass 2

## 观测与设计依据

- MPI/Open MPI 文档均说明 `MPI_Wtime` 的返回值是调用进程/节点本地 elapsed clock；不同节点无需返回相同时间。
- Stage 93/127 已观察到 step2d 工作与后续 4D halo wait 反向变化；因此 late rank 应表现为“本地工作长、后续等待少”。
- Stage 142 仅知道 `mp_exchange4d` self、UCX progress 和 `get_contact3d` 总体可见，无法区分可改 pack/allocator 与不可直接删除的 wait。

## 修订后的 profiling 口径

1. 全部计时为同 rank、同 thread 的差值；跨 rank 只比较持续时间统计，不比较绝对时间戳。
2. 每项 work 只和同 grid、同 caller/context、同方向、同调用语义的 next wait 配对。
3. 两条无 sidecar probe legs 提供主要持续性证据；sidecar 腿仅辅助 NUMA/THP/TLB 归因。
4. contact2d/contact3d 都拆六段；halo 把 blocking Send 单独计时；nesting 分 feedback compute/sync。
5. `paired_excess=min(work excess, wait deficit)` 是保守可移除量；两条 clean legs 的较小 ceiling 超过 2% 才晋级。

## 预期诊断分支

- `alloc` 高、`waitall` 不低：allocator 是局部热点，但不是 late-rank 根因，不晋级。
- `pack` 高、后续 `wait` 等量降低：优先考虑单一 face-pack/缓冲布局。
- `plan/alloc/pack` 高且 `waitall` 等量降低：才考虑缓存 contact metadata/work buffers。
- `wait` 高而 work 不高：该 rank 是早到者，不能对它做计算优化。
- step2d arithmetic 高而相邻 wait 低，并在相同 contact-heavy tiles 重复：才审阅 late-rank 特有 step2d 数据路径。

本阶段没有性能测量；上述均为探针设计与判定规则。

