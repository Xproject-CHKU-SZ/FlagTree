set -eu
cc -O2 -shared -fPIC -o /tmp/f06_observer.so /repair/spill-qa/launch_observer.c -ldl
LD_PRELOAD=/tmp/f06_observer.so OMP_NUM_THREADS=1 python -u /repair/spill-qa/observe_add.py
