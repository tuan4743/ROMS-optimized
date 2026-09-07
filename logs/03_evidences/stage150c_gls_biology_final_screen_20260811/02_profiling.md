# 第二次分析：热点与历史实验交叉验证

- GLS pool 13.6465%，其中 scalar pow 约 7.046% CPU。Stage 137 微核虽达 1.719831x，但负载 rank 与 wall late ranks 不重合；CPU hotspot 不等于 wall 杠杆。
- GLS 激进 fast=2 全长快 4.54%但官方 u 超限；温和 flags 约无速度，关闭该轴。
- biology 8.76%。S32 已含 fast=2；biology-only 完整 2033.079 s、26/26 PASS，却比父本慢 0.657%。
- biology loop permutation 的理想整机上限约 0.4416%；EXP CSE 实际折算约 0.12%。
- exact IPO：GLS 56 vectorized / 45 not；biology 40 / 25。not-vectorized 包含递推/outer/cost-model 记录，不支持 broad SIMD。

判定：`NO_NEW_WHOLE_PROGRAM_GT_2PCT_MECHANISM`。没有新增动态 profile 或性能结果。
