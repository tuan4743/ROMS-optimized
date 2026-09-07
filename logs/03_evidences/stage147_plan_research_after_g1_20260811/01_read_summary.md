# Stage 147 第一次分析：读取与初步总结

- 日期：2026-08-11 EDT
- 类型：连续两次无效后的强制 PLAN；零模型机时、零源码修改、零输出删除。
- 触发条件：Stage 145 G4 实测 `+0.4288%`，Stage 146 G1 实测 `-0.1865%`，均未达到 `2%` 有效线和 `3%` 晋级线。

## 已读取证据

1. 冻结 S32 `ROMS/Utility/mp_exchange.F`：接口已含 `Nvar` 与最多 A-D 的聚合交换；实现是按方向 pack，`MPI_Irecv`，blocking `MPI_Send`，逐请求 `MPI_Wait`，再 unpack。
2. 当前 ROMS develop 的 `mp_exchange.F`：仍采用 `Nvar` 聚合、方向缓冲、非阻塞接收与发送/等待/解包的同类组织；没有可直接移植并预期获得 2% 整机收益的新 halo 架构。
3. 本项目历史账本：Sendrecv、不完整 Isend、persistent request、exchange double-buffering、泛化 async halo、通信 pack/overlap 均已有负结果或低于门槛的上限；O33 已将旧 aggregate/gather 瓶颈显著压低。
4. 中国优先科研资料：swPOM、LICOM、并行 I/O/同化系统普遍强调通信聚合、数据局部性、计算通信重叠和专用 I/O；这些是方法论来源，但其机器规模与体系结构不同，不能直接作为本题收益证据。

## 初步结论

- **不重开**“把 blocking send 全改 Isend”“直接 persistent”“整文件双缓冲”“专用 I/O rank”“移植最新 mp_exchange”五条路线。
- tracer materialization 大融合家族暂时冻结：G4 与 G1 都真实删除了中间访存，但整机收益分别只有 `0.4288%` 与 `-0.1865%`，说明该访存大多不是当前关键路径上的 DRAM 流量。
- 唯一保留的通信问题是一个更窄的静态问题：活动配置中是否存在相邻、同版本、同消费者边界的多个 `mp_exchange*` 调用，可在调用者侧合并为一次已有 `Nvar` 聚合，而不新增等价复制、改变 halo 时刻或跨越消费者。
- 下一步首先执行零机时审计；若最大可删除的启动/等待次数换算后不能保守超过整机 2%，立即停止，不提交模型作业。

## 来源

- ROMS develop `mp_exchange.F`: https://raw.githubusercontent.com/myroms/roms/develop/ROMS/Utility/mp_exchange.F
- ROMS releases: https://github.com/myroms/roms/releases
- LICOM 深度并行优化: https://www.mdpi.com/2076-3417/13/4/2690
- swPOM 优化论文: https://crad.ict.ac.cn/fileJSJYJYFZ/journal/article/jsjyjyfz/HTML/2019-7-1556.shtml
- ROMS_AGRIF 并行 I/O 论文: https://crad.ict.ac.cn/fileJSJYJYFZ/journal/article/jsjyjyfz/HTML/2019-4-790.shtml

## 输出生命周期

Stage 145/146 的短程输出保持原位。本阶段没有创建模型输出，不具备也不执行删除动作。
