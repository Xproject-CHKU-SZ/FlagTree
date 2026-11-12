"""Check real P800 access before the benchmark; not a performance result."""
import hashlib
import importlib.metadata
import json
from pathlib import Path
import time
import subprocess
import os

ROOT = Path(__file__).resolve().parent
assert ROOT == Path('/data2/zhaoweiming/p800-transfer-20261102')
import torch
import triton
import torch_xmlir

report = dict(torch=torch.__version__, triton=triton.__version__, cuda_available=torch.cuda.is_available(),
              device_count=torch.cuda.device_count(), cuda_graph_class=str(torch.cuda.CUDAGraph),
              cuda_event_class=str(torch.cuda.Event), packages={})
for package in ['torch', 'flagtree', 'xmlir', 'torch_plugin', 'hyperparameter', 'cuda_mock', 'numpy',
                'pybind11', 'sympy', 'mpmath', 'filelock']:
    report['packages'][package] = importlib.metadata.version(package)
assert report['cuda_available'] and report['device_count'] == 1, report
report['device'] = torch.cuda.get_device_name(0)
report['hardware_query'] = subprocess.run(['xpu-smi', '-m', '-i', '0'], check=True,
                                          capture_output=True, text=True, timeout=10,
                                          env={k:v for k,v in os.environ.items()
                                               if k not in ('LD_LIBRARY_PATH', 'LD_PRELOAD')}).stdout
assert 'P800 OAM' in report['hardware_query'], report
report['vendor_runtime'] = torch_xmlir.__version__
assert torch_xmlir._XMLIRC is not None
driver = triton.runtime.driver.active
report['driver'] = str(type(driver))
report['target'] = str(driver.get_current_target())
assert type(driver).__module__ == 'triton.backends.xpu.driver'
assert driver.get_current_target().arch == 3
torch.set_num_threads(1)
with torch.no_grad():
    a = torch.arange(2048, dtype=torch.float32).reshape(16, 128)
    x = a.cuda()
    y = x * 2 + 1
    torch.cuda.synchronize()
    torch.testing.assert_close(y.cpu(), a * 2 + 1, atol=0, rtol=0)
    report['ordinary_device_arithmetic'] = 'passed'
    report['memory_allocated'] = torch.cuda.memory_allocated()
report['checked_at'] = time.time()
(ROOT / 'runtime-probe.json').write_text(json.dumps(report, indent=2))
print(json.dumps(report, indent=2), flush=True)
