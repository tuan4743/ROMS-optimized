# Stage 148 第一次分析：G1 五门复盘

- 日期：2026-08-11 EDT
- 类型：Stage 146 事后门禁复盘；只读源码/机器码符号检查，无模型作业、无源码修改、无删除。

## 核心修正

G1 在 Stage 146 之前比跨函数 fusion 更合理：它位于同一 `pre_step3d_tile`、同一 tracer 生命周期和紧邻 producer/consumer 区间，目标是减少完整 provisional `t3` 的物化，而不是减少 subroutine call。

但 Stage 146 实际测试的是 **j-strip、单 tracer 小工作集版本**，不是理想的寄存器/单 column `[N]` 版本。其 `-0.1865%` 只能关闭该 strip 实现，不能单独证明所有 G1 形式都无效。

## 五门对照

| Gate | Stage 146 证据 | 复盘判定 |
|---|---|---|
| 1 单生产者→单消费者 | 活动配置中间仅关闭的 AGE_MEAN/T_PASSIVE 分支；BC/halo/nesting 在岛后 | PASS，限定 BYE24BIO15/C4 |
| 2 vertical recurrence 可流水 | vertical `FC/DC` 不依赖 provisional t3；通过 j-strip 重排实现 | PASS_STRIP，不等于理想 column PASS |
| 3 conservative PRE reduction >12% | 只算出源码逻辑 1.504 GiB/step，未除以 PRE 实际总流量；新 scratch 仍 store/load | **NOT_PROVEN** |
| 4 无同规模 scratch | 单 tracer strip，约 0.55-0.65 MiB/thread，不随 NT=17 放大 | PASS_BOUNDED，但弱于 `[N]` 理想 |
| 5 编译器/汇编确认真实 materialization | 构建未保存 qopt loop/vec report，也未做 store/reload 指令归因 | **NOT_DONE** |

按新的五门标准，Stage 146 候选应为 `REJECT_BEFORE_BUILD`，而不是 `GO_PROTOTYPE_CONDITIONAL`。已发生的实测仍是有效负结果，但不能扩大解释范围。
