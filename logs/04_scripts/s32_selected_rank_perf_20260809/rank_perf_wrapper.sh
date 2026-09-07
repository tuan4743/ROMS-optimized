#!/usr/bin/env bash
set -u -o pipefail

rank=${OMPI_COMM_WORLD_RANK:?missing OMPI_COMM_WORLD_RANK}
mode=${PERF_MODE:?missing PERF_MODE}
perf_root=${PERF_ROOT:?missing PERF_ROOT}
selected=",${PERF_SELECTED_RANKS:?missing PERF_SELECTED_RANKS},"

case "$selected" in
  *",${rank},"*) ;;
  *) exec "$@" ;;
esac

mkdir -p "$perf_root"

case "$mode" in
  stat)
    exec /usr/bin/perf stat -x, \
      -e task-clock,cycles:u,instructions:u,branches:u,branch-misses:u \
      -o "$perf_root/rank_${rank}.stat.csv" -- "$@"
    ;;
  record)
    exec /usr/bin/perf record -q -F 99 -e cpu-clock:u \
      -o "$perf_root/rank_${rank}.perf.data" -- "$@"
    ;;
  *)
    echo "FATAL: unsupported PERF_MODE=$mode" >&2
    exit 2
    ;;
esac
