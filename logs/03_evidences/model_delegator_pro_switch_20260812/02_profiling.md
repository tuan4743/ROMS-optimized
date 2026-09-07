# model-delegator 副手切换：第二次分析

- `providers.json` 读取检查显示 `deepseek-v4-pro` enabled/ready。
- `npm.cmd run check` 全部通过。
- 最小在线 smoke test 只发送固定输出要求；返回 provider/model 均为 `deepseek-v4-pro`，状态 success，输出精确为 `DEEPSEEK_V4_PRO_OK`。
- 当前 Codex 任务启动时 MCP 工具清单已固化，不能热加载新增工具；新任务或插件重载后生效。
