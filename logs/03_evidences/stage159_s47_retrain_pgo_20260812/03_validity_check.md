# Stage 159 —— 有效性预检

- 当前：`PREPARED / NOT_MEASURED`。
- 私有路径：`/public/home/fujiake/fjk/stage159_s47_retrain_pgo_20260812`；如已存在则构建脚本停止，不覆盖。
- 训练作业只在 build `afterok` 后运行；任一步失败都不自动进入 prof-use 候选构建。
- 不删除任何既有输出；新路径全保留。

## Harness 修正记录

- 先前超时命令实际提交了 `119062377`；它完成 pgogen 构建，最后的 `grep | head` 因 `pipefail`/SIGPIPE 以 13 退出。二进制、哈希和 `-prof-gen` 编译线已独立核验，可复用。
- 重复构建 `119062383` 因路径保护 2 s 退出；原依赖训练 `119062400` 被自动取消。
- 训练 `119062578` 运行 2.5 s 后因运行目录缺 `ROMS/External/varinfo.dat` 退出 97，没有进入积分。其初始化 `.dyn` 保留；重试前整个 profile 目录改名归档，不删除。

## 重试提交有效性

- 远端原 profile 路径、归档目标不存在、pgogen binary 和 rules 均在移动前逐项检查。
- `profile` 只做同一私有根内的可恢复改名；归档目录和新的空目录均已复读存在。
- 上传脚本远端 SHA-256 与本地一致：`579f16efcbd5acafbe8a1193ece83637dc440781f0ef4447c83abfa26a081575`。
- `sbatch` 返回 job `119065976`；当前 pending，不是模型成功或失败证据。
- 判定：`SUBMISSION_VALID / EXECUTION_PENDING / PERFORMANCE_NOT_MEASURED`。
