FROM zhaoweiming/f06-p800:b2-512-call-compute-20261109-v11
COPY _p800_reduce.py /opt/hsp/triton/experimental/graph_fusion/_p800_reduce.py
COPY driver.py /opt/hsp/triton/backends/xpu/driver.py
