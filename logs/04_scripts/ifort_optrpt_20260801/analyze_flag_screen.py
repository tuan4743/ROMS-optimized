#!/usr/bin/env python3
"""Summarize object/report changes from the bounded O33 flag screen."""

import argparse
import csv
import hashlib
import json
import re
import subprocess
from collections import Counter
from pathlib import Path


VECTOR_LENGTH_RE = re.compile(r"vector length\s+([0-9]+)")
SPEEDUP_RE = re.compile(r"estimated potential speedup:\s*([0-9.]+)")


def sha256(path):
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def report_metrics(path):
    lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
    vector_lengths = Counter()
    speedups = []
    for line in lines:
        match = VECTOR_LENGTH_RE.search(line)
        if match:
            vector_lengths[match.group(1)] += 1
        match = SPEEDUP_RE.search(line)
        if match:
            speedups.append(float(match.group(1)))
    return {
        "report_sha256": sha256(path),
        "report_lines": len(lines),
        "vectorized_remarks": sum("LOOP WAS VECTORIZED" in line for line in lines),
        "dependence_remarks": sum(
            "vector dependence" in line.lower() or "assumed dependence" in line.lower()
            for line in lines
        ),
        "nonunit_stride_emulations": sum("non-unit strided load" in line.lower() for line in lines),
        "unaligned_access_remarks": sum("unaligned access" in line.lower() for line in lines),
        "vec_threshold0_suggestions": sum("vec-threshold0" in line.lower() for line in lines),
        "vector_lengths": dict(sorted(vector_lengths.items(), key=lambda item: int(item[0]))),
        "speedup_count": len(speedups),
        "speedup_max": max(speedups) if speedups else None,
        "speedup_mean": round(sum(speedups) / len(speedups), 6) if speedups else None,
    }


def disassembly_metrics(path):
    result = subprocess.run(
        ["objdump", "-d", "-M", "intel", str(path)],
        check=True,
        universal_newlines=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    lines = result.stdout.splitlines()
    instruction_lines = [line.lower() for line in lines if "\t" in line]
    return {
        "instruction_lines": len(instruction_lines),
        "xmm_lines": sum("xmm" in line for line in instruction_lines),
        "ymm_lines": sum("ymm" in line for line in instruction_lines),
        "zmm_lines": sum("zmm" in line for line in instruction_lines),
        "fma_lines": sum(re.search(r"\bv(?:fma|fnma|fms|fnms)", line) is not None for line in instruction_lines),
        "nontemporal_store_lines": sum("movnt" in line or "vmovnt" in line for line in instruction_lines),
        "prefetch_lines": sum("prefetch" in line for line in instruction_lines),
        "vzeroupper_lines": sum("vzeroupper" in line for line in instruction_lines),
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("audit", type=Path)
    args = parser.parse_args()
    audit = args.audit.resolve()

    with (audit / "manifest.tsv").open(encoding="utf-8", newline="") as handle:
        manifest = list(csv.DictReader(handle, delimiter="\t"))

    baseline_hashes = {
        row["source"]: row["object_sha256"]
        for row in manifest
        if row["candidate"] == "baseline" and row["rc"] == "0"
    }
    baseline_sizes = {
        row["source"]: int(row["object_bytes"])
        for row in manifest
        if row["candidate"] == "baseline" and row["rc"] == "0"
    }

    summary = []
    for row in manifest:
        item = dict(row)
        if row["rc"] == "0":
            object_path = audit / f"{row['candidate']}.{row['source']}.o"
            report_path = audit / f"{row['candidate']}.{row['source']}.optrpt"
            object_size = int(row["object_bytes"])
            item.update(
                {
                    "matches_baseline_object": row["object_sha256"] == baseline_hashes[row["source"]],
                    "object_size_delta": object_size - baseline_sizes[row["source"]],
                    "object_size_delta_percent": round(
                        100.0 * (object_size - baseline_sizes[row["source"]]) / baseline_sizes[row["source"]],
                        6,
                    ),
                    "report": report_metrics(report_path),
                    "disassembly": disassembly_metrics(object_path),
                }
            )
        summary.append(item)

    (audit / "flag_screen_summary.json").write_text(
        json.dumps(summary, indent=2, sort_keys=True), encoding="utf-8"
    )
    fields = [
        "candidate",
        "flags",
        "source",
        "rc",
        "matches_baseline_object",
        "object_size_delta_percent",
        "vectorized_remarks",
        "vector_lengths",
        "speedup_max",
        "speedup_mean",
        "xmm_lines",
        "ymm_lines",
        "fma_lines",
        "nontemporal_store_lines",
    ]
    with (audit / "candidate_summary.tsv").open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields, delimiter="\t")
        writer.writeheader()
        for item in summary:
            report = item.get("report", {})
            disassembly = item.get("disassembly", {})
            writer.writerow(
                {
                    "candidate": item["candidate"],
                    "flags": item["flags"],
                    "source": item["source"],
                    "rc": item["rc"],
                    "matches_baseline_object": item.get("matches_baseline_object", ""),
                    "object_size_delta_percent": item.get("object_size_delta_percent", ""),
                    "vectorized_remarks": report.get("vectorized_remarks", ""),
                    "vector_lengths": json.dumps(report.get("vector_lengths", {}), sort_keys=True),
                    "speedup_max": report.get("speedup_max", ""),
                    "speedup_mean": report.get("speedup_mean", ""),
                    "xmm_lines": disassembly.get("xmm_lines", ""),
                    "ymm_lines": disassembly.get("ymm_lines", ""),
                    "fma_lines": disassembly.get("fma_lines", ""),
                    "nontemporal_store_lines": disassembly.get("nontemporal_store_lines", ""),
                }
            )

    print((audit / "candidate_summary.tsv").read_text(encoding="utf-8"))


if __name__ == "__main__":
    main()
