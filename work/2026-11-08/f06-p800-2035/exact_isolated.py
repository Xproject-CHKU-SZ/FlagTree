import os
"""Full-template eager-relative measurement (FP32/FP16, small+large)."""
import json, os, sys, time
BASE = '/data2/zhaoweiming/f06-152-20261106'
stamp = str(int(time.time()))
os.environ['TORCHINDUCTOR_CACHE_DIR'] = f'{BASE}/cache/et{stamp}/ind'
os.environ['TRITON_CACHE_DIR'] = f'{BASE}/cache/et{stamp}/triton'
sys.path.insert(0, BASE)
import torch, torch.nn.functional as F, triton, triton.experimental
triton.experimental.__path__.insert(0, '/opt/f06/code/python/triton/experimental')
from triton.experimental.graph_fusion import _resource_autotune as auto

MAT = ('matmul_bias','matmul_bias_relu','matmul_bias_gelu_exact','matmul_bias_gelu_tanh','matmul_bias_silu')
KINDS = MAT + ('add_softmax','add_gelu_exact','add_gelu_tanh','add_silu','add_layernorm','add_layernorm_affine','mul_sum','mul_sum_keepdim')

class Mat(torch.nn.Module):
    def __init__(self, kind, n):
        super().__init__(); self.kind = kind; self.n = n
    def forward(self, a, b, bias):
        z = a @ b + bias
        if self.kind == 'matmul_bias': return z
        if self.kind == 'matmul_bias_relu': return torch.relu(z)
        if self.kind.endswith('gelu_exact'): return F.gelu(z, approximate='none')
        if self.kind.endswith('gelu_tanh'): return F.gelu(z, approximate='tanh')
        return F.silu(z)

class Bin(torch.nn.Module):
    def __init__(self, kind, n):
        super().__init__(); self.kind = kind; self.n = n
        self.weight = torch.nn.Parameter(torch.randn((n,)) * 0.1) if kind == 'add_layernorm_affine' else None
        self.bias = torch.nn.Parameter(torch.randn((n,)) * 0.1) if kind == 'add_layernorm_affine' else None
    def forward(self, a, b):
        if self.kind.startswith('mul_sum'):
            return torch.sum(a * b, dim=-1, keepdim=self.kind.endswith('keepdim'))
        z = a + b
        if self.kind == 'add_softmax': return torch.softmax(z, dim=-1)
        if self.kind.startswith('add_layernorm'):
            return F.layer_norm(z, (self.n,), self.weight, self.bias, 1e-3)
        if 'gelu' in self.kind: return F.gelu(z, approximate='tanh' if self.kind.endswith('tanh') else 'none')
        return F.silu(z)

def rand(shape, dtype):
    return torch.randn(shape, generator=torch.Generator().manual_seed(61)).to(dtype)

def measure(fn, args, iters=60):
    for _ in range(10):
        fn(*args)
    torch.cuda.synchronize()
    best = None
    for _ in range(3):
        s, e = torch.cuda.Event(True), torch.cuda.Event(True)
        s.record()
        for _ in range(iters):
            out = fn(*args)
        e.record(); torch.cuda.synchronize()
        us = s.elapsed_time(e) * 1000 / iters
        best = us if best is None else min(best, us)
    return round(best, 1), out

kinds = sys.argv[1].split(',')
sizes = [tuple(int(v) for v in p.split('x')) for p in sys.argv[2].split(',')]
dtypes = sys.argv[3].split(',')
for kind in kinds:
    for dt in dtypes:
        dtype = getattr(torch, dt)
        for m, n in sizes:
            entry = {'kind': kind, 'dtype': dt, 'shape': f'{m}x{n}'}
            try:
                if kind in MAT:
                    inputs = tuple(t.cuda() for t in (rand((m,64),dtype), rand((64,n),dtype), rand((n,),dtype)))
                    module = Mat(kind, n)
                else:
                    inputs = tuple(t.cuda() for t in (rand((m,n),dtype), rand((n,),dtype)))
                    module = Bin(kind, n)
                module = module.to(device='cuda', dtype=dtype)
                graph = torch.fx.symbolic_trace(module)
                expected = graph(*inputs); torch.cuda.synchronize()
                us, _ = measure(graph, inputs)
                entry['eager'] = {'us': us}
                print('BASELINE ' + json.dumps(entry), flush=True)
                plans = {p.name: p for p in auto.candidate_plans(graph, inputs, single_kernel=True, split_reductions=True)}
                for p in auto.candidate_plans(graph, inputs, single_kernel=False, split_reductions=True):
                    plans.setdefault(p.name, p)
                best = None
                _routes = os.environ.get('F06_ROUTES',
                    'native_mm,cluster,cluster_sdnn_at_1,sdnn_cluster_at_1,inductor')
                for name in _routes.split(','):
                    if name not in plans: continue
                    try:
                        print('COMPILE', name, flush=True)
                        fn, _proof = auto.compile_candidate(graph, inputs, plans[name])
                        print('MEASURE', name, flush=True)
                        us, out = measure(fn, inputs)
                        got = out[0] if isinstance(out,(tuple,list)) else out
                        atol, rtol = (3e-3,3e-3) if dtype is torch.float16 else (3e-4,3e-4)
                        ok = float((((got.float()-expected.float()).abs() - (atol + rtol*expected.float().abs())).max())) <= 0
                        entry[name] = {'us': us, 'valid': bool(ok)}
                        if ok and (best is None or us < best[1]):
                            best = (name, us)
                    except Exception as exc:
                        entry[name] = {'error': f'{type(exc).__name__}: {str(exc)[:50]}'}
                # Product policy: when the fused route is slower than eager, the
                # graph falls back to eager. Include it in the best selection.
                if best is None or entry['eager']['us'] < best[1]:
                    best = ('eager', entry['eager']['us'])
                if best:
                    entry['best'] = {'route': best[0], 'us': best[1],
                                     'vs_eager': round(entry['eager']['us'] / best[1], 3)}
            except Exception as exc:
                entry['error'] = f'{type(exc).__name__}: {str(exc)[:60]}'
            print('CASE ' + json.dumps(entry), flush=True)
