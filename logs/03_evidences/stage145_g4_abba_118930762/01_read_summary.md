# 第一次分析：读取并初步总结

- 日期：2026-08-11 EDT（远端 2026-08-11 +0800）。
- 作业：`118930762`，四节点、64 MPI × 2 OpenMP、8×8/8×8、`144/720`，节点 `i17r1n[04-07]`。
- Slurm：`COMPLETED`，elapsed `00:15:59`，exit `0:0`。
- 原始结果：`/public/home/fujiake/fjk/mcc_runs/118930762_s145_g4_gate`，大小约 3.0 MiB，保留。

## 谱系腿

| 腿 | 版本 | real (s) | DONE | trajectory | NetCDF |
|---|---|---:|---|---|---:|
| W0 | frozen A warmup | 108.660 | yes | `fa498694...e44b0` | 0 |
| A1 | frozen A | 105.622 | yes | 同上 | 0 |
| AP1 | rebuilt A′ | 107.213 | yes | 同上 | 0 |
| AP2 | rebuilt A′ | 104.540 | yes | 同上 | 0 |
| A2 | frozen A | 104.539 | yes | 同上 | 0 |

冻结 A 均值 `105.081 s`，A′ 均值 `105.876 s`，A′ 相对偏差 `+0.7575%`；轨迹一致，谱系门禁通过。

## 候选腿

| 腿 | 版本 | real (s) | DONE | trajectory | NetCDF |
|---|---|---:|---|---|---:|
| AP3 | rebuilt A′ | 104.667 | yes | `fa498694...e44b0` | 0 |
| B1 | G4 fused | 104.283 | yes | 同上 | 0 |
| B2 | G4 fused | 103.778 | yes | 同上 | 0 |
| AP4 | rebuilt A′ | 104.290 | yes | 同上 | 0 |

A′ 配对均值 `104.478 s`，B 均值 `104.031 s`，表观增益 `0.4288%`；两条 B 都快于两条配对 A′，但远低于项目 2% 有效线和 3% 晋级线。

初步判定：`STOP_BRANCH / NO_FULL_RUN`。harness 的 `verdict=REVIEW` 只是脚本中对 0–3% 的通用分类；按项目既定“低于 2% 直接拒绝”规则，本分支不晋级。
