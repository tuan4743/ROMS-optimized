# 第一次分析：Stage 146 G1 条件式 ABBA

- 作业 `118935194`，COMPLETED `00:15:45`，节点 `i17r1n[16-19]`。
- 配置：4 节点、64 MPI×2 OpenMP、8×8/8×8、144/720；九腿 rc=0、DONE=yes、0 NetCDF。
- lineage：A1/A2=`104.866/102.598s`，A′1/A′2=`104.444/104.407s`；A mean `103.732s`，A′ mean `104.425s`，delta `+0.6685%`，轨迹一致，PASS。
- candidate：AP3/AP4=`103.455/102.993s`，B1/B2=`103.170/103.663s`；A′ mean `103.224s`，B mean `103.416s`，gain `-0.1865%`。
- 两条 B 并非都快于 A′，所有九腿轨迹 SHA 相同。
- 判定：`STOP_BRANCH / NO_FULL_RUN / NO_OFFICIAL_VALIDATION`。
- 输出 `/public/home/fujiake/fjk/mcc_runs/118935194_s146_g1_gate`，3.0 MiB，保留。

