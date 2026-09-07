#!/bin/bash
set -u
R=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15
cd "$R" || exit 1

echo "==== CALL mp_exchange counts by file ===="
grep -h -c 'CALL mp_exchange' ROMS/Nonlinear/*.F ROMS/Nonlinear/*.h ROMS/Utility/nesting.F 2>/dev/null \
  | awk -F: '$2>0{print}' | sort -t: -k2 -nr | head -25

echo
echo "==== Nfields extraction (hot files) ===="
python3 - <<'PY'
import re, collections, pathlib
root = pathlib.Path('/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15')
files = [
  'ROMS/Nonlinear/step2d_LF_AM3.h',
  'ROMS/Nonlinear/pre_step3d.F',
  'ROMS/Nonlinear/step3d_t.F',
  'ROMS/Nonlinear/gls_corstep.F',
  'ROMS/Nonlinear/step3d_uv.F',
  'ROMS/Nonlinear/omega.F',
  'ROMS/Nonlinear/rhs3d.F',
  'ROMS/Utility/nesting.F',
]
# Match CALL mp_exchangeXd( ... spanning lines until non-continuation
call_re = re.compile(r'CALL\s+mp_exchange([234])d\s*\((.*?)\)', re.S | re.I)
hist = collections.Counter()
byfile = collections.defaultdict(collections.Counter)
examples = []
for rel in files:
    p = root / rel
    if not p.exists():
        print('MISSING', rel); continue
    text = p.read_text(errors='replace')
    # strip comments roughly
    for m in call_re.finditer(text):
        dim = m.group(1)
        args = m.group(2)
        # flatten continuations
        args = re.sub(r'&\s*\n\s*', ' ', args)
        args = re.sub(r'\s+', ' ', args)
        parts = [a.strip() for a in args.split(',')]
        # signature: ng, tile, model, Nfields, ...
        nfields = None
        if len(parts) >= 4:
            tok = parts[3]
            if re.fullmatch(r'\d+', tok):
                nfields = int(tok)
        key = (dim, nfields)
        hist[key] += 1
        byfile[rel][key] += 1
        if nfields is not None and nfields < int(dim) and len(examples) < 12:
            # Nfields can be 1..4 regardless of dim name; dim is array rank
            pass
        if nfields is not None and nfields <= 2 and len(examples) < 20:
            examples.append((rel, dim, nfields, parts[:6]))

print('HIST (dim, Nfields) -> count:')
for k,v in sorted(hist.items(), key=lambda kv: (-kv[1], str(kv[0]))):
    print(f'  {k}: {v}')
print('BY FILE:')
for rel,c in byfile.items():
    print(' ', rel, dict(c))
print('EXAMPLES Nfields<=2:')
for e in examples[:15]:
    print(' ', e)
# potential: how many calls have Nfields < 4 that are adjacent and mergeable?
print('calls with Nfields in {1,2,3}:', sum(v for (d,n),v in hist.items() if n in (1,2,3)))
print('calls with Nfields==4:', sum(v for (d,n),v in hist.items() if n==4))
print('calls Nfields unknown:', sum(v for (d,n),v in hist.items() if n is None))
PY

echo
echo "==== teammate notes on pack/combine/mp_exchange Nfields ===="
grep -nE 'pack|Nfields|combine|四变量|小消息|mp_exchange2d' /public/home/fujiake/nan/sprint/README.md | head -40

echo
echo "==== Intel MPI binary search (quick) ===="
ls /public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/oceanM* 2>/dev/null | head
ls /public/home/fujiake/nan/sprint/scripts/*impi* 2>/dev/null
ls /public/software/mpi/intelmpi/2017.4.239/ | head
