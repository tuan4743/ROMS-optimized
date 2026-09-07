# 第三次分析：S0 独立有效性检查

- 日期：2026-07-30（平台时间）
- Job：`118206571`

## 独立复核

重新读取 Slurm accounting、`model.log`、`time_and_stderr.log`、运行元数据、输入和 rankfile 后确认：

- 精确二进制 SHA-256 为 `8c4bc0ae...`，输入为 `4b0087cb...`，rankfile 为 `b35a88a9...`。
- 运行是冷启动半日 `432,2160`，4 节点/64 MPI、16 ranks/node、OMP1、两网格 `8x8`。
- 模型到达全部时间步，打印完整 ROMS profile 和 `ROMS/TOMS: DONE`；shell `real=922.61 s`。
- `118206571.0` 为 `COMPLETED 0:0`；顶层 `FAILED 1:0` 的唯一错误是模型结束后的 `sha256sum output/*.nc` 空 glob。
- 零 NetCDF 与未缩短的输出周期一致，不是模型丢失预期半日输出。官方三日验证器不适用于该短诊断。
- 原始 `model.log` SHA-256 为 `d937bb0d...`，时间日志为 `0f8961d6...`，运行元数据为 `ea145bce...`，均已记录以防后续归属漂移。

S1 脚本已在提交前修复：用零文件安全的 `find -exec sha256sum` 取代 glob，并增加候选二进制 SHA-256 门禁；修复后本地/远端脚本 SHA-256 均为 `31aca99f5b7f5e923030376c1fdc08cff1faba7cbf9172c6e1dff743c1ec2c79`，`bash -n` 通过。

`Pass 1 valid: yes`。它准确区分了模型完成和包装器失败，没有把顶层状态改写为成功。

`Pass 2 valid: yes`。计时来自完整同范围模型进程，profile 可由原始日志复算，S1 门槛沿用预先确定的 3%，没有依据结果后调门槛。

S0 诊断基线可用：是。完整运行性能：未证明。官方评分准确性：未证明。模型输出：无。无需重跑 S0；下一步可在脚本修复和哈希门禁下提交一次 S1，并在完成后做同样三遍分析。

输出生命周期：没有 NetCDF 可删除。保留整个 S0 run 目录作为原始基线证据。
