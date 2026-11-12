"""Shared timing, provenance and strictly task-local process configuration."""
from pathlib import Path
import hashlib
import json
import math
import os
import re
import statistics
import subprocess
import time

ROOT = Path(__file__).resolve().parent
SIZES = [16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384]


def initialize(gpu, label):
    assert ROOT == Path('/data2/zhaoweiming/p800-transfer-20261102')
    assert re.fullmatch('[a-zA-Z0-9_-]+', label)
    for key in ['CUDA_VISIBLE_DEVICES', 'XPU_VISIBLE_DEVICES', 'TRITON_XPU_DEVICE']:
        os.environ[key] = str(gpu)
    out = ROOT / 'results' / label
    out.mkdir(parents=True, exist_ok=False)
    cache = ROOT / 'cache' / label
    for key in ['TRITON_CACHE_DIR', 'TORCHINDUCTOR_CACHE_DIR', 'CUDA_CACHE_PATH', 'XDG_CACHE_HOME']:
        os.environ[key] = str(cache / key.lower())
    cores = list(range(gpu * 8, gpu * 8 + 8)) if gpu < 4 else list(range(96 + (gpu - 4) * 8, 104 + (gpu - 4) * 8))
    os.sched_setaffinity(0, cores)
    import torch
    import triton
    torch.set_num_threads(8)
    assert torch.cuda.device_count() == 1
    driver = triton.runtime.driver.active
    assert type(driver).__module__ == 'triton.backends.xpu.driver'
    assert driver.get_current_target().arch == 3
    report = dict(status='running', gpu=gpu, pid=os.getpid(), affinity=cores,
                  started_at=time.time(), torch=torch.__version__, triton=triton.__version__,
                  target=str(driver.get_current_target()),
                  sources={p.name:hashlib.sha256(p.read_bytes()).hexdigest()
                           for p in ROOT.iterdir() if p.suffix in ('.py', '.xpu', '.sh')},
                  settings={k:os.environ.get(k) for k in ['XPU_EVENT_KL3_ENABLE', 'XPU_DUMMY_EVENT',
                      'XMLIR_ENABLE_MOCK_TORCH_COMPILE', 'XMLIR_MATMUL_FAST_MODE', 'FLAGTREE_BACKEND']})
    return out, report


def save(out, report):
    p = out / 'result.tmp'
    p.write_text(json.dumps(report, indent=2, default=str))
    p.replace(out / 'result.json')


def physical_proof(gpu):
    env = {k:v for k,v in os.environ.items() if k not in ('LD_LIBRARY_PATH', 'LD_PRELOAD')}
    text = subprocess.check_output(['xpu-smi', '-q', '-d', 'ECC,PIDS', '-i', str(gpu)],
                                   text=True, env=env, timeout=15)
    assert re.search(r'\b' + str(os.getpid()) + r'\b', text), text
    return text


def batch_size(estimate_us):
    return min(4096, max(1, 2 ** math.ceil(math.log2(4000 / max(estimate_us, .01)))))


def capture(fn, count):
    import torch
    torch.cuda.synchronize()
    stream = torch.cuda.Stream()
    with torch.cuda.stream(stream):
        fn(); fn()
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph, stream=stream):
        for _ in range(count):
            fn()
    graph.replay()
    torch.cuda.synchronize()
    return graph


def measure(graph, count, samples=7):
    import torch
    gpu, wall = [], []
    for _ in range(samples):
        a, b = torch.cuda.Event(enable_timing=True), torch.cuda.Event(enable_timing=True)
        torch.cuda.synchronize()
        start = time.perf_counter_ns()
        a.record(); graph.replay(); b.record(); b.synchronize()
        wall.append((time.perf_counter_ns()-start)/1000/count)
        gpu.append(a.elapsed_time(b)*1000/count)
    assert all(x > 0 for x in gpu), gpu
    return dict(gpu_us=statistics.median(gpu), samples_us=gpu,
                graph_wall_us=statistics.median(wall), graph_wall_samples_us=wall,
                calls_per_graph=count)


def end_to_end(fn, samples=11):
    import torch
    values=[]
    for _ in range(samples):
        torch.cuda.synchronize()
        start=time.perf_counter_ns()
        fn();torch.cuda.synchronize()
        values.append((time.perf_counter_ns()-start)/1000)
    return dict(us=statistics.median(values),samples_us=values)


def exact(got, want):
    import torch
    got=got.cpu().contiguous().view(torch.uint8)
    want=want.cpu().contiguous().view(torch.uint8)
    assert torch.equal(got,want), 'Bitwise transfer validation failed'
    return dict(bitwise_equal=True,bytes=got.numel())


def digest(t):
    import torch
    return hashlib.sha256(t.cpu().contiguous().view(torch.uint8).numpy().tobytes()).hexdigest()


def keep_kernel(out, name, kernel):
    dest=out/name;dest.mkdir(exist_ok=True)
    for key,value in kernel.asm.items():
        if isinstance(value,str):(dest/('kernel.'+key)).write_text(value)
        elif isinstance(value,bytes):(dest/('kernel.'+key)).write_bytes(value)
    (dest/'metadata.json').write_text(json.dumps(kernel.metadata._asdict(),indent=2,default=str))
