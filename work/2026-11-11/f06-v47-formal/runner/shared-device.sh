#!/bin/bash
set -euo pipefail
root=/data2/zhaoweiming/f06-eager-remaining-v34
cd "$root"
job=$1
id=$2
image=$3
shift 3
mkdir -p "$root/out/$job"
# Serialize this benchmark suite on each physical card, including independent QA.
exec 9>"$root/out/queue/wide35-device-$id.lock"
flock -x 9
echo "$id" > "$root/out/$job/card"
sudo -S -p '' -v
# Keep every workload on its selected device; record background load.
for snap in 0 1 2; do xpu_smi > "$root/out/$job/smi-$snap.txt"; sleep 1; done
python3 - "$root/out/$job" "$id" <<'PY'
import re,sys
from pathlib import Path
for f in Path(sys.argv[1]).glob('smi-*.txt'):
    r={int(g):(int(m),int(u)) for g,m,u in re.findall(r'^\|\s+(\d+)\s+P800[^\n]*\n[^\n]*?\|\s*(\d+)MiB /\s*\d+MiB\s*\|\s*(\d+)%',f.read_text(),re.M)}
    assert r[int(sys.argv[2])][0]<82000,r[int(sys.argv[2])]
PY
nodes=(--device=/dev/xpuctrl)
for i in {0..7}; do nodes+=(--device="/dev/xpu$i"); done
lo=$((id*24));hi=$((lo+15))
sudo -n docker image inspect --format '{{.Id}}' "$image" > "$root/out/$job/image.id"
rc=0
sudo -n docker run --rm --name "f06-v47-$job-$id" --network none --ulimit core=0 --cpuset-cpus "$lo-$hi" "${nodes[@]}" -e CUDA_VISIBLE_DEVICES="$id" -e XPU_VISIBLE_DEVICES="$id" -e TRITON_XPU_DEVICE=0 -e SLOW30_CARD="$id" -e OMP_NUM_THREADS=1 -e MKL_NUM_THREADS=1 -e OPENBLAS_NUM_THREADS=1 -e TRITON_CACHE_DIR=/out/triton -e TORCHINDUCTOR_CACHE_DIR=/out/inductor -e TRITON_STORE_BINARY_ONLY=0 -e LD_LIBRARY_PATH=/root/miniconda/envs/python310_torch29_cuda/xcudart/lib:/usr/local/xpu/so:/root/miniconda/envs/python310_torch29_cuda/lib -v /usr/local/xpu:/usr/local/xpu:ro -v "$root:/repair:ro" -v "$root/out/queue:/queue" -v "$root/out/$job:/out" "$image" -c 'cc -O2 -shared -fPIC /repair/trace.c -ldl -o /tmp/trace.so && mkdir -p /out/machine && export F06_MACHINE_DIR=/out/machine LD_PRELOAD=/tmp/trace.so && exec "$@"' -- "$@" > "$root/out/$job/run.log" 2>&1 || rc=$?
echo "$rc" > "$root/out/$job/exit"
# Output files are readable by the owning account and reusable by rsync.
exit "$rc"
