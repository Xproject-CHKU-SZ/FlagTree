"""Check the existing opt-in split routes against eager and their production gate."""
import json
import os

import torch
from triton.experimental.graph_fusion import _p800_native_mm as native
from triton.experimental.graph_fusion import _resource_benchmark as bench
from cases import Mat

torch.set_grad_enabled(False)
torch.manual_seed(61)
for dtype in (torch.float16, torch.float32):
    inputs = [torch.randn(shape).to(dtype=dtype, device='cuda') for shape in ((64, 48), (48, 1024), (1024,))]
    model = torch.fx.symbolic_trace(Mat('matmul_bias_silu', 1024))
    # Keep the split graph as a candidate for diagnostics, including the SDNN LUT.
    for route in ('cluster', 'sdnn'):
        os.environ['FLAGTREE_NATIVE_SILU_FUSED'] = '0'
        os.environ['FLAGTREE_NATIVE_SILU'] = '1' if route == 'sdnn' else '0'
        spec = native.match(model, inputs)
        assert spec['silu_path'] == route
        compiled, proof = native.compile(spec, inputs)
        fn = lambda *xs: compiled(*xs)[0]
        marked = list(inputs)
        marked[-1] = inputs[-1].clone()
        marked[-1][:4] = torch.tensor([float('inf'), float('-inf'), float('nan'), 0.], dtype=dtype)
        expected, actual = model(*marked), fn(*marked)
        atol = .003 if dtype == torch.float16 else .0003
        passed = torch.allclose(actual, expected, atol=atol, rtol=atol, equal_nan=True)
        try:
            bench.validate(fn, model, inputs, {'atol': atol, 'rtol': atol})
            gate = True
        except AssertionError:
            gate = False
        assert passed or not gate
        print('SPLIT ' + json.dumps(dict(dtype=str(dtype), route=route, exceptional_match=passed,
                                         admitted_by_numeric_gate=gate, evidence=proof['kernel_count'])), flush=True)
