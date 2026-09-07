#!/bin/bash
# Read-only: what is the concurrently running sprint_O84 job doing?
J=118735123
echo "############ scontrol"
scontrol show job $J 2>/dev/null | tr -s ' ' '\n' | grep -e JobName -e WorkDir -e StdOut -e RunTime -e NumNodes -e NodeList -e Command

echo
echo "############ submit script"
cmd=$(scontrol show job $J 2>/dev/null | tr -s ' ' '\n' | grep -m1 '^Command=' | cut -d= -f2-)
echo "cmd=$cmd"
if [ -n "$cmd" ] && [ -f "$cmd" ]; then
  echo "-- header / purpose --"
  sed -n '1,40p' "$cmd"
fi

echo
echo "############ live stdout tail"
out=$(scontrol show job $J 2>/dev/null | tr -s ' ' '\n' | grep -m1 '^StdOut=' | cut -d= -f2-)
echo "out=$out"
[ -f "$out" ] && tail -30 "$out"

echo
echo "############ newest script dirs (what the other session has been building)"
ls -dt /public/home/fujiake/fjk/agent_tmp/isolated/scripts/*/ 2>/dev/null | head -6
ls -dt /public/home/fujiake/fjk/agent_tmp/isolated/work/*/ 2>/dev/null | head -8
ls -dt /public/home/fujiake/fjk/mcc_runs/*/ 2>/dev/null | head -6

echo
echo "############ any O84 / sprint notes"
ls -dt /public/home/fujiake/fjk/agent_tmp/logs/*/ 2>/dev/null | head -6
find /public/home/fujiake/fjk/agent_tmp -maxdepth 3 -iname '*o84*' 2>/dev/null | head -10
find /public/home/fujiake/fjk/agent_tmp -maxdepth 3 -iname '*sprint*' 2>/dev/null | head -10
