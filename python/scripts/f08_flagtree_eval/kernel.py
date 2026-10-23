"""Minimal real FlagTree PPU GELU lowering, not a claimed new MLIR Pass.

An opt-in graph lowering selects buffers; this SAME compiled kernel runs in both
FlagTree arms. Each lane loads one input before storing at the same index, so
same-address execution has no cross-lane read/write overlap. Dense fp32 only.
"""
import inspect

import triton
import triton.language as tl

from contracts import file_hash


@triton.jit
def _gelu(X, Y, N: tl.constexpr, BLOCK: tl.constexpr, APPROXIMATE: tl.constexpr):
    index = tl.program_id(0) * BLOCK + tl.arange(0, BLOCK)
    x = tl.load(X + index, index < N, other=0).to(tl.float32)
    y = 0.5 * x * (1.0 + tl.math.erf(x * 0.7071067811865476))
    tl.store(Y + index, y, index < N)


def compile_call(x, approximate, directory):
    import torch
    from triton.backends import get_backend
    from triton.runtime import driver

    if x.device.type != "cuda" or x.dtype != torch.float32 or not x.is_contiguous():
        raise ValueError("compiled GELU bridge supports dense PPU fp32 only")
    if approximate != "none" or not x.numel():
        raise ValueError("unsupported GELU attributes/empty tensor")
    target = driver.active.get_current_target()
    backend = get_backend(target).compiler(target)
    if backend.binary_ext != "hgbin" or ".ppu." not in type(backend).__module__:
        raise ValueError("active compiler is not FlagTree PPU/hgbin")
    numel, block = x.numel(), 256
    dest = torch.empty_like(x)
    grid = (triton.cdiv(numel, block), 1, 1)
    compiled = _gelu.warmup(x, dest, numel, BLOCK=block, APPROXIMATE=approximate,
                           grid=grid, num_warps=4, enable_fp_fusion=False)
    stages = {}
    directory.mkdir(parents=True, exist_ok=False)
    for name in ("ttir", "ttgir", "llir", "hgbin"):
        content = compiled.asm.get(name)
        if not content:
            raise ValueError(f"missing compiled stage {name}; no performance permission")
        path = directory / ("gelu." + name)
        path.write_bytes(content if isinstance(content, bytes) else content.encode())
        stages[name] = {"file": str(path), "sha256": file_hash(path), "bytes": path.stat().st_size}
    # A real launch, then synchronize: warmup/IR existence alone is not execution.
    # CompiledKernel's Python launcher expects the complete source signature,
    # including constexpr values. They are omitted only from device parameters.
    compiled[grid](x, dest, numel, block, approximate)
    torch.cuda.synchronize()
    if getattr(compiled, "function", None) is None:
        raise ValueError("compiled kernel has no loaded runtime function")
    source = inspect.getfile(type(backend))
    evidence = {"compiler_class": type(backend).__module__ + "." + type(backend).__name__,
                "compiler_source_sha256": file_hash(source), "kernel_hash": compiled.hash,
                "kernel_name": compiled.name, "stages": stages, "binary_ext": backend.binary_ext,
                "actual_launch_synchronized": True, "numel": numel, "approximate": approximate}
    expected_shape = tuple(x.shape)
    # Binding only compiled code/grid. No tensor is retained by this callable.
    def call(source_tensor, destination_tensor):
        # Runtime shape/layout guards are part of the real execution cost.
        # A compiled N must never be launched against a shorter/different view.
        for tensor in (source_tensor, destination_tensor):
            if (tuple(tensor.shape) != expected_shape or tensor.dtype != torch.float32
                    or tensor.device.type != "cuda" or not tensor.is_contiguous()
                    or tensor.storage_offset() != 0):
                raise ValueError("runtime tensor does not match the compiled dense binding")
        compiled[grid](source_tensor, destination_tensor, numel, block, approximate)
        return destination_tensor
    return call, evidence
