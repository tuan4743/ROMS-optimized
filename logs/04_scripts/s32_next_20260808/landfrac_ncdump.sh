#!/bin/bash
set -u
module purge
module load compiler/intel/2017.5.239
module load mathlib/netcdf/4.4.1/intel
ncdump -h /public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc | head -60
# extract mask_rho as text (may be large); compute with awk
# dimensions from header
ncdump -v mask_rho /public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc 2>/tmp/ncdump_mask.err \
  | awk '
    BEGIN{inmask=0; n=0; land=0}
    /mask_rho =/ {inmask=1; next}
    inmask && /}/ {exit}
    inmask {
      gsub(/[;,]/," ")
      nf=split($0,a," ")
      for(i=1;i<=nf;i++) if(a[i]!=""){ v=a[i]+0; n++; if(v<0.5) land++ }
    }
    END{ if(n>0) printf("N=%d land=%d land_frac=%.4f\n", n, land, land/n); else print "FAIL" }
  '
cat /tmp/ncdump_mask.err 2>/dev/null | head -5
