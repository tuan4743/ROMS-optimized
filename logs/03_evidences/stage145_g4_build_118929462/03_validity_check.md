# 第三次分析：前两次分析有效性验证

## 交叉检查

1. Slurm `sacct`：`118929462`、batch、extern 全部正常结束，主任务 exit `0:0`。
2. 构建 stdout 明确给出 `STAGE145_BUILD_OK` 及 A′/B 哈希；本文件记录值与独立 `sha256sum` 一致。
3. `source_delta_before_build.txt` 只有两行，吻合候选设计；A′/B `step3d_t` 编译旗标逐项一致。
4. 输入 SHA-256 `05ceb746...7b21`、collective rules SHA-256 `0ef5b45a...e473` 与既有 S32 harness 一致。
5. 在运行模块环境下复核得到 `RUNTIME_DEPENDENCIES_RESOLVED`。

## 判定

`BUILD_VALID / RUNTIME_LINEAGE_REQUIRED`。

构建证据足以放行短程 A/A′ 谱系测试，但不构成性能、数值精度或官方验证结论。A′ 与冻结 A 非逐字节一致，因此只有 A/A′ 双序匹配控制通过后，B 的短程结果才可归因于 G4 源码差异。

模型输出生命周期：本构建阶段没有模型输出；前两次失败现场和 build3 树全部保留，无删除。
