FROM zhaoweiming/f06-p800:f06-repair-20261108-v4
COPY rootfs/ /
COPY torch29_entry.py /tmp/f06_install_entry.py
RUN python /tmp/f06_install_entry.py
