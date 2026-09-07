import json
import sys

import netCDF4 as nc
import numpy as np


def inventory(path):
    with nc.Dataset(path) as ds:
        return {name: list(var.shape) for name, var in ds.variables.items()}


def uniform_cuts(n, nt=8):
    return [int((q * n) // nt) for q in range(nt + 1)]


def prefix(a):
    return np.pad(np.asarray(a, dtype=np.int64), ((1, 0), (1, 0))).cumsum(0).cumsum(1)


def rect(p, x0, x1, y0, y1):
    return int(p[y1, x1] - p[y0, x1] - p[y1, x0] + p[y0, x0])


def mask_stats(path, lm, mm):
    with nc.Dataset(path) as ds:
        raw = np.asarray(ds.variables["mask_rho"][:])
    # NetCDF contains one ghost row/column on each side: interior is 1:Mm+1,1:Lm+1.
    a = raw[1:mm + 1, 1:lm + 1] > 0.5
    ic, jc = uniform_cuts(lm), uniform_cuts(mm)
    p = prefix(a)
    tiles = []
    for j in range(8):
        row = []
        for i in range(8):
            area = (ic[i + 1] - ic[i]) * (jc[j + 1] - jc[j])
            wet = rect(p, ic[i], ic[i + 1], jc[j], jc[j + 1])
            row.append({"area": area, "wet": wet, "land": area - wet})
        tiles.append(row)
    spans = []
    for row in a:
        d = np.diff(np.r_[False, row, False].astype(np.int8))
        starts, ends = np.where(d == 1)[0], np.where(d == -1)[0]
        spans.extend((ends - starts).tolist())
    return {
        "shape": [int(mm), int(lm)],
        "wet": int(a.sum()), "land": int(a.size - a.sum()),
        "land_fraction": float(1.0 - a.mean()),
        "uniform_icuts0": ic, "uniform_jcuts0": jc,
        "uniform_tiles": tiles,
        "wet_span_count": len(spans),
        "wet_span_mean": float(np.mean(spans)) if spans else 0.0,
        "wet_span_median": float(np.median(spans)) if spans else 0.0,
        "wet_span_max": int(max(spans)) if spans else 0,
        "rows_without_wet": int(sum(not row.any() for row in a)),
        "mask_rows01": ["".join("1" if v else "0" for v in row) for row in a],
    }


def contact_points(path):
    with nc.Dataset(path) as ds:
        regions = np.asarray(ds.variables["contact_region"][:], dtype=np.int64)
        donor_grid = np.asarray(ds.variables["donor_grid"][:], dtype=np.int64)
        receiver_grid = np.asarray(ds.variables["receiver_grid"][:], dtype=np.int64)
        data = {k: np.asarray(ds.variables[k][:], dtype=np.int64) for k in ("Idg", "Jdg", "Irg", "Jrg")}
    out = {}
    for g in (1, 2):
        rec_i, rec_j, don_i, don_j = [], [], [], []
        for r in np.unique(regions):
            m = regions == r
            if int(receiver_grid[r - 1]) == g:
                rec_i.extend((data["Irg"][m] - 1).tolist()); rec_j.extend((data["Jrg"][m] - 1).tolist())
            if int(donor_grid[r - 1]) == g:
                don_i.extend((data["Idg"][m] - 1).tolist()); don_j.extend((data["Jdg"][m] - 1).tolist())
        out[str(g)] = {"receiver_i0": rec_i, "receiver_j0": rec_j,
                       "donor_i0": don_i, "donor_j0": don_j}
    return out


def audit(grid1, grid2, contact):
    points = contact_points(contact)
    out = {"grid1": mask_stats(grid1, 359, 326),
           "grid2": mask_stats(grid2, 235, 245),
           "contact": {}, "contact_points0": points}
    for g, lm, mm in ((1, 359, 326), (2, 235, 245)):
        ic, jc = uniform_cuts(lm), uniform_cuts(mm)
        item = {}
        for kind in ("receiver", "donor"):
            h = np.zeros((mm, lm), dtype=np.int64)
            ii = np.clip(points[str(g)][kind + "_i0"], 0, lm - 1)
            jj = np.clip(points[str(g)][kind + "_j0"], 0, mm - 1)
            np.add.at(h, (jj, ii), 1)
            p = prefix(h)
            item[kind + "_uniform"] = [[rect(p, ic[i], ic[i+1], jc[j], jc[j+1])
                                         for i in range(8)] for j in range(8)]
            item[kind + "_total"] = int(h.sum())
        out["contact"][str(g)] = item
    return out


if __name__ == "__main__":
    if sys.argv[1] == "audit":
        print(json.dumps(audit(sys.argv[2], sys.argv[3], sys.argv[4]), sort_keys=True))
    else:
        print(json.dumps(inventory(sys.argv[1]), sort_keys=True))
