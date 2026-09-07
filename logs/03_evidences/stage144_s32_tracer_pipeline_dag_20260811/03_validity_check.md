# 第三次分析：前两次有效性验证

## 源码谱系

- 远端与本地归档 SHA-256 一致：`615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`。
- 活动宏与 time-index 关系均从归档源码确认；`t(...,3,:)` 与 1/2 轮换的 `nstp/nnew` 不别名。

## 反例检查

- 已推翻“PRE 写 t3 后直到 step3d_t 都无人使用”：`nesting(nrhst)` 在 `nesting.F:2229-2244,2877-2902` 读写 `Tindex=3`。
- 已推翻“CORRECT 可直接提前接 PRE”：中间产生新版 `Hz/Huon/Hvom/W/Akt`。
- 已确认 `t3dmix4` 不读 `t3`，而是读 `nrhs=nstp` 并 RMW `nnew`。
- 已确认当前配置未定义 `TS_MPDATA`，所以 `step3d_t.F:322-343` 的 entry `nnew` halo 不活动；final `nnew` halo仍活动。
- 已确认 final `nnew` 被 `n3dTV/n2way/ngetD` 消费，不能删除最终物化。
- 已收紧字节账本：1.504 GiB 是源码层逻辑 store+load footprint，不是 DRAM 流量下界；不得据此直接声称 memory-bound 或 wall gain。

## 三遍有效性结论

- 第一次总结：有效，经版本化调用链修正。
- 第二次 profiling：有效，但只是复用既有实测份额加静态字节门槛，不是新性能数据。
- 第三次验证：通过静态反例审计；结论等级为 `STATIC_DAG_VALID / CANDIDATES_CONDITIONAL`。

本阶段未生成模式输出，因此没有可删除结果。源码归档和分析文件保留，供下一任务开始前按生命周期规则检查；不得把源码快照误当作模型输出删除。
