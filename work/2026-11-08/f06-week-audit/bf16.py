"""P800 bf16 pointwise 漏写复现：统计正确率与写入的周期结构。"""
import copy, itertools, os, sys, time
BASE = '/tmp/f06-bf16'
stamp = str(int(time.time()))
# 必须在 import torch 之前覆盖缓存目录，否则命中旧缓存、可能复现不出来
os.environ['TORCHINDUCTOR_CACHE_DIR'] = f'{BASE}/cache/repro{stamp}/ind'
os.environ['TRITON_CACHE_DIR'] = f'{BASE}/cache/repro{stamp}/triton'
sys.path.insert(0, BASE)
import torch, triton, triton.experimental
triton.experimental.__path__.insert(0, '/opt/f06/code/python/triton/experimental')
from unittest.mock import patch
from triton.experimental.graph_fusion import _resource_autotune as auto, _resource_codegen as gen
from triton.experimental.graph_fusion._resource_codegen import ResourceHeuristics as H
from triton.experimental.graph_fusion._resource_runtime import inference_entry
from triton.experimental.graph_fusion._p800_compiler import target_scope
from torch._inductor import config

m, n = 2048, 2048
xb = int(sys.argv[1])                       # 1024 / 2048 / 3072 / 4096
dt = sys.argv[2] if len(sys.argv) > 2 else 'bfloat16'
dtype = getattr(torch, dt)

g1 = torch.Generator().manual_seed(61)
a = torch.randn((m, n), generator=g1).to(dtype).cuda()
b = torch.randn((n,), generator=g1).to(dtype).cuda()
gm = torch.fx.symbolic_trace(lambda x, y: (x * y,))

# 只钉这一个 region 的 XBLOCK，其余全部走原生 Inductor
base = H.__getattr__
def lookup(obj, name):
    f = base(obj, name)
    if obj.resource != 'cluster':
        return f
    def factory(*args, **kwargs):
        deco = f(*args, **kwargs)
        def decorate(fn):
            tuner = deco(fn)
            cfg = copy.deepcopy(tuner.configs[0])
            if 'XBLOCK' in cfg.kwargs:
                cfg.kwargs['XBLOCK'] = xb
            cfg.num_warps = 8
            cfg.num_stages = 1
            tuner.configs = [cfg]
            tuner.inductor_meta = dict(tuner.inductor_meta,
                                       coordinate_descent_tuning=False,
                                       autotune_local_cache=False)
            return tuner
        return decorate
    return factory

with target_scope(), config.patch(auto.compiler_options()), patch.object(H, '__getattr__', lookup):
    binary, evidence = gen.compile_region(gm, (a, b), 'cluster')
    entry, _ = inference_entry(binary)
    out = entry([a, b])[0]
    torch.cuda.synchronize()

ok = (out == (a * b)).reshape(-1)
total = ok.numel()
print(f'dtype={dt} xblock={xb} correct={int(ok.sum())}/{total} ({ok.sum() / total:.1%}) '
      f'nonfinite={int((~torch.isfinite(out)).sum())}')
print('first64:', ''.join('1' if v else '0' for v in ok[:64].tolist()))
print('runs:', [len(list(g)) for _, g in itertools.groupby(ok[:256].tolist())][:8])
