#!/usr/bin/env python3
"""Parse matched O33/AVX2 profile extracts into run and mean comparisons."""

import argparse
import csv
import json
import re
from collections import defaultdict
from pathlib import Path


GRID_RE = re.compile(r"Nonlinear model elapsed time profile, Grid:\s*(\d+)")
METRIC_RE = re.compile(r"^\s{2}(.+?)\s+\.{2,}\s+([0-9.]+)\s+\(")
TOTAL_RE = re.compile(r"All percentages are with respect to total time =\s+([0-9.]+)")


def parse_extract(path):
    current_grid = None
    values = {}
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        match = GRID_RE.search(line)
        if match:
            current_grid = int(match.group(1))
            continue
        match = METRIC_RE.match(line)
        if match and current_grid is not None:
            values[(current_grid, match.group(1).strip())] = float(match.group(2))
            continue
        match = TOTAL_RE.search(line)
        if match and current_grid is not None:
            values[(current_grid, "TOTAL")] = float(match.group(1))
    return values


def mean(items):
    return sum(items) / len(items)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("raw", type=Path)
    parser.add_argument("out", type=Path)
    args = parser.parse_args()
    args.out.mkdir(parents=True, exist_ok=True)

    variants = {"A1": "O33", "A2": "O33", "B1": "O33_AVX2HOT", "B2": "O33_AVX2HOT"}
    parsed = {
        label: parse_extract(args.raw / (label + "_profile_extract.txt"))
        for label in ("A1", "B1", "B2", "A2")
    }
    all_keys = sorted(set().union(*(item.keys() for item in parsed.values())))

    with (args.out / "profile_per_run.tsv").open("w", encoding="utf-8", newline="") as handle:
        writer = csv.writer(handle, delimiter="\t")
        writer.writerow(["label", "variant", "grid", "metric", "rank_seconds"])
        for label in ("A1", "B1", "B2", "A2"):
            for grid, metric in all_keys:
                writer.writerow([label, variants[label], grid, metric, "%.3f" % parsed[label][(grid, metric)]])

    rows = []
    for grid, metric in all_keys:
        a_values = [parsed[label][(grid, metric)] for label in ("A1", "A2")]
        b_values = [parsed[label][(grid, metric)] for label in ("B1", "B2")]
        a_mean = mean(a_values)
        b_mean = mean(b_values)
        rows.append(
            {
                "grid": grid,
                "metric": metric,
                "a_mean_rank_seconds": a_mean,
                "b_mean_rank_seconds": b_mean,
                "delta_rank_seconds": b_mean - a_mean,
                "delta_percent": 100.0 * (b_mean - a_mean) / a_mean,
            }
        )

    with (args.out / "profile_mean_comparison.tsv").open("w", encoding="utf-8", newline="") as handle:
        fields = ["grid", "metric", "a_mean_rank_seconds", "b_mean_rank_seconds", "delta_rank_seconds", "delta_percent"]
        writer = csv.DictWriter(handle, fieldnames=fields, delimiter="\t")
        writer.writeheader()
        for row in rows:
            writer.writerow(
                {
                    "grid": row["grid"],
                    "metric": row["metric"],
                    "a_mean_rank_seconds": "%.6f" % row["a_mean_rank_seconds"],
                    "b_mean_rank_seconds": "%.6f" % row["b_mean_rank_seconds"],
                    "delta_rank_seconds": "%.6f" % row["delta_rank_seconds"],
                    "delta_percent": "%.6f" % row["delta_percent"],
                }
            )

    (args.out / "profile_mean_comparison.json").write_text(
        json.dumps(rows, indent=2, sort_keys=True), encoding="utf-8"
    )
    print((args.out / "profile_mean_comparison.tsv").read_text(encoding="utf-8"))


if __name__ == "__main__":
    main()
