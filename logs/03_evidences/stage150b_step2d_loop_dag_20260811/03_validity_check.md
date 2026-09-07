# 第三次分析：Stage 150B 有效性复核

- exact source 为 Stage 149 冻结 active preprocessing，不是旧 2486 行 include 或错树。
- 127 DO 头由脚本重算；人工复核 outer/inner、边界一维与 source loop，避免把 127 当成 127 个独立 fusion island。
- exact Stage 134 IPO section 与 S32 precise/AVX2/no-FMA/IPO/OpenMP 配方一致。
- Stage 108 `-1.7416%` wall 负结果用于本平台反证；IISc 大 tile 的 +1.6% 仅是外部机制背景。
- 每个候选均核对 field version、staggered domain、BC/halo/source/volume-conservation 屏障与浮点累加顺序。
- 没有对不同 island 的理论百分比求和；没有把 cache logical bytes 当成 DRAM/wall 收益。
- 本阶段无模型输出，删除规则不适用；Stage 145/146 结果继续保留。

最终判定：`STATIC_VALID / STEP2D_DAG_NO_GO / REJECT_BEFORE_BUILD / NO_JOB / NO_VALIDATION_NEEDED`。正式最佳仍为 S32 `118755216 / 1753.876 s / 26/26 PASS`。
