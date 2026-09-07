# 第一次分析：GLS/biology 读取总结

读取冻结 S32 `gls_corstep.f90`（899 行、62 DO）和 `biology.f90`（1952 行、40 DO），提取 exact IPO sections，并回读既有 Stage 108/110/135/137、exp CSE 和全长官方验证证据。

GLS 的新融合空间被两套垂向递推、CF scratch 复用和已融合稳定函数/Akt 写回限制；biology 的光照沿 k 递推，反应主段已粗粒度组织，冠军又已含 fast=2。没有发现未被历史实验覆盖的大 materialization。

状态：`READ_COMPLETE / STATIC_ONLY`。无代码、构建、作业、输出或删除。
