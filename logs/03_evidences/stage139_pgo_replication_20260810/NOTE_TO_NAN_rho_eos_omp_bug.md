# 致 nan：rho_eos OMP 指令数值 bug 发现（2026-08-10）

## 一句话
`ROMS/Nonlinear/rho_eos.F` 中 `!$OMP PARALLEL DO ... SCHEDULE(STATIC)` 包住整个 `DO j=JstrT,JendT` 外循环的指令，在 **64 MPI × 2 OMP / 8x8** 实跑中产生 u/v 级数值错误（Dongsha60 u RMSE 0.003 vs 官方基准 0.000052 阈值），尽管 PRIVATE 列表静态审查看似完整。

## 实验证据（我们的独立复现）
| 二进制 | 源码 | 3day vali |
|---|---|---|
| fork_pgouse（s46 源码 + PGO） | 含 rho_eos OMP | FAIL（u=0.0031） |
| fcbfa6dc（s46_pgo 验证版，nan） | 含 rho_eos OMP | FAIL（u=0.0030，同一环境） |
| O33 冠军二进制（无 rho_eos OMP） | O33 源码 | **26/26 PASS** |
| fork_norhoomp（s46 - rho_eos OMP + PGO） | step3d_t vdiff 保留 | **26/26 PASS** |

## 结论
- rho_eos 的 OMP 指令是唯一问题源；PGO（-prof-use）和 step3d_t vdiff（ltrc=MIN(NAT,itrc)）均数值安全。
- 因此 s46_pgo（fcbfa6dc，含 rho_eos OMP）的 26/26 记录存疑：可能编译时 OMP 指令未生效（旧对象缓存/未加 -qopenmp 于 rho_eos.o），或 vali 过程有差异。
- **建议 nan 复核**：(1) 确认 Build/rho_eos.o 编译行含 `-qopenmp` 且源码含 OMP 指令；(2) 重跑 s46_pgo 3day + 官方 vali；(3) 若仍 FAIL，去掉 rho_eos OMP 指令重测——预期 26/26 且性能不变（rho_eos 在 8x8 下是 L1-resident 小内核，OMP 收益本就有限）。

## 参考
- 我们 fork 树的完整证据：`/public/home/fujiake/fjk/agent_tmp/s46_fork/`（oceanM.fork_norhoomp = 1822d1cd，26/26 验证）
- 本地分析：`analysis/stage139_pgo_replication_20260810/01_review_notes.md`
