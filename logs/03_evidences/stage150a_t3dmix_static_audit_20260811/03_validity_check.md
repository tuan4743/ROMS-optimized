# 第三次分析：前两次有效性复核

## 复核项

- 谱系：冻结 archive、二进制与 exact Stage 134 preprocessed source 的 SHA 均已记录。
- 源码：两轮 harmonic、六个主循环、边界顺序与 scratch 生命周期均从 exact active source 核对。
- 编译器：使用既有 exact S32/Stage 134 IPO report，避免弱旗标错树混杂；report flag 包含 precise/AVX2/no-FMA/IPO/OpenMP。
- 机器码：通过符号地址范围反汇编冻结最终二进制；未把空 IPO object 误当最终代码。
- 算术：字节模型为逻辑 load/store 上界，明确不声称等同 DRAM 流量或 wall-time。
- 门禁：5.00% hotspot × 32.6923% 现实局部上界 = 1.6346%，低于 2%；即使按更严格晋级线 3% 更不成立。
- 生命周期：本阶段没有模型输出，删除规则不适用；Stage 145/146 结果继续保留。

## 最终判定

前三次分析互相一致且有效：`STATIC_VALID / ROLLING_FUSION_GATE_FAIL / REJECT_BEFORE_BUILD / NO_JOB / NO_VALIDATION_NEEDED`。

没有性能、精度或 wall-time 新结果。正式最佳结果仍是 S32 `118755216 / 1753.876 s / 26/26 PASS`。
