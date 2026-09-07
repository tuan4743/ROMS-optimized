#!/bin/bash
# Read-only review of immutable O33: output/IO path, averaging path, biharmonic mixing.
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15

echo "########## 1. Which timer index is point data gathering ##########"
grep -n 'Message Passage' $R/ROMS/Utility/wclock.F | head -20

echo
echo "########## 2. mp_gather callers (non-parallel IO write path) ##########"
grep -rn 'mp_gather2d\|mp_gather3d' $R/ROMS/Utility/nf_fwrite2d.F $R/ROMS/Utility/nf_fwrite3d.F $R/ROMS/Utility/nf_fwrite4d.F 2>/dev/null | head -20

echo
echo "########## 3. wclock_on indices used inside distribute.F ##########"
grep -n 'wclock_on\|wclock_off' $R/ROMS/Utility/distribute.F | head -40

echo
echo "########## 4. PARALLEL_IO / HDF5 / NETCDF4 in build ##########"
grep -n 'PARALLEL_IO\|NETCDF4\|HDF5\|DEFLATE' $R/ROMS/Include/globaldefs.h | head -20
grep -rn 'USE_NETCDF4\|USE_PARALLEL_IO' $R/makefile $R/Compilers/Linux-ifort.mk 2>/dev/null | head -10

echo
echo "########## 5. set_avg accumulation: how many fields per step ##########"
ls -la $R/ROMS/Nonlinear/set_avg.F 2>/dev/null
grep -c 'AVERAGE(ng)%' $R/ROMS/Nonlinear/set_avg.F 2>/dev/null
grep -n 'DO k=\|DO j=\|DO i=' $R/ROMS/Nonlinear/set_avg.F 2>/dev/null | wc -l

echo
echo "########## 6. t3dmix4_s.h structure (biharmonic, 4.93 percent pool) ##########"
wc -l $R/ROMS/Nonlinear/t3dmix4_s.h
grep -n 'DO itrc\|DO k=\|DO j=\|DO i=\|LapT\|FX(\|FE(' $R/ROMS/Nonlinear/t3dmix4_s.h | head -50

echo
echo "########## 7. which t3dmix variant is active ##########"
grep -n 'TS_DIF4\|TS_DIF2\|MIX_S_TS\|MIX_GEO_TS\|t3dmix' $R/ROMS/Include/bye24bio15.h

echo
echo "########## 8. set_data / processing of input data (1.6 percent) ##########"
wc -l $R/ROMS/Nonlinear/set_data.F 2>/dev/null
grep -n 'CALL set_2dfld_tile\|CALL set_3dfld_tile' $R/ROMS/Nonlinear/set_data.F 2>/dev/null | wc -l
