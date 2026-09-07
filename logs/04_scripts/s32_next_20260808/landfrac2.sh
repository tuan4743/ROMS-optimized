#!/bin/bash
set -u
PY=/public/home/fujiake/miniconda3/bin/python
$PY - <<'PY'
import os, sys
print('py', sys.executable)
try:
  import netCDF4 as nc
  print('netCDF4 ok', nc.__version__)
except Exception as e:
  print('netCDF4 fail', e)
  try:
    from scipy.io import netcdf_file
    print('scipy netcdf available')
  except Exception as e2:
    print('scipy fail', e2)
  sys.exit(0)

path='/public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc'
ds=nc.Dataset(path)
print('vars', [v for v in ds.variables if 'mask' in v.lower() or v=='h'][:20])
mask=ds.variables['mask_rho'][:]
print('shape', mask.shape, 'land_frac', float((mask<0.5).mean()))
ny,nx=mask.shape
nti=ntj=8
ci=(nx+nti-1)//nti
cj=(ny+ntj-1)//ntj
rows=[]
for jt in range(ntj):
  for it in range(nti):
    t=mask[jt*cj:min((jt+1)*cj,ny), it*ci:min((it+1)*ci,nx)]
    land=float((t<0.5).mean()) if t.size else 0.0
    rows.append((jt,it,land,t.size))
center=[r for r in rows if 3<=r[0]<=6 and 3<=r[1]<=5]
print('center_mean_land', sum(r[2] for r in center)/len(center))
print('west_mean_land', sum(r[2] for r in rows if r[1]==0)/8)
print('all_mean_land', sum(r[2] for r in rows)/64)
print('max', max(rows,key=lambda r:r[2]))
print('min', min(rows,key=lambda r:r[2]))
L=sum(r[2] for r in center)/len(center)
print('optimistic_pct_wall_step2d_x_L', 8.11*L)
ds.close()
PY
ncdump -h /public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc 2>/dev/null | head -30 || true
