#!/bin/bash
set -u
IN=/public/home/fujiake/Inputfiles
echo "==== Inputfiles top ===="
ls "$IN"
echo "==== Dongsha60 ===="
ls "$IN/Dongsha60" 2>/dev/null | head -40
echo "==== GRDNAME from ocean.in ===="
grep -nE 'GRDNAME|MASK|grid' /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15/ROMS/External/ocean_SCS_Dongsha60_bio15.in | head -30
# resolve relative GRDNAME via Inputfiles symlink in tree
ROOT=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15
line=$(grep -E '^\s*GRDNAME' "$ROOT/ROMS/External/ocean_SCS_Dongsha60_bio15.in" | head -1)
echo "LINE=$line"
# extract path tokens after ==
/public/share/mcc2026_final/miniforge3/bin/python3 - <<'PY'
import re, os, glob
root='/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15'
text=open(root+'/ROMS/External/ocean_SCS_Dongsha60_bio15.in').read()
# GRDNAME == path path for two grids
m=re.search(r'GRDNAME\s*==\s*(.+)', text)
print('raw', m.group(1) if m else None)
if m:
  parts=m.group(1).split()
  for p in parts[:4]:
    # try as-is, under Inputfiles, under root
    cands=[p, os.path.join(root,p), os.path.join(root,'Inputfiles',p),
           os.path.join('/public/home/fujiake/Inputfiles',p),
           os.path.join('/public/home/fujiake/Inputfiles','Dongsha60',os.path.basename(p)),
           os.path.join('/public/home/fujiake/Inputfiles','SCS',os.path.basename(p))]
    for c in cands:
      if os.path.isfile(c):
        print('FOUND', c, 'size', os.path.getsize(c))
        break
    else:
      print('MISSING', p)
PY
