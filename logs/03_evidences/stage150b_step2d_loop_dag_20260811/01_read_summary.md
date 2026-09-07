# 第一次分析：step2d 读取与初步总结

读取冻结 S32 active `step2d.f90` 全部 1283 行、Stage 150 规范、Stage 108 负结果和 exact Stage 134 IPO report。脚本重建 127 个 DO 记录及 25 个 CALL/语义边界；人工回读自由面、压力梯度、四阶平流、Coriolis、曲线项、黏性、2D/3D 耦合与动量积分。

初步结果：可见五类局部 fusion island，但 routine 被 DUon/DVom halo、zeta BC/halo、四阶通量边界、湿干/体积守恒和最终 ubar/vbar halo 切开。没有整个 step2d 跨段融合的合法 DAG。

状态：`READ_COMPLETE / STATIC_ONLY`。无源码修改、build、作业、输出或删除。
