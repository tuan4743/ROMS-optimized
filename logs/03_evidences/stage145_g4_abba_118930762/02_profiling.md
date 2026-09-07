# 第二次分析：profiling 与机理归因

## 测得的性能

- 直接归因必须使用 A′ 对 B：`mean(AP3,AP4)=104.4785 s`，`mean(B1,B2)=104.0305 s`。
- 绝对差 `0.4480 s`，相对增益 `0.4288%`。
- 两 B 均快：B1 比 `min(AP3,AP4)=104.290 s` 快 `0.007 s`；B2 快 `0.512 s`。第一条优势只有 7 ms，明显处于波动量级。
- 配对 A′ spread：`0.377 s`；B spread：`0.505 s`。候选绝对差 `0.448 s` 与组内 spread 同量级，不能视为稳定的 ≥2% 机制。

## 与静态热点假设对照

候选确实删除了 non-MPDATA `step3d_t` 内一个完整 tracer intermediate 的全局写回和随后读取，且九腿轨迹一致，说明 exact-order 变换在本短程轨迹层面成立。但整机只改善 `0.43%`，说明下列至少一项成立：

1. 被删除的 store/load 大部分命中 cache，并非等量 DRAM 流量；
2. 隐式 VDIFF/水平 advection 算术、halo、其他 tracer/physics 池仍主导；
3. 新的 per-thread `RHS0` 访问和循环组织抵消了一部分省下的 materialization；
4. 该局部节省没有改变 MPI/OpenMP critical path。

本二进制没有启用 ROMS `PROFILE` 宏，`profile_extract.txt` 为空是预期，不能从本作业声称 `step3d_t` 函数计时下降。已有全长 PROFILE 只用于选择候选，不能替代本候选的 site-level 差分。因此本阶段唯一可靠的 runtime 结论是整机收益不足；没有足够价值再消耗一次 profiler/full-run 去精化约 0.4% 分支。

判定：静态 materialization 机制真实、数值轨迹中性，但 wall-time 价值不足，停止 G4。
