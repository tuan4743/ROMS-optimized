# Model Delegator 切换有效性复核

复核项：

- [x] 配置中 provider 名与 model 名均为 `deepseek-v4-flash`。
- [x] 测试脚本和 README 的默认示例同步切换。
- [x] `npm.cmd run check` 返回成功。
- [x] 最小联网冒烟输出与期望字符串逐字一致。
- [x] 没有把凭据复制到工作区或委派提示。
- [x] Stage 163 的复杂委派空输出已明确降级，未据此形成性能结论。
- [x] 未触碰 ROMS 远端团队目录，未产生模型输出。

最终判定：`SWITCH_VALID / SIMPLE_SMOKE_VALID / COMPLEX_DELEGATION_OUTPUT_EMPTY / CODEX_REVIEW_REQUIRED`。
