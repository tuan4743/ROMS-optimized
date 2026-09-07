#!/bin/bash
# Read-only static diagnosis: why is GLS ~18% slower under ifort 2021 while
# every other compute region got 15-45% faster? Compare the two gls_corstep.o
# objects (2017 parent vs 2021 champion) for libm calls and vectorisation.
P=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/Build
C=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_ifort2021_20260805/ROMS_CoSiNE15/Build

command -v objdump >/dev/null || { echo "no objdump"; exit 1; }

stat_obj() {
  local tag=$1 obj=$2
  echo "==== $tag : $obj"
  [ -f "$obj" ] || { echo "   MISSING"; return; }
  ls -l "$obj" | awk '{print "   size="$5}'
  echo "   -- undefined libm/svml symbols --"
  nm -u "$obj" 2>/dev/null | grep -i -e 'pow' -e 'exp' -e 'log' -e 'sqrt' -e 'svml' -e 'libm' | sed 's/^/     /' | head -20
  echo "   -- instruction mix --"
  objdump -d "$obj" 2>/dev/null | awk '
    /vmulpd|vaddpd|vsubpd|vfmadd|vdivpd/ {vec++}
    /mulsd|addsd|subsd|divsd/            {sca++}
    /vsqrtpd/ {vsqrt++} /sqrtsd/ {ssqrt++}
    /call/ {calls++}
    END {
      printf "     packed_fp=%d  scalar_fp=%d  ratio=%.3f  vsqrtpd=%d sqrtsd=%d  calls=%d\n",
             vec+0, sca+0, (sca>0? (vec+0)/sca : 0), vsqrt+0, ssqrt+0, calls+0
    }'
  echo "   -- call targets containing pow/exp/log --"
  objdump -d "$obj" 2>/dev/null | grep -o 'call.*<[^>]*>' | grep -i -e 'pow' -e 'exp' -e 'log' \
    | sed 's/.*<//; s/>.*//' | sort | uniq -c | sort -rn | head -12 | sed 's/^/     /'
}

echo "############ gls_corstep.o"
stat_obj "PARENT_2017" "$P/gls_corstep.o"
stat_obj "CHAMPION_2021" "$C/gls_corstep.o"

echo
echo "############ control objects (should show the opposite trend)"
for o in t3dmix.o biology.o step3d_t.o rhs3d.o; do
  echo "---- $o"
  stat_obj "PARENT_2017" "$P/$o"
  stat_obj "CHAMPION_2021" "$C/$o"
done

echo
echo "############ which source file backs the GLS timer"
grep -rn 'GLS vertical mixing' /public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/ROMS/Utility/timers.F 2>/dev/null | head -3
ls -l "$P"/gls_*.o "$C"/gls_*.o 2>/dev/null
