#!/bin/bash
# node_watch.sh — 节点占用时间线采集器
# 每30秒采样 sinfo -N 全节点状态,只记录状态翻转事件,追加到 timeline.log
# 事件格式: 时间戳|节点|新状态|事件类型
#   事件类型: START  (节点首次出现,如 idle/allocated/drained)
#              CHG    (状态变化,格式 CHG:旧状态->新状态)
#              END    (节点从列表消失)
# 用途: 通过 allocated 区间的时长分布,估计场上各队全量成绩分布
# 用法: nohup bash node_watch.sh > /dev/null 2>&1 &

LOG_DIR=~/zya/monitor
mkdir -p "$LOG_DIR"
cd "$LOG_DIR" || exit 1

PREV=prev_state.txt
CUR=cur_state.txt
touch "$PREV"

while true; do
  ts=$(date '+%Y-%m-%d %H:%M:%S')
  # 只取 kshcexclu06 分区(实际分区名),过滤表头,按节点名排序
  sinfo -N -o "%n %T" -p kshcexclu06 2>/dev/null | awk 'NR>1 {print $1, $2}' | sort > "$CUR"

  # 新增或状态变化
  while read -r node state; do
    old=$(awk -v n="$node" '$1==n {print $2}' "$PREV")
    if [ -z "$old" ]; then
      echo "$ts|$node|$state|START" >> timeline.log
    elif [ "$old" != "$state" ]; then
      echo "$ts|$node|$state|CHG:$old->$state" >> timeline.log
    fi
  done < "$CUR"

  # 节点消失
  while read -r node state; do
    if ! grep -q "^$node " "$CUR"; then
      echo "$ts|$node|$state|END" >> timeline.log
    fi
  done < "$PREV"

  mv "$CUR" "$PREV"
  sleep 30
done
