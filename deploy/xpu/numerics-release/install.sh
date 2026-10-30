#!/bin/sh
# Install only into an isolated prefix; never replace the vendor Torch.
set -eu
R=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
P=${FIX_PREFIX:-/opt/xpu-fix}
BASE=/root/miniconda/envs/python310_torch29_cuda/bin/python
[ ! -e "$P" ] || { echo "prefix already exists: $P" >&2; exit 2; }
(cd "$R" && sha256sum -c payload.sha256)
[ "$(git -C /env/FlagGems rev-parse HEAD)" = 73c5aff1e304c293ab525ecb03e9449644496fbb ]
mkdir -p "$P"
"$BASE" -m venv --system-site-packages "$P/venv"
"$P/venv/bin/python" -m pip install --no-deps --no-index --target "$P/runtime" "$R/payload/flagtree-0.7.0+xpu-cp310-cp310-linux_x86_64.whl"
# Copy tracked files only: no unknown output/, archives or working-tree edits.
mkdir "$P/flaggems"
git -C /env/FlagGems archive 73c5aff1e304c293ab525ecb03e9449644496fbb | tar -x -C "$P/flaggems"
for patch in 04-flaggems-mm-block-pointer.patch 05-flaggems-bmm-block-pointer.patch 05-flaggems-addmm-block-pointer.patch 07-flaggems-blas-stride-contract.patch; do
 (cd "$P/flaggems" && patch --dry-run --batch --forward -p1 < "$R/payload/patches/$patch")
 (cd "$P/flaggems" && patch --batch --forward -p1 < "$R/payload/patches/$patch")
done
FIX_PREFIX="$P" "$BASE" "$R/verify_install.py"
printf 'export PYTHONPATH=%s/runtime:%s/flaggems/src:%s/flaggems\nexport FLAGTREE_BACKEND=xpu\nexport KLX_USE_AUTOTUNE=0\nexport XMLIR_MATMUL_FAST_MODE=1\n' "$P" "$P" "$P" > "$P/env.sh"
echo XPU_FIX_INSTALLED
