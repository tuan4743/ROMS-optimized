# 第一次分析：读取与初步总结

- 日期：2026-08-11 EDT
- 输入：冻结 S32 源码归档，SHA-256 `615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`。
- 操作：只读复制、解包和静态源码审阅；无构建、无作业、无模型输出。

初步结论：正确对象是版本化 `tracer3d_pipeline`，不是 `pre_step3d_tile + step3d_t_tile` 的函数拼接。PRE 和 CORRECT 之间存在真实的 `nrhst` contact/halo，并产生新版 `Hz/Huon/Hvom/W/Akt`；因此只能寻找局部 fusion islands。

初筛候选：PRE 内 `t3` provisional→vertical RMW、PRE `nnew` base→`t3dmix4` final RMW、biology→CORRECT、`step3d_t` 内三段 column pipeline。详见 `TRACER_PIPELINE_DAG.md` 与 `FUSION_ISLANDS.md`。

