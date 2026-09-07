# 第一次分析：方案读取与初步结论

日期：2026-08-11 EDT

提议的优先级合理：先审 t3dmix4 内部双谐波 streaming fusion，再审 step2d 多 arithmetic islands；GLS/biology 仅作后备，PRE/CORRECT、halo aggregation 与 set_avg 不重开。

Exact S32 核对发现两项修正：t3dmix 三 scratch 每线程仅约 35.6-61.1 KiB，不能按 DRAM 计算；step2d 活动预处理只有 127 个 DO 头，不是约 225。Stage 108 的单 island 已实测 wall 慢 1.7416%。

本阶段仅形成静态计划，没有源码修改、build、作业或模型输出。
