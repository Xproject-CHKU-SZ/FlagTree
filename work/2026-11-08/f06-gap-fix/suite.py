"""Run each public input in a fresh process and isolate vendor compiler timeouts."""
import itertools
import json
from pathlib import Path
import subprocess
import sys
import os

sys.path.insert(0, '/repair')
from cases import KINDS
slot, slots = map(int, sys.argv[1:3])
cases = list(itertools.product(KINDS, ('float32', 'float16'), ('64x1024', '512x1024', '2048x2048')))
if len(sys.argv) > 3:
    cases = json.loads(Path(sys.argv[3]).read_text())
for kind, dtype, shape in cases[slot::slots]:
    job = subprocess.run(['timeout', '-k', '3', '195', sys.executable, '-u',
                          '/repair/v5-qa/public_benchmark.py', kind, dtype, shape])
    print('END ' + json.dumps([kind, dtype, shape, job.returncode]), flush=True)
