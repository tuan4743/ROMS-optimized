#!/bin/bash
set -u
module purge
module load compiler/intel/2017.5.239 >/dev/null 2>&1
module load mathlib/netcdf/4.4.1/intel >/dev/null 2>&1

echo '==== SCS dims ===='
ncdump -h /public/home/fujiake/Inputfiles/SCS/SCS_grd.nc | head -25

echo '==== SCS per-tile land frac 8x8 (interior Lm x Mm) ===='
# ROMS: xi_rho = Lm+2, eta_rho = Mm+2 with periodic/ghost; tile uses interior
# Dump mask to temp ascii once
TMP=/tmp/scs_mask_$$.txt
ncdump -v mask_rho /public/home/fujiake/Inputfiles/SCS/SCS_grd.nc 2>/dev/null \
 | awk '
  BEGIN{m=0;n=0}
  /mask_rho =/{m=1;next}
  m && /^[a-zA-Z_]/{exit}
  m && /}/{exit}
  m {
    gsub(/[;,]/," ")
    for(i=1;i<=NF;i++) if($i ~ /^-?[0-9]/){ printf "%g\n",$i+0; n++ }
  }
  END{ print n > "/dev/stderr" }
 ' > "$TMP" 2>/tmp/scs_n.txt
N=$(cat /tmp/scs_n.txt)
echo "points_written=$N"

# Get dims
XR=$(ncdump -h /public/home/fujiake/Inputfiles/SCS/SCS_grd.nc | awk '/xi_rho =/{print $3}')
ER=$(ncdump -h /public/home/fujiake/Inputfiles/SCS/SCS_grd.nc | awk '/eta_rho =/{print $3}')
echo "xi_rho=$XR eta_rho=$ER"

python3 - "$TMP" "$XR" "$ER" <<'PY'
import sys
path, xr, er = sys.argv[1], int(sys.argv[2]), int(sys.argv[3])
vals = [float(x) for x in open(path)]
assert len(vals)==xr*er, (len(vals), xr*er)
# mask_rho(eta_rho, xi_rho): dump order eta slow, xi fast
a = [vals[j*xr:(j+1)*xr] for j in range(er)]
Lm, Mm = xr-2, er-2
interior = [a[j][i] for j in range(1,1+Mm) for i in range(1,1+Lm)]
print("Lm=%d Mm=%d" % (Lm, Mm))
print("interior land_frac=%.4f" % (sum(1 for v in interior if v<0.5)/float(len(interior))))
NtileI=NtileJ=8
csI=(Lm+NtileI-1)//NtileI
csJ=(Mm+NtileJ-1)//NtileJ
print("ChunkSizeI=%d ChunkSizeJ=%d" % (csI, csJ))
print("J\\I " + " ".join("%7d" % i for i in range(8)))
west=[]; center=[]
for j in range(8):
    Jstr=1+j*csJ; Jend=min(Mm, Jstr+csJ-1)
    row=[]
    for i in range(8):
        Istr=1+i*csI; Iend=min(Lm, Istr+csI-1)
        tile=[a[jj][ii] for jj in range(Jstr,Jend+1) for ii in range(Istr,Iend+1)]
        lf=(sum(1 for v in tile if v<0.5)/float(len(tile))) if tile else 0.0
        row.append("%7.3f" % lf)
        if i==0: west.append(lf)
        if 3<=j<=6 and 3<=i<=5: center.append(lf)
    print("%2d %s" % (j, " ".join(row)))
print("west_col mean_land_frac=%.4f max=%.4f" % (sum(west)/len(west), max(west)))
print("center_block mean_land_frac=%.4f max=%.4f" % (sum(center)/len(center), max(center)))
PY

echo '==== Dongsha per-tile (expect all 0 land) ===='
TMP2=/tmp/dong_mask_$$.txt
ncdump -v mask_rho /public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc 2>/dev/null \
 | awk 'BEGIN{m=0} /mask_rho =/{m=1;next} m&&/^[a-zA-Z_]/{exit} m&&/}/{exit} m{gsub(/[;,]/," "); for(i=1;i<=NF;i++) if($i~/^-?[0-9]/) print $i+0}' > "$TMP2"
XR2=$(ncdump -h /public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc | awk '/xi_rho =/{print $3}')
ER2=$(ncdump -h /public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc | awk '/eta_rho =/{print $3}')
python3 - "$TMP2" "$XR2" "$ER2" <<'PY'
import sys
path,xr,er=sys.argv[1],int(sys.argv[2]),int(sys.argv[3])
vals=[float(x) for x in open(path)]
a=[vals[j*xr:(j+1)*xr] for j in range(er)]
Lm,Mm=xr-2,er-2
NtileI=NtileJ=8
csI=(Lm+NtileI-1)//NtileI
csJ=(Mm+NtileJ-1)//NtileJ
gl=sum(1 for v in vals if v<0.5)/float(len(vals))
print("Dongsha Lm=%d Mm=%d ChunkI=%d ChunkJ=%d global_land=%.4f" % (Lm,Mm,csI,csJ,gl))
center=[]
for j in range(8):
  for i in range(8):
    Istr=1+i*csI; Iend=min(Lm,Istr+csI-1)
    Jstr=1+j*csJ; Jend=min(Mm,Jstr+csJ-1)
    tile=[a[jj][ii] for jj in range(Jstr,Jend+1) for ii in range(Istr,Iend+1)]
    lf=(sum(1 for v in tile if v<0.5)/float(len(tile))) if tile else 0.0
    if 3<=j<=6 and 3<=i<=5: center.append(lf)
print("Dongsha center_block mean_land=%.4f" % (sum(center)/len(center)))
PY

echo '==== S32 PROFILE G01 vs G02 totals (sample 118769550) ===='
LOG=/public/home/fujiake/fjk/mcc_runs/118769550_s32_profile_diag_sample/logs/model.log
if [ ! -f "$LOG" ]; then LOG=$(find /public/home/fujiake/fjk/mcc_runs/118769550_s32_profile_diag_sample -name 'model.log' | head -1); fi
echo "LOG=$LOG"
grep -n 'GRID\|Total:\|ALL SPEEDS\|Message Passage: data broadcast\|step2d\|Predictor\|total time' "$LOG" 2>/dev/null | head -80
