# Stage 161 第二次分析：FMA 指令收益上限

## 最终可执行文件对照

| symbol | A′ instructions | B instructions | reduction | B FMA | A′→B YMM operand lines |
|---|---:|---:|---:|---:|---:|
| pre_step3d_tile | 13794 | 13747 | 0.3407% | 88 | 273→259 |
| step3d_t_tile | 8720 | 8660 | 0.6881% | 49 | 161→149 |
| t3dmix4_tile | 4069 | 4068 | 0.0246% | 4 | 98→97 |

三个对象和两个 executable 的文件尺寸均未变化；内容 SHA 不同。FMA 收缩真实，但代码量变化极小。

Stage 160 的代表 rank 动态份额为 14.175%、10.205%、5.238%，合计 29.618%。若要贡献整机 2% 时间下降，池内必须至少下降 `2/29.618 = 6.7527%`，即池内约 `1.0724x` 加速。

把每条静态指令保守视为等成本，按三个动态池加权：

- PRE contribution：`14.175% × 0.3407% = 0.04830%` whole；
- step3d_t：`10.205% × 0.6881% = 0.07022%` whole；
- t3dmix4：`5.238% × 0.0246% = 0.00129%` whole；
- 总计约 `0.11980%` whole，仅为 2% 门的 5.99%。

该模型不是实测性能，也不能证明 FMA latency；它用于保守静态筛查。即使考虑依赖链收缩，仍缺少约 16.7 倍量级才能触及门槛，而且这些内核已有显著 load/store 与同步约束。因此不消耗四节点机时。

DeepSeek V4 Pro 的两个脱敏复核请求均返回空输出；按规则标记 `REJECTED_EMPTY_OUTPUT`，没有第三方判断进入本分析。

结论：`MECHANISM_REAL / STATIC_CEILING_0.12_PERCENT / REJECT_BEFORE_ROMS`。
