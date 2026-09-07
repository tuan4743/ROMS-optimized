# Stage 150A：t3dmix4 rolling-row 依赖与流量门禁

日期：2026-08-11 EDT  
范围：冻结 S32 `t3dmix4_tile`，仅静态审计；无源码修改、build、Slurm 作业或模型输出。

## 结论

判定：`STATIC_VALID / ROLLING_FUSION_GATE_FAIL / REJECT_BEFORE_BUILD`。

`t3dmix4` 约占全长 PROFILE CPU 的 5.00%，要形成 2% 整机 CPU 收益，局部至少需削减 40%。现实可实现的 rolling-row 方案在保守逻辑流量模型中最多削减 136/416=32.6923%，对应整机约 1.6346%；未过门禁。

## 精确数据流

每个 `itrc,k` 平面依次执行：

1. 第一轮 xi 通量 `FX`；
2. 第一轮 eta 通量 `FE`；
3. `LapT=div(FX,FE)`；
4. `LapT` 边界处理；
5. 第二轮 xi 通量 `FX(LapT)`；
6. 第二轮 eta 通量 `FE(LapT)`；
7. `t(nnew)-=div(FX,FE)`。

第二轮更新第 `j` 行需要 `LapT(j-1:j+1)`；`LapT(j)` 又需要第一轮 `FE(j:j+1)` 与相邻 xi-face。西/东边界可逐行完成，但南/北边界行必须在第二轮 eta 通量消费前存在。因此流水化至少要保留三行 `LapT`，并延迟/保存跨行的 eta-face 与系数，不能把全部二维 scratch 都变成寄存器值。

## 流量账本（每个内点，real8）

| 模型 | 总逻辑字节 | 局部削减 | 整机上界 | 判定 |
|---|---:|---:|---:|---|
| 原始六遍循环 | 416 B | 0 | 0 | 基准 |
| scratch 全消失幻想 | 280 B | 32.6923% | 1.6346% | 不可实现：二维 stencil 仍需跨行生命周期 |
| rolling rows，重新加载系数 | 344 B | 17.3077% | 0.8654% | 可实现但过低 |
| rolling rows + O(I) 系数行缓冲 | 280 B | 32.6923% | 1.6346% | 可实现上界，仍未过门 |
| register microtile 幻想 | 216 B | 48.0769% | 2.4038% | 不可信：超过 AVX2 16 个 YMM 的现实寄存器预算，极易 spill/失去向量化 |

rolling-row 的现实 scratch 下限约为 8 个 double/点（第一/第二轮 eta-face 的保存/回读，以及三行 LapT 的生产与消费）。即使把重复系数放入 O(I) 行缓冲，减少的源数组重载也会被缓冲区写回/读取部分抵消。

## 风险

- 当前六个主内循环均已有 unit-stride AVX2 VL4 版本；融合会扩大活跃集并增加寄存器压力。
- 每线程 `FX/FE/LapT` 工作集约 35.6–61.1 KiB，主要更像 L2/cache traffic，而不是可按 DRAM 峰值兑现的流量。
- 理论 1.6346% 是 CPU-share 上界，不是 wall-time 预测；critical-path、cache 命中和负载偏斜只会进一步降低可兑现收益。

因此不写 candidate，不做 report-only 重编译，也不消耗模型机时。下一阶段转为 Stage 150B：冻结 S32 `step2d_tile` 全 loop-DAG 静态 mining。
