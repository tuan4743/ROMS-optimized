# 第三次分析：构建有效性

- 谱系文件、编译器版本、source delta 与 binary hashes 已本地保存于 `raw/`。
- A′/B 使用同一 archive、Master manifest、makefile 与模块环境；唯一候选源差异已锁定。
- 构建脚本检查 executable、动态依赖与非同一 binary；作业正常完成。
- 结论仅为 `BUILD_VALID`，不等于性能或官方精度有效。后续必须先 A/A′ lineage，再做候选短程。

