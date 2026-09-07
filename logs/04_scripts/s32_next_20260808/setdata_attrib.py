#!/usr/bin/env python3
"""Read-only attribution of set_data (region 4) interior/edge asymmetry."""
import os
import re

ROOT = "/public/home/fujiake/nan/sprint/ROMS_CoSiNE15/ROMS"

files = [
    "Nonlinear/set_data.F",
    "Utility/set_2dfld.F",
    "Utility/set_3dfld.F",
    "Utility/set_ngfld.F",
    "Nonlinear/get_data.F",
]

print("==== file existence / size ====")
for rel in files:
    path = os.path.join(ROOT, rel)
    if os.path.isfile(path):
        n = sum(1 for _ in open(path, errors="replace"))
        print("%s lines=%d" % (rel, n))
    else:
        print("%s MISSING" % rel)

# Find wclock region 4 ownership
print("\n==== wclock region 4 ownership ====")
pat = re.compile(r"wclock_on\s*\(\s*ng\s*,\s*\w+\s*,\s*4\s*[,)]", re.I)
pat_off = re.compile(r"wclock_off\s*\(\s*ng\s*,\s*\w+\s*,\s*4\s*[,)]", re.I)
for dirpath, _, filenames in os.walk(ROOT):
    if ".svn" in dirpath:
        continue
    for fn in filenames:
        if not fn.endswith((".F", ".h", ".f90")):
            continue
        path = os.path.join(dirpath, fn)
        try:
            lines = open(path, errors="replace").read().splitlines()
        except OSError:
            continue
        for i, line in enumerate(lines, 1):
            if pat.search(line) or pat_off.search(line):
                print("%s:%d:%s" % (path.replace(ROOT + "/", ""), i, line.strip()[:140]))

# set_data.F structure
print("\n==== set_data.F: calls / exchanges / nesting / LBC / tile bounds ====")
path = os.path.join(ROOT, "Nonlinear/set_data.F")
lines = open(path, errors="replace").read().splitlines()
keys = (
    "CALL ",
    "mp_exchange",
    "exchange_",
    "wclock",
    "set_2dfld",
    "set_3dfld",
    "set_ngfld",
    "nest",
    "contact",
    "LBC",
    "Istr",
    "Iend",
    "Jstr",
    "Jend",
    "tile",
    "BOUNDS",
    "DomainEdge",
    "Western",
    "Eastern",
    "Southern",
    "Northern",
    "interpolate",
    "Linfo",
    "update",
    "get_2dfld",
    "get_3dfld",
)
for i, line in enumerate(lines, 1):
    s = line.strip()
    if not s or s.startswith("!"):
        # still show wclock comments? skip blank
        if "wclock" in line.lower():
            print("%d:%s" % (i, s[:160]))
        continue
    low = line
    if any(k in low for k in keys):
        print("%d:%s" % (i, s[:160]))

print("\n==== set_2dfld.F: exchange / tile / Linfo / update branches ====")
path = os.path.join(ROOT, "Utility/set_2dfld.F")
if os.path.isfile(path):
    lines = open(path, errors="replace").read().splitlines()
    for i, line in enumerate(lines, 1):
        s = line.strip()
        if any(
            k in line
            for k in (
                "mp_exchange",
                "exchange_",
                "Linfo",
                "update",
                "Istr",
                "Iend",
                "Jstr",
                "Jend",
                "tile",
                "Western",
                "Eastern",
                "Southern",
                "Northern",
                "DomainEdge",
                "interpolate",
                "Linc",
                "Tintrp",
                "Vtime",
                "SUBROUTINE",
                "END SUBROUTINE",
                "IF (",
                "ELSE",
            )
        ):
            if s.startswith("!") and "exchange" not in s.lower() and "Linfo" not in s:
                continue
            print("%d:%s" % (i, s[:160]))

print("\n==== set_3dfld.F: exchange / tile / Linfo / update branches ====")
path = os.path.join(ROOT, "Utility/set_3dfld.F")
if os.path.isfile(path):
    lines = open(path, errors="replace").read().splitlines()
    for i, line in enumerate(lines, 1):
        s = line.strip()
        if any(
            k in line
            for k in (
                "mp_exchange",
                "exchange_",
                "Linfo",
                "update",
                "Istr",
                "Iend",
                "Jstr",
                "Jend",
                "tile",
                "Western",
                "Eastern",
                "Southern",
                "Northern",
                "DomainEdge",
                "interpolate",
                "Linc",
                "Tintrp",
                "Vtime",
                "SUBROUTINE",
                "END SUBROUTINE",
            )
        ):
            if s.startswith("!") and "exchange" not in s.lower() and "Linfo" not in s:
                continue
            print("%d:%s" % (i, s[:160]))
