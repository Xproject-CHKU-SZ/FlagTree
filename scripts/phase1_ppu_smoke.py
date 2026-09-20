"""Minimal real-device PPU smoke test for the FlagTree Triton path."""

import importlib.metadata

import torch
import triton
import triton.language as tl


@triton.jit
def add_kernel(x_ptr, y_ptr, out_ptr, n_elements, BLOCK_SIZE: tl.constexpr):
    pid = tl.program_id(0)
    offsets = pid * BLOCK_SIZE + tl.arange(0, BLOCK_SIZE)
    mask = offsets < n_elements
    x = tl.load(x_ptr + offsets, mask=mask, other=0.0)
    y = tl.load(y_ptr + offsets, mask=mask, other=0.0)
    tl.store(out_ptr + offsets, x + y, mask=mask)


def main() -> None:
    assert torch.cuda.is_available(), "PPU CUDA-compatible device is unavailable"
    n_elements = 4097
    x = torch.arange(n_elements, device="cuda", dtype=torch.float32)
    y = torch.full((n_elements,), 3.0, device="cuda", dtype=torch.float32)
    output = torch.empty_like(x)

    add_kernel[(triton.cdiv(n_elements, 128),)](x, y, output, n_elements, BLOCK_SIZE=128)
    torch.cuda.synchronize()

    expected = x + y
    torch.testing.assert_close(output, expected, rtol=0.0, atol=0.0)
    print("torch=", torch.__version__)
    print("triton=", triton.__version__)
    print("flagtree=", importlib.metadata.version("flagtree"))
    print("device=", torch.cuda.get_device_name(0))
    print("elements=", n_elements)
    print("result=passed")


if __name__ == "__main__":
    main()
