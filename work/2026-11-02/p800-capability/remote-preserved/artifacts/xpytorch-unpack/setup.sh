#!/bin/bash
set -ex
dpkg -i --instdir=${CONDA_PREFIX:-/usr/local} xcudart_package.deb
pip install --force-reinstall --no-deps --no-build-isolation torch_plugin-0.1.0.tar.gz
pip install --force-reinstall --no-deps --no-build-isolation flash_attn-2.4.2+1ce3d21-cp310-cp310-linux_x86_64.whl
pip install --force-reinstall --no-deps --no-build-isolation apex-0.1-cp310-cp310-linux_x86_64.whl
pip install --force-reinstall --no-deps --no-build-isolation xformers-0.0.29+f02edb4.d20260401-cp310-cp310-linux_x86_64.whl
pip install --force-reinstall --no-deps --no-build-isolation xmlir-1.0.0.1-cp310-cp310-linux_x86_64.whl
pip install --force-reinstall --no-deps --no-build-isolation benchflow-1.0.0-py3-none-any.whl
pip install --force-reinstall --no-deps --no-build-isolation torch_xray-2.0.6-cp310-cp310-linux_x86_64.whl
pip install --force-reinstall --no-deps --no-build-isolation proteus-0.1.0-cp310-cp310-linux_x86_64.whl
pip install --force-reinstall --no-deps --no-build-isolation hydrax-0.1.0-cp310-cp310-linux_x86_64.whl
pip install --force-reinstall --no-deps --no-build-isolation flash_linear_attention-0.4.2+df33959-cp310-cp310-linux_x86_64.whl
echo reseting XFLAGS
XFLAGS --reset
