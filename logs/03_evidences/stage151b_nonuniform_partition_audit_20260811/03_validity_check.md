# Stage 151B — 第三次有效性复核

- 复核数据：grid1 interior=359×326；grid2=235×245；contact receiver/donor 总数与既有 Stage 138 地图一致（旧表曾按 bytes 放大 8 倍，新表明确以 point count 计）。
- 复核模型：同时给出 area 与 wet 两种敏感性；没有挑选单一主观权重宣称收益。
- 复核门槛：最强 R² 模型也只有 1.164% 的 step2d 局部 max 降幅，而非 whole-wall；不能晋级。
- 任意非均匀 bounds 还需修改 ROMS `BOUNDS/DOMAIN/contact ownership`，工程风险只会进一步降低净收益。
- 本阶段无运行、无输出、无官方验证；最终判定 `STATIC_VALID / SOLVER_REPRODUCIBLE / REJECT_BEFORE_CODE`。
