# Stage 146 G1：PRE `t3` provisional → vertical RMW 静态门禁

- 日期：2026-08-11 EDT。
- 冻结输入：Stage 144 保存的 S32 源码归档，SHA-256 `615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`。
- 审阅范围：`pre_step3d.F:343-564` 的水平 C4 tracer advection 与 `596-822` 的垂向 C4 advection；活动配置为 `TS_U3ADV_SPLIT`，由 `globaldefs.h:791-804` 展开为 `TS_C4HADVECTION + TS_C4VADVECTION + TS_DIF4`。
- 本阶段先只做静态依赖和工作集门禁；没有构建、作业或模型输出，Stage 145 两份结果继续保留。

## 初步结论

G1 不是普通 loop fusion。原 producer 以 `k → tracer → j → i` 扫描，先把水平预测写到全局 `t(:,:,:,3,:)`；consumer 以 `j → tracer → k → i` 扫描，构造列向 `FC/DC` 后读改写同一 `t3`。两段之间没有活动消费者，但循环方向存在真实转置冲突。

可行的最小原型是 `j-strip tracer pipeline`：每个 OpenMP 线程领取一个连续、近等长的 j strip；`DC` 只为该 strip 计算一次；随后逐 tracer 生成 strip-local vertical contribution，再在相同 strip 内按原 C4 公式生成水平通量，最终只写一次全局 `t3`。不能把两个大函数直接拼接，也不能创建等价于完整 `t3` 的 4-D scratch。

静态判定：`GO_PROTOTYPE_CONDITIONAL`。只有原型满足 `active CPP clean + final halo/nesting call counts unchanged + scratch bounded + A/A′ lineage`，才允许进入 144/720 A′-B-B-A′。

