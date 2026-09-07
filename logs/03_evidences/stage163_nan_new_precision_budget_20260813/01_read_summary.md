# Stage 163 第一次分析：团队最快版读取与初步总结

## 范围与边界

- 日期：2026-08-13。
- 团队目录：`/public/home/fujiake/nan/new`，全程只读；任何构建、脚本和后续输出只允许写入 `/public/home/fujiake/fjk/stage163_gls_svml_20260813`。
- 决赛输入、网格、积分时间、时间步、输出设置、双向嵌套和物理公式保持不变。正式判定仍为 `NTIMES=2592,12960` 与官方 `vali.py` 26/26。
- `/nan/new` 是可变团队目录，不把当前文件状态自动等同于历史作业的加密锁定快照。

## 当前可验证结果

| 作业 | real | 节点 | 完成性 | 官方验证 |
|---|---:|---|---|---|
| `119092489` | 1737.618 s | `j01r2n[04-07]` | `COMPLETED/0:0`、ROMS DONE | 26/26 PASS |
| `119097366` | **1657.908 s** | `i17r1n[04-07]` | `COMPLETED/0:0`、ROMS DONE | **26/26 PASS** |

- 两个验证日志除测试目录行外逐行相同，26 个 RMSE 显示值完全一致。
- `119097366` 比冻结 S47 `118946283 / 1661.816 s` 快 3.908 s，即 0.2352%。这是跨节点、单腿团队结果，属于“当前最快观测”，不是已归因且可重复的新优化收益。
- 读取时 `/nan/new/oceanM` SHA-256 为 `4e0bf1c5e002fdbf6cb4d8faa880fe4a72a8d7ef43a975f3d0420e0b611ddcb8`，大小 5,581,832 B，mtime 2026-08-13 13:13:47 +0800。作业日志没有记录该 SHA，因此只能用时间线关联，不能声称作业与当前文件存在加密绑定。
- `/nan/new/pgo/pgopti.dpi` SHA-256 为 `49c69e4186549c7ecca445dd6cb562746efcaabb579e94e070dce988a0b9d379`，与 `s46_pgo/pgopti.dpi` 一致；`build_new.log` 的实际编译行也指向 `s46_pgo`。当前 `/new/pgo` 的 mtime 晚于二进制，说明它更像交付复制件，不能仅凭 mtime 证明构建时从该本地副本读取。

## 最快版已经使用的精度折衷

- 全局/物理：`-fp-model precise -march=core-avx2 -no-fma -ipo -prof-use`。
- GLS：额外 `-fp-model source`，没有 fast-math。
- biology：`-fp-model fast=2 -no-prec-div -fp-speculation=fast`。
- biology 4-D halo：`real(4)` 缓冲与 `MPI_REAL`；温盐仍为 `real(8)`。

因此“从精度扣速度”并不是空白路线：安全的生态侧预算已经被使用，物理侧仍保守是因为细网格 `u` 门槛极紧。

## 队友当前尝试审计

- `119101525` 尝试 `-fast-transcendentals`（全局启用、GLS 排除），在 162 s 以 `RC=135` 失败；没有模型输出或验证。
- 该共享构建树随后继续重链，`oceanM.s47_ftnongls` 与 `oceanM.s47_ftglobal` 最终 SHA 相同，且构建日志主要是链接行，不能把该失败归因于数值旗标。
- 队友 1day `119102654` 已完成：`real=543.386 s`、ROMS DONE，但官方验证 Dongsha60 `u=0.000064 > 0.000060`，最终 FAIL。运行实际使用 `s22b` 的最终输入/运行目录与 `oceanM.s47_ftnongls`；我们只读监控，未修改或取消。
- 因而“全局 `-fast-transcendentals`、仅排除 GLS”精度路线已经失败；即便不对 GLS 开 fast-transcendentals，其他物理路径的超越函数扰动也会越过 `u` 门槛。

## 本阶段动作

- 选择一个与队友不同、范围更窄的候选：仅给 `gls_corstep.o` 增加 `-fimf-use-svml=true:pow`，保留 `source/no-FMA`。
- 私有干净构建作业 `119102698` 已提交；它在源 SHA、makefile SHA 和 PGO SHA 三重门禁后，排除旧 Build/output 复制父本，只允许一条对象编译命令携带新旗标。
- 构建 `119102698` 已在 `i17r2n08` 完成，`COMPLETED/0:0`，耗时 4m47s。三项父本 SHA、单对象编译计数和候选产物门禁全部通过。
- 候选二进制 SHA-256 `4ad7b6f7f5746d27d6adaeff58c85f6d6a2dc037a278278154adbdfe6b40252a`，MD5 `2f5ef8c2a74fe207c3bf19f090705709`，大小 5,627,128 B。
- 全长筛选作业 `119103481` 已提交；因队友全长 `119103186` 占用 128 核而排队，不会并行争抢。当前尚无候选模型时间或验证结论。
