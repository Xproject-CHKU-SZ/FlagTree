# syntax=docker/dockerfile:1
ARG BASE_IMAGE=flagtree-xpu3.6-py310-torch2.9.0-flaggems-main-dev:202608
FROM ${BASE_IMAGE}
ARG SOURCE_COMMIT
ENV FLAGTREE_BACKEND=xpu TRITON_BUILD_PROTON=OFF MAX_JOBS=8
ENV PATH=/root/miniconda/envs/python310_torch29_cuda/bin:$PATH
COPY source/ /src/FlagTree/
COPY xtdk-llvm19.tar.gz /opt/build-inputs/xtdk-llvm19.tar.gz
WORKDIR /src/FlagTree
RUN python -m venv --system-site-packages /opt/source-env && \
    /opt/source-env/bin/python -m pip install --no-deps 'pybind11==3.0.1' && \
    /opt/source-env/bin/python -c "import cmake,ninja,setuptools,wheel,tomli; import importlib.metadata as m; assert m.version('pybind11')=='3.0.1'"
# Vendor LLVM/SDNN dependencies are fetched by the repository's pinned setup.
# Only FlagTree is built from source; proprietary SDNN objects are vendor SDK inputs.
RUN --mount=type=cache,id=flagtree-xpu-source-sdk,target=/opt/sdk-cache \
    FLAGTREE_CACHE_DIR=/opt/sdk-cache /opt/source-env/bin/python deploy/xpu-source/toolchain.py && \
    FLAGTREE_CACHE_DIR=/opt/sdk-cache /opt/source-env/bin/python -m pip install -v --no-build-isolation --no-deps . > /opt/source-build.log 2>&1 || { tail -80 /opt/source-build.log; exit 1; }
# A regular source install above builds libtriton; never copy a prebuilt FlagTree wheel.
RUN /opt/source-env/bin/python -m pip show flagtree && \
    printf '%s\n' "$SOURCE_COMMIT" > /opt/SOURCE_COMMIT && \
    cd / && /opt/source-env/bin/python -c "from triton._C.libtriton import xpu; assert hasattr(xpu.passes.ttsdnnir,'add_preserve_bf16_rounding_pass')"
ENV PYTHONPATH=""
WORKDIR /results
CMD ["sleep", "infinity"]
