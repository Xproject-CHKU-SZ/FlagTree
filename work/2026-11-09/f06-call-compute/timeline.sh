set -eu
cc -O2 -shared -fPIC /repair/spill-qa/launch_clock.c -ldl -o /tmp/b2-launch-clock.so
LD_PRELOAD=/tmp/b2-launch-clock.so python -u /repair/spill-qa/call_cost.py --timeline
