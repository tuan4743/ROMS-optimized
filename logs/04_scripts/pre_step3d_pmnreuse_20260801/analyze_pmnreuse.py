#!/usr/bin/env python3
import csv
import json
import re
import sys
from pathlib import Path


def main() -> None:
    if len(sys.argv) != 3:
        raise SystemExit("usage: analyze_pmnreuse.py RUN_ROOT OUTPUT_JSON")
    run_root = Path(sys.argv[1])
    output = Path(sys.argv[2])
    rows = list(csv.DictReader((run_root / "summary.tsv").open(), delimiter="\t"))
    if [row["label"] for row in rows] != ["A1", "B1", "B2", "A2"]:
        raise ValueError("unexpected A-B-B-A order")

    predictor = {}
    for row in rows:
        text = (run_root / row["label"] / "profile_extract.txt").read_text()
        values = [float(x) for x in re.findall(
            r"3D equations predictor step \.+\s+([0-9.]+)", text
        )]
        if len(values) != 2:
            raise ValueError(f"{row['label']} predictor count={len(values)}")
        predictor[row["label"]] = values

    a_rows = [row for row in rows if row["variant"] == "O33"]
    b_rows = [row for row in rows if row["variant"] == "O33_PMNREUSE"]
    mean_a = sum(float(row["real_seconds"]) for row in a_rows) / 2
    mean_b = sum(float(row["real_seconds"]) for row in b_rows) / 2
    gain = (mean_a - mean_b) / mean_a * 100.0

    pred_a = [sum(predictor[row["label"]][grid] for row in a_rows) / 2
              for grid in range(2)]
    pred_b = [sum(predictor[row["label"]][grid] for row in b_rows) / 2
              for grid in range(2)]
    pred_gain = [(a - b) / a * 100.0 for a, b in zip(pred_a, pred_b)]
    combined_a = sum(pred_a)
    combined_b = sum(pred_b)
    combined_gain = (combined_a - combined_b) / combined_a * 100.0

    result = {
        "labels": [row["label"] for row in rows],
        "real_seconds": {row["label"]: float(row["real_seconds"]) for row in rows},
        "mean_A_seconds": mean_a,
        "mean_B_seconds": mean_b,
        "gain_percent": gain,
        "trajectory_hashes": sorted({row["trajectory_sha"] for row in rows}),
        "nc_counts": {row["label"]: int(row["nc_count"]) for row in rows},
        "predictor_timer": {
            "raw_grid01_grid02": predictor,
            "mean_A_grid01_grid02": pred_a,
            "mean_B_grid01_grid02": pred_b,
            "gain_percent_grid01_grid02": pred_gain,
            "combined_mean_A": combined_a,
            "combined_mean_B": combined_b,
            "combined_gain_percent": combined_gain,
        },
    }
    output.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    print(json.dumps(result, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
