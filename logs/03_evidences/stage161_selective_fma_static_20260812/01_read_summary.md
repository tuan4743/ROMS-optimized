# Stage 161 第一次分析：selective-FMA 构建结果

- 日期：2026-08-12 EDT。
- 权威源码：S47 archive SHA-256 `9b87a3a1a76a7138f945763c2e84290be022f9f5798b2731683ea448cba26cb9`；解包 makefile SHA-256 `b8bd3e5a...e56`；冻结 S47 MD5 `1fc3be38a746ba1f5f5885eaf98e3bee`。
- 有效构建 job `119064292`：单节点、16 build threads，Slurm `COMPLETED 00:08:51 exit 0`。本阶段没有运行 ROMS。
- A′ 为 archive 零源码改动重建；B 只在 `pre_step3d.o`、`step3d_t.o`、`t3dmix.o` 的对象私有 flags 末尾追加 `-fma`，覆盖全局 `-no-fma`。
- B 最终 executable 的三个符号分别出现 88、49、4 条 FMA；机制确实进入机器码。
- 初步结论：总指令只减少 47、60、1 条，远小于整机 2% 门所需，倾向 `REJECT_BEFORE_ROMS`。
- `119063996` 与 `119064127` 均为构建前 harness gate failure，不是候选性能结果；现场保留。
- Stage 160 动态输出继续保留；Stage 161 没有模型输出，删除不适用。
