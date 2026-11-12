FROM zhaoweiming/f06-p800:f06-repair-20261108-v5
COPY rootfs/ /
COPY legacy_softmax_option.py /tmp/f06_scoped_option.py
RUN python /tmp/f06_scoped_option.py
