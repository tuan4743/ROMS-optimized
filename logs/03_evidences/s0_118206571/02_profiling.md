# 第二次分析：S0 四节点/64 MPI 半日 Profiling

- 日期：2026-07-30（平台时间）
- 样本数：1 次半日诊断
- 计时范围：完整 `mpirun`，含初始化和半日积分，不含失败的事后文件哈希

## 端到端门槛

S0 shell `real=922.61 s`。按预先冻结的 `3%` 有效门槛，S1 必须达到不高于 `894.93 s` 才能直接进入完整 F1；`904.16-894.93 s` 对应 2%-3% 模糊区，只有时间允许才补一次短确认；高于 `904.16 s` 则延期。

该门槛只比较相同四节点/64 MPI/8x8/半日范围，不把本时间与两节点完整三日时间直接换算成加速比。

## ROMS profile

ROMS 汇总 rank-time 为 `58850.139 s`，约等于每 rank `919.53 s`，与 shell `real` 一致。关键项如下：

| 指标 | rank-seconds | 总计时占比 |
|---|---:|---:|
| Grid 01 compute total | `7776.488` | `13.2141%` |
| Grid 01 message total | `17233.008` | `29.2829%` |
| Grid 01 point data gathering | `14304.201` | `24.3061%` |
| Grid 02 compute total | `22549.988` | `38.3176%` |
| Grid 02 message total | `20932.275` | `35.5688%` |
| Grid 02 data gathering | `12937.395` | `21.9836%` |
| Grid 02 point data gathering | `3955.980` | `6.7221%` |

Grid 02 data gathering 和 Grid 01 point gathering 仍是主要通信热点，支持用相同布局测试 rank-ordered exact-count `MPI_Allgatherv`。输入读取和输出写入分别只占小比例；本次无 NetCDF 周期输出，不能用于比较正常完整输出开销。

## 数值轨迹锚点

全部标准时间步检查点行的流式 SHA-256 为 `42f7440df7cea6dfafc6e89baba62ff410b2e1bd3eb6637c179dc405ddf9e8ef`。S1 必须在同样检查点范围内比较轨迹；哈希不同不自动表示无效，但任何非预期数值差异都必须独立解释，且短跑不能代替完整官方验证。

观察：S0 在固定四节点布局下完成且通信热点清晰。假设：去除 aggregate 填充和接收清零会降低上述 gather 计时。该假设尚未由 S1 测量。
