FROM flagtree-xpu3.6-py310-torch2.9.0-flaggems-main-dev:202608
ENV PATH=/root/miniconda/envs/python310_torch29_cuda/bin:$PATH
ENV XMLIR_ENABLE_MOCK_TORCH_COMPILE=false XPU_EVENT_KL3_ENABLE=1 FLAGTREE_BACKEND=xpu PYTHONDONTWRITEBYTECODE=1
ENV OMP_NUM_THREADS=1 MKL_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1
ENV TRITON_CACHE_DIR=/opt/f06/cache/triton TORCHINDUCTOR_CACHE_DIR=/opt/f06/cache/inductor
ENV F06_CODE=/opt/f06/code
COPY python /opt/f06/code/python
COPY bench /opt/f06/bench
COPY setup_env.sh /opt/f06/setup_env.sh
RUN chmod 755 /opt/f06/setup_env.sh && mkdir -p /opt/f06/cache/triton /opt/f06/cache/inductor
WORKDIR /opt/f06
ENTRYPOINT ["/opt/f06/setup_env.sh", "/bin/bash"]
