# Stage 163 第二次分析：精度预算与候选门禁

## 26 项精度余量

最紧项是 Dongsha60 `u`：

- 当前 RMSE `0.000052`，阈值 `0.000060`。
- 绝对余量仅 `0.000008`。
- 当前值已经使用阈值的 86.67%；从当前 RMSE 出发最多只能再增长 15.38%。

其余物理项最高使用 33.5% 阈值（Dongsha temp），生态/生地化项最高约 24.68%（Dongsha oxygen；SCS TIC 13.40%）。这意味着生态变量表面上仍有大误差预算，但 biology 已经使用 fast=2 与 float32 halo；进一步 biology 降精度要先跨过“局部池只有约 5-9%、同步等待吸收局部加速”的墙钟门。

## 已有精度路线的实测约束

| 路线 | 性能 | 精度 | 判定 |
|---|---|---|---|
| GLS + biology `fast=2` | 全长约快 4.54% | Dongsha `u=0.000062 > 0.000060` | 失败，不能计分 |
| biology-only `fast=2` | 短测曾约 +1.71%，全长反而慢 0.657% | 26/26，`u=0.000052` | 精度安全但无墙钟收益，且已在 S47/new 中采用 |
| biology fast=2 + GLS `no-prec-div/fast speculation` | 相对 biology-only 约 0.07% | 轨迹由 GLS 旗标扰动 | 无速度 |
| GLS `fimf-precision=low` under precise | 对象逐字节不变 | 不适用 | 编译器静默 no-op |
| 湍流场/温盐等进一步 float32 | 1day 有约 1% 局部迹象 | Dongsha `u` 约 `0.000073-0.000076` | 失败，关闭 |
| 全局 `fast-transcendentals`、GLS 排除 | 1day `543.386 s`，没有匹配父本归因 | Dongsha `u=0.000064` | 官方验证失败，关闭 |

结论：物理侧的“激进重关联/量化”速度潜力真实存在，但它与 `u` 超限同源；生态侧虽安全，已经没有独立全长收益。

## 唯一保留的窄候选

Intel 官方说明：`-fast-transcendentals` 会用更快但较不精确的超越函数实现；在 precise/source 下默认关闭。官方同时说明 `-fimf-use-svml` 可在 value-safe 模式下取得许多性能收益而尽量保持数值一致性：

- <https://www.intel.com/content/www/us/en/docs/fortran-compiler/developer-guide-reference/2023-0/fast-transcendentals-qfast-transcendentals.html>
- <https://www.intel.com/content/www/us/en/docs/fortran-compiler/developer-guide-reference/2023-1/fp-model-fp.html>

Stage 137 的同编译器微基准证据为：`-fimf-use-svml=true:pow` 使 GLS 八-pow 核心中位数加速 1.719831x，200 万 double 的最大相对差 `4.326e-16`、最大 2 ULP。结合 S47 scalar-pow 动态 CPU 份额约 7.35%，不计同步的乐观 CPU 上限为：

`7.35% × (1 - 1/1.719831) = 3.076%`。

要达到整机 2%，pow 局部至少要削减 27.21%。微基准越过此门，但既有 late-rank 证据表明 GLS 最重 rank 与 4D-halo 临界 rank 不重合，因此 3.076% 不能直接当作 wall 预期。

## 实验门禁

1. 构建门：父本三项 SHA 必须匹配；全量 clean build；仅 `gls_corstep.f90` 一条 `mpif90 -c` 含 SVML 旗标。实际 `compile_hits=1 / all_compile_hits=1`，通过。
2. 机器码门：父本/候选 `gls_corstep.o` SHA 分别为 `d80261c3...e8918` / `eb45a139...cf38b`，大小 1,237,696 / 1,236,440 B。最终二进制中候选新增 `__svml_pow1_ha_l9` 与 `__svml_pow4_ha_l9`；反汇编字符串计数 candidate 242、parent 39，说明不是 no-op，门禁通过。
3. 完整运行：只有构建门成立才提交一次 `2592/12960`。这是候选筛选，不直接替代匹配对照。
4. 精度门：官方 26/26，首先检查 Dongsha `u <= 0.000060`；任何一项失败立即关闭。
5. 性能门：相对 1657.908 s，`<2%`（>=1624.750 s）停止；2-3% 仅列 ambiguous；`>=3%`（<=1608.171 s）且机制一致才允许同节点 A/B 复现。

当前判定：`PRECISION_BUDGET_AUDIT_VALID / GLOBAL_FAST_MATH_REJECTED / GLS_PRECISE_SVML_BUILD_VALID / FULL_119103481_PENDING / NO_PERFORMANCE_CLAIM`。
