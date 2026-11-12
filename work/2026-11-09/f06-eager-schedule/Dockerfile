FROM zhaoweiming/f06-p800:f06-grouped-exp-20261109-v7
COPY rootfs/opt/hsp/triton/_C/ /opt/hsp/triton/_C/
COPY rootfs/opt/hsp/triton/experimental/graph_fusion/ /opt/hsp/triton/experimental/graph_fusion/
COPY install_row_option.py /tmp/install_row_option.py
RUN python /tmp/install_row_option.py
