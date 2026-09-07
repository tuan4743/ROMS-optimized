#!/bin/bash
# Read-only enumeration of all runs after Stage 95 (job 118541006) for log backfill.
# Creates nothing on the remote side.
M=/public/home/fujiake/fjk/mcc_runs

echo "=== all run dirs with jobid > 118541006 ==="
for d in "$M"/*/; do
  b=$(basename "$d")
  id=${b%%_*}
  case "$id" in
    ''|*[!0-9]*) continue ;;
  esac
  if [ "$id" -gt 118541006 ]; then
    printf "%-46s %s\n" "$b" "$(stat -c %y "$d" | cut -d. -f1)"
  fi
done | sort -k2

echo
echo "=== per-run inventory ==="
for d in "$M"/*/; do
  b=$(basename "$d")
  id=${b%%_*}
  case "$id" in
    ''|*[!0-9]*) continue ;;
  esac
  [ "$id" -gt 118541006 ] || continue
  echo "---- $b"
  ls "$d" 2>/dev/null | head -20
  for f in decision.txt DECISION.txt notes.md NOTES.md summary.txt; do
    if [ -f "$d/$f" ]; then
      echo "  [[$f]]"
      sed -n '1,40p' "$d/$f" | sed 's/^/    /'
    fi
  done
done

echo
echo "=== remote analysis notes under agent_tmp/logs ==="
ls -dt /public/home/fujiake/fjk/agent_tmp/logs/*/ 2>/dev/null | head -20

echo
echo "=== remote md notes newer than Aug 4 ==="
find /public/home/fujiake/fjk/agent_tmp -maxdepth 3 -name '*.md' -newermt '2026-08-04' 2>/dev/null | head -40
