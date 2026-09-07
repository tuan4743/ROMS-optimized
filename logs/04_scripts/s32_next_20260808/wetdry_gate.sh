#!/bin/bash
set -u
module purge
module load compiler/intel/2017.5.239 >/dev/null 2>&1
module load mathlib/netcdf/4.4.1/intel >/dev/null 2>&1

TREE=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15

echo '==== WET_DRY / MASKING in cppdefs ===='
grep -n 'WET_DRY\|MASKING\|WETDRY' "$TREE"/ROMS/Include/*.h 2>/dev/null | head -40
grep -n 'WET_DRY\|MASKING' "$TREE"/Build*/cppdefs.h 2>/dev/null | head -20
ls "$TREE"/ROMS/Include/ | head

echo '==== ocean.in wet flags ===='
grep -n -i 'wet\|dcrit\|WET' /public/home/fujiake/Inputfiles/Dongsha60/ocean*.in 2>/dev/null | head -30

echo '==== find SCS grid ===='
ls /public/home/fujiake/Inputfiles/SCS/ 2>/dev/null | head
ls /public/home/fujiake/Inputfiles/ | head

echo '==== Dongsha mask already known: all wet; check SCS if present ===='
SCSGRD=$(find /public/home/fujiake/Inputfiles -name '*SCS*grd*.nc' 2>/dev/null | head -3)
echo "SCSGRD=$SCSGRD"
for g in $SCSGRD; do
  ncdump -v mask_rho "$g" 2>/dev/null | awk '
    BEGIN{n=0;land=0;mn=9;mx=-9}
    /mask_rho =/{m=1;next}
    m && /^[a-zA-Z_]/{exit}
    m && /}/{exit}
    m {
      gsub(/[;,]/," ")
      for(i=1;i<=NF;i++) if($i ~ /^-?[0-9]/){
        v=$i+0; n++; if(v<0.5)land++; if(v<mn)mn=v; if(v>mx)mx=v
      }
    }
    END{printf("%s N=%d land=%d frac=%.4f min=%.1f max=%.1f\n", FILENAME,n,land,(n?land/n:0),mn,mx)}
  ' FILENAME="$g"
done

echo '==== S32 profile job log location ===='
find /public/home/fujiake/fjk/mcc_runs -maxdepth 2 -type d -name '*118769550*' 2>/dev/null
find /public/home/fujiake/fjk/agent_tmp -maxdepth 4 -name '*118769550*' 2>/dev/null | head
