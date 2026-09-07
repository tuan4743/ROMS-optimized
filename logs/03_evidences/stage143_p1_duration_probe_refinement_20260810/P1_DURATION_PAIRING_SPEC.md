# P1 同-rank持续时间与 work-wait 配对规范

## 1. 时钟语义硬规则

- `MPI_Wtime()` 只作为进程本地 elapsed clock：`dt=t1-t0`。
- 不输出、排序或相减不同 rank 的绝对 `t_enter/t_exit`。
- 不依赖 `MPI_WTIME_IS_GLOBAL`；Open MPI 明确不保证节点间时钟同步。
- 不为同步时钟而增加 `MPI_Barrier`，因为 barrier 会改变待测关键路径。
- 初始化时记录 `MPI_Wtick()`；计时器调用成本在模型时间循环外单独校准。
- rank 级串行段使用 `MPI_Wtime()`；若打点位于 OpenMP worker 内，则使用同一线程的本地起止值，绝不跨线程配对。

官方语义依据：

- MPI Forum timers：<https://www.mpi-forum.org/docs/mpi-1.1/mpi-11-html/node150.html>
- Open MPI `MPI_Wtime`：<https://docs.open-mpi.org/en/main/man-openmpi/man3/MPI_Wtime.3.html>

## 2. 记录结构

每个计时单元至少带：

`leg, rank, host, pid, thread, grid, caller_context, direction, phase, total_s, calls, max_s, block0_s, block1_s, block2_s`

- `caller_context` 区分 `step2d`、`step3d_t`、`nesting` 和其他调用者，防止把所有 `mp_exchange2d` 混在一起。
- `direction` 至少区分 `WE` 与 `SN`；4D west/east pack 的跨 leading-dimension 访问不能被平均掉。
- 只在内存中累计；三段 block 用于检查运行早/中/晚稳定性。结束时每 rank 写一次文件。
- `count` 使用 64 位整数；start 数组必须是 `(thread,phase,context)`，并带 depth/active 防止重入覆盖。
- 对 total/child 采用明确的 inclusive/exclusive 口径；任何 residual 必须满足非负和闭合误差门。

## 3. 精确 phase 拆分

| 组 | 独立计时项 | 直接回答的问题 |
|---|---|---|
| step2d | `T_step_arith`、`T_step_bc`、`T_step_cons`、`T_step_total`、`T_step_residual` | 慢在算术、边界处理、守恒校正，还是 MPI 前后的碎片/未分类调用？ |
| contact2d | `T_c2_plan`、`T_c2_alloc`、`T_c2_pack_interp`、`T_c2_post`、`T_c2_waitall`、`T_c2_unpack` | 高频 contact 是否慢在计划、allocator、计算、通信提交或等待？ |
| contact3d | `T_c3_plan`、`T_c3_alloc`、`T_c3_pack_interp`、`T_c3_post`、`T_c3_waitall`、`T_c3_unpack` | `get_contact3d` 的 2.04% perf 到底可改哪一部分？ |
| 2D halo | WE/SN 各自的 `T_h2_pack`、`T_h2_irecv_post`、`T_h2_send_blocking`、`T_h2_wait`、`T_h2_unpack` | 是 face pack 重、blocking Send 进展重，还是纯等别的 rank？ |
| 4D halo | WE/SN 各自的 `T_h4_pack`、`T_h4_irecv_post`、`T_h4_send_blocking`、`T_h4_wait`、`T_h4_unpack` | 4D 自身样本里有多少是可改 pack，而不是同步等待？ |
| nesting | `T_feedback_compute`、`T_feedback_post_send`、`T_feedback_wait_sync`、`T_feedback_unpack` | contact-heavy rank 是否在反馈计算持续成为尾部？ |

补充约束：

- `T_plan` 包含 owner-plan lookup、cache hit/miss、count、prefix/disp；另记 plan rebuild 次数。
- `T_alloc` 包含 allocate/reallocate/deallocate，并记录请求元素数/容量，不碰模型数据。
- `T_post` 只包含 `MPI_Irecv/MPI_Isend` 调用。现有 halo 的 blocking `MPI_Send` 单列为 `T_send_blocking`，因为它可能含进展或等待。
- `T_waitall` 只包围 `MPI_Waitall`；`T_unpack` 只包含接收后解包/装配。若插值实际发生在接收后，应归入 unpack/assembly，不能按名字强塞进 pack。
- P0 指向高频 2D contact，所以 2D 与 3D 两套六段都必须有；不能只测 `get_contact3d`。

## 4. late-rank 判定：work 与后续 wait 配对

对同一 leg、同一 grid、同一 caller context，计算每个 rank 的本地持续时间：

```text
work_excess(r,p) = max(0, D_work(r,p) - median_rank(D_work(:,p)))
wait_deficit(r,p)= max(0, median_rank(D_wait_next(:,p)) - D_wait_next(r,p))
paired_excess(r,p) = min(work_excess(r,p), wait_deficit(r,p))
```

真正的 late-rank 证据必须同时满足：

1. `D_work` 高于 rank 中位数；
2. 紧邻的 `D_wait_next` 低于中位数；
3. `work` 与对应 `wait_next` 在 ranks 间呈稳定负相关；
4. 同一 rank/tile 群在两条 clean probe legs 重复；
5. 与 P0 contact-heavy ranks / Stage 93、127 late-rank 空间签名一致。

辅助排序分数可用 `z(work)-z(wait_next)`，但不能单独作为晋级证据。

每条 clean leg 的保守可移除上限：

```text
ceiling_leg(p) = max_rank(paired_excess(r,p)) /
                 median_rank(model_loop_duration(r))
```

晋级取两条 clean legs 的较小值。只有 `min(ceiling_clean1,ceiling_clean2)>2%` 且 rank/tile 归属稳定，才允许 P2。只看到函数总计时 3% 或某 rank 工作长而没有 wait deficit，均不晋级。

## 5. work-wait 对应关系

| work 侧 | 必须配对的 wait 侧 |
|---|---|
| `step_arith + step_bc + step_cons` | 同 caller/context 下紧邻的 2D halo blocking-send/wait 或下一 nesting sync |
| `contact plan + alloc + pack/interp + post` | 同一次 contact 调用的 `waitall` |
| `halo face pack + irecv_post + send_blocking` | 同方向、同调用的 receive `wait` |
| `feedback_compute + feedback_post_send` | 同次 feedback 的 `wait_sync` |

不能把某个 work 总量与全程序全部 MPI wait 配对，也不能跨 grid、跨 caller 或跨方向配对。

## 6. sidecar 与作业腿设计

推荐同一 allocation 中使用：

```text
A′ → P-clean-1 → P-sidecar → P-clean-2 → A′
```

- 两端 A′ 用于检测热身/节点漂移和 probe 总开销。
- `P-clean-1/2` 是 late-rank 与 >2% 门禁的唯一主要计时证据。
- `P-sidecar` 只用于 NUMA/THP/TLB 相关性，不参与主要 ceiling 判定。
- sidecar 先由每 rank 写一次 `rank,host,pid` 映射，再按映射采 `/proc/<pid>/numa_maps`、`smaps_rollup/status`；不能只看 rank 0。
- PMU/TLB 只对预选 contact-heavy ranks 与对照 ranks 尝试；不可用时明确记为 unavailable，不以 0 事件冒充无瓶颈。

## 7. 开销与中性门

- 不插入 barrier，不改变 MPI 调用顺序，不触碰模型数组。
- 计时调用点数量必须静态统计；A′ 两腿均值与两条 clean probe 腿均值比较，probe overhead 目标 `<0.5%`，超过 `1%` 则先减点，不解释性能相位。
- A′/probe 轨迹必须一致；本诊断不能成为成绩候选。
- total 与 child phases 闭合误差应 `<0.5% total`；负 residual 或明显不闭合直接判探针无效。

