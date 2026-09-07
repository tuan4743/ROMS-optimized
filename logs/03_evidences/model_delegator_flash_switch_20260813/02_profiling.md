# Model Delegator 切换行为检查

## 成功路径

- 语法检查覆盖 `server/core.mjs`、`server/agent.mjs`、`server/index.mjs` 与两个 DeepSeek 测试脚本，全部通过。
- 简单精确输出任务成功，说明 provider 名称、模型名、API 兼容层和审计路径可工作。
- 冒烟用量为 321 prompt tokens、41 completion tokens；没有在输出中暴露凭据。

## MCC Stage 163 委派表现

- 已先调用 provider 枚举并确认 `deepseek-v4-flash` enabled。
- 对脱敏的“精度余量审计”和“最小实验梯度”两项纯文本任务使用 `delegateMany` 并发委派。
- 第一次每项 1500 completion tokens、第二次每项 4000 completion tokens；四次调用均返回 `status=success`，但 completion 全部记入 `reasoning_tokens`，最终 `output` 为空。
- 原始脱敏委派审计保存在相邻 Stage 163 目录的 `delegations.jsonl`，未包含源码、绝对远端团队路径、输入数据或密钥。

结论：Flash 的连接与简单任务有效，但本次复杂性能判断没有生成可审查文本，不能把空输出当作分析证据。后续 Stage 163 由 Codex 直接审查原始日志；这是委派失败后的责任回收，不降低最终证据门槛。
