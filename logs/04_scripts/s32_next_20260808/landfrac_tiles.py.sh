#!/bin/bash
set -u
/public/share/mcc2026_final/miniforge3/bin/python3 - <<'PY'
import os
try:
    import netCDF4 as nc
except Exception as e:
    print('NO_NETCDF', e)
    raise SystemExit(0)

# Fine grid Dongsha60: 235x245 rho points typical Lm=235 Mm=245? 
# From history: fine 235x245, coarse 359x326
paths = [
  '/public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc',
  '/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15/Inputfiles/Dongsha60/Dongsha60_grd.nc',
]
path=None
for p in paths:
  if os.path.isfile(p):
    path=p; break
print('GRID', path)
ds=nc.Dataset(path)
for v in ds.variables:
  if 'mask' in v.lower() or v in ('h','f','pm','pn'):
    print(' var', v, getattr(ds.variables[v], 'shape', None))
# prefer mask_rho
name='mask_rho' if 'mask_rho' in ds.variables else None
if name is None:
  for v in ds.variables:
    if 'mask' in v.lower() and 'rho' in v.lower():
      name=v; break
print('MASK_VAR', name)
mask=ds.variables[name][:]
# mask may be (eta,xi) = (Mm+2?, Lm+2?) or (Mm,Lm)
print('mask shape', mask.shape, 'min', float(mask.min()), 'max', float(mask.max()), 'land_frac', float((mask<0.5).mean()))
ny, nx = mask.shape
# 8x8 tiles over interior: ROMS uses Lm x Mm interior; if shape includes halo, still split evenly
nti=ntj=8
# tile sizes like ROMS ChunkSize
def chunk(n, ntile):
  return (n + ntile - 1)//ntile
ci, cj = chunk(nx, nti), chunk(ny, ntj)
print('chunk xi,eta', ci, cj, 'nx,ny', nx, ny)
rows=[]
for jt in range(ntj):
  for it in range(nti):
    i0,i1=it*ci, min((it+1)*ci, nx)
    j0,j1=jt*cj, min((jt+1)*cj, ny)
    t=mask[j0:j1, i0:i1]
    land=float((t<0.5).mean()) if t.size else 0.0
    wet=1.0-land
    rows.append((jt,it,land,wet,t.size))
# center block Jtile 3-6 × Itile 3-5 from Stage 93
center=[r for r in rows if 3<=r[0]<=6 and 3<=r[1]<=5]
edge=[r for r in rows if r[0]==0 or r[1]==0]
print('CENTER land_frac mean', sum(r[2] for r in center)/len(center), 'n', len(center))
print('WEST_COL land_frac mean', sum(r[2] for r in rows if r[1]==0)/8)
print('ALL land_frac mean', sum(r[2] for r in rows)/len(rows))
print('max land tile', max(rows, key=lambda r:r[2]))
print('min land tile', min(rows, key=lambda r:r[2]))
# step2d share ~8.11% G02; if land skip saved land_frac of step2d on center only
# rough: center is 4*3=12 of 64 tiles; if those are critical path and land_frac=L
# saving L * step2d_share * (12/64)? No - critical path is the SLOW tiles; saving land work on those tiles
# reduces their compute by ~ L * (step2d fraction of their work).
# If step2d is 8% of global and center tiles are late mainly due to step2d wet/dry,
# and land_frac on center is L, optimistic wall save ~ 8% * L (if step2d fully on critical path)
for label, subset in [('center', center), ('all', rows)]:
  L=sum(r[2] for r in subset)/len(subset)
  print(f'optimistic_wall_if_step2d_crit_path_{label}: {0.0811*L*100:.2f}% of wall (needs step2d on crit path)')
ds.close()
PY
