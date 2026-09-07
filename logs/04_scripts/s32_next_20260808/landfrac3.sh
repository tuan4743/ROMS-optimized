#!/bin/bash
set -u
module purge
module load compiler/intel/2017.5.239
module load mathlib/netcdf/4.4.1/intel
ncdump -h /public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc | grep -i mask
echo '==== mask_rho stats via ncks/ncdump ===='
ncdump -v mask_rho /public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc 2>/dev/null | head -5
# count unique-ish using first/last lines
ncdump -v mask_rho /public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc 2>/dev/null \
 | awk 'BEGIN{inmask=0;n=0;land=0;wet=0;mn=9;mx=-9}
 /mask_rho =/{inmask=1;next}
 inmask && /}/{exit}
 inmask{gsub(/[;,]/," "); for(i=1;i<=NF;i++){v=$i+0;n++; if(v<0.5)land++; else wet++; if(v<mn)mn=v; if(v>mx)mx=v}}
 END{printf("N=%d land=%d wet=%d min=%.3f max=%.3f\n",n,land,wet,mn,mx)}'
# also h shallow fraction as proxy for wetdry load
ncdump -v h /public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc 2>/dev/null \
 | awk 'BEGIN{inmask=0;n=0;shallow=0}
 / h = /{inmask=1;next}
 inmask && /}/{exit}
 inmask{gsub(/[;,]/," "); for(i=1;i<=NF;i++) if($i!=""){v=$i+0;n++; if(v<10)shallow++}}
 END{printf("h N=%d shallow_lt10m=%d frac=%.4f\n",n,shallow, (n?shallow/n:0))}'
