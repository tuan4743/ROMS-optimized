# 01 — SSH 连接指南 (MCC26)

## 连接信息
| 项 | 值 |
|---|---|
| 主机 | `cancon.hpccube.com` |
| 端口 | `65023` |
| 用户 | `fujiake` |
| 密钥 | `C:\Users\hp\.ssh\mcc.txt` |
| 别名 | `MCC`（已写入 `~/.ssh/config`） |

## ~/.ssh/config 配置
```
Host MCC
    HostName cancon.hpccube.com
    port 65023
    User fujiake
    IdentityFile ~/.ssh/mcc.txt
```

## 连接方式

### 1. 本地直连（推荐）
```bash
ssh MCC
```
密钥已配置，免密登录。登录后落在 `/public/home/fujiake`。

### 2. Claude Code 内 SSH MCP 会话
本工作区通过 SSH MCP 维护持久会话，会话名 `mcc`，配置已保存到 `C:\Users\hp\.ssh-mcp-sessions.json`，daemon 重启后自动恢复。

- 连接：`ssh_connect(host=MCC, name=mcc, key_path=C:\Users\hp\.ssh\mcc.txt, username=fujiake)`
- 执行单次命令：`ssh_exec(session=mcc, command=...)`
- 持久 shell（保留 cwd/env）：`ssh_shell(session=mcc, command=...)`
- 上传/下载：`ssh_upload` / `ssh_download`
- 断线重连：`ssh_reconnect(session=mcc)`

> 注意：`ssh_shell` 对超长或慢命令（如 `find /public`、`sinfo` 全量）可能超时，改用 `ssh_exec` 并设 `timeout_ms`。

## 集群环境
- **集群**：华东一区【昆山】。
- **Slurm 集群**，登录节点 `login01`–`login09`。
- **分区**：`kshcexclu06`（赛题专用），每队 128 核，单机 32 核，最大 4 节点。
- **DCU**：⚠️ 决赛**不支持 DCU**（不可改物理计算方案）。`--gres=dcu:1` 作废。
- **Slurm 版本**：22.05.8。
- 查看：`sinfo`、`squeue -u fujiake`、`scancel <jobid>`。

## 编译环境模块（sub.sh 中加载）
```bash
module purge
module load mathlib/netcdf/4.4.1/intel \
             mpi/hpcx/2.7.4/intel-2017.5.239 \
             mathlib/hdf5/1.8.20/intel \
             compiler/intel/2017.5.239
```

## 常用路径
| 用途 | 路径 |
|---|---|
| 主目录 | `/public/home/fujiake` |
| 远程工作区 | `~/zya` |
| Inputfiles（共享） | `/public/home/fujiake/Inputfiles`（含 SCS/、Dongsha60/） |
| 赛题源码/脚本（群通知） | `/public/share/mcc2026_final/`（含 ROMS_CoSiNE15.tar、sub.sh、vali.py） |
| 验证环境 | `/public/share/mcc2026_final/miniforge3`（conda env: vali） |
| 已有 v24a 基线 | `~/fjk/ROMS_CoSiNE15_lsd_v24a_20260728` |
| 优化日志（参考） | `~/fjk/ROMS_CoSiNE15_lsd_v24a_20260728/OPTIMIZATION_LOG.md` |

## 验证脚本
```bash
source /public/share/mcc2026_final/miniforge3/etc/profile.d/conda.sh
conda activate vali
python /public/share/mcc2026_final/vali.py
```

## 验证记录
- 2026-07-30：连接成功，`whoami=fujiake`，`pwd=/public/home/fujiake`。
- Inputfiles 可读，SCS/ 与 Dongsha60/ 文件齐全。
- 分区 `kshcexclu06` 可见，有 idle 节点。
