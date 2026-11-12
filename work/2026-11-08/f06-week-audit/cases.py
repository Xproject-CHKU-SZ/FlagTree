import torch
import torch.nn.functional as F
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

