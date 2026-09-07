#!/usr/bin/env bash
set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
work=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_rankmap_abba_20260801
runtime=$work/runtime
logdir=/public/home/fujiake/fjk/agent_tmp/logs/o33_rankmap_abba_20260801
expected_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_input=05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21
expected_rules=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
expected_mp_exchange=c66ab7bb6a855ab319a886f6ace110429b204efb26aa1aaf0785ff28a38e577a

fail() { echo "FATAL: $*" >&2; exit 2; }
hash_of() { sha256sum "$1" | awk '{print $1}'; }
[[ "$work" == /public/home/fujiake/fjk/agent_tmp/isolated/work/* ]] || fail "unsafe work"
[[ "$(hash_of "$parent/oceanM.O33_final")" == "$expected_bin" ]] || fail "binary hash"
[[ "$(hash_of "$parent/ROMS/External/ocean_SCS_Dongsha60_bio15.in")" == "$expected_input" ]] || fail "input hash"
[[ "$(hash_of "$parent/coll_rules.conf")" == "$expected_rules" ]] || fail "rules hash"
[[ "$(hash_of "$parent/ROMS/Utility/mp_exchange.F")" == "$expected_mp_exchange" ]] || fail "mp_exchange hash"

if [[ ! -e "$work" ]]; then
  mkdir -p "$runtime"
  ln -s "$parent/ROMS" "$runtime/ROMS"
  ln -s /public/home/fujiake/Inputfiles "$runtime/Inputfiles"
  ln -s "$parent/coll_rules.conf" "$runtime/coll_rules.conf"
else
  [[ -d "$runtime" ]] || fail "existing work lacks runtime directory"
fi
mkdir -p "$logdir"
[[ "$(readlink -f "$runtime/ROMS")" == "$parent/ROMS" ]] || fail "ROMS link"
[[ "$(readlink -f "$runtime/Inputfiles")" == /public/home/fujiake/Inputfiles ]] || fail "Inputfiles link"
[[ "$(readlink -f "$runtime/coll_rules.conf")" == "$parent/coll_rules.conf" ]] || fail "rules link"

{
  echo "PREPARED=$(date '+%F %T %z')"
  echo "PARENT=$parent"
  echo "RUNTIME=$runtime"
  sha256sum "$parent/oceanM.O33_final" \
    "$parent/ROMS/External/ocean_SCS_Dongsha60_bio15.in" \
    "$parent/coll_rules.conf" "$parent/ROMS/Utility/mp_exchange.F"
  ls -ld "$runtime/ROMS" "$runtime/Inputfiles" "$runtime/coll_rules.conf"
} > "$logdir/runtime_context.txt"
cat "$logdir/runtime_context.txt"
