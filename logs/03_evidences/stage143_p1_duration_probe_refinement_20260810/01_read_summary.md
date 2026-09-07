# Stage 143 — P1 同-rank持续时间探针细化：Pass 1

- 日期：2026-08-10 EDT（远端日期对应 2026-08-11 +0800）。
- 任务：细化 Stage 140 未提交的 P1 探针设计，不构建、不提交、不运行模型。
- 父本不变：S32 `118755216 / 1753.876 s / 26/26 PASS`；冻结源码归档 SHA-256 `615ee717...`。
- 本阶段没有模型输出，删除不适用；以前所有模型结果继续保留。

## 核心修订

1. 禁止跨 rank 比较 `MPI_Wtime()` 绝对值。只计算同一 rank、同一线程内的 `dt=t_exit-t_enter`。
2. late rank 不能由“某 rank 的进入时间更晚”定义，而由配对证据定义：本地工作时间高，同时紧邻同步等待低。
3. `get_contact2d` 与 `get_contact3d` 都拆为 `plan/count`、`allocate/free`、`pack/interp`、`post`、`waitall`、`unpack`；不能只记录函数总时间。
4. 2D/4D halo 按 W/E 与 S/N 分别记录 `face pack`、`Irecv post`、blocking `Send`、`Wait`、`unpack`。blocking Send 不得混称为 post。
5. step2d 拆 `arithmetic`、`BC`、`conservation`，并保留 total/residual 一致性校验。
6. nesting 拆 `feedback compute` 与 `feedback synchronization`。
7. OS telemetry 独立为 sidecar 腿；两条干净探针腿用于持续性判定。

## 旧草案状态

Stage 140 的 `probe_phase.F` 与 `patch_mp_exchange_p1.diff` 仍是历史草案，现已判定 `DO_NOT_SUBMIT`：存在共享 `p1_t0` 线程竞争、`probe_exit` 位于 `RETURN` 后、未声明标识符和 phase 重叠等问题。详细审阅见 `LEGACY_DRAFT_REVIEW.md`。

初步结论：修订方向有效；详细规范见 `P1_DURATION_PAIRING_SPEC.md`。

