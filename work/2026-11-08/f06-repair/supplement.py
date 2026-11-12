"""Additional checks on each device after the standard matrix finishes."""
import json
from pathlib import Path
import subprocess
import sys

root = Path('/repair')
python = sys.executable
slot = int(sys.argv[1])

def run(label, args, timeout=180):
    print('START ' + label, flush=True)
    job = subprocess.run(['timeout', '-k', '5', str(timeout), *map(str, args)])
    print('SUPPLEMENT ' + json.dumps([label, job.returncode]), flush=True)
    return job.returncode

if slot == 0:
    for mode in ('bounds', 'wrap', 'backend', 'matrix', 'norm'):
        run(mode, [python, '-u', root/'regression.py', mode])
elif slot == 1:
    for block in (1024, 4096):
        run('bf16-' + str(block), [python, '-u', root/'bf16.py', str(block)])
    run('opt-in-silu', [python, '-u', root/'silu_split.py'])
elif slot == 2:
    run('wrap-suite', [python, '-m', 'pytest', '-p', 'no:cacheprovider', '-q', '--noconftest',
                       root/'tests/third_party/xpu/python/test/unit/language/test_rank1_wrap.py'])
    run('softmax-ab', [python, '-u', root/'softmax_ab.py'])
elif slot == 3:
    for shape in ('65x1024', '513x1024'):
        run('silu-' + shape, [python, '-u', root/'benchmark.py', 'matmul_bias_silu', 'float32', shape])
