# Stage 158 —— 有效性预检

- 当前状态：`PREPARED / NOT_MEASURED`。
- 输入和源码不变；唯一性能变量是五个热点对象的 `-qopt-multi-version-aggressive`。
- 构建前必须重验归档 SHA、父本二进制 MD5、makefile SHA和共享 Inputfiles 只读链接。
- 不允许把优化报告变化直接宣称为墙钟收益；只能用它决定是否值得运行。
- 不删除任何既有输出；Stage 158 新路径若已存在则脚本立即停止。

## Harness 修正

- `119061573` 在 16 s 内因计算节点无 `python3` 失败（exit 127）；只完成归档解压和 flag probe，未执行 ROMS 构建/运行，不计无效优化轮。
- 不删除失败路径 `stage158_multiversion_20260812/`；第二版改用纯 `sed`，并使用新路径 `stage158_multiversion_20260812_r2/`。
- `119061610` 在 A′ 对象编译后的 IPO 链接阶段失败（exit 2）：五个对象使用不同 `-qopt-report-file`，IPO 报 `#13042 Conflicting values`。候选 B 未构建，未运行 ROMS，不计优化轮。
- 第三版为每条腿统一 report 文件，使用新路径 `stage158_multiversion_20260812_r3/`；r1/r2 均保留。

## 第三遍有效性判定

- 有效作业 `119061659` 完成且双构建哈希/编译线/对象大小/report manifest 齐全。
- 唯一变量成立：B 仅在五对象多 `-qopt-multi-version-aggressive`；父本归档、PGO profile、MPI/NetCDF/编译器相同。
- 机器码哈希不同只能证明旗标有效，不能证明快路。预定门禁要求“新增可用快路”，而 report 未提供任何这类证据；因此不允许为它提交 ROMS 短跑。
- 终局：`BUILD_VALID / STATIC_GATE_FAIL / REJECT_BEFORE_ROMS / NO_PERFORMANCE_CLAIM`。
- r1/r2/r3 路径均保留，无删除。
