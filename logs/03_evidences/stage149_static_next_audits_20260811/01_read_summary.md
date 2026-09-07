# 第一次分析：读取与初步总结

日期：2026-08-11 EDT

读取对象为冻结 S32 活动预处理树的 272 个 Fortran 文件、Stage 147 halo P0 计划、Stage 148 G1 五门规范、全长 profile 池，以及 Stage 145/146 已测结果。

初步发现：165 个活动 `mp_exchange*` 调用仅形成 16 对零语句间隔的相邻调用；现有 A-D 四字段接口无法直接合并任何热点对。G1 producer/consumer 的 exact source 位于 `pre_step3d.f90:398-402` 与 `492-497`，中间存在真实 DC/FC/source 工作。

本阶段没有修改源码、输入、网格、物理公式、输出设置或运行参数；没有 build、Slurm 作业、模型输出或删除操作。
