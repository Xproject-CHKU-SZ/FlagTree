#!/bin/sh
# Apply pinned source patch to a newly created target; do not edit installed code.
set -eu
R=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
T=${1:?Specify a new source output directory}
[ ! -e "$T" ] || { echo 'target exists' >&2; exit 2; }
(cd "$R" && sha256sum -c payload.sha256)
mkdir -p "$T"
tar -xf "$R/payload/source-base.tar" -C "$T"
python3 - "$R" "$T" <<'PY'
from pathlib import Path
import hashlib,json,sys
r,t=map(Path,sys.argv[1:])
for n,h in json.loads((r/'payload/patches/source_hashes.json').read_text())['original'].items():
 p=t/n;b=p.read_bytes().replace(b'\r\n',b'\n')
 assert hashlib.sha256(b).hexdigest()==h,n
 p.write_bytes(b)
PY
cd "$T"
git apply --check "$R/payload/patches/DIFF_FILE.patch"
git apply "$R/payload/patches/DIFF_FILE.patch"
python3 - "$R" "$T" <<'PY'
from pathlib import Path
import hashlib,json,sys
r,t=map(Path,sys.argv[1:])
for n,h in json.loads((r/'payload/patches/source_hashes.json').read_text())['modified'].items():
 assert hashlib.sha256((t/n).read_bytes()).hexdigest()==h,n
print('SOURCE_PATCH_VERIFIED files=12')
PY
