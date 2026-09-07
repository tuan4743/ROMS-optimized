# 第三次分析：前两次有效性验证

日期：2026-08-11 EDT

1. 调用清单由脚本从 272 个 exact active preprocessed `.f90` 解析，得到 165 个调用与 16 对零间隔对；人工回读 `step2d`、`nesting`、`set_depth`、`gls_corstep` 源码核验了字段数、维度和垂向边界。
2. `FieldCount` 按 2-D/3-D/4-D 固定前缀分别为 11/13/15 个参数后计数，修复了初版把 bounds 误列为字段的问题；重跑后字段数与 Nvar 一致。
3. G1 逻辑字节按相同 8-byte real 口径逐项列出；模型刻意省略大量不可删工作，使结果偏向候选。即便如此仍未过 >12% 静态门。
4. 远端只读 `readelf -S` 确认 A-prime IPO 对象没有 `.debug_line`；Gate 5 未被误报为通过。
5. 没有模型输出，因此没有官方 RMSE 可运行，也没有结果可删除。Stage 145/146 既有输出继续保留。

最终状态：`STATIC_AUDITS_VALID / HALO_P0_NO_GO / G1_CLOSED / NO_BUILD_NO_JOB`。
