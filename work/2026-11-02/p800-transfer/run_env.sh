#!/usr/bin/env bash
set -euo pipefail
ulimit -c 0
experiment_root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
[[ "$experiment_root" == /data2/zhaoweiming/p800-transfer-20261102 ]]
runtime_prefix="$experiment_root/env"
runtime_site="$runtime_prefix/lib/python3.10/site-packages"
export PATH="$runtime_prefix/bin:$PATH"
export CONDA_PREFIX="$runtime_prefix"
export TMPDIR="$experiment_root/tmp" TMP="$experiment_root/tmp" TEMP="$experiment_root/tmp"
export XDG_CACHE_HOME="$experiment_root/cache/xdg"
export TRITON_CACHE_DIR="$experiment_root/cache/triton"
export TORCHINDUCTOR_CACHE_DIR="$experiment_root/cache/inductor"
export CUDA_CACHE_PATH="$experiment_root/cache/cuda"
export PIP_CACHE_DIR="$experiment_root/cache/pip"
export PYTHONDONTWRITEBYTECODE=1 PYTHONNOUSERSITE=1
export PIP_NO_INDEX=1 PIP_DISABLE_PIP_VERSION_CHECK=1
export OMP_NUM_THREADS=1 MKL_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1
export XPU_EVENT_KL3_ENABLE=1 XMLIR_ENABLE_MOCK_TORCH_COMPILE=false
export TRITON_STORE_BINARY_ONLY=0 FLAGTREE_BACKEND=xpu
export XPU_VISIBLE_DEVICES=0 CUDA_VISIBLE_DEVICES=0 TRITON_XPU_DEVICE=0
export TRITON_XPU_BUILD_DEBUG=0 XMLIR_PERSISTENT_CACHE_ENABLED=false
unset DISABLE_XPYTORCH XPU_DUMMY_EVENT CUDA_LAUNCH_BLOCKING TRITON_INTERPRET TRITON_ALWAYS_COMPILE
runtime_libraries="$runtime_prefix/xcudart/lib:$experiment_root/runtime-host-libs:$runtime_prefix/lib:$runtime_site/torch/lib:$runtime_site/torch_xmlir:$runtime_site/proteus:$runtime_site/triton/backends/xpu/xpu3/so:$runtime_site/triton/backends/_xtdk_llvm19/lib"
for runtime_directory in "$runtime_site"/nvidia/*/lib; do
    [[ ! -d "$runtime_directory" ]] || runtime_libraries="$runtime_libraries:$runtime_directory"
done
export LD_LIBRARY_PATH="$runtime_libraries"
mkdir -p "$TMPDIR" "$XDG_CACHE_HOME" "$TRITON_CACHE_DIR" "$TORCHINDUCTOR_CACHE_DIR" "$CUDA_CACHE_PATH"
exec "$runtime_prefix/bin/python" -B -u "$@"
