#!/bin/bash
set -u
module purge
module load compiler/intel/2017.5.239
module load mathlib/netcdf/4.4.1/intel
# dump h values only
ncdump -v h /public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc 2>/dev/null \
 | awk '
 BEGIN{mode=0;n=0;s5=0;s10=0;s20=0;s50=0;mn=1e99;mx=-1e99;sum=0}
 /^ h =/{mode=1; next}
 mode==1 && /^[a-zA-Z_]/{exit}
 mode==1 && /}/{exit}
 mode==1 {
   gsub(/[;,]/," ")
   for(i=1;i<=NF;i++) if($i ~ /^-?[0-9]/){
     v=$i+0; n++; sum+=v
     if(v<mn)mn=v; if(v>mx)mx=v
     if(v<5)s5++; if(v<10)s10++; if(v<20)s20++; if(v<50)s50++
   }
 }
 END{
   printf("h N=%d min=%.3f max=%.3f mean=%.3f\n",n,mn,mx,(n?sum/n:0))
   printf("frac_lt5=%.4f lt10=%.4f lt20=%.4f lt50=%.4f\n",
     (n?s5/n:0),(n?s10/n:0),(n?s20/n:0),(n?s50/n:0))
 }'
# also check if wet_dry is enabled in ocean.in / cppdefs for Dongsha
grep -n "WET_DRY\|WETDRY\|DCRIT\|mask_rho" /public/home/fujiake/Inputfiles/Dongsha60/ocean_dongsha60.in 2>/dev/null | head -20
ls /public/home/fujiake/Inputfiles/Dongsha60/ | head
