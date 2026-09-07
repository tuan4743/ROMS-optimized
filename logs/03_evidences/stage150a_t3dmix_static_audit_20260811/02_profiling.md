# 第二次分析：profiling 与量化门禁

既有全长 PROFILE 中 `t3dmix4` 占总 CPU 约 5.00%；2% 整机门槛要求局部削减 >40%。逻辑访问模型以原始 416 B/点为基准：

- 可实现 rolling rows（重载系数）：344 B，局部 17.3077%，整机 0.8654%；
- rolling rows + O(I) 系数缓冲：280 B，局部 32.6923%，整机 1.6346%；
- 只有不现实的 register microtile 模型达到 48.0769% / 2.4038%。

Stage 134 qopt report 证明六个主 i-loop 均有 unit-stride AVX2 VL4 路径；冻结机器码含成规模 packed-double 指令且无 gather/scatter。每线程 scratch 约 35.6–61.1 KiB，删除的流量更可能命中 cache，不能按 DRAM 流量全额折算。

判定：`PROFILE_CEILING_BELOW_GATE`。未生成新的动态 profile；本文件只把既有全长热点份额、exact compiler report 与静态字节模型结合。
