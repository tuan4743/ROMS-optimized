#!/bin/bash
set -u
rank="${OMPI_COMM_WORLD_RANK:-unknown}"
if [[ "$rank" == "0" ]]; then
  exec /usr/bin/perf record -F 99 -e cycles:u -o "${PERF_DATA:?}" -- "${MODEL_EXE:?}" "${MODEL_INPUT:?}"
fi
exec "${MODEL_EXE:?}" "${MODEL_INPUT:?}"
