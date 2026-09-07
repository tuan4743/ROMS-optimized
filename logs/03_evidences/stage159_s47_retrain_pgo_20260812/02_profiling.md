# Stage 159 —— profile 采集与后续门禁

1. 一节点构建 exact-S47 `-prof-gen`，重验 archive/makefile/frozen-binary 哈希。
2. 四节点 64 MPI x 2 OMP 运行 `432/2160`，使用 S47 rankfile、coll_rules 和 runtime env。
3. 必须 `ROMS/TOMS: DONE`、exit 0，profile manifest 非空，无数值爆炸；这一阶段只证明训练有效，不证明优化。
4. 通过后再从同一 S47 归档各构建 A′=旧 S46 profile 与 B=新 S47 profile，首先完成 A/A′ 谱系门。
5. 性能门仍为两 B 都快且 mean >=3%；`<2% STOP`，`2-3% review`；全长需 `2592/12960` + 重复 26/26。

## 当前动态状态

- 训练 job: `119065976`。
- 请求：4 节点、64 MPI x2 OMP、`432/2160`、30 分钟上限。
- 当前：`PENDING / NOT_STARTED / NO_PROFILE_EVIDENCE`。
- 训练完成前不得构建 prof-use A-prime/B，也不得将排队时间、训练耗时或 `.dyn` 文件大小当性能收益。
