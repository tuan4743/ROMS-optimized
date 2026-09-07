#!/usr/bin/env python3
"""Stage 138 P0 pass 2: correlate contact-density map with Stage 93/127 late ranks.

Inputs:
  p0_map_clean.json      - per-tile contact point counts (donor + receiver per grid)
  skewprobe_P3.tsv       - Stage 93 skew probe, format: rank ng imodel iregion seconds label
Outputs (stdout):
  per-rank contact metrics, Pearson/Spearman vs halo-wait and step2d,
  top-8 overlap table, spatial table.
"""

import json
import numpy as np

NT = 8
MAP = json.load(open('/tmp/opencode/p0_map_clean.json'))
RECV = {int(k): np.array(v) for k, v in MAP['receiver_pts_per_tile'].items()}
DON = {int(k): np.array(v) for k, v in MAP['donor_pts_per_tile'].items()}

# rank -> (Itile, Jtile); ROMS: rank = Jtile*NT + Itile
def rank_tile(r):
    return r % NT, r // NT

# contact metrics per rank: points owned as receiver on each grid (interp work)
# and points donated on each grid (supply work)
def per_rank_from_tiles(mat):
    out = {}
    for r in range(64):
        it, jt = rank_tile(r)
        out[r] = mat[jt, it]
    return out

recv1 = per_rank_from_tiles(RECV[1])
recv2 = per_rank_from_tiles(RECV[2])
don1 = per_rank_from_tiles(DON[1])
don2 = per_rank_from_tiles(DON[2])

# ---- load skewprobe P3 ----
rows = []
with open('/home/bbkitaikuyo/HPC/MCC26/决赛/02_优化工作区/ROMS_CoSiNE_final_20260727/analysis/o33_skew_probe_118537688/raw/skewprobe_P3.tsv') as fh:
    for line in fh:
        p = line.split()
        label = ' '.join(p[5:]).split('.')[0].strip()
        rows.append((int(p[0]), int(p[1]), int(p[3]), float(p[4]), label))

# aggregate per (rank, ng, label)
from collections import defaultdict
agg = defaultdict(dict)
for r, ng, ireg, secs, label in rows:
    if label == 'TOTAL':
        agg[(r, ng)]['TOTAL'] = secs
    else:
        agg[(r, ng)][label] = agg[(r, ng)].get(label, 0.0) + secs

G2_H4 = 'Message Passage: 4D halo exchanges'
G2_H2 = 'Message Passage: 2D halo exchanges'
G1_PG = 'Message Passage: point data gathering'
G2_S2D = 'Model 2D kernel'

def v(rank, ng, label):
    return agg.get((rank, ng), {}).get(label, np.nan)

h4 = [v(r, 2, G2_H4) for r in range(64)]
h2 = [v(r, 2, G2_H2) for r in range(64)]
pg = [v(r, 1, G1_PG) for r in range(64)]
s2d = [v(r, 2, G2_S2D) for r in range(64)]

# ---- correlation helpers ----
def pearson(x, y):
    x = np.asarray(x, float); y = np.asarray(y, float)
    m = ~(np.isnan(x) | np.isnan(y))
    x, y = x[m], y[m]
    if len(x) < 3: return float('nan')
    xc = x - x.mean(); yc = y - y.mean()
    denom = np.sqrt((xc**2).sum() * (yc**2).sum())
    return float((xc * yc).sum() / denom) if denom else float('nan')

def spearman(x, y):
    x = np.asarray(x, float); y = np.asarray(y, float)
    m = ~(np.isnan(x) | np.isnan(y))
    x, y = x[m], y[m]
    def rank(a):
        s = np.argsort(a)
        r = np.empty_like(s, float)
        r[s] = np.arange(len(a))
        return r
    return pearson(rank(x), rank(y))

print("=== Per-rank contact point ownership (points) ===")
print("rank Itile Jtile | recv_g1 recv_g2 don_g1 don_g2 | h4(G2) h2(G2) pg(G1) step2d(G2)")
for r in range(64):
    it, jt = rank_tile(r)
    print(f"{r:4d} {it:5d} {jt:5d} | {recv1[r]:7d} {recv2[r]:7d} {don1[r]:7d} {don2[r]:7d} | "
          f"{h4[r]:7.3f} {h2[r]:7.3f} {pg[r]:7.3f} {s2d[r]:7.3f}")

print("\n=== Correlations (N=64 ranks) ===")
metrics = {
    'recv_g1 (feedback interp)': recv1,
    'recv_g2 (supply interp)': recv2,
    'don_g1 (supply source)': don1,
    'don_g2 (feedback source)': don2,
}
targets = {
    'h4_wait_G2 (low=late)': h4,
    'h2_wait_G2 (low=late)': h2,
    'pg_wait_G1 (low=late)': pg,
    'step2d_cpu_G2': s2d,
}
for mname, mv in metrics.items():
    for tname, tv in targets.items():
        print(f"  {mname:28s} vs {tname:22s}  Pearson={pearson(list(mv.values()), tv):+.4f}  Spearman={spearman(list(mv.values()), tv):+.4f}")

print("\n=== Top-8 overlap (contact-heavy ranks vs straggler/late ranks) ===")
def top8(d):
    return sorted(d, key=lambda r: d[r], reverse=True)[:8]

late_h4 = [r for r in range(64) if h4[r] <= np.nanpercentile(h4, 12.5)]  # lowest wait = late
late_h2 = [r for r in range(64) if h2[r] <= np.nanpercentile(h2, 12.5)]
late_pg = [r for r in range(64) if pg[r] <= np.nanpercentile(pg, 12.5)]
heavy_s2d = top8({r: s2d[r] for r in range(64)})

sets = {
    'late8 h4(G2)': set(late_h4),
    'late8 h2(G2)': set(late_h2),
    'late8 pg(G1)': set(late_pg),
    'top8 step2d': set(heavy_s2d),
}
for mname, mv in metrics.items():
    t8 = set(top8(mv))
    for sname, sset in sets.items():
        inter = t8 & sset
        print(f"  {mname:28s} top8 ∩ {sname:14s} = {len(inter):2d}  {sorted(inter)}")

print("\n=== Late-rank identity lists ===")
print(f"late8 h4(G2): {sorted(late_h4)}")
print(f"late8 h2(G2): {sorted(late_h2)}")
print(f"late8 pg(G1): {sorted(late_pg)}")
print(f"top8 step2d(G2): {heavy_s2d}")

# Stage 127 specific: step2d vs h4 wait correlation replication
print("\n=== Stage 127 replication (S32 skew P3) ===")
print(f"  Pearson(step2d_G2, h4_wait_G2) = {pearson(s2d, h4):+.4f}  (Stage 127 reported -0.883 on O33)")
print(f"  Pearson(step2d_G2, h2_wait_G2) = {pearson(s2d, h2):+.4f}")

# contact vs step2d spatial alignment: per-tile mean contact vs per-tile step2d
print("\n=== Spatial table: per-tile sums ===")
print("row=Jtile, col=Itile;  A=recv2 (fine supply interp), B=step2d_cpu_G2 mean/tile")
s2d_tile = np.zeros((NT, NT)); cnt = np.zeros((NT, NT))
for r in range(64):
    it, jt = rank_tile(r)
    s2d_tile[jt, it] += s2d[r]; cnt[jt, it] += 1
s2d_tile /= cnt
print("recv2:")
for j in range(NT): print("  " + " ".join(f"{RECV[2][j,i]:5d}" for i in range(NT)))
print("step2d_cpu/tile:")
for j in range(NT): print("  " + " ".join(f"{s2d_tile[j,i]:6.2f}" for i in range(NT)))
print("don1 (coarse supply source):")
for j in range(NT): print("  " + " ".join(f"{DON[1][j,i]:5d}" for i in range(NT)))
print("recv1 (coarse feedback interp):")
for j in range(NT): print("  " + " ".join(f"{RECV[1][j,i]:5d}" for i in range(NT)))
print("\nP0_CORR_DONE")
