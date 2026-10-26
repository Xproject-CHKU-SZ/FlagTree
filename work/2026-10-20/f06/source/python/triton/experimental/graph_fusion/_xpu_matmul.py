"""F06 XPU FP32 SDNN matrix route (K=64, 256 or 1024): fused broadcast bias
or a pure dot kernel followed by a flat vector epilogue."""

from types import SimpleNamespace

import torch
import triton
import triton.language as tl
from triton import knobs
from triton.runtime import driver

from ._backend import bias_strides

@triton.jit
def _relu_bits(value):
    bits = value.to(tl.uint32, bitcast=True)
    magnitude = bits & 0x7FFFFFFF
    negative = ((bits & 0x80000000) != 0) & (magnitude != 0) & (magnitude <= 0x7F800000)
    return tl.where(negative, 0, bits).to(tl.float32, bitcast=True)

@triton.jit
def _dot_sdnn(X, W, P, M, N: tl.constexpr, K: tl.constexpr,
              BM: tl.constexpr, BN: tl.constexpr, BK: tl.constexpr):
    pid = tl.program_id(0)
    cols_tiles = tl.cdiv(N, BN)
    rows = (pid // cols_tiles) * BM + tl.arange(0, BM)
    cols = (pid % cols_tiles) * BN + tl.arange(0, BN)
    ks = tl.arange(0, BK)
    row_ok, col_ok = rows < M, cols < N
    a = tl.load(X + rows[:, None] * K + ks[None, :],
                row_ok[:, None] & (ks[None, :] < K), 0.0)
    b = tl.load(W + ks[:, None] * N + cols[None, :],
                (ks[:, None] < K) & col_ok[None, :], 0.0)
    product = tl.dot(a, b, input_precision="ieee")
    tl.store(P + rows[:, None] * N + cols[None, :], product,
             row_ok[:, None] & col_ok[None, :])

@triton.jit
def _dot_bias_sdnn(X, W, B, Y, M, N: tl.constexpr, K: tl.constexpr,
                   B_N, BM: tl.constexpr, BN: tl.constexpr, BK: tl.constexpr):
    pid = tl.program_id(0)
    cols_tiles = tl.cdiv(N, BN)
    rows = (pid // cols_tiles) * BM + tl.arange(0, BM)
    cols = (pid % cols_tiles) * BN + tl.arange(0, BN)
    ks = tl.arange(0, BK)
    row_ok, col_ok = rows < M, cols < N
    a = tl.load(X + rows[:, None] * K + ks[None, :],
                row_ok[:, None] & (ks[None, :] < K), 0.0)
    b = tl.load(W + ks[:, None] * N + cols[None, :],
                (ks[:, None] < K) & col_ok[None, :], 0.0)
    product = tl.dot(a, b, input_precision="ieee")
    bias = tl.load(B + cols * B_N, mask=col_ok, other=0.0)
    value = product + bias[None, :]
    tl.store(Y + rows[:, None] * N + cols[None, :], value,
             row_ok[:, None] & col_ok[None, :])

@triton.jit
def _epilogue_sdnn(P, B, Y, M, N: tl.constexpr, B_M, B_N,
                   RELU: tl.constexpr, BLOCK: tl.constexpr):
    offsets = tl.program_id(0).to(tl.int64) * BLOCK + tl.arange(0, BLOCK)
    mask = offsets < M * N
    value = tl.load(P + offsets, mask=mask, other=0.0)
    rows = offsets // N
    cols = offsets % N
    value = value + tl.load(B + rows * B_M + cols * B_N,
                            mask=mask, other=0.0).to(tl.float32)
    if RELU:
        value = _relu_bits(value)
    tl.store(Y + offsets, value, mask=mask)

def _bind(kernel, args, grid, options):
    """Compile and capture one immutable launch wrapper."""
    with torch.cuda.device(args[0].device):
        compiled = kernel.warmup(*args, grid=grid, **options)
        if hasattr(compiled, "result"):
            compiled = compiled.result()
        runner = compiled[grid + (1,) * (3 - len(grid))]
    flat_factory = getattr(compiled.run, "get_flat_runner", None)
    run = (flat_factory() if flat_factory is not None else None) or compiled.run
    return SimpleNamespace(
        compiled=compiled, runner=runner, run=run,
        function=compiled.function, metadata=compiled.packed_metadata,
        grid=grid + (1,) * (3 - len(grid)),
        name=getattr(compiled, "name", None) or kernel.__name__)

def _options(options, cores):
    values = dict(options or {})
    values.update(buffer_size_limit=512, is_use_mask_zero=False,
                  enable_fp_fusion=False, core_num=cores)
    return values

def _run(bound, stream, call_args):
    enter, exit_ = knobs.runtime.launch_enter_hook, knobs.runtime.launch_exit_hook
    # HookChain is truthy even when empty. Avoid constructing launch metadata
    # and invoking empty callbacks, while observing add/remove on every call.
    if type(enter) is knobs.HookChain and not enter.calls:
        enter = None
    if type(exit_) is knobs.HookChain and not exit_.calls:
        exit_ = None
    extra = bound.compiled.launch_metadata(bound.grid, stream, *call_args) if enter else None
    bound.run(*bound.grid, stream, bound.function, bound.metadata,
              extra, enter, exit_, *call_args)

def _launch_all(calls, device, get_stream):
    # Resolve the stream once per logical call; hooks are read per kernel.
    if torch.cuda.current_device() == device.index:
        stream = get_stream(device.index)
        for bound, args in calls:
            _run(bound, stream, args)
    else:
        with torch.cuda.device(device):
            stream = get_stream(device.index)
            for bound, args in calls:
                _run(bound, stream, args)

def _tiles(m, n):
    return (min(32, max(16, triton.next_power_of_2(m))),
            128 if n <= 128 else 256)

def prepare(kind, inputs, *, options=None):
    """Compile the supported SDNN K route and return a prepared ``execute``."""
    x, weight, bias = inputs[:3]
    m, k = x.shape
    if k not in (64, 256, 1024) or weight.shape[0] != k:
        raise ValueError("F06 XPU route requires K in (64, 256, 1024)")
    bk = triton.next_power_of_2(k)
    n = weight.shape[1]
    bm, bn = _tiles(m, n)
    b_m, b_n = (int(v) for v in bias_strides(bias, m, n))
    fused = kind == "matmul_bias" and b_m == 0
    relu = kind == "matmul_bias_relu"

    output_numel = m * n
    epi_block = 2048 if output_numel >= 65536 else 256
    epi_cores = 64 if output_numel >= 65536 else 32
    dot_grid = (triton.cdiv(m, bm) * triton.cdiv(n, bn),)
    epilogue_grid = (triton.cdiv(output_numel, epi_block),)
    out = torch.empty((m, n), dtype=x.dtype, device=x.device)
    intermediate = None if fused else torch.empty_like(out)

    if fused:
        kernels = [_bind(_dot_bias_sdnn,
                         (x, weight, bias, out, m, n, k, b_n, bm, bn, bk),
                         dot_grid, _options(options, 64))]
    else:
        kernels = [
            _bind(_dot_sdnn, (x, weight, intermediate, m, n, k, bm, bn, bk),
                  dot_grid, _options(options, 64)),
            _bind(_epilogue_sdnn,
                  (intermediate, bias, out, m, n, b_m, b_n, relu, epi_block),
                  epilogue_grid, _options(options, epi_cores)),
        ]

    names = tuple(kernel.name for kernel in kernels)
    info = SimpleNamespace(name="+".join(names))
    shape, dtype, device = (m, n), x.dtype, x.device
    initial_inputs = tuple(inputs)
    get_stream = driver.active.get_current_stream

    def launch(current_inputs):
        current = tuple(current_inputs)
        y = torch.empty(shape, dtype=dtype, device=device)
        if fused:
            calls = [(kernels[0],
                      (current[0], current[1], current[2], y,
                       m, n, k, b_n, bm, bn, bk))]
        else:
            product = torch.empty(shape, dtype=dtype, device=device)
            calls = [
                (kernels[0],
                 (current[0], current[1], product, m, n, k, bm, bn, bk)),
                (kernels[1],
                 (product, current[2], y, m, n, b_m, b_n, relu, epi_block)),
            ]
        _launch_all(calls, device, get_stream)
        return y, info

    def execute():
        return launch(initial_inputs)

    execute.launch = launch
    execute.kernel_launches = len(kernels)
    execute.kernel_names = names
    execute.fusion_scope = ("matmul_bias" if fused else
                            "bias_relu_epilogue" if relu else
                            "partitioned_matmul_bias")
    return execute
