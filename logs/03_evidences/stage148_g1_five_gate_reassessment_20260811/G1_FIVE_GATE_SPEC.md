# G1 column-local 五道静态门

全部通过才允许候选构建：

1. 对 `t(...,3,itrc)` 及 `nstp/nrhs/nnew/3` 潜在别名做 exact-section def-use，证明 producer 与 vertical RMW 之间无消费者、别名或跨线程依赖。
2. 证明水平 producer 能以 column 为消费单元向 vertical recurrence 供值；不得依赖先完成整 k-plane/tracer field。
3. 建立 bytes 账本，包含所有输入、FC/CF/DC、scratch、重复 face work；conservative PRE reduction 必须 `>12%`，最好 `>=15%`。
4. scratch 仅允许寄存器或 O(N) column 量级；任何 O(I×J×N×NT) 或等价完整场立即否决。
5. 对 exact S32 使用 `-qopt-report=5 -qopt-report-phase=loop,vec` 与带源码映射的反汇编，确认原机器码确有目标全场 store+reload，候选机器码确实删除；仅凭源码循环数不算通过。

即使五门通过，仍使用同树 A/A′/B 单变量诊断：`<2% STOP`、`2-3% REVIEW`、`>=3%` 且两 B 均快才允许 full。
