# Stage 151B — 第二次分析（P3 拟合 + 离线求解）

脚本：`scripts/stage151_static_audit.py`、`scripts/stage151_offline_solver.py`；完整解：`evidence/partition_solution.json`。

使用非负系数线性模型拟合每 grid 的 P3 rank 时间，特征为 area/wet、receiver contact、donor contact、tile perimeter；随后逐 cut 坐标下降，约束最小 tile 宽度，目标最小化两个 grid 合并预测时间的 max-rank。

| 模型 | 关键拟合 | 预测 max 降幅 | 结果 |
|---|---:|---:|---|
| 全物理池 + area/contact | G1 R²=0.293；G2 R²=0.002 | 0.259% | 不可信且远低于门槛 |
| 全物理池 + wet 敏感性 | G1 R²=0.597；G2 R²=0.002 | 0.206% | 远低于门槛 |
| step2d + area/contact | G2 R²=0.674 | 1.164%（step2d 局部） | 仍低于 2%，折算总时长更小 |

最有利 step2d 解把 G2 cuts 推向 contact-heavy 边界，但只将预测 max 从 21.2941 降至 21.0462 s。step2d 在该 P3 两 grid 合计物理计时中只占一部分，因此 1.164% 不是整机收益；按 P3 TOTAL 约 164 s，差 0.248 s 仅约 0.15%。

结论：`PREDICTED_CRITICAL_REDUCTION_BELOW_2 / NO_IMPLEMENTATION`。
