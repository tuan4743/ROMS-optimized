#!/usr/bin/env python3
"""Read-only survey of NetCDF create/fill and gather write path."""
import os
import re

ROOT = "/public/home/fujiake/nan/sprint/ROMS_CoSiNE15/ROMS"
PATS = re.compile(
    r"nf90_create|nf_create|nf90_set_fill|NF90_NOFILL|nf_setfill|netcdf_create",
    re.I,
)

print("==== NetCDF create / fill API hits ====")
hits = 0
for dirn in ("Utility", "Modules"):
    d = os.path.join(ROOT, dirn)
    if not os.path.isdir(d):
        print("missing", d)
        continue
    for fn in sorted(os.listdir(d)):
        if not fn.endswith((".F", ".h", ".f90")):
            continue
        path = os.path.join(d, fn)
        try:
            lines = open(path, errors="replace").read().splitlines()
        except OSError as exc:
            print("skip", path, exc)
            continue
        for i, line in enumerate(lines, 1):
            if PATS.search(line):
                hits += 1
                print("%s:%d:%s" % (path, i, line.strip()[:180]))
print("hit_count", hits)

print("==== def_his / def_avg / def_rst create-ish lines ====")
for fn in ("def_his.F", "def_avg.F", "def_rst.F"):
    path = os.path.join(ROOT, "Utility", fn)
    lines = open(path, errors="replace").read().splitlines()
    for i, line in enumerate(lines, 1):
        low = line.lower()
        if any(
            k in low
            for k in (
                "nf90_create",
                "nf_create",
                "netcdf_create",
                "create(",
                "ccreate",
                "def_var",
                "set_fill",
                "nofill",
                "enddef",
            )
        ):
            print("%s:%d:%s" % (fn, i, line.strip()[:180]))

print("==== nf_fwrite3d gather / write ====")
path = os.path.join(ROOT, "Utility", "nf_fwrite3d.F")
lines = open(path, errors="replace").read().splitlines()
for i, line in enumerate(lines, 1):
    if any(
        k in line
        for k in (
            "mp_gather",
            "OutThread",
            "Master",
            "MyRank",
            "nf90_put_var",
            "nf_fwrite",
            "put_var",
        )
    ):
        print("nf_fwrite3d.F:%d:%s" % (i, line.strip()[:180]))

print("==== mp_gather3d / mp_gather2d definitions ====")
path = os.path.join(ROOT, "Utility", "distribute.F")
lines = open(path, errors="replace").read().splitlines()
for i, line in enumerate(lines, 1):
    if "SUBROUTINE mp_gather" in line:
        print("distribute.F:%d:%s" % (i, line.strip()))

# Estimate NOFILL upside from O33 full Writing absolute time
print("==== NOFILL ceiling estimate ====")
write_cpu = 1703.609 + 914.040  # O33 full G01+G02
write_wall_per_rank = write_cpu / 64.0
o33_real = 2136.310
s32_parent = 1753.9
print("O33_Writing_cpu_s", write_cpu)
print("O33_Writing_wall_s_per_rank", write_wall_per_rank)
print("O33_Writing_wall_share_pct", 100.0 * write_wall_per_rank / o33_real)
print("S32_parent_if_abs_io_unchanged_pct", 100.0 * write_wall_per_rank / s32_parent)
# Prefill roughly doubles classic NetCDF write physical bytes for fully-written vars.
# Upper bound if ALL of Writing is fill+write disk cost and NOFILL removes half:
print("NOFILL_half_of_write_share_S32_pct", 0.5 * 100.0 * write_wall_per_rank / s32_parent)
# More honest: fill is only the put_var disk side; gather MPI still remains.
# Without timed split, treat 25-50% of Writing pool as optimistic removable.
for frac in (0.25, 0.35, 0.50):
    print(
        "NOFILL_frac_%.2f_S32_pct" % frac,
        frac * 100.0 * write_wall_per_rank / s32_parent,
    )
