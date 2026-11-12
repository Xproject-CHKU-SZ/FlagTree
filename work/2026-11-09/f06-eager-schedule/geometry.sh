set -eu
cc -O2 -shared -fPIC -o /tmp/f06_row_geom.so /repair/spill-qa/launch_geometry.c -ldl
LD_PRELOAD=/tmp/f06_row_geom.so python -u /repair/spill-qa/verify.py --geometry
