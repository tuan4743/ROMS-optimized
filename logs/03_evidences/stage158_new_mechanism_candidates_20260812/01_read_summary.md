# Stage 158 新机制候选（profile+plan+search，2026-08-12）——读取总结

新规则下的第一轮 profile+plan+search：只读分析 + 联网检索 + 队友同步，提出真正未测的机制候选。

## 1. Profile 新产出：P1 census 完整聚合（本次新完成）

- 数据：Stage 152 census `119002058`（64 ranks × 100k 事件，本地流式聚合 `agg_stream.py`，640 万行）。
- op 映射（libp1probe）：1=Irecv 2=Isend 3=Send 4=Wait 5=Waitall 6=Allreduce 7=Barrier。
- **最大 gap 队列 = BARRIER（op=7, caller 0x501541）**：128 事件 = 每 rank 2 次、全部在 3 秒启动窗口、gap 高度均匀（0.446s×64，极差 <0.2ms）、mpi≈0.5-0.8ms → **paired excess = 0，启动同步，不可移除**（全长占比 <0.05%）。关闭。
- **134,368 B Allreduce（16796 doubles, caller 0x560e5b）**：gap 10.4s / mpi 1.5s / 940 行；与 Stage 152 判决（paired ceiling 0.441% <2%）交叉一致。Round 1/4 已实测算法轴，关闭。
- **点对点（Irecv count 4935/4725）**：gap 均匀、mpi≈0 → paired=0。关闭。
- 结论：census 无任何队列有 >2% 可移除上限；同步受限结构（与 Stage 93/152、队友 README"最慢 rank 决定步调"三方一致）。

## 2. Search 新产出：队友 sprint README 最新同步（只读）

- s58_perm（跨网格 tile 置换负载均衡）：机械修复跑通后 1day 慢 1.3% + vali FAIL（u=8.5e-5）→ 拒绝。
- s57_O84fullq（全量化）：vali FAIL（u=7.6e-5）→ **量化线永久关闭**。
- 节点择优：好节点组统计相同（±0.3s）→ 关闭。
- 队友结论："25min 目标的最后一个结构手段也已实测关闭。锁定纪录 S47 = 27m41.8s（J118946283，二进制 1fc3be38）"。
- 队友待校准名单（mem-layout/diag 降频/湍流量化）也被判"无法突破同步受限结构"。

## 3. 真正未测的轴（三方证据交叉后）

| 轴 | 状态 | 是否真未测 |
|---|---|---|
| collective 算法（ring/alg5/区间） | Round 1/4 实测 | 已测 |
| allocator（tcmalloc/glibc） | Round 2/3 实测 | 已测 |
| OpenMP 全族 | Stage 90/113 + 队友 | 已测 |
| 编译器/旗标/PGO | Stage 110-114/139b | 已测 |
| 量化 | 队友 s57 | 已测（vali 死） |
| tile 置换 | 队友 s58 | 已测（拒绝） |
| **THP/大页** | **从未实测** | **真未测** |
| **set_avg 正确谱系复测** | Stage 129 CONFOUNDED | **真未测** |
| **UCX_RNDV_THRESH** | 从未实测 | **真未测** |

## 4. 候选清单（提请用户授权）

- **候选 A：THP 状态审计 + 条件开关实验**（零构建内存轴）。登录节点 THP=[never]；若计算节点可切 madvise/always（需权限），A-B-B-A 测 TLB 收益（S47 -no-heap-arrays → 大数组全在 .bss anonymous 映射，2MB 页可覆盖）。若无权限 → 审计记录后关闭。
- **候选 B：set_avg OMP 正确谱系复测**（CONFOUNDED 前科的未测变体，新规则明文合法类别）。池 2.31% wall；带宽受限预期 0.4-0.9% 收益（不达 2% 门，价值=干净判决）。成本 1 构建 + 1 短 ABBA。
- **候选 C：UCX_RNDV_THRESH eager 化**（零构建传输轴）。天花板 <1.5%（Allreduce 队列总 mpi_s），预期关闭；低成本微基准可先行。
