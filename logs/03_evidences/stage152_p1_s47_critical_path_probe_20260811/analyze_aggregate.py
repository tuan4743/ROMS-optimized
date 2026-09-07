from __future__ import annotations
import csv, glob, math, os, statistics, sys
from collections import defaultdict

root = sys.argv[1]
rows = []
headers = []
for path in sorted(glob.glob(os.path.join(root, "p1_rank_*.tsv"))):
    with open(path, encoding="utf-8") as f:
        head = f.readline().strip()
        meta = dict(x.split("=", 1) for x in head[1:].split("\t"))
        headers.append(meta)
        for r in csv.DictReader(f, delimiter="\t"):
            r["rank"] = int(meta["rank"])
            rows.append(r)

if len(headers) != 64 or any(int(h["overflow"]) for h in headers):
    raise SystemExit("invalid header/overflow gate")

# Only compare exact cohorts present on at least 48 ranks. Peer-class is kept
# in the key, avoiding edge/interior neighbor mixing.
bykey = defaultdict(list)
for r in rows:
    key = (r["op"], r["caller"], r["count"], r["tag"], r["peer_class"])
    gap = sum(float(r[f"b{b}_gap_sum"]) for b in range(3))
    mpi = sum(float(r[f"b{b}_mpi_sum"]) for b in range(3))
    calls = sum(int(r[f"b{b}_calls"]) for b in range(3))
    bykey[key].append((r["rank"], calls, gap, mpi))

out = []
for key, vals in bykey.items():
    if len(vals) < 48:
        continue
    med_gap = statistics.median(v[2] for v in vals)
    med_mpi = statistics.median(v[3] for v in vals)
    for rank, calls, gap, mpi in vals:
        paired = min(max(0.0, gap-med_gap), max(0.0, med_mpi-mpi))
        if paired > 0:
            out.append((paired, rank, calls, gap, med_gap, mpi, med_mpi, key))
out.sort(reverse=True)

print(f"files={len(headers)} rows={len(rows)} cohorts={len(bykey)} comparable={sum(len(v)>=48 for v in bykey.values())}")
print("paired_s rank calls gap med_gap mpi med_mpi op caller count tag peer_class")
for x in out[:30]:
    paired, rank, calls, gap, mg, mpi, mm, key = x
    print(f"{paired:.9f} {rank} {calls} {gap:.9f} {mg:.9f} {mpi:.9f} {mm:.9f} {' '.join(key)}")
