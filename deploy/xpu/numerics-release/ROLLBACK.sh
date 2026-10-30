#!/bin/sh
# Runtime rollback is a new process: leave /opt/xpu-fix and original packages intact.
set -eu
unset FLAGTREE_BACKEND PYTHONPATH
exec /root/miniconda/envs/python310_torch29_cuda/bin/python "$@"
