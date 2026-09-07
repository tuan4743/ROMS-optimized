# 第一次分析：S0 四节点/64 MPI 半日基线读取

- 日期：2026-07-30（平台时间）
- Job：`118206571`
- 节点：`j05r2n[14-17]`
- Run：`/public/home/fujiake/fjk/mcc_runs/118206571_s0_original_gcc731_4n64_halfday_8x8`
- 二进制：原始源码 GCC 7.3.1/no-OpenMP，SHA-256 `8c4bc0ae48330f3041ab9f223315fd9aa5fc4f0ca926cb67d5d65f4b767de9cf`
- 输入：SHA-256 `4b0087cb692ccff9a2298b85470ee4ad0c23b44a8aefb9d4021454a9537cacb7`
- 布局：4 节点、64 MPI、16 ranks/node、OMP1、两网格 `8x8`、`spread_numa16_ccx`
- 范围：组织方允许的半日诊断 `NTIMES=432,2160`，冷启动

## 原始完成状态

模型进程完整推进到 Grid 01 `432/432` 和 Grid 02 `2160/2160`，`model.log` 以 `ROMS/TOMS: DONE` 结束。shell `time` 为 `real 922.61`、`user 13233.79`、`sys 1478.87 s`。`mpirun` Slurm step `118206571.0` 为 `COMPLETED 0:0`。

顶层批处理状态为 `FAILED 1:0`，但失败发生在模型完成、计时落盘和 profile 输出之后。唯一 stderr 是：

```text
sha256sum: output/*.nc: No such file or directory
```

原始输出周期 `NRST/NHIS/NAVG=864,4320` 大于半日 `NTIMES=432,2160`，所以模型按配置没有生成 NetCDF 文件。脚本已写入 `model_result=done`、空 manifest 和 `4.0K output`，随后旧的空 glob 哈希命令返回 1。

## 初步结论

S0 模型本体和端到端 `mpirun` 计时有效，可作为同范围 S1 的短诊断基线。Slurm 顶层失败必须保留并归因于后处理脚本，不得改写为 `COMPLETED`。本任务无模型输出、无官方验证，也不能建立完整三日运行时间或评分有效性。

输出删除不适用；保留 run 目录中的日志和元数据。
