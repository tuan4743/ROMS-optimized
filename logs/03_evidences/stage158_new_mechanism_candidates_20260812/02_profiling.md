# Stage 158 新机制候选——性能刻画与天花板（2026-08-12）

## 候选 A：THP/大页（内存页轴）

- 现状：登录节点 `/sys/kernel/mm/transparent_hugepage/enabled = always madvise [never]`——系统级 THP 关闭。
- 适用性论证：S47 `-no-heap-arrays` → 大型 3D 数组（OCEAN 状态、AVERAGE、halo 缓冲）全在可执行文件 .bss 段（anonymous private 映射）→ THP 可合并为 2MB 页。每 rank 静态内存数百 MB；热点内核（pre_step3d/step3d_t/step2d）遍历多个 3D 数组，工作集数十 MB >> L2 TLB 6MB 覆盖（1536×4KB）→ 存在真实 TLB miss 面。
- 理论天花板：若 TLB miss 占热点内存访问时间 3-5%，热点（50% CPU）节省 ≈1.5-2.5% 墙钟——**可能过门**；但 2MB 页 first-touch 缺页更贵、defrag 抖动有负向。粗估跨度大（0-2.5%），必须实测。
- 障碍：sysfs 写需 root；节点权限待审计（1 分钟只读作业）。若无权限 → 轴关闭。
- 风险：零构建零源码零轨迹变化（内存页映射不影响浮点）。

## 候选 B：set_avg OMP 正确谱系复测（CONFOUNDED 前科复测）

- 池：timer 5（Processing of output time averaged data）1.768% CPU / 2.308% wall（O33 118405320 实测）。
- 前科：Stage 129 `setup_build_setavg.sh`（tracer it-loop `!$OMP PARALLEL DO DEFAULT(SHARED) SCHEDULE(STATIC)`）实测 −7.84%/−8.12%，但 B 树缺 AVX2/no-FMA/IPO → CONFOUNDED，方向为负不可归因。
- 机制不变，谱系正确：从 S47 冻结源码 fork（`backup_S47_FULL_SRC_20260811.tar.gz` 或 nan 树只读复制）+ 完整生产旗标（-ipo -prof-use PGO 链同 1fc3be38 配方）→ A′=零 delta 重建、B=+set_avg OMP。
- 数值论证：set_avg 累加 `AVERAGE(ng)%x(i,j,k) += f` 按 j 分区 → 不同线程写不同 j 行 → 无竞争；单元素每步只累加一次 → 顺序无关 → **位级一致**。
- 天花板：带宽受限 RMW（tile 45x40x34≈61KB/变量），2 线程共享带宽 → 加速 1.0-1.2x → 收益 0.4-0.9% wall——**不达 2% 门**。价值 = 把 CONFOUNDED 判决变干净；若意外过门（Stage 129 数字提示存在未解释项）则升级。
- 成本：1 构建（~5min）+ 1 短 ABBA（~8min）。风险：位级一致已论证；轨迹必须 A′/B 一致校验。

## 候选 C：UCX_RNDV_THRESH eager 化（传输协议轴）

- 现状：134,368 B 与 ~626 KiB Allreduce 走 UCX 默认 RNDV 阈值（auto）；eager 上限通常 16KB-8MB 区间自适应。
- 机制：`UCX_RNDV_THRESH=inf`（全 eager）或设到 2MB——中等消息免握手直接发。零构建、轨迹中性（只改传输路径不改数值）。
- 天花板（census 实测）：全部 Allreduce 队列总 mpi_s ≈1.5s/100s 诊断 = 1.5%，且这是协议全部开销——eager 化的理论收益 <1.5%，paired-excess 仅 0.44% → **低于 2% 门**。
- 价值：低成本微基准（复用 Round 4 程序，~2min 机时）确认关闭，完成该轴。

## 推荐顺序

A（唯一可能过门的真新轴，先 1 分钟权限审计）→ B（规则点名的 CONFOUNDED 复测）→ C（微基准关闭）。三者互不重复、机制各异，符合新规则"distinct mechanisms"。
