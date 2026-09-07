# 第三次分析：有效性复核

1. 首次 job `119041830` 无 DONE、未进入模型，已单独标记 `INVALID_STARTUP`，没有混入性能统计。
2. 修正后的 job `119042912` 为 `COMPLETED`；四腿 rc=0、存在 DONE、`time real/user/sys` 齐全。
3. S47 binary MD5、tcmalloc SHA-256、parent rules SHA-256 在作业输出中再次锁定。
4. A-B-B-A 同 allocation；唯一变量为 B 腿 rank 进程的 `LD_PRELOAD`。
5. 复算得到 A mean `107.6945 s`、B mean `145.298 s`、回归 `34.917%`；即使采用最有利的 B1 vs A1，仍回归 `22.238%`。
6. 两个 B 腿的 sys time 都约 217 s，而两个 A 腿约 70 s，支持“重复回归”而非单点噪声。
7. 未执行官方 `vali.py`，因为短性能门失败；没有精度通过或计分结果声明。
8. 所有输出和失败日志保留；未删除上一阶段或本阶段结果。

前三次分析有效。Round 2 判定 `INEFFECTIVE / STOP`。这与 Round 1 构成连续两次无效优化；按永久规则，在 Round 3 前必须暂停作业并进入联网 PLAN，检索科研结果、开源相似项目，论文优先中国研究。
