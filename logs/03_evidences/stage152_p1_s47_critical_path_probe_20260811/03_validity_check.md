# Stage 152 — P1 S47 late-rank probe：第三次有效性复核

## 对前两次分析的核验

1. Lineage 有效：运行 MD5 与 S47 冠军一致；探针通过 `LD_PRELOAD` 附加，没有重建 ROMS。
2. 模型完成有效：日志含 `ROMS/TOMS: DONE`，不同于 jobs `119001592`、`119001832` 的启动失败。
3. 探针结果无效：64/64 rank 的 `dropped` 均非零，事件序列被截断，无法满足 closure 门禁。
4. 空间结论有效：probe 约 `400 MB`，模型 output 仅 `4 KB`。
5. 性能结论边界：`19.735 s` 只有 probe 腿，没有匹配 A-prime，不能量化开销百分比；但丢事件本身已足以否决逐事件实现。

## 判定

`EVENT_LOG_IMPLEMENTATION_REJECTED / P1_MECHANISM_NOT_YET_TESTED`

保留 job `119002058` 最新结果；本阶段未达到候选晋级或 FINAL FREEZE 的证据条件。

## Final clean-gate validity review

1. Lineage: all four legs report champion MD5
   `1fc3be38a746ba1f5f5885eaf98e3bee`.
2. Completion: all four legs contain `ROMS/TOMS: DONE` and harness RC 0.
3. Coverage: both clean legs have 64/64 rank files, `overflow=0`, and matching
   event counts per rank.
4. Pairing: comparisons retain exact `op/caller/count/tag/peer_class` cohorts;
   edge/interior and message-size classes are not mixed.
5. Repetition: the same `mp_assemblef_1d`, count 16796 mechanism and ranks
   34/35 repeat in both clean legs.
6. Ceiling: `0.454%` and `0.441%`; minimum `0.441%`, below the 2% gate by more
   than 4.5 times.
7. Timing drift: A-prime legs show warm-up drift (`101.041 -> 97.131 s`). Probe
   legs lie inside that envelope, so no probe speedup is claimed. The
   paired-excess conclusion uses only same-rank durations within each clean leg.
8. Attribution boundary: a pre-call gap can include all local work since the
   previous wrapped MPI call; treating it as fully removable is optimistic.
   Therefore `0.441%` is an upper bound, not an expected speedup.

## Final decision

`P1_REPEATED_CEILING_0.441_PERCENT / BELOW_2_PERCENT / FINAL_FREEZE`

No last optimization candidate is authorized. All Stage 152 outputs are
retained; no deletion was performed.
