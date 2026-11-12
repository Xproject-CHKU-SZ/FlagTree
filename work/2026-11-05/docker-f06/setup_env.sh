#!/bin/bash
# F06 personal image entrypoint. Everything this image needs lives under /opt/f06;
# no host path is configured or modified.
export PATH=/root/miniconda/envs/python310_torch29_cuda/bin:$PATH
mkdir -p "$TRITON_CACHE_DIR" "$TORCHINDUCTOR_CACHE_DIR"
exec "$@"
