#!/usr/bin/env python3
import csv
import glob
import os
import statistics
import sys
from collections import defaultdict


def read_rank(path):
    with open(path, encoding="utf-8") as stream:
        rows = [line.rstrip("\n").split("\t") for line in stream]
    rank = int(rows[0][1])
    elapsed = float(rows[1][1])
    entries = []
    for row in csv.DictReader(
        ["\t".join(rows[2])] + ["\t".join(row) for row in rows[3:]],
        delimiter="\t",
    ):
        entries.append(
            (
                row["collective"],
                int(row["comm_size"]),
                int(row["message_bytes"]),
                int(row["datatype_size"]),
                int(row["operation"]),
                int(row["calls"]),
                float(row["seconds"]),
            )
        )
    return rank, elapsed, entries


def main():
    directory, output_path, summary_path = sys.argv[1:4]
    paths = sorted(glob.glob(os.path.join(directory, "rank.*.hist.tsv")))
    if len(paths) != 64:
        raise SystemExit(f"expected 64 rank files, found {len(paths)}")
    samples = [read_rank(path) for path in paths]
    ranks = [sample[0] for sample in samples]
    if sorted(ranks) != list(range(64)):
        raise SystemExit("rank coverage is not exactly 0..63")
    elapsed = [sample[1] for sample in samples]
    grouped = defaultdict(lambda: {"calls": [0] * 64, "seconds": [0.0] * 64})
    for rank, _, entries in samples:
        for collective, comm_size, message_bytes, type_size, operation, calls, seconds in entries:
            key = (collective, comm_size, message_bytes, type_size, operation)
            grouped[key]["calls"][rank] += calls
            grouped[key]["seconds"][rank] += seconds

    rows = []
    for key, values in grouped.items():
        collective, comm_size, message_bytes, type_size, operation = key
        calls = values["calls"]
        seconds = values["seconds"]
        rows.append(
            {
                "collective": collective,
                "comm_size": comm_size,
                "message_bytes": message_bytes,
                "datatype_size": type_size,
                "operation": operation,
                "calls_total": sum(calls),
                "calls_mean": statistics.mean(calls),
                "calls_min": min(calls),
                "calls_max": max(calls),
                "seconds_mean": statistics.mean(seconds),
                "seconds_max": max(seconds),
                "pct_elapsed_mean": 100.0 * statistics.mean(
                    value / duration for value, duration in zip(seconds, elapsed)
                ),
            }
        )
    rows.sort(key=lambda row: row["seconds_mean"], reverse=True)
    fieldnames = list(rows[0])
    with open(output_path, "w", newline="", encoding="utf-8") as stream:
        writer = csv.DictWriter(stream, fieldnames=fieldnames, delimiter="\t")
        writer.writeheader()
        for row in rows:
            writer.writerow(
                {
                    **row,
                    "calls_mean": f"{row['calls_mean']:.3f}",
                    "seconds_mean": f"{row['seconds_mean']:.9f}",
                    "seconds_max": f"{row['seconds_max']:.9f}",
                    "pct_elapsed_mean": f"{row['pct_elapsed_mean']:.6f}",
                }
            )

    total_seconds_by_rank = [0.0] * 64
    totals_by_collective = defaultdict(float)
    for row in rows:
        key = (
            row["collective"], row["comm_size"], row["message_bytes"],
            row["datatype_size"], row["operation"],
        )
        for rank, value in enumerate(grouped[key]["seconds"]):
            total_seconds_by_rank[rank] += value
        totals_by_collective[row["collective"]] += row["seconds_mean"]
    mean_collective_seconds = statistics.mean(total_seconds_by_rank)
    mean_elapsed = statistics.mean(elapsed)
    with open(summary_path, "w", encoding="utf-8") as stream:
        stream.write(
            f"ranks=64 elapsed_mean={mean_elapsed:.6f} "
            f"elapsed_min={min(elapsed):.6f} elapsed_max={max(elapsed):.6f}\n"
        )
        stream.write(
            f"timed_collectives_seconds_mean={mean_collective_seconds:.6f} "
            f"timed_collectives_pct_elapsed_mean={100.0 * mean_collective_seconds / mean_elapsed:.6f}\n"
        )
        for name, seconds in sorted(totals_by_collective.items(), key=lambda item: item[1], reverse=True):
            stream.write(
                f"{name}_seconds_mean={seconds:.6f} "
                f"{name}_pct_elapsed_mean={100.0 * seconds / mean_elapsed:.6f}\n"
            )
        stream.write("top_buckets_by_mean_seconds:\n")
        for row in rows[:20]:
            stream.write(
                f"{row['collective']} comm={row['comm_size']} bytes={row['message_bytes']} "
                f"calls_mean={row['calls_mean']:.3f} seconds_mean={row['seconds_mean']:.6f} "
                f"pct={row['pct_elapsed_mean']:.6f}\n"
            )


if __name__ == "__main__":
    main()
