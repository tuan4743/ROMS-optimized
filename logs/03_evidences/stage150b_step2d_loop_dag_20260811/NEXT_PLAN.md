# Stage 150C：GLS 与 biology 最终只读 mining

1. 复用冻结 S32 active `gls_corstep.f90`、`biology.f90` 与 exact IPO report，不 build、不运行模型。
2. GLS：核对 pow、Thomas-like 垂向递推、稳定函数与 Akt 写回能否形成不跨递推/halo的新 fusion island；必须结合 Stage 137 critical-path 负证据。
3. Biology：核对光照垂向递推、17 tracer 状态、exp/pow 和既有 fast=2；必须结合 Stage 108/110/135 的实测与编译器证据。
4. 排除已测/已归因的 pow identity、biology fast=2、exp CSE、loop permutation；只有全新机制且 conservative whole >2% 才允许 build。
5. 若 GLS/biology 均无新候选，结束 Stage 150 全局 fusion mining，冻结 S32 并转交付/报告工作。
