# model-delegator 副手切换：第三次验证

- JSON 配置可解析，旧 provider 名已从活动配置中移除。
- smoke test `exact_match=true`，退出码 0。
- 项目 `AGENTS.md` 与主/BN 交接 skill 的规则均已切换为 `deepseek-v4-pro`。
- 历史证据中的 `deepseek-v4-flash` 记录不回写，保留原始事实。

判定：`SWITCH_VALID / RELOAD_REQUIRED_FOR_CURRENT_TOOL_LIST`。
