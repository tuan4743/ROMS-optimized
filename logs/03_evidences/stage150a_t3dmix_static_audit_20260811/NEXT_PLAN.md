# Stage 150B 下一步：step2d loop-DAG 静态 mining

1. 只使用冻结 S32 exact active `step2d.f90`；不 build、不提交模型作业。
2. 对 127 个活动 DO 头提取 iteration domain、READ/WRITE/RMW、array section、RAW/WAR/WAW、边界/通信/诊断屏障与估计 bytes/point。
3. 搜索两类 island：单消费者中间量 materialization elimination；相同迭代域、无非法依赖的 traversal fusion。
4. 排除 Stage 108 已实测无效的 Drhs/DUon/DVom 三循环组合，不重复花机时。
5. 候选包只有在人工复核后保守证明 `step2d` 局部削减 >=25%（约整机 >=2.75%，给 2% wall 门留余量）才允许进入 build 设计。
6. 若没有岛组合过门，判定 `STEP2D_DAG_NO_GO`，再转 GLS/biology 只读 mining；不降低晋级阈值。
