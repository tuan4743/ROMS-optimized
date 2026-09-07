#!/usr/bin/env bash
# Stage-130 plan pass probe 3: READ-ONLY, targeted (no recursion into big trees).
set -uo pipefail
S22B=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b
WRONG=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15
echo '===== s22b makefile champion flags ====='
grep -nE -- 'FFLAGS :=|FFLAGS \+=|march|fma|ipo' "$S22B/Compilers/Linux-ifort.mk" 2>/dev/null | head -30
echo '===== makefile diff s22b vs wrong-tree (Stage129 used wrong) ====='
diff "$S22B/Compilers/Linux-ifort.mk" "$WRONG/Compilers/Linux-ifort.mk" 2>/dev/null | head -60
echo '===== source drift: ROMS dirs diff (names only) ====='
timeout 120 diff -rq "$S22B/ROMS" "$WRONG/ROMS" 2>/dev/null | head -30
echo '===== sprint dir inventory ====='
ls -la /public/home/fujiake/nan/sprint/ 2>/dev/null | head -25
echo '===== s22b binaries ====='
ls -la "$S22B"/oceanM* 2>/dev/null
echo '===== teammate live 1day jobs ====='
sacct -j 118809092,118809093,118809095 --format=JobID,JobName%16,State,Elapsed,WorkDir%90 -n 2>/dev/null | head -8
echo '===== newest sXX result markers in sprint trees ====='
ls -dt /public/home/fujiake/nan/sprint/*/ 2>/dev/null | head -10
