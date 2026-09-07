#!/usr/bin/env python3
import json
import sys
from pathlib import Path


def edge_counts(rank_to_node, ni=8, nj=8):
    intra = inter = 0
    inter_edges = []
    for j in range(nj):
        for i in range(ni):
            rank = j * ni + i
            for di, dj in ((1, 0), (0, 1)):
                ii, jj = i + di, j + dj
                if ii >= ni or jj >= nj:
                    continue
                neighbor = jj * ni + ii
                if rank_to_node[rank] == rank_to_node[neighbor]:
                    intra += 1
                else:
                    inter += 1
                    inter_edges.append([rank, neighbor])
    return {"intra_edges": intra, "inter_edges": inter,
            "total_edges": intra + inter, "inter_edge_pairs": inter_edges}


def main():
    if len(sys.argv) != 3:
        raise SystemExit("usage: rank_mapping_edgecut.py CURRENT_RANKFILE OUTPUT_JSON")
    rankfile, output = map(Path, sys.argv[1:])
    host_to_node = {}
    current = {}
    for line in rankfile.read_text().splitlines():
        left, slot = line.split(" slot=")
        rank_text, host = left.removeprefix("rank ").split("=")
        host_to_node.setdefault(host, len(host_to_node))
        current[int(rank_text)] = host_to_node[host]
    if sorted(current) != list(range(64)) or len(host_to_node) != 4:
        raise ValueError("rankfile is not four nodes x 16 ranks")

    square = {}
    for rank in range(64):
        i, j = rank % 8, rank // 8
        square[rank] = (j // 4) * 2 + (i // 4)

    current_counts = edge_counts(current)
    square_counts = edge_counts(square)
    reduction = ((current_counts["inter_edges"] - square_counts["inter_edges"])
                 / current_counts["inter_edges"])
    halo_share = 15.7796
    required_halo_reduction = 2.0 / halo_share
    favorable_whole_ceiling = halo_share * reduction
    required_sensitive_fraction = required_halo_reduction / reduction
    result = {
        "rank_formula": "rank = j*8+i",
        "nonperiodic_cardinal_edges_per_grid": 112,
        "current_two_row_stripes": current_counts,
        "candidate_four_by_four_blocks": square_counts,
        "inter_node_edge_reduction_fraction": reduction,
        "full_o33_2d_plus_4d_halo_share_percent": halo_share,
        "required_halo_reduction_for_2pct_whole_fraction": required_halo_reduction,
        "favorable_whole_ceiling_percent": favorable_whole_ceiling,
        "required_inter_node_sensitive_halo_fraction": required_sensitive_fraction,
        "candidate_rank_to_node": square,
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    print(json.dumps(result, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
