#!/usr/bin/env python3
"""Stage 138 P0: contact-point density mapping to production 8x8 tiles.

Zero machine time. Reads the immutable shared contact NetCDF read-only,
maps contact points / donor cells / receiver points to the 8x8 tile
decomposition used by S32 (rank = Jtile*8 + Itile for both grids),
computes per-tile contact traffic estimates, and outputs the per-tile
table for the later correlation pass (which consumes Stage-93 skewprobe
P3 TSVs and Stage-127 step2d/halo correlations).

No grid setting, source, or input file is modified.
"""

import netCDF4 as nc
import numpy as np
import sys, json, io

CONTACT = "/public/home/fujiake/Inputfiles/Dongsha60/SCS_Dongsha60_contact.nc"
NTILE = 8

f = nc.Dataset(CONTACT, "r")

Lm = {1: int(f.variables["Lm"][0]), 2: int(f.variables["Lm"][1])}
Mm = {1: int(f.variables["Mm"][0]), 2: int(f.variables["Mm"][1])}
print(f"Lm: {Lm}  Mm: {Mm}")

# contact region metadata
donor_g = f.variables["donor_grid"][:].tolist()      # [1, 2]
recv_g = f.variables["receiver_grid"][:].tolist()    # [2, 1]
refine = f.variables["refinement"][:].tolist()       # [1, 1]
NstrR = f.variables["NstrR"][:].tolist()
NendR = f.variables["NendR"][:].tolist()

regions = f.variables["contact_region"][:]
ob = f.variables["on_boundary"][:]
Idg = f.variables["Idg"][:]
Jdg = f.variables["Jdg"][:]
Irg = f.variables["Irg"][:]
Jrg = f.variables["Jrg"][:]

def tile_of(I, J, g):
    """ROMS interior ownership: rank = Jtile*NTILE + Itile, tile bounds by
    integer division of (index-1). Halo/outside points clamp to edge tiles."""
    Li, Mj = Lm[g], Mm[g]
    it = np.clip((I - 1) * NTILE // Li, 0, NTILE - 1)
    jt = np.clip((J - 1) * NTILE // Mj, 0, NTILE - 1)
    return it.astype(np.int64), jt.astype(np.int64)

BYTES_2D = 8          # r8 per point per 2D field
NLEV = 34             # N vertical levels for 3D field traffic estimate
BYTES_3D = NLEV * 8

out = {"grids": {}}
for g in (1, 2):
    out["grids"][str(g)] = {"Lm": Lm[g], "Mm": Mm[g]}

for r in sorted(set(regions.tolist())):
    m = regions == r
    dg, rg = donor_g[r - 1], recv_g[r - 1]
    print(f"\n=== region {r}: donor=grid{dg} receiver=grid{rg} refinement={refine[r-1]} "
          f"n={m.sum()} on_boundary={ob[m].sum()} ===")
    # donor-side ownership
    dit, djt = tile_of(Idg[m], Jdg[m], dg)
    # receiver-side ownership
    rit, rjt = tile_of(Irg[m], Jrg[m], rg)

    tbl = {}
    for tag, it, jt, g, idx in (
        ("donor", dit, djt, dg, (Idg[m], Jdg[m])),
        ("receiver", rit, rjt, rg, (Irg[m], Jrg[m])),
    ):
        key = f"{tag}_g{g}"
        counts = np.zeros((NTILE, NTILE), dtype=np.int64)
        np.add.at(counts, (jt, it), 1)
        uniq_donor = np.zeros((NTILE, NTILE), dtype=np.int64)
        np.add.at(uniq_donor, (jt, it), 1)   # placeholder, refined below
        # unique donor cells for donor side
        if tag == "donor":
            uniq_donor[:, :] = 0
        tbl[key] = counts
        print(f"  {key}: per-tile counts:")
        for jj in range(NTILE):
            print("    " + " ".join(f"{counts[jj][ii]:6d}" for ii in range(NTILE)))
        total = int(counts.sum())
        print(f"    total={total}")
    out[f"region{r}"] = {
        "donor_grid": dg, "receiver_grid": rg,
        "donor_counts": tbl[f"donor_g{dg}"].tolist(),
        "receiver_counts": tbl[f"receiver_g{rg}"].tolist(),
    }

print("\n=== unique donor cells per tile (donor side) ===")
for r in sorted(set(regions.tolist())):
    m = regions == r
    dg = donor_g[r - 1]
    dit, djt = tile_of(Idg[m], Jdg[m], dg)
    ud = np.zeros((NTILE, NTILE), dtype=np.int64)
    seen = {}
    for a, b, jj, ii in zip(Idg[m], Jdg[m], djt, dit):
        k = (int(jj), int(ii), int(a), int(b))
        if k not in seen:
            seen[k] = 1
            ud[jj][ii] += 1
    print(f"region {r} (donor grid {dg}):")
    for jj in range(NTILE):
        print("    " + " ".join(f"{ud[jj][ii]:6d}" for ii in range(NTILE)))

print("\n=== estimated bytes per repeated 2D field call (receiver side, r8) ===")
b2_recv = {}
for r in sorted(set(regions.tolist())):
    m = regions == r
    rg = recv_g[r - 1]
    rit, rjt = tile_of(Irg[m], Jrg[m], rg)
    b2 = np.zeros((NTILE, NTILE), dtype=np.int64)
    np.add.at(b2, (rjt, rit), BYTES_2D)
    b3 = b2 * NLEV
    b2_recv[str(rg)] = b2.tolist()
    print(f"region {r} receiver grid {rg} 2D bytes/tile (row=Jtile 0..7, col=Itile 0..7):")
    for jj in range(NTILE):
        print("    " + " ".join(f"{b2[jj][ii]:7d}" for ii in range(NTILE)))
    print(f"  3D bytes/tile (x{NLEV}): top-left={b3[0][0]} center={b3[4][4]}")

# donor per-tile counts per grid (sum over regions where that grid donates)
b2_don = {str(g): np.zeros((NTILE, NTILE), dtype=np.int64) for g in (1, 2)}
for r in sorted(set(regions.tolist())):
    m = regions == r
    dg = donor_g[r - 1]
    dit, djt = tile_of(Idg[m], Jdg[m], dg)
    np.add.at(b2_don[str(dg)], (djt, dit), 1)

json.dump({
    "contact_file": CONTACT,
    "Lm": Lm, "Mm": Mm,
    "receiver_pts_per_tile": b2_recv,
    "donor_pts_per_tile": {k: v.tolist() for k, v in b2_don.items()},
}, sys.stdout)
print()
f.close()
print("P0_MAP_DONE")
