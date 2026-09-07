#!/usr/bin/env python3
"""Parse Intel ifort 17 optimization reports into compact static evidence."""

from __future__ import annotations

import argparse
import csv
import hashlib
import json
import re
from collections import Counter
from pathlib import Path


LOOP_RE = re.compile(r"LOOP BEGIN at\s+(.+?)\((\d+),(\d+)\)")
SPEEDUP_RE = re.compile(r"estimated potential speedup:\s*([0-9.]+)")
VECTOR_LENGTH_RE = re.compile(r"vector length\s+([0-9]+)")


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def parse_report(path: Path) -> dict:
    lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
    loop_stack: list[dict] = []
    records: list[dict] = []
    blockers: list[dict] = []
    vector_lengths: Counter[str] = Counter()

    for report_line, text in enumerate(lines, start=1):
        begin = LOOP_RE.search(text)
        if begin:
            loop = {
                "source": begin.group(1),
                "source_line": int(begin.group(2)),
                "column": int(begin.group(3)),
                "report_line": report_line,
                "vectorized": False,
                "speedup": None,
            }
            loop_stack.append(loop)
            records.append(loop)

        if "LOOP END" in text and loop_stack:
            loop_stack.pop()

        if loop_stack and "LOOP WAS VECTORIZED" in text:
            loop_stack[-1]["vectorized"] = True

        speedup = SPEEDUP_RE.search(text)
        if loop_stack and speedup:
            loop_stack[-1]["speedup"] = float(speedup.group(1))

        vlen = VECTOR_LENGTH_RE.search(text)
        if vlen:
            vector_lengths[vlen.group(1)] += 1

        lowered = text.lower()
        if "vector dependence" in lowered or "assumed dependence" in lowered:
            current = loop_stack[-1] if loop_stack else {}
            blockers.append(
                {
                    "report_line": report_line,
                    "source": current.get("source", ""),
                    "source_line": current.get("source_line", ""),
                    "remark": text.strip(),
                }
            )

    phrase_counts = {
        "vectorized_remarks": sum("LOOP WAS VECTORIZED" in line for line in lines),
        "main_vectorized_remarks": sum("LOOP WAS VECTORIZED" in line and "remainder" not in line.lower() for line in lines),
        "dependence_blocker_remarks": len(blockers),
        "multiversioned_loops": sum("multiversion" in line.lower() for line in lines),
        "nonunit_stride_emulations": sum("non-unit strided load" in line.lower() for line in lines),
        "unaligned_access_remarks": sum("unaligned access" in line.lower() for line in lines),
        "remainder_may_execute_entire_loop": sum("entire loop may be executed in remainder" in line.lower() for line in lines),
        "vec_threshold0_suggestions": sum("vec-threshold0" in line.lower() for line in lines),
        "openmp_parallelized_remarks": sum("parallelized by auto-parallelization or openmp" in line.lower() for line in lines),
    }

    return {
        "path": str(path),
        "sha256": sha256(path),
        "line_count": len(lines),
        "phrase_counts": phrase_counts,
        "vector_lengths": dict(sorted(vector_lengths.items(), key=lambda item: int(item[0]))),
        "loops": records,
        "blockers": blockers,
    }


def write_tsv(path: Path, rows: list[dict], fields: list[str]) -> None:
    with path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields, delimiter="\t", extrasaction="ignore")
        writer.writeheader()
        writer.writerows(rows)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", required=True, type=Path)
    parser.add_argument("reports", nargs="+", type=Path)
    args = parser.parse_args()
    args.out.mkdir(parents=True, exist_ok=True)

    parsed = [parse_report(path.resolve()) for path in args.reports]
    summary_path = args.out / "optrpt_summary.json"
    summary_path.write_text(json.dumps(parsed, indent=2, sort_keys=True), encoding="utf-8")

    for item in parsed:
        stem = Path(item["path"]).stem
        ranked = sorted(
            (row for row in item["loops"] if row["speedup"] is not None),
            key=lambda row: (-row["speedup"], row["source_line"], row["report_line"]),
        )
        write_tsv(
            args.out / f"{stem}_vector_loops.tsv",
            ranked,
            ["source", "source_line", "column", "report_line", "vectorized", "speedup"],
        )
        write_tsv(
            args.out / f"{stem}_blockers.tsv",
            item["blockers"],
            ["source", "source_line", "report_line", "remark"],
        )

    compact = [
        {
            "report": Path(item["path"]).name,
            "sha256": item["sha256"],
            "line_count": item["line_count"],
            "phrase_counts": item["phrase_counts"],
            "vector_lengths": item["vector_lengths"],
            "top_speedups": sorted(
                (
                    {
                        "source_line": row["source_line"],
                        "speedup": row["speedup"],
                        "vectorized": row["vectorized"],
                    }
                    for row in item["loops"]
                    if row["speedup"] is not None
                ),
                key=lambda row: -row["speedup"],
            )[:15],
        }
        for item in parsed
    ]
    print(json.dumps(compact, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
