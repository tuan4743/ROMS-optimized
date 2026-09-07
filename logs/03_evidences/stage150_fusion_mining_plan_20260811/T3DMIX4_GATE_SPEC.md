# Stage 150A: t3dmix4 biharmonic streaming-fusion gate

日期：2026-08-11 EDT

状态：`STATIC_PLAN / NO_CANDIDATE / NO_BUILD / NO_JOB`

## Exact S32 structure

活动预处理文件 `t3dmix.f90` 只有 `MIX_S_TS` 的 `t3dmix4_tile`。外层 `itrc=1:17` 已由选择性 OpenMP 并行；每线程私有 `FX/FE/LapT`。

每个 `k,itrc` 的活动顺序为：

1. 第一轮 XI/ETA flux 写 `FX/FE`；
2. 读四个 flux，写第一 harmonic `LapT`；
3. 对 `LapT` 执行四边 boundary handling；
4. 读相邻 `LapT`，写第二轮 `FX/FE`；
5. 读四个 flux，RMW `t(...,nnew,itrc)`。

粗网格约 45x40 interior 时三个自动数组约 `3*(53*48)*8 = 61.1 KiB/thread`；细网格约 30x31 时约 `35.6 KiB/thread`。它们超过典型 L1 容量但远小于每核 L2，不能默认等于 DRAM traffic。

## Gate A: 两层逻辑访问上界

按每个 interior point 的近似一致口径：

- scratch：第一 FX/FE store 2、LapT 读4写1、第二 FX/FE 读 LapT 4 写2、最终 update 读 FX/FE 4，共 17 doubles = 136 B；
- 不可省输入/输出基线：第一 flux 16 loads、LapT metrics 3 loads、第二 flux 12 loads、最终 t/metrics load-store 4 accesses，共 35 doubles = 280 B；
- 原始合计约 416 B/point。

只消灭 scratch materialization 的极有利局部上界为 `136/416 = 32.69%`；乘 t3dmix4 约 5.00% 热点份额，仅 `1.63%` 整机 CPU，低于 2%。

把第二轮重复 coefficient/Hz/mask 与 LapT/update metric reload 也幻想为全部免费复用时，绝对理论上界可达 `(136+112)/416 = 59.62%`。因此方向尚不能直接关闭，但 candidate 必须证明除 scratch 外还净删至少：

`0.40*416 - 136 = 30.4 B/point`

即至少约 4 次 double 输入重载，而且不能用等价 rolling-buffer store/load 抵消。否则 Gate A FAIL。

逻辑 bytes 不是 DRAM 预测。最终门禁必须以退休 load/store、L1/L2 traffic 与生成指令为依据。

## Gate B: rolling-row dependency proof

候选只能保留 O(I) 行缓冲：至少三行 `LapT`，以及完成第二 divergence 所需的当前/相邻 FX/FE 行。必须逐一证明：

- 第一 harmonic 在生成 `LapT(j)` 前已具备 `FE(j+1)`；
- 第二 ETA flux 与最终 divergence 的流水延迟正确；
- west/east boundary 在该行被消费前应用；south/north boundary row 在第二 harmonic 前应用；
- periodic、CompositeGrid、closed/gradient 的活动分支语义不变；
- `itrc` OpenMP 独立性和 PRIVATE 生命周期不变；
- 无 O(IxJ)、O(IxJxNT) 新 scratch。

## Gate C: machine-code evidence

在不写 candidate 前先取得 exact S32 的可源码映射报告：

- `-qopt-report=5 -qopt-report-phase=loop,vec`；
- 非 IPO report-only object 或带 `.debug_line` 的等价精确旗标对象；
- 对五个活动 loop group 统计 load/store 指令、spill、向量宽度和循环版本；
- 证明原 scratch load/store 确实退休，且不是已经被 scalar replacement/store forwarding 消除。

只有 Gate A/B/C 全过且保守 local reduction `>40%`，才允许 isolated A/A-prime/B build。目标应为 >=45%，给 critical-path 与噪声留余量。

## Stop conditions

- scratch-only 方案；
- 需要完整二维 scratch；
- 额外 coefficient row buffers 的 traffic 抵消净删输入重载；
- boundary 分支必须回退为整场 LapT；
- machine code 只能证明 cache hit 改善、不能证明足够指令/traffic 删除。

任一成立即 `REJECT_BEFORE_BUILD`。
