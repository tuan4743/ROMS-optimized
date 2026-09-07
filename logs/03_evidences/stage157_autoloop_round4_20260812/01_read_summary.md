# Stage 157 Round 4（134,368 B Allreduce alg6→alg5 微基准门）——读取总结

日期：2026-08-12。作业 119058476（COMPLETED exit 0:0，12 s；无效启动 119058372 mpiicc-not-found、119058433 C99 编译错误，均保留为 harness 修正记录）。

## 1. 实验定义

- **机制**（collective 轴独立新点，区别于 Round 1）：只对精确 134,368 B Allreduce 从算法 6 切到算法 5。候选规则 `coll_rules_134368_alg5.conf`（SHA `7cd8faf0...`）vs 父本 `coll_rules.conf`（SHA `0ef5b45a...`）：唯一差异 = 规则数 3→4，插入 `134368 5 0 0` 一行（[134368, 4194304) 区间切 alg5），其余区间与 bcast 段完全不变。
- **微基准门（不跑 ROMS）**：自写 `micro_allred.c`（134,368 B = 16796 doubles；MPI_Allreduce(MPI_IN_PLACE, …, MPI_DOUBLE, MPI_SUM)；WARMUP 20 + ITER 200；rank0 输出 median/mean/min/max µs）。A=父本规则 ×3、B=候选规则 ×3，各取中位数。
- **预声明门禁**：B 相对 A 的 collective 中位耗时降幅 ≥70% 才授权 ROMS ABBA；否则 Round 4 直接关闭，四轮闭环结束 → 冻结 S47、停止性能实验。
- 环境：4n×64 ranks，--exclusive，HPCX 2.7.4 intel-2017.5.239，HCOLL off，coll_tuned dynamic rules，-t 00:20:00（实际 12 s）。

## 2. 原始结果（slurm-119058476.out + logs/micro_*_119058476.log）

| 腿 | 规则 | rc | median (µs) | mean (µs) | min (µs) | max (µs) |
|---|---|---|---|---|---|---|
| A1 | 父本 alg6 | 0 | 229.6 | 246.1 | 218.9 | 2359.1 |
| A2 | 父本 alg6 | 0 | 227.4 | 235.1 | 216.7 | 643.3 |
| A3 | 父本 alg6 | 0 | 229.8 | 255.3 | 216.7 | 1314.2 |
| B1 | 候选 alg5 | 0 | 314.2 | 378.9 | 304.9 | 9868.2 |
| B2 | 候选 alg5 | 0 | 315.8 | 327.8 | 303.5 | 810.1 |
| B3 | 候选 alg5 | 0 | 314.9 | 369.7 | 303.8 | 8501.1 |

## 3. 判定

- **A 中位 = 229.6 µs**（三腿 227.4–229.8，离散 <1.1%，非常稳定）。
- **B 中位 = 314.9 µs**（三腿 314.2–315.8，离散 <0.6%，非常稳定）。
- **B 相对 A：+37.1%（B 更慢）**——alg5 在 134,368 B/64 ranks 上显著慢于 alg6。
- 降幅为**负**，远不达 +70% 门禁 → **Round 4 关闭，不授权 ROMS**。
- 两族内离散极小（<1.1%），结论统计上坚实；B 的 max 偶发 8-10 ms 为尾部噪声，不影响 median 判定。

## 4. 四轮闭环最终结论

| Round | 机制 | 结果 | 判定 |
|---|---|---|---|
| 1 (119037215) | Allreduce 64K–4M → ring (alg4) | A 111.128 / B 117.949 s | −6.14% 回归 STOP |
| 2 (119042912) | tcmalloc LD_PRELOAD | A 107.695 / B 145.298 s | −34.9% 灾难 STOP |
| 3 (119046362) | glibc mmap/trim 禁用 | A 100.309 / B 100.778 s | +0.47% 无收益 STOP |
| 4 (119058476) | 134,368 B Allreduce alg6→alg5 | A 229.6 / B 314.9 µs | +37.1% 更慢 STOP |

**四轮全无效 → 按授权条款冻结 S47、停止性能实验，进入交付收尾。**

## 5. 输出生命周期

- 运行根 `fjk/stage157_autoloop_round4_20260812/`（micro_allred 二进制 md5 `db4deab5...`、六腿 logs、两规则 SHA、无效启动 119058372/119058433 记录）全保留；无删除。
