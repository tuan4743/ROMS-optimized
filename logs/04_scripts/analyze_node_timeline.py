#!/usr/bin/env python3
# analyze_node_timeline.py — 从 timeline.log 重建作业级占用记录,输出分类时长分布
#
# 用法: python analyze_node_timeline.py <timeline.log>
#
# timeline.log 事件格式(每行):
#   时间戳|节点|新状态|事件类型(START / CHG:旧->新 / END)
#
# 两步分析:
#   1. 每节点 allocated 区间(进入 allocated -> 离开)
#   2. 作业级聚类:开始差<=60s 且结束差<=60s 的区间并为一个作业
#      (Slurm 整组原子分配/释放,4节点作业同轮进出;同轮多作业并发是低概率)
#
# 作业分类(按节点数+时长,基于本队实测):
#   1 节点 & <20min           -> 编译(ifort 单节点构建,占1节点)
#   >=2 节点 & <10min         -> 半天调试 (NTIMES=432, 实测 5-8min)
#   >=2 节点 & 10-17min       -> 1天调试  (NTIMES=864, ~10min)
#   >=2 节点 & 17-25min       -> 2天调试  (NTIMES=1728, ~19min)
#   >=2 节点 & >=25min        -> 全量3天(≈成绩, 场上分布 25-50min)
#   左截断(START即占用):观测前已在跑,时长为下界
#
# ⚠️ 档位标定链(2026-08-11 18:50 修正,防误判):
#   某队同节点标定: 4节点 5m45s = 半天档 → 4节点1天=11.5min → 2节点1天=25-26min(减速2.2×,核减半2×+SMT损失,自洽)
#   结论: 25-26min 的 2 节点作业 = 1天拓扑实验(64核 SMT 对照),不是全量成绩
#   判定规则: 出现"短标定作业(半天档,5-9min)"附近的 2 节点 25-26min 作业 → 判为 1天实验,不计入成绩档
#   2 节点 ≥25min 且无同队半天标定 → 仍存疑,单独标注
#   4 节点 25-35min 完整起点 → 可能是真全量成绩(如 27:11/28:09),也可能是2天调试,标注"待确认"
#
# ⚠️ 实测比例标定(2026-08-11 19:20 修正,勿用理论比例):
#   短档→全量比例必须用本队实测: 全量/半天 = 4.5-5.2×(非理论6×), 全量/1天 = 2.75×(非3×)
#   (短档启动/IO 摊销占比大,比例偏小; 理论比例会低估短档对应的全量水平)
#   27:11(j01r2n04-07): 同组半天5:13 ×4.5-5.2 = 23:30-27:10 → 判定全量(置信高)
#   28:09(j04r2n04-07): 同组1天12:34(半天≈6:17) ×4.5-5.2 = 28:20-32:40 → 判定全量(置信中)
import re
import sys
from collections import defaultdict
from datetime import datetime

# 节点速度情报(证据链报告 §节点避雷, 2026-08-10 实测):
#   已知慢:  j01r2n00-03, j01r2n12-15 (慢 33-70%)
#   已知正常: j01r2n04-07, j05r2n00-03
#   机架可疑: j01r2 其他段未实测(同机架有慢点先例)
#   i17r1n/i17r2n/j04r2n/j05r2n 其他段: 无实测, 默认可信
KNOWN_SLOW = [("j01r2", 0, 3), ("j01r2", 12, 15)]
KNOWN_OK = [("j01r2", 4, 7), ("j05r2", 0, 3)]
SUSPECT_RACK = ["j01r2"]

def node_risk(nodes):
    """返回节点组的速度风险说明;无已知风险返回空串。"""
    risks = []
    for n in nodes:
        m = re.match(r"([a-z]+\d+r\d+)n(\d+)$", n)
        if not m:
            continue
        rack, idx = m.group(1), int(m.group(2))
        if any(rack == r and a <= idx <= b for r, a, b in KNOWN_SLOW):
            risks.append("已知慢节点(真实成绩≈时长÷1.33~1.7)")
        elif any(rack == r and a <= idx <= b for r, a, b in KNOWN_OK):
            risks.append("已知正常")
        elif rack in SUSPECT_RACK:
            risks.append("机架可疑(j01r2有慢点先例,成绩可能被低估)")
    return risks[0] if risks else ""

def parse_log(path):
    events = defaultdict(list)
    for line in open(path, encoding="utf-8-sig", errors="ignore"):
        parts = line.rstrip("\n").split("|")
        if len(parts) != 4:
            continue
        ts_str, node, state, event = parts
        ts = datetime.strptime(ts_str, "%Y-%m-%d %H:%M:%S")
        events[node].append((ts, state, event))
    for node in events:
        events[node].sort(key=lambda x: x[0])
    return events

def node_intervals(events):
    """每节点的 allocated 区间 [(node, start, end, truncated)]"""
    out = []
    for node, evs in events.items():
        cur_start, cur_trunc = None, False
        for ts, state, event in evs:
            if state == "allocated" and cur_start is None:
                cur_start, cur_trunc = ts, (event == "START")
            elif state != "allocated" and cur_start is not None:
                out.append((node, cur_start, ts, cur_trunc))
                cur_start = None
        if cur_start is not None:
            out.append((node, cur_start, None, cur_trunc))  # 未释放
    return out

def cluster_jobs(intervals):
    """同起同落区间 -> 作业。返回 [dict(nodes, start, end, truncated, complete)]"""
    jobs = []
    for node, s, e, trunc in sorted(intervals,
                                    key=lambda x: (x[1], x[2] or x[1])):
        if e is None:  # 未释放区间单独成作业,不参与并入
            jobs.append({"nodes": [node], "start": s, "end": None,
                         "truncated": trunc})
            continue
        for job in jobs:
            if job["end"] is None:
                continue
            if abs((job["start"] - s).total_seconds()) <= 60 and \
               abs((job["end"] - e).total_seconds()) <= 60:
                job["nodes"].append(node)
                job["start"] = min(job["start"], s)
                job["end"] = max(job["end"], e)
                job["truncated"] = job["truncated"] or trunc
                break
        else:
            jobs.append({"nodes": [node], "start": s, "end": e,
                         "truncated": trunc})
    # 进行中作业不合并:同轮左截断的节点属于不同作业,
    # 等它们释放后由上面的同起同落逻辑自然聚类
    for j in jobs:
        j["duration"] = (datetime.now() - j["start"]) if j["end"] is None \
                        else (j["end"] - j["start"])
    return jobs

def fmt_d(delta):
    s = int(delta.total_seconds())
    return f"{s//60:3d}m{s%60:02d}s ({s:5d}s)"

def classify(job):
    n = len(job["nodes"])
    mins = job["duration"].total_seconds() / 60
    if job["end"] is None:
        return "进行中"
    if n == 1 and mins < 20:
        return "编译"
    if mins < 5:
        return "短测/失败"
    if mins < 10:
        return "半天调试"
    if mins < 17:
        return "1天调试"
    if mins < 25:
        return "2天调试"
    return "全量3天(≈成绩)"

def main(path):
    events = parse_log(path)
    intervals = node_intervals(events)
    jobs = cluster_jobs(intervals)
    jobs.sort(key=lambda j: (j["start"], j["end"] is None))

    done = [j for j in jobs if j["end"] is not None]
    on = [j for j in jobs if j["end"] is None]
    print(f"节点数: {len(events)}  作业级区间: {len(jobs)}  "
          f"(完成 {len(done)}, 进行中 {len(on)})")
    print("=" * 92)

    for j in done:
        tag = classify(j)
        span = (f"{j['start']:%m-%d %H:%M:%S} -> {j['end']:%m-%d %H:%M:%S}"
                f"  {fmt_d(j['duration'])}")
        nodes = ",".join(j["nodes"]) if len(j["nodes"]) <= 8 else \
                f"{len(j['nodes'])}节点({j['nodes'][0]}...)"
        risk = node_risk(j["nodes"])
        print(f"[{tag:<14}] {len(j['nodes'])}节点 {span}  {nodes}"
              f"{'  [左截断]' if j['truncated'] else ''}"
              f"{f'  ⚠️{risk}' if risk else ''}")

    if on:
        # 进行中按起始时刻分桶显示
        buckets = defaultdict(list)
        for j in on:
            buckets[j["start"]].append(j["nodes"][0])
        print(f"\n【进行中】 {len(on)} 个节点,按占用起始时刻分 {len(buckets)} 组:")
        for start in sorted(buckets):
            ns = sorted(buckets[start])
            shown = ",".join(ns[:4]) + (f"...共{len(ns)}节点" if len(ns) > 4 else "")
            elapsed = int((datetime.now() - start).total_seconds())
            print(f"  自 {start:%m-%d %H:%M:%S} 起 {len(ns)}节点(已{elapsed//60}分): {shown}")

    if done:
        print("\n【全量档明细】(≥25min,即场上的正式成绩观测)")
        full = [j for j in done if j["duration"].total_seconds() / 60 >= 25]
        for j in sorted(full, key=lambda x: x["duration"].total_seconds()):
            nodes = ",".join(j["nodes"])
            risk = node_risk(j["nodes"])
            print(f"  {fmt_d(j['duration'])}  {j['start']:%m-%d %H:%M:%S}  {nodes}"
                  f"{'  [左截断=下界]' if j['truncated'] else ''}"
                  f"{f'  ⚠️{risk}' if risk else ''}")

        print("\n【时长分布】(5分钟一档)")
        print(f"{'分钟档':<10} {'作业数':<6} 说明")
        bins = defaultdict(int)
        for j in done:
            bins[int(j["duration"].total_seconds() // 300)] += 1
        for k in sorted(bins):
            note = {0: "编译/短测", 1: "编译/半天", 2: "半天/1天",
                    3: "1天/2天", 4: "2天", 5: "全量", 6: "全量",
                    7: "全量", 8: "全量", 9: "全量"}.get(k, "全量/偏慢")
            print(f"{k*5:3d}-{k*5+5:3d}分     {bins[k]:<6} {note}")
        s = sorted(j["duration"].total_seconds() for j in done)
        def secs_fmt(sec):
            return f"{int(sec)//60:3d}m{int(sec)%60:02d}s ({int(sec):5d}s)"
        print(f"\n完成作业时长: 最短 {secs_fmt(s[0])}"
              f" 最长 {secs_fmt(s[-1])}"
              f" 中位 {secs_fmt(s[len(s)//2])}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(__doc__)
        sys.exit(1)
    main(sys.argv[1])
