# Stage 160 第二轮 profile+plan+search（2026-08-13 凌晨）——补全 census + 队友同步，无新候选

## 1. Census 补全分析（第一轮未覆盖的 op）

- **IRECV 是最大 gap 队列**：212.9 万次事件、gap 671.5s（mean 0.32ms；p50=0、p95=0.06ms、max=3.06s）——这是 halo 交换的接收等待，占 ~10.5s/rank wall。
- 但 IRECV gap = **到达失衡的结果**（多数 irecv 数据已到、p50=0；长尾为等待 sender）：移除手段 = 负载均衡/置换，已被 P1 判决（ceiling 0.441%）与队友 s58（vali 失败）双重关闭。
- ALLREDUCE mpi 14.2s、SEND mpi 15.7s、WAIT mpi 12.1s、WAITALL mpi 3.8s 合计 ≈31.6s/64rank ≈0.5% wall——无攻击面。
- BARRIER 28.7s（启动同步）已第一轮关闭。
- **结论：census 全 op 无遗漏可移除队列；"同步受限结构"结论不变。**

## 2. 队友 README 同步（只读）

- **s49 step2d OMP 实测失败**（1day +19%）：Hygon Zen 上"多小循环+每循环 barrier"模式 OMP 得不偿失——交叉印证我方 Stage 113 关闭。
- **s51_O84q 3day = 1759.4s**（位级无损打包互换）比 S47 慢 5.9% → S47 的 27m42s 中 1m38s 来自 O33 有损嵌套打包。
- **s62_nb2d**（全非阻塞 2D 交换，md5 c6f9325e）测试中；**s63_allland**（全陆地 tile 跳过计算）构建中，预期 3-8s。二者为队友占领区，我方不重复。

## 3. 我方第二轮候选空间排查（全关）

| 方向 | 状态 |
|---|---|
| 3D/4D 交换非阻塞化（新基座变体） | S22/S23 已拒 + 队友 s62 占 2D；预期同负 |
| 冷启动（输入读取/broadcast）优化 | 全长池 <0.3%（Stage 90 数据换算），低于门 |
| coll_rules bcast 段 | per-step 无消费者 |
| OMP_SCHEDULE dynamic/guided | STATIC,1 已测 +70% 灾难；2 线程负载差 <2.3% |
| UCX_TLS/其他传输参数 | 天花板 <1.5% |
| set_data OMP | set_avg 同族已证噪声无效 |

## 4. 结论与建议

- 第二轮 search **无新机制候选**。三个方向已由队友占领（s62/s63）——按团队惯例不重复。
- 建议：只读监控队友 s62/s63 结果；若队友未突破，我方下轮可考虑在**队友结果落地后**再做差异化选择（如 s62 通过则 3D/4D nb 变体在新基座复测）。
- 按新规则：无候选时报告用户，不判死、不冻结（等待队友结果期间保持 profile+plan+search 只读模式）。
