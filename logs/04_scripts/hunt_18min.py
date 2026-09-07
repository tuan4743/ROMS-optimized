#!/usr/bin/env python3
# hunt_18min.py — 复盘:在时间线中寻找"可能是超快全量"的 15-22 分钟 4 节点作业
# 背景:第一名清华 18min,远超我们理解;该类作业当时被自动归为"2天调试档"而被忽视
import sys
from collections import defaultdict
from datetime import datetime

def parse_log(path):
    events = defaultdict(list)
    for line in open(path, encoding="utf-8-sig", errors="ignore"):
        p = line.rstrip("\n").split("|")
        if len(p) != 4:
            continue
        ts = datetime.strptime(p[0], "%Y-%m-%d %H:%M:%S")
        events[p[1]].append((ts, p[2], p[3]))
    for n in events:
        events[n].sort()
    return events

def intervals(events):
    out = []
    for node, evs in events.items():
        start, trunc = None, False
        for ts, st, ev in evs:
            if st == "allocated" and start is None:
                start, trunc = ts, (ev == "START")
            elif st != "allocated" and start is not None:
                out.append((node, start, ts, trunc))
                start = None
        if start is not None:
            out.append((node, start, None, trunc))
    return out

def cluster(intervals):
    jobs = []
    for node, s, e, trunc in sorted(intervals, key=lambda x: (x[1], x[2] or x[1])):
        if e is None:
            jobs.append({"nodes": [node], "start": s, "end": None, "trunc": trunc})
            continue
        for j in jobs:
            if j["end"] is None:
                continue
            if abs((j["start"] - s).total_seconds()) <= 60 and abs((j["end"] - e).total_seconds()) <= 60:
                j["nodes"].append(node)
                j["start"] = min(j["start"], s)
                j["end"] = max(j["end"], e)
                j["trunc"] = j["trunc"] or trunc
                break
        else:
            jobs.append({"nodes": [node], "start": s, "end": e, "trunc": trunc})
    return [j for j in jobs if j["end"] is not None]

def main(path):
    jobs = cluster(intervals(parse_log(path)))
    # 候选: 4节点(或3节点)、15-22分钟、完整起止
    cands = [j for j in jobs
             if 3 <= len(j["nodes"]) <= 4
             and 900 <= (j["end"] - j["start"]).total_seconds() <= 1320]
    print(f"候选(3-4节点,15-22分钟): {len(cands)} 个\n")
    # 交叉检查: 每个候选所在节点组,是否在时间线中也有 >=25min 的 4节点全量档
    full_jobs = [j for j in jobs
                 if len(j["nodes"]) >= 3
                 and (j["end"] - j["start"]).total_seconds() >= 1500]
    # 组集合(按首个节点归组)
    def grp(j):
        return sorted(j["nodes"])[0][:-2]  # 如 i17r1n04-07 -> i17r1n
    full_grps = set()
    for j in full_jobs:
        g = grp(j)
        full_grps.add(g)
    print("=== 无 >=25min 全量档伴随的候选(可能是超快全量!) ===\n")
    found = 0
    for j in sorted(cands, key=lambda x: x["start"]):
        g = grp(j)
        # 同组全量档检查:精确到同节点前缀
        has_full = any(grp(f) == g and abs((f["start"] - j["start"]).total_seconds()) > 600
                       for f in full_jobs)
        if not has_full:
            d = int((j["end"] - j["start"]).total_seconds())
            nodes = ",".join(sorted(j["nodes"]))
            print(f"{d//60:2d}m{d%60:02d}s  {j['start']:%m-%d %H:%M} -> {j['end']:%m-%d %H:%M}  {nodes}")
            found += 1
    print(f"\n无伴随全量的候选: {found} 个")
    print(f"\n=== 对照组: 有全量档伴随的候选(2天调试档) = {len(cands) - found} 个 ===")

if __name__ == "__main__":
    main(sys.argv[1])
