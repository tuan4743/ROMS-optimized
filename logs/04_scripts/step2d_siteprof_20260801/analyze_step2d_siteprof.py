#!/usr/bin/env python3
from __future__ import annotations

import argparse
import statistics
from pathlib import Path


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("site_dir", type=Path)
    parser.add_argument("summary", type=Path)
    args = parser.parse_args()

    rows: list[dict[str, float | int]] = []
    for path in sorted(args.site_dir.glob("rank.*.grid.*.tsv")):
        lines = path.read_text().strip().splitlines()
        if len(lines) != 2:
            raise SystemExit(f"bad site file {path}: {len(lines)} lines")
        fields = lines[1].split()
        if len(fields) != 6:
            raise SystemExit(f"bad row in {path}: {lines[1]}")
        rank, grid, flux_calls, flux_seconds, uv_calls, uv_seconds = fields
        rows.append(
            {
                "rank": int(rank),
                "grid": int(grid),
                "flux_calls": int(flux_calls),
                "flux_seconds": float(flux_seconds),
                "uv_calls": int(uv_calls),
                "uv_seconds": float(uv_seconds),
            }
        )

    expected = {(rank, grid) for rank in range(64) for grid in (1, 2)}
    actual = {(int(row["rank"]), int(row["grid"])) for row in rows}
    if actual != expected or len(rows) != 128:
        missing = sorted(expected - actual)
        extra = sorted(actual - expected)
        raise SystemExit(f"site coverage failure rows={len(rows)} missing={missing} extra={extra}")

    full_wall = 2142.793
    scale = 18.0
    lines = ["STEP2D_SITE_PROFILE_OK", f"files={len(rows)}", f"full_wall_seconds={full_wall:.6f}", f"diagnostic_to_full_scale={scale:.1f}"]
    for grid in (1, 2):
        group = [row for row in rows if row["grid"] == grid]
        flux_calls = [int(row["flux_calls"]) for row in group]
        uv_calls = [int(row["uv_calls"]) for row in group]
        flux = [float(row["flux_seconds"]) for row in group]
        uv = [float(row["uv_seconds"]) for row in group]
        lines.extend(
            [
                f"grid{grid}_flux_calls_min={min(flux_calls)}",
                f"grid{grid}_flux_calls_max={max(flux_calls)}",
                f"grid{grid}_uv_calls_min={min(uv_calls)}",
                f"grid{grid}_uv_calls_max={max(uv_calls)}",
                f"grid{grid}_flux_seconds_mean={statistics.fmean(flux):.9f}",
                f"grid{grid}_flux_seconds_max={max(flux):.9f}",
                f"grid{grid}_uv_seconds_mean={statistics.fmean(uv):.9f}",
                f"grid{grid}_uv_seconds_max={max(uv):.9f}",
            ]
        )

    uv_total_by_rank = []
    for rank in range(64):
        uv_total_by_rank.append(
            sum(float(row["uv_seconds"]) for row in rows if int(row["rank"]) == rank)
        )
    mean_uv = statistics.fmean(uv_total_by_rank)
    max_uv = max(uv_total_by_rank)
    mean_projected = mean_uv * scale
    max_projected = max_uv * scale
    lines.extend(
        [
            f"uv_both_grids_seconds_mean_per_rank={mean_uv:.9f}",
            f"uv_both_grids_seconds_max_rank={max_uv:.9f}",
            f"uv_full_projected_mean_seconds={mean_projected:.9f}",
            f"uv_full_projected_max_seconds={max_projected:.9f}",
            f"uv_full_projected_mean_pct={100.0 * mean_projected / full_wall:.9f}",
            f"uv_full_projected_max_pct={100.0 * max_projected / full_wall:.9f}",
            "gate_2pct_seconds=42.855860000",
            "gate_3pct_seconds=64.283790000",
            "decision=" + ("DEPENDENCY_AUDIT_REQUIRED" if max_projected >= 42.85586 else "REJECT_BEFORE_SCHEDULE_BUILD"),
        ]
    )
    args.summary.write_text("\n".join(lines) + "\n")
    print(args.summary.read_text(), end="")


if __name__ == "__main__":
    main()
