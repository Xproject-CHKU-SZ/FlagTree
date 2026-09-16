#!/usr/bin/env bash
set -euo pipefail

# XPU images install a global import hook.  Unit tests exercise the CPU
# reference path and must disable that hook before the interpreter starts.
export DISABLE_XPYTORCH=1
exec "$(dirname "$0")/../.venv/bin/python" -m pytest tests "$@"
