# Stage 158 —— 编译报告门禁（设计/待采样）

## 门禁

1. 使用同一 S47 归档、ifort 2021.3.0、PGO profile 目录、NetCDF/MPI 模块分别构建 A′ 和 B。
2. A′ 只增加 report-only 参数；B 在同五个对象上额外增加 `-qopt-multi-version-aggressive`。
3. 比较五个对象的 multiversioned/vectorized/not-vectorized/scalar-replacement 报告计数、具体源行及对象大小。
4. 只有 B 确实新增可用快路循环，且五对象代码总膨胀不超过 15%，才准备 144/720 短 ABBA。
5. 若只有版本数增加、无新向量化/标量替换，或代码膨胀过大，则 `REJECT_BEFORE_ROMs`。

## 后续性能门（未授权自动跳过）

- A/A′ 先证明同谱系性；再执行交错 A′-B-B-A′，相同 rankfile/env/input/NTIMES。
- 两条 B 都快且 mean 改善 >=3% 才晋级全长；`<2% STOP`，`2-3% ambiguous/review`。
- 全长必须 `2592/12960` + 官方 `vali.py` 26/26，并依项目规则要求双次全量稳定验证。

## 实际静态 profiling

| 对象 | A′ bytes | B bytes | 差值 |
|---|---:|---:|---:|
| pre_step3d.o | 1,323,824 | 1,323,896 | +72 |
| step3d_t.o | 1,237,648 | 1,237,720 | +72 |
| t3dmix.o | 835,656 | 835,728 | +72 |
| gls_corstep.o | 1,618,736 | 1,618,808 | +72 |
| step2d.o | 1,783,504 | 1,783,576 | +72 |

- 五对象总膨胀 360 B / 6,799,368 B = `0.0053%`，远低于 15% 限制。
- 最终可执行文件 A′ 6,289,800 B，B 6,289,944 B（+144 B）；`.text` 长度不变，内容哈希不同。
- 但 IPO 最终 report 没有任何循环级变换证据，无法标识哪个热循环新增快路，更无法估计局部削减 >=3.2%。
- 判定：`STATIC_GATE_FAIL / NO_ROMS_RUN`。
