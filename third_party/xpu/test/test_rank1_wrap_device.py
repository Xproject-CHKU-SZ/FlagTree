"""P800 SDNN wrapped-load correctness, including bit-preserving copies/guards."""
import pytest
import torch
import triton
import triton.language as tl


@triton.jit
def wrapped_copy_kernel(src, dst, PERIOD: tl.constexpr, LENGTH: tl.constexpr,
                        BLOCK: tl.constexpr):
    lane = tl.program_id(0) * BLOCK + tl.arange(0, BLOCK)
    active = lane < LENGTH
    value = tl.load(src + lane % PERIOD, active)
    tl.store(dst + lane, value, active)


@pytest.mark.parametrize('period', [7, 17, 32])
@pytest.mark.parametrize('kind', ['ordinary', 'signed_zero', 'nonfinite', 'tiny'])
def test_rank1_wrap_bitwise(period, kind):
    assert torch.cuda.is_available(), 'Requires a real healthy P800'
    host = -1000 - torch.arange(64, dtype=torch.float32)
    if kind == 'ordinary':
        values = 100 + torch.arange(period, dtype=torch.float32)
    else:
        bits = {'signed_zero': [0, -2147483648],
                'nonfinite': [2139095040, -8388608, 2143289344],
                'tiny': [1, -2147483647, 8388607, -2139095041]}[kind]
        values = torch.tensor((bits * period)[:period], dtype=torch.int32).view(torch.float32)
    host[:period] = values
    src = host.to('cuda')
    dst = torch.full((64,), -777., device='cuda')
    compiled = wrapped_copy_kernel[(2,)](src[:period], dst[:19], PERIOD=period,
                                        LENGTH=19, BLOCK=16, is_sdnn=True)
    torch.cuda.synchronize()
    actual = dst.cpu()
    assert compiled.metadata.is_sdnn
    assert torch.equal(actual[:19].view(torch.int32), host[torch.arange(19) % period].view(torch.int32))
    assert torch.equal(src.cpu().view(torch.int32), host.view(torch.int32))
    assert torch.all(actual[19:] == -777.)
