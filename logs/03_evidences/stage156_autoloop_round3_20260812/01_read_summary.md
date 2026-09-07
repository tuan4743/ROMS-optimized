# Stage 156 Round 3（glibc mmap/trim 策略）——读取总结

日期：2026-08-12。作业 119046362（COMPLETED，Elapsed 00:06:46，exit 0:0，4 orted 各 ~1:40）。

## 1. 实验定义

- 父本：S47 二进制 `oceanM.s47_SELQUANT_best_20260810.bak`，MD5 `1fc3be38...`（Round 1/2 同一父本）。
- 候选规则：`coll_rules.conf`（父本，SHA 0ef5b45a）**不变**；唯一变量是运行态 glibc 堆策略：B 腿设 `MALLOC_MMAP_MAX_=0`（禁止大块 mmap）+ `MALLOC_TRIM_THRESHOLD_=-1`（禁止 heap trim）。
- 与 Round 2（tcmalloc 整套 allocator 替换）严格隔离：本轮保留 glibc，只禁 mmap/trim。
- 布局：4 节点 / 64 ranks × 2 threads，144/720 诊断，A-B-B-A，同节点 rankfile 对，KMP_HOT_TEAMS=1，HCOLL off，dynamic rules。

## 2. 原始结果（slurm-119046362.out）

```
A1 mode=A rc=0  real  1m41.451s user 33m30.007s sys 1m8.035s
B1 mode=B rc=0  real  1m39.790s user 32m56.683s sys 1m7.768s
B2 mode=B rc=0  real  1m41.766s user 32m46.717s sys 1m8.176s
A2 mode=A rc=0  real  1m39.166s user 32m34.947s sys 1m8.392s
STAGE156_ROUND3_DONE
```

四腿全 rc=0 + ROMS/TOMS: DONE（logs/*.log 实证）。

## 3. 数值汇总

| 腿 | real (s) | user (s) | sys (s) |
|---|---|---|---|
| A1 | 101.451 | 2010.0 | 68.0 |
| B1 | 99.790 | 1976.7 | 67.8 |
| B2 | 101.766 | 1966.7 | 68.2 |
| A2 | 99.166 | 1954.9 | 68.4 |

- mean_A = (101.451 + 99.166)/2 = **100.309 s**
- mean_B = (99.790 + 101.766)/2 = **100.778 s**
- delta = (mean_B − mean_A)/mean_A = **+0.468%（B 更慢）**

## 4. 初步结论

1. **判无效（STOP）**：B 均值比 A 慢 0.47%，且 `both_B_faster=False`（B2 101.766 > A2 99.166）。
2. 四腿内离散 ~2.3 s（B1 99.79 vs B2 101.77），与本项目 144/720 样本档已知节点/时段波动量级一致；即使取 B1 快腿，单腿也不构成证据。
3. sys 时间全部 ~68 s 且四腿一致——glibc mmap/trim 禁用在 user/sys 层面无可见差异，机制未产生预期（或无可利用的）malloc 路径变化。
4. 机制关闭。Round 3 为连续无效闭环中的第三轮（Round 1 −6.14% 回归、Round 2 −34.9% 回归、Round 3 +0.47% 无收益）。

## 5. 输出生命周期

- 运行根 `stage156_autoloop_round3_20260812/`（output_A1/B1/B2/A2 + logs）全部保留；无删除。
- 已校验：二进制 md5（logs/round3_119046362.binary.md5 = 1fc3be38...）、规则 sha256（0ef5b45a...）与提交一致。
