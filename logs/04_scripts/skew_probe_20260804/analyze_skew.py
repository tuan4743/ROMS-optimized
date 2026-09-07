#!/usr/bin/env python3
"""Analyse the [P1] per-rank region-time dumps.

Input: one directory per run, each containing skewprobe_all.tsv with lines
       rank  ng  imodel  iregion  seconds  region-name

The question this answers: is the arrival skew that absorbed the [O34] gain
(a) persistent and attributable to specific ranks, (b) random jitter,
(c) structural (a spatial pattern over the 8x8 tile grid), or
(d) concentrated on rank 0's serial input path.
"""
import sys
import os
from collections import defaultdict

NTILE_I = 8

# Regions whose time is dominated by waiting rather than by local work.
WAIT_REGIONS = (
    'Message Passage',
)


def load(path):
    """rows[(ng, iregion)][rank] = seconds ; names[(ng, iregion)] = label"""
    rows = defaultdict(dict)
    names = {}
    with open(path) as fh:
        for line in fh:
            parts = line.split(None, 4)
            if len(parts) < 5:
                continue
            try:
                rank, ng, imodel, iregion = (int(parts[i]) for i in range(4))
                secs = float(parts[4].split()[0])
            except ValueError:
                continue
            label = parts[4].split(None, 1)[1].strip() if len(parts[4].split(None, 1)) > 1 else 'TOTAL'
            rows[(ng, iregion)][rank] = secs
            names[(ng, iregion)] = label
    return rows, names


def stats(values):
    n = len(values)
    mean = sum(values) / n
    lo, hi = min(values), max(values)
    var = sum((v - mean) ** 2 for v in values) / n
    return mean, lo, hi, var ** 0.5


def pearson(a, b):
    n = len(a)
    ma, mb = sum(a) / n, sum(b) / n
    num = sum((x - ma) * (y - mb) for x, y in zip(a, b))
    da = sum((x - ma) ** 2 for x in a) ** 0.5
    db = sum((y - mb) ** 2 for y in b) ** 0.5
    return num / (da * db) if da > 0 and db > 0 else float('nan')


def main(dirs):
    runs = []
    for d in dirs:
        path = os.path.join(d, 'skewprobe_all.tsv')
        rows, names = load(path)
        runs.append((os.path.basename(d.rstrip('/\\')), rows, names))
        print('loaded %s: %d (grid,region) pairs, %d ranks'
              % (path, len(rows), len(next(iter(rows.values())))))

    label, rows, names = runs[0]

    print('\n=== per-region spread across ranks (run %s) ===' % label)
    print('%-4s %-6s %-46s %10s %10s %10s %8s %8s'
          % ('grid', 'region', 'name', 'mean', 'min', 'max', 'spread%', 'cv%'))
    ordered = sorted(rows, key=lambda k: -sum(rows[k].values()))
    for key in ordered:
        per_rank = rows[key]
        vals = [per_rank[r] for r in sorted(per_rank)]
        mean, lo, hi, sd = stats(vals)
        if mean <= 0:
            continue
        print('%-4d %-6d %-46s %10.3f %10.3f %10.3f %8.2f %8.2f'
              % (key[0], key[1], names[key][:46], mean, lo, hi,
                 100.0 * (hi - lo) / mean, 100.0 * sd / mean))

    print('\n=== cross-run stability of the per-rank pattern ===')
    print('A high correlation means the same ranks behave the same way in')
    print('every run, i.e. persistent skew.  A correlation near zero means')
    print('random jitter.')
    print('%-4s %-6s %-46s %10s' % ('grid', 'region', 'name', 'corr'))
    for key in ordered:
        if len(runs) < 2:
            break
        series = []
        ok = True
        for _, r, _ in runs:
            if key not in r:
                ok = False
                break
            series.append([r[key][k] for k in sorted(r[key])])
        if not ok:
            continue
        mean = sum(series[0]) / len(series[0])
        if mean <= 0:
            continue
        cs = [pearson(series[i], series[j])
              for i in range(len(series)) for j in range(i + 1, len(series))]
        print('%-4d %-6d %-46s %10.3f'
              % (key[0], key[1], names[key][:46], sum(cs) / len(cs)))

    print('\n=== rank ranking on the largest wait pools (run %s) ===' % label)
    print('The straggler is the rank that waits LEAST: it arrives last, so')
    print('the data is already there when it posts its receives.')
    for key in ordered[:40]:
        if not names[key].startswith('Message Passage'):
            continue
        per_rank = rows[key]
        vals = sorted(per_rank.items(), key=lambda kv: kv[1])
        mean = sum(per_rank.values()) / len(per_rank)
        if mean <= 0:
            continue
        print('\ngrid %d  %s  (mean %.3f)' % (key[0], names[key], mean))
        print('  least wait (candidate stragglers): ' +
              ', '.join('r%d=%.1f' % (r, v) for r, v in vals[:6]))
        print('  most wait  (early arrivers)      : ' +
              ', '.join('r%d=%.1f' % (r, v) for r, v in vals[-6:]))

    print('\n=== spatial map over the 8x8 tile grid ===')
    print('rank -> tile (Itile = rank mod 8, Jtile = rank div 8); node = rank div 16.')
    for key in ordered:
        if not names[key].startswith('Message Passage'):
            continue
        per_rank = rows[key]
        if len(per_rank) < 64:
            continue
        mean = sum(per_rank.values()) / len(per_rank)
        if mean <= 0:
            continue
        print('\ngrid %d  %s  (values as %% of mean)' % (key[0], names[key]))
        for j in range(len(per_rank) // NTILE_I):
            row = ''.join('%7.1f' % (100.0 * per_rank[j * NTILE_I + i] / mean)
                          for i in range(NTILE_I))
            print('  Jtile %d:%s' % (j, row))
        break

    print('\n=== per-node aggregation ===')
    for key in ordered:
        if not names[key].startswith('Message Passage'):
            continue
        per_rank = rows[key]
        if len(per_rank) < 64:
            continue
        by_node = defaultdict(list)
        for r, v in per_rank.items():
            by_node[r // 16].append(v)
        print('grid %d %s:' % (key[0], names[key]),
              '  '.join('node%d=%.1f' % (n, sum(v) / len(v))
                        for n, v in sorted(by_node.items())))


if __name__ == '__main__':
    if len(sys.argv) < 2:
        sys.exit('usage: analyze_skew.py RUNDIR [RUNDIR ...]')
    main(sys.argv[1:])
