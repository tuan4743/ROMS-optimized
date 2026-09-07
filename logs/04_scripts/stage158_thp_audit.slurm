#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 4
#SBATCH --exclusive
#SBATCH -J s158_thp_audit
#SBATCH -t 00:05:00
set -u
OUT=/public/home/fujiake/fjk/stage158_thp_audit_20260812
mkdir -p "$OUT"
HOSTS=($(scontrol show hostnames "$SLURM_JOB_NODELIST"))
echo "NODES: ${HOSTS[*]}" | tee "$OUT/nodes.txt"
srun -n4 --ntasks-per-node=1 bash -c '
  h=$(hostname)
  {
    echo "=== host $h ==="
    echo "enabled: $(cat /sys/kernel/mm/transparent_hugepage/enabled 2>&1)"
    echo "defrag:  $(cat /sys/kernel/mm/transparent_hugepage/defrag 2>&1)"
    echo "writable enabled: $(test -w /sys/kernel/mm/transparent_hugepage/enabled && echo YES || echo NO)"
    echo "writable defrag:  $(test -w /sys/kernel/mm/transparent_hugepage/defrag && echo YES || echo NO)"
    ls /sys/kernel/mm/hugepages/ 2>/dev/null
    for p in /sys/kernel/mm/hugepages/hugepages-*/nr_hugepages; do
      [ -f "$p" ] && echo "$p = $(cat $p)"
    done
    grep -E "HugePages_Total|HugePages_Free|AnonHugePages|Hugepagesize" /proc/meminfo
    uname -r
    id
  } > /public/home/fujiake/fjk/stage158_thp_audit_20260812/audit_$h.txt 2>&1
  echo "done $h"
'
echo "STAGE158_THP_AUDIT_DONE"
