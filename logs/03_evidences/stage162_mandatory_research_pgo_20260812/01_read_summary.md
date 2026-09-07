# Stage 162 第一次分析：连续无效方向后的强制检索

- 日期：2026-08-12 EDT。
- 触发：Stage 158 多版本快路静态失败；Stage 161 selective-FMA 虽进入机器码，但整机静态上限仅约 0.1198%。按永久规则，在继续编译/模型实验前进入论文、开源与官方文档 PLAN，国家优先中国。
- Intel Fortran 官方资料说明，instrumented PGO 不只是浮点收缩：它利用动态热路径信息调整热/冷代码布局、分支预测、寄存器分配、短循环向量化与 IPO 内联决策。因此 exact-S47 PGO 与 Stage 161 selective-FMA 是不同机制。
- Intel 同时要求尽量不在 profile 采集与 feedback build 之间修改程序；数据集行为稳定时 PGO 更可能有效，若行为差异大应合并多个代表性 profile。`profmerge` 会把 `.dyn` 合并为 `pgopti.dpi`，并以源码完整路径关联 routine。
- 中国海洋模式研究的可迁移结论：NEMO 代码现代化工作采用 Intel 性能分析后再做编译选项、标量、SIMD、内存带宽和多进程优化；神威 POM 工作也强调循环/访存重构必须与具体体系结构和真实热点绑定。它们支持“证据驱动的编译优化”，不证明本赛题 PGO 收益。
- 本地继承证据：较早 S46 PGO 相对同源 S32 约快 2.24% 且官方 26/26 PASS；但 S47 当前仍读取 S46 profile，不能把该历史收益直接归因给 exact-S47 重训练。
- DeepSeek V4 Pro 两路脱敏复核均耗尽 reasoning token 后返回空输出，标记 `REJECTED_EMPTY_OUTPUT`；不采纳第三方结论。

## 主要来源

- Intel Fortran, Profile-Guided Optimization: <https://www.intel.com/content/www/us/en/docs/fortran-compiler/developer-guide-reference/2023-0/profile-guided-optimization.html>
- Intel Fortran, Profmerge and Proforder Tools: <https://www.intel.com/content/www/us/en/docs/fortran-compiler/developer-guide-reference/2023-0/profmerge-and-proforder-tools.html>
- Intel Fortran, Interprocedural Optimization: <https://www.intel.com/content/www/us/en/docs/fortran-compiler/developer-guide-reference/2024-2/interprocedural-optimization.html>
- 周生昌等，《海洋环流模式 NEMO 的代码现代化》: <https://www.ams-journal.org.cn/website/article/doi/10.3969/j.issn.1671-6647.2021.01.007>
- 《基于“神威·太湖之光”的区域海洋模式并行优化》: <https://crad.ict.ac.cn/fileJSJYJYFZ/journal/article/jsjyjyfz/HTML/2019-7-1556.shtml>

初步判定：`MANDATORY_RESEARCH_COMPLETE / DISTINCT_PGO_MECHANISM / TRAINING_ONLY_MAY_RESUME`。
