# Stage 140 未提交草案审阅

状态：`DO_NOT_SUBMIT / SUPERSEDED_BY_STAGE143`。

## 已确认缺陷

1. `p1_t0(NP1PHASE)` 没有 thread 维度，而 `probe_exit` 按 thread 写累计量；两个 OpenMP threads 同 phase 会互相覆盖起点。
2. `patch_mp_exchange_p1.diff` 五个 routine 的 total `probe_exit` 都位于 `RETURN` 后，永远不会执行。
3. `probe_phase.F` 使用未声明的 `p1_tag` 和未定义的 `p1_name`。
4. phase count 使用 `real(r8)`，不必要且降低结构清晰度；应使用 64 位整数。
5. 旧 `halo*_pack_issue` 实际包住 pack、blocking Send、wait 之外的杂项，不能回答 pack/post/wait 各占多少。
6. total 与 child timers 重叠，但旧输出没有 parent/context/direction 字段，容易重复计数。
7. 旧计划通过 cycle-wall argmax 命名 critical rank，没有明确 work-high + wait-low 的配对验证。
8. sidecar 只采 rank 0，无法回答特定 contact-heavy rank 的 NUMA/THP/TLB 对应关系。

这些问题均发生在未提交、未编译草案中；没有污染模型结果。历史文件保留用于审计，不删除、不作为下一次补丁基线。

