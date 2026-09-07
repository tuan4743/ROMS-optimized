# 第三次分析：前两遍有效性复核

## 依赖复核

- producer 对 `t3` 是覆盖写，consumer 是同点 RMW；两者之间唯一源码分支 `AGE_MEAN && T_PASSIVE && !TS_MPDATA` 在冻结配置不活动。
- vertical `FC/DC` 只依赖 `t_nstp, Hz, W, pm, pn` 和 source metadata，不依赖 provisional `t3`，因此可以先于最终 horizontal+vertical combine 计算。
- final `t3dbc`、4-D halo 与 `nesting(nrhst)` 均位于融合岛之后，不能移动或删除。

## 门槛复核

- 静态账本没有把 1.504 GiB 逻辑 footprint 当成 DRAM 流量或 wall gain。
- scratch 明确小于完整 4-D state，且按一个 tracer 限界；不存在“用同样大的临时数组伪装消除物化”。
- y-face 重算和线程局部 cache 容量已列为可能抵消收益的风险；因此只授权 isolated prototype，不构成性能结论。
- 物理公式、系数、邻点模板、网格、时间步、输出和双向嵌套语义均保持不变；允许的变化仅是循环组织、临时缓冲和浮点执行顺序。

## 结论

前三次分析互相一致，Stage 146 静态门禁有效：`GO_PROTOTYPE_CONDITIONAL / NO_PERFORMANCE_CLAIM`。下一步先制作 A′/B 源码原型和 active-CPP 差异审计；若无法完整保留 source/sink 与边界分支，立即静态 STOP，不提交作业。

