# Stage 144 冻结源码清单

- 日期：2026-08-11 EDT
- 阶段：Stage 144，S32 tracer pipeline 静态数据流审计
- 冻结归档：`/public/home/fujiake/nan/sprint/backup_S32_src_20260808.tar.gz`
- SHA-256：`615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`
- 本地只读快照：`raw_source/`
- 操作边界：仅复制和解包源码；未修改模式代码、未构建、未提交作业、未运行模型。

本次直接审阅的文件：

- `ROMS/Nonlinear/main3d.F`
- `ROMS/Nonlinear/rhs3d.F`
- `ROMS/Nonlinear/pre_step3d.F`
- `ROMS/Nonlinear/prsgrd.F`
- `ROMS/Nonlinear/t3dmix4_s.h`
- `ROMS/Nonlinear/gls_prestep.F`
- `ROMS/Nonlinear/set_depth.F`
- `ROMS/Nonlinear/step3d_uv.F`
- `ROMS/Nonlinear/omega.F`
- `ROMS/Nonlinear/gls_corstep.F`
- `ROMS/Nonlinear/Biology/bio_UMAINE15.h`
- `ROMS/Nonlinear/step3d_t.F`
- `ROMS/Nonlinear/nesting.F`
- `ROMS/Include/bye24bio15.h`
- `ROMS/Include/globaldefs.h`
- `ROMS/Modules/mod_ocean.F`

活动配置证据：

- `bye24bio15.h:16,33,66,72,125`：`NESTING`、`TS_U3ADV_SPLIT`、`MIX_S_TS`、`GLS_MIXING`、`BIO_UMAINE15`。
- `globaldefs.h:791-803`：split advection 导出 `TS_C4HADVECTION` 与 `TS_DIF4`。
- `main3d.F:180-182`：`nstp`/`nnew` 只在 1、2 间轮换，`nrhs=nstp`；固定下标 3 是独立中间 tracer 场，不与 `nstp/nnew` 混同。

