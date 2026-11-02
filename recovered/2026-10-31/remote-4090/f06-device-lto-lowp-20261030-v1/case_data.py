import hashlib
def digest(tensor):
    import torch
    return hashlib.sha256(tensor.detach().cpu().contiguous().view(torch.uint8).numpy().tobytes()).hexdigest()

def specs():
    rows = []
    for kind in ('matmul_bias_gelu_tanh', 'add_gelu_tanh'):
        shapes = [(16, 128), (32, 256), (64, 1024)]
        if kind == 'add_gelu_tanh':
            shapes.append((1024, 1024))
        for dtype in ('float32', 'float16', 'bfloat16'):
            for m, n in shapes:
                rows.append(dict(ordinal=len(rows), kind=kind, dtype=dtype, M=m, N=n, K=64 if kind.startswith('matmul') else None, tolerance=dict(atol={'float32': 0.0003, 'float16': 0.003, 'bfloat16': 0.03}[dtype], rtol=0.0003 if dtype == 'float32' else 0.003)))
    return rows

def make_case(spec):
    import torch
    import torch.nn.functional as F
    m, n, dtype = (spec['M'], spec['N'], getattr(torch, spec['dtype']))
    generator = torch.Generator().manual_seed(20261029 + spec['ordinal'])

    def noise(shape):
        return ((torch.rand(shape, generator=generator) * 2 - 1) * 0.04).to(dtype)
    if spec['kind'] == 'matmul_bias_gelu_tanh':

        class Module(torch.nn.Module):

            def forward(self, a, w, b):
                return F.gelu(a @ w + b, approximate='tanh')
        base = (noise((m, 64)), noise((64, n)))
    else:

        class Module(torch.nn.Module):

            def forward(self, x, b):
                return F.gelu(x + b, approximate='tanh')
        base = (noise((m, n)),)
    signs = torch.where(torch.arange(n) % 2 == 0, 1.0, -1.0)
    small = (signs * torch.linspace(0.15, 0.35, n)).to(dtype)
    large = (signs * torch.linspace(1.5, 2.5, n)).to(dtype)
    saturated = (signs * torch.linspace(6.0, 7.0, n)).to(dtype)
    mixed = torch.cat((small[:n // 2], large[n // 2:]))
    permutation = torch.stack((torch.arange(n // 2), torch.arange(n // 2, n)), dim=1).flatten()
    lane_permutation = torch.stack((torch.arange(n // 2).reshape(-1, 8), torch.arange(n // 2, n).reshape(-1, 8)), dim=1).flatten()
    inputs = {name: base + (bias,) for name, bias in [('all_small', small), ('all_large', large), ('all_saturated', saturated), ('mixed_grouped', mixed)]}
    if len(base) == 2:
        inputs['mixed_interleaved'] = (base[0], base[1][:, permutation].contiguous(), mixed[permutation].contiguous())
    else:
        inputs['mixed_interleaved'] = (base[0][:, permutation].contiguous(), mixed[permutation].contiguous())
    if len(base) == 2:
        inputs['mixed_lane_groups8'] = (base[0], base[1][:, lane_permutation].contiguous(), mixed[lane_permutation].contiguous())
    else:
        inputs['mixed_lane_groups8'] = (base[0][:, lane_permutation].contiguous(), mixed[lane_permutation].contiguous())
    return (torch.fx.symbolic_trace(Module()), inputs)
