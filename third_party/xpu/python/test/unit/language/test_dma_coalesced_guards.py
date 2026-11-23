"""Coalescing proofs must preserve tails, holes, gathers and index wrap."""
import pytest
import torch
import triton
import triton.language as tl


@triton.jit
def guarded_copy(src, dst, n, B: tl.constexpr, MODE: tl.constexpr):
    i = tl.program_id(0) * B + tl.arange(0, B)
    valid = i < n
    index = i
    if MODE == 1:
        valid = valid & (i % 7 != 3)
    elif MODE == 2:
        index = i % 17
    elif MODE == 3:
        index = 2 * B - 1 - i
    elif MODE == 4:
        # Exercise a narrow integer's wrap without any invalid allocation.
        index = (i + 120).to(tl.int8).to(tl.int32) + 128
    elif MODE == 5:
        valid = tl.cast(i, tl.uint32) < tl.cast(n, tl.uint32)
    elif MODE == 6:
        valid = i >= n
    value = tl.load(src + index, valid, other=0)
    tl.store(dst + i, value, valid)


@pytest.mark.parametrize('dtype', [torch.float16, torch.float32, torch.bfloat16])
@pytest.mark.parametrize('mode', list(range(7)))
def test_coalesced_dma_guard(dtype, mode):
    block = 256
    cpu = (torch.arange(2 * block + 128) % 59 - 20).to(dtype)
    data = cpu.cuda()
    index = torch.arange(2 * block)
    gather = (index % 17 if mode == 2 else 2 * block - 1 - index if mode == 3
              else (index + 120).to(torch.int8).int() + 128 if mode == 4 else index)
    for n in (0, 1, 255, 256, 257, 511, 512):
        output = torch.full((2 * block + 128,), -73, dtype=dtype, device='cuda')
        guarded_copy[(2,)](data, output[64:], n, block, mode, num_warps=8,
                           num_stages=1, is_sdnn=False)
        valid = index < n
        if mode == 1:
            valid &= index % 7 != 3
        elif mode == 6:
            valid = index >= n
        expected = torch.full_like(cpu, -73)
        expected[64:64 + 2 * block][valid] = cpu[gather[valid]]
        assert torch.equal(output.cpu(), expected)
