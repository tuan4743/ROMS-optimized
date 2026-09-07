# Stage 149 halo adjacency review

日期：2026-08-11 EDT

谱系：冻结 S32 archive `615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e` 的 Stage 146 A-prime 活动预处理树，共 272 个 `.f90` 文件、4,156,275 B。分析脚本为 `scripts/analyze_mp_exchange_calls.ps1`，原始表为 `generated/mp_exchange_calls.csv` 与 `generated/mp_exchange_adjacency.csv`。

## 全量清单

- 活动 `mp_exchange*` 调用共 165 个：2-D 103、3-D 52、4-D 10。
- 仅 16 对调用之间没有任何逻辑语句。
- 现有接口最多承载 A-D 四个字段；不同 2-D/3-D/4-D 入口也不能直接聚合。

| 调用点 | 组合 | 静态判定 |
|---|---|---|
| `gls_corstep` 885/892 | 3-D(3) + 4-D(1) | 维度不同 |
| `ini_fields` 470/475 | 3-D(3) + 4-D(2) | 维度不同，且为初始化路径 |
| `ini_hmixcoef` 311/316 | 2-D(2) + 3-D(1) | 维度不同，且为初始化路径 |
| `fine2coarse` 2918/2923 | 2-D(1) + 2-D(4) | 同维但共 5 字段，超过 A-D 上限 |
| `fine2coarse` 2923/2931/2937 | 2-D -> 3-D -> 4-D | 维度不同 |
| `put_refine2d` 5062/5069 | 2-D(3) + 2-D(3) | 同维但共 6 字段，超过 A-D 上限 |
| `put_refine3d` 5346/5353 | 4-D(3) + 3-D(4) | 维度不同 |
| `rho_eos` 366/371/376 | 3-D -> 2-D -> 3-D | 维度不同 |
| `set_depth` 266/271 | 2-D + 3-D | 维度不同 |
| `set_depth` 271/276 | 3-D(1) + 3-D(2) | `z_w` 为 `0:N`，`z_r/Hz` 为 `1:N`，共同 LBk/UBk 不成立 |
| `set_depth0` 503/508 | 3-D(1) + 3-D(1) | 同样为 `0:N` 与 `1:N` 边界不一致 |
| `step2d` 442/447 | 2-D(3) + 2-D(2) | 同维但共 5 字段，超过 A-D 上限 |
| `step3d_uv` 764/771 | 3-D(4) + 2-D(4) | 维度不同 |
| `step3d_uv_org` 764/771 | 同上 | 备用/重复源，不能重复计为运行热点 |

## 收益上界

最有价值的现有候选是高频 `step2d` 的 3+2 字段对，但它需要扩展接口，已不属于 Stage 147 的“复用现有 Nvar/A-D”路线。全长 profile 的 2-D halo 池约占 6.5% CPU；`step2d_tile` 中共有 6 个活动 `mp_exchange2d` 调用。即使做极有利的等调用假设，并错误地把被合并调用的全部成本都视为可删除，上界也只有 `6.5% / 6 = 1.083%` 整机 CPU。真实变换仍要 pack、发送、等待和 unpack 五个字段，只能省一次调用启动/部分同步，因此实际收益严格更低。

`fine2coarse` 与 `put_refine2d` 也需要 5/6 字段新接口且没有独立 site timer；历史 S22/S23 与后续交换重构已经证明泛化交换重写没有稳定收益。没有证据支持其保守整机上界超过 2%。

## 判定

`HALO_P0_NO_GO / ZERO_EXISTING_INTERFACE_MERGES / NO_BUILD / NO_JOB`。

现有接口下热点路径可合法直接合并的紧邻调用数为零。自定义 5/6 字段接口的最强可量化候选上界也低于 2%，不进入实现。
