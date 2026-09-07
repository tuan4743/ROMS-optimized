# 第二次分析：机制与性能归因

## 对照有效性

- 四腿在同一 Slurm allocation 中顺序执行，资源、rankfile、绑核、S47 二进制、输入和 `NTIMES` 相同。
- A 使用父本规则 SHA-256 `0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473`。
- B 使用候选规则 SHA-256 `8c5ac0b20f8d07d488e3c97b835644222849cbbc526a1bfe3d6bcfdb54be5d00`。
- 作业 `COMPLETED`，四腿均出现三个 ROMS/TOMS DONE 记录；没有将 Slurm 步耗时替代 `time real`。

## 定量分析

- A mean = `(110.948 + 111.308) / 2 = 111.128 s`
- B mean = `(115.133 + 120.765) / 2 = 117.949 s`
- 相对变化 = `(117.949 / 111.128 - 1) × 100% = +6.138%`
- B1 相对 A mean：`+3.604%`
- B2 相对 A mean：`+8.668%`
- B 两腿极差：`5.632 s`，约为 A mean 的 `5.068%`

## 归因

算法 4 ring 对当前 64-rank、中等消息 Allreduce 没有形成收益。即使把 B 腿离散视为系统噪声，两个 B 腿仍均慢于稳定的 A1/A2，方向和幅度都不支持晋级。此前 Stage 152 给出的重复 critical-path ceiling 仅约 0.441%，也与本轮“不存在可见正收益”一致；本轮没有证据把总体回归归因到 ROMS 计算内核。

判定：`MECHANISM_REJECTED`。不测试全长，不修改 S47 冻结父本。
