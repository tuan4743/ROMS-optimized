# Stage 161 第三次分析：有效性检查

- Pass 1 valid: **yes**。重新读取 Slurm/job 日志，`119064292` 为 `COMPLETED 00:08:51 exit 0`，stdout 含 `STAGE161_SELECTIVE_FMA_BUILD_GATE_DONE`。
- Pass 2 valid: **yes, for static rejection only**。`asm_counts.csv` 来自 A′/B 最终 executable 的同名符号；makefile diff 仅三行 `-fma`；编译命令确认 `-no-fma ... -fma` 的末项覆盖顺序。
- A′ SHA-256 `bf15d4b6...582a`，B `cff80969...491`；两者大小均 6,162,344 B。三个目标对象大小也逐对相同。
- 构建树来自同一 archive；未修改公式、源码、MPI、网格、输入或输出。B 会改变 FP contraction，若未来运行仍必须完整官方验证，但本阶段未获运行授权。
- 静态指令模型不能证明真实 gain，因此没有性能收益声明；它只能证明候选没有清除足够的机器指令以支持保守 2% 机制。
- `119063996` 在工作树创建前失败；`119064127` 在 build 前失败。两者不进入 candidate ineffective timing 统计。
- Root cause proven: **yes**（FMA 收缩已进入机器码，但规模不足）。Performance gain proven: **no**。Scoring validity: **no**。
- Reproduction required: **no**；不要运行 ROMS、不要 full、不要 vali。
- Stage 161 无模型输出，删除不适用；r1/r2 私有构建证据继续保留。

最终判定：`PASS1_VALID / PASS2_VALID_STATIC_ONLY / STOP_BEFORE_ROMS`。
