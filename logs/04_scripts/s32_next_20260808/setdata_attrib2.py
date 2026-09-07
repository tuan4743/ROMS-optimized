#!/usr/bin/env python3
"""Check mp_exchange wclock nesting and which set_data fields are active."""
import os
import re

ROOT = "/public/home/fujiake/nan/sprint/ROMS_CoSiNE15/ROMS"

print("==== mp_exchange2d: does it switch wclock? ====")
path = os.path.join(ROOT, "Utility/mp_exchange.F")
lines = open(path, errors="replace").read().splitlines()
# find SUBROUTINE mp_exchange2d and next 80 lines / wclock refs nearby
in_sub = False
start = 0
for i, line in enumerate(lines):
    if "SUBROUTINE mp_exchange2d" in line and "END" not in line:
        in_sub = True
        start = i
        print("def at", i + 1, line.strip())
    if in_sub:
        if "wclock" in line.lower() or "MyComm" in line or "mpi_wait" in line.lower() or "mpi_isend" in line.lower() or "mpi_irecv" in line.lower():
            print("%d:%s" % (i + 1, line.strip()[:140]))
        if i > start + 200:
            break
        if "END SUBROUTINE mp_exchange2d" in line:
            print("end at", i + 1)
            break

print("\n==== timers.F region labels for 4 and 40 ====")
path = os.path.join(ROOT, "Utility/timers.F")
if os.path.isfile(path):
    for i, line in enumerate(open(path, errors="replace"), 1):
        if re.search(r"\b(4|40)\b", line) and ("input" in line.lower() or "halo" in line.lower() or "2D" in line or "Processing" in line):
            print("%d:%s" % (i, line.strip()[:140]))

print("\n==== bye header / cpp for forcing (what set_data paths compile) ====")
for cand in (
    "Include/bye24bio15.h",
    "Include/dongsha.h",
    "Include/scs.h",
):
    p = os.path.join(ROOT, cand)
    if os.path.isfile(p):
        print("found", cand)

# Find active cpp defines for this build
for root, dirs, files in os.walk(ROOT):
    if ".svn" in root:
        continue
    for fn in files:
        if fn.endswith(".h") and ("bye" in fn.lower() or "bio" in fn.lower() or "dongsha" in fn.lower()):
            print("header", os.path.join(root, fn).replace(ROOT + "/", ""))

print("\n==== count set_*fld / mp_exchange / LBC / ana in set_data.F ====")
path = os.path.join(ROOT, "Nonlinear/set_data.F")
text = open(path, errors="replace").read()
for pat in (
    r"CALL set_2dfld_tile",
    r"CALL set_3dfld_tile",
    r"CALL set_ngfld",
    r"CALL mp_exchange2d",
    r"CALL mp_exchange3d",
    r"CALL exchange_",
    r"CALL mp_boundary",
    r"Western_Edge",
    r"Eastern_Edge",
    r"Southern_Edge",
    r"Northern_Edge",
    r"SouthWest_Test",
):
    print(pat, len(re.findall(pat, text)))

# Extract #ifdef structure around first set_2dfld and wind rotation / smflux exchanges
print("\n==== ifdef context around mp_exchange sites in set_data ====")
lines = open(path, errors="replace").read().splitlines()
# track simple ifdef stack
stack = []
for i, line in enumerate(lines, 1):
    s = line.strip()
    if s.startswith("#ifdef") or s.startswith("#ifndef") or s.startswith("#if "):
        stack.append((i, s))
    elif s.startswith("#else"):
        stack.append((i, s + " of " + (stack[-1][1] if stack else "?")))
    elif s.startswith("#elif"):
        stack.append((i, s))
    elif s.startswith("#endif"):
        if stack:
            # pop until matching if - naive: pop one
            while stack and not stack[-1][1].startswith(("#ifdef", "#ifndef", "#if ", "#else", "#elif")):
                stack.pop()
            if stack:
                stack.pop()
    if "CALL mp_exchange" in line or "CALL exchange_" in line:
        ctx = " | ".join(x[1] for x in stack[-4:])
        print("%d: %s" % (i, s[:100]))
        print("   ctx:", ctx[-200:])
