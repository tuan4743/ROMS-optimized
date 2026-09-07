#!/usr/bin/env bash
set -u -o pipefail
rank=${OMPI_COMM_WORLD_RANK:?}
selected=",${PERF_SELECTED_RANKS:?},"
case "$selected" in *",${rank},"*) ;; *) exec "$@";; esac
mkdir -p "${PERF_ROOT:?}"
exec /usr/bin/perf record -q -F 199 -e cpu-clock:u -o "$PERF_ROOT/rank_${rank}.perf.data" -- "$@"
