# MCC26 ROMS-CoSiNE — 当前状态（2026-08-12，四轮闭环终局 + 新规则生效）

## 当前正式参考

- S47 job `118946283`：full real `1661.816 s`，`NTIMES=2592 12960`，官方 `26/26 PASS`，runtime MD5 `1fc3be38a746ba1f5f5885eaf98e3bee`
- 历史参考：S32 `118755216 / 1753.876 s / 26/26`（binary `d9a45dbb...`，源码 archive `615ee717...`）
- 交付物无需因四轮闭环变更（参考未变）。

## 四轮闭环终局（Stage 152-157，2026-08-12）

| Round | 机制 | 结果 | 判定 |
|---|---|---|---|
| 1 (119037215) | Allreduce 64K–4M → ring | A 111.128 / B 117.949 s | −6.14% STOP |
| 2 (119042912) | tcmalloc LD_PRELOAD | A 107.695 / B 145.298 s | −34.9% STOP |
| 3 (119046362) | glibc mmap/trim 禁用 | A 100.309 / B 100.778 s | +0.47% STOP |
| 4 (119058476) | 134,368 B alg6→alg5 微基准 | A 229.6 / B 314.9 µs | +37.1% STOP |

- 非热点盘点：set_avg（2.31% wall）带宽受限 + Stage 129 CONFOUNDED + NTSAVG=1 → 关；其余全部 <2% 或已关。
- P1 探针（Stage 152）最终判决：`mp_assemblef_1d` count 16796 重复 ceiling `0.441% < 2%`。

## 新硬性规则（用户授权，2026-08-12）

除非用户明确说"冻结准备交付"，否则继续推进性能实验；不明确时进入 profile+plan+search 模式提出新机制候选，禁止路径依赖判死。规则全文见 Skill `rules.md` "Performance-experiment continuation policy"。FINAL FREEZE 文案已被该规则覆盖。

## 下一步（进行中）

- profile+plan+search：P1 census 新聚合发现 **BARRIER（op=7, caller 0x501541）为最大 gap 队列（28.7 s 聚合 / 128 次）**——此前从未被攻击；以及 134,368 B Allreduce 的 gap 10.4 s。机制候选设计中，将提请用户授权。

## 证据

- 四轮运行根：`/public/home/fujiake/fjk/stage153|154|156|157_*`（全保留，无删除）
- 本地三遍分析：`analysis/stage153_autoloop_round1_medium_ring_20260812` 至 `analysis/stage157_autoloop_round4_20260812` + `analysis/nonhotspot_review_20260812`
- OPTIMIZATION_LOG Stage 141-157；SESSION_MEMORY 恢复点（2026-08-12 版）
