"""Three kernel templates with an optional XPU LLVM19 optimizer path."""

import importlib
import os

import torch
import triton
import triton.language as tl

from ._backend import bias_strides


@triton.jit
def _round_intermediate(value, DTYPE: tl.constexpr, XPU: tl.constexpr):
    if XPU and DTYPE == tl.bfloat16:
        # XPU promotes bf16 arithmetic to f32. Explicit RNE bits preserve the
        # materialized add boundary even when ordinary cast pairs are removed.
        bits = value.to(tl.uint32, bitcast=True)
        rounded = (bits + 0x7FFF + ((bits >> 16) & 1)) & 0xFFFF0000
        special = (bits & 0x7F800000) == 0x7F800000
        return tl.where(special, bits, rounded).to(tl.float32, bitcast=True)
    else:
        return value.to(DTYPE).to(tl.float32)


@triton.jit
def _matmul(X, W, B, Y, M, N, K, B_M, B_N,
            RELU: tl.constexpr, BM: tl.constexpr, BN: tl.constexpr, BK: tl.constexpr):
    rows = tl.program_id(0).to(tl.int64) * BM + tl.arange(0, BM)
    cols = tl.program_id(1).to(tl.int64) * BN + tl.arange(0, BN)
    inner = tl.arange(0, BK)
    acc = tl.zeros((BM, BN), tl.float32)
    for block in range(tl.cdiv(K, BK)):
        ks = block * BK + inner
        a = tl.load(X + rows[:, None] * K + ks[None, :], (rows[:, None] < M) & (ks[None, :] < K), 0)
        b = tl.load(W + ks[:, None] * N + cols[None, :], (ks[:, None] < K) & (cols[None, :] < N), 0)
        acc = tl.dot(a, b, acc, input_precision="ieee")
    mask = (rows[:, None] < M) & (cols[None, :] < N)
    bias = tl.load(B + rows[:, None] * B_M + cols[None, :] * B_N, mask, 0).to(tl.float32)
    # Match eager mm -> add materialization, not a single-final-cast API.
    product = _round_intermediate(acc, Y.dtype.element_ty, False)
    value = _round_intermediate(product + bias, Y.dtype.element_ty, False)
    if RELU:
        value = tl.where(value < 0, 0., value)
    tl.store(Y + rows[:, None] * N + cols[None, :], value, mask)


@triton.jit
def _matmul_xpu_reduce(X, W, B, Y, N, K, B_M, B_N, RELU: tl.constexpr, BLOCK: tl.constexpr):
    # Preserve the original reduction route for larger K: the column loop
    # regresses on long reductions in this LLVM compatibility configuration.
    index = tl.program_id(0).to(tl.int64)
    row, col = index // N, index % N
    ks = tl.arange(0, BLOCK)
    x = tl.load(X + row * K + ks, ks < K, 0).to(tl.float32)
    w = tl.load(W + ks * N + col, ks < K, 0).to(tl.float32)
    value = tl.sum(x * w, 0) + tl.load(B + row * B_M + col * B_N)
    if RELU:
        # XPU floating compare/select may become a ReLU that clears NaN.
        # Select representations to preserve NaN and signed zero semantics.
        bits = value.to(tl.uint32, bitcast=True)
        magnitude = bits & 0x7FFFFFFF
        negative = ((bits & 0x80000000) != 0) & (magnitude != 0) & (magnitude <= 0x7F800000)
        value = tl.where(negative, 0, bits).to(tl.float32, bitcast=True)
    tl.store(Y + row * N + col, value)


@triton.jit
def _matmul_xpu_tiled(X, W, B, Y, M: tl.constexpr, N: tl.constexpr, K: tl.constexpr,
                      B_M: tl.constexpr, B_N: tl.constexpr, RELU: tl.constexpr,
                      BN: tl.constexpr):
    # One vector of adjacent output columns shares each X value. The bounded
    # K loop avoids the backend's unsupported 2D reduction layout; disabling
    # its unroll-control pass is required for this loop on the tested XPU3 stack.
    pid = tl.program_id(0).to(tl.int64)
    row, tile = pid // tl.cdiv(N, BN), pid % tl.cdiv(N, BN)
    cols = tile * BN + tl.arange(0, BN)
    acc = tl.full((BN,), 0, tl.float32)
    for block in range(tl.cdiv(K, 8)):
        for offset in tl.static_range(8):
            k = block * 8 + offset
            a = tl.load(X + row * K + k, k < K, 0)
            w = tl.load(W + k * N + cols, (k < K) & (cols < N), 0)
            acc = acc + a * w
    value = acc + tl.load(B + row * B_M + cols * B_N, cols < N, 0)
    if RELU:
        bits = value.to(tl.uint32, bitcast=True)
        magnitude = bits & 0x7FFFFFFF
        negative = ((bits & 0x80000000) != 0) & (magnitude != 0) & (magnitude <= 0x7F800000)
        value = tl.where(negative, 0, bits).to(tl.float32, bitcast=True)
    tl.store(Y + row * N + cols, value, cols < N)


@triton.jit
def _softmax(X, R, Y, N: tl.constexpr, R_ROW, XPU: tl.constexpr, BLOCK: tl.constexpr):
    row = tl.program_id(0).to(tl.int64)
    cols = tl.arange(0, BLOCK)
    x = tl.load(X + row * N + cols, cols < N, 0).to(tl.float32)
    r = tl.load(R + row * R_ROW + cols, cols < N, 0).to(tl.float32)
    added = _round_intermediate(x + r, X.dtype.element_ty, XPU)
    value = tl.where(cols < N, added, -float("inf"))
    numer = tl.exp(value - tl.max(value, 0))
    result = numer / tl.sum(numer, 0)
    if XPU and Y.dtype.element_ty == tl.bfloat16:
        # Keep bf16 output storage intact on XPU3 as well as the add boundary.
        rounded = _round_intermediate(result, tl.bfloat16, True)
        bits = (rounded.to(tl.uint32, bitcast=True) >> 16).to(tl.uint16)
        tl.store(Y.to(tl.pointer_type(tl.uint16)) + row * N + cols, bits, cols < N)
    else:
        tl.store(Y + row * N + cols, result, cols < N)


@triton.jit
def _softmax_xpu_grouped(X, R, Y, M, N: tl.constexpr, R_ROW,
                         BM: tl.constexpr, BLOCK_N: tl.constexpr,
                         XPU: tl.constexpr):
    # One program handles BM adjacent rows; both rows and cols are masked.
    pid = tl.program_id(0).to(tl.int64)
    rows = pid * BM + tl.arange(0, BM)
    cols = tl.arange(0, BLOCK_N)
    mask = (rows[:, None] < M) & (cols[None, :] < N)
    offsets = rows[:, None] * N + cols[None, :]
    x = tl.load(X + offsets, mask=mask, other=0.0).to(tl.float32)
    r = tl.load(R + rows[:, None] * R_ROW + cols[None, :],
                mask=mask, other=0.0).to(tl.float32)
    added = _round_intermediate(x + r, X.dtype.element_ty, XPU)
    value = tl.where(mask, added, -float("inf"))
    maximum = tl.max(value, axis=1)
    numer = tl.exp(value - maximum[:, None])
    result = numer / tl.sum(numer, axis=1)[:, None]
    if XPU and Y.dtype.element_ty == tl.bfloat16:
        rounded = _round_intermediate(result, tl.bfloat16, True)
        bits = (rounded.to(tl.uint32, bitcast=True) >> 16).to(tl.uint16)
        tl.store(Y.to(tl.pointer_type(tl.uint16)) + offsets, bits, mask=mask)
    else:
        tl.store(Y + offsets, result, mask=mask)


@triton.jit
def _softmax_xpu_bf16_packed(X, R, Y, M, N: tl.constexpr, R_ROW,
                             BM: tl.constexpr, BLOCK_N: tl.constexpr,
                             XPU: tl.constexpr):
    # The tested XPU3 rank-2 BF16 conversion loses values. Read/write pairs as
    # uint32 instead, preserving both BF16 bit patterns without 16-bit vectors.
    rows = tl.program_id(0).to(tl.int64) * BM + tl.arange(0, BM)
    pairs = tl.arange(0, BLOCK_N // 2)
    mask = (rows[:, None] < M) & (pairs[None, :] < N // 2)
    offsets = rows[:, None] * (N // 2) + pairs[None, :]
    xb = tl.load(X.to(tl.pointer_type(tl.uint32)) + offsets, mask, 0)
    rb = tl.load(R.to(tl.pointer_type(tl.uint32)) + rows[:, None] * (R_ROW // 2)
                 + pairs[None, :], mask, 0)
    xe = (xb << 16).to(tl.float32, bitcast=True)
    xo = (xb & 0xFFFF0000).to(tl.float32, bitcast=True)
    re = (rb << 16).to(tl.float32, bitcast=True)
    ro = (rb & 0xFFFF0000).to(tl.float32, bitcast=True)
    even = _round_intermediate(xe + re, tl.bfloat16, True)
    odd = _round_intermediate(xo + ro, tl.bfloat16, True)
    even = tl.where(mask, even, -float("inf"))
    odd = tl.where(mask, odd, -float("inf"))
    maximum = tl.maximum(tl.max(even, 1), tl.max(odd, 1))
    ne = tl.exp(even - maximum[:, None])
    no = tl.exp(odd - maximum[:, None])
    denominator = tl.sum(ne, 1) + tl.sum(no, 1)
    ye = _round_intermediate(ne / denominator[:, None], tl.bfloat16, True)
    yo = _round_intermediate(no / denominator[:, None], tl.bfloat16, True)
    packed = (ye.to(tl.uint32, bitcast=True) >> 16) | (yo.to(tl.uint32, bitcast=True) & 0xFFFF0000)
    tl.store(Y.to(tl.pointer_type(tl.uint32)) + offsets, packed, mask)


def _xpu_options_class():
    for module_name in ("triton.backends.xpu.compiler", "triton.backends.xpu"):
        try:
            module = importlib.import_module(module_name)
        except ImportError:
            continue
        options = getattr(module, "XPUOptions", None)
        if options is not None:
            return options
    raise ImportError("active XPU backend does not expose XPUOptions")


def _set_llvm19_options(options, path):
    try:
        xpu_options = _xpu_options_class()
    except ImportError as error:
        raise RuntimeError(
            "FLAGTREE_XPU_LLVM19_OPT is set but no active XPUOptions defines "
            "llvm19_opt_path; unset FLAGTREE_XPU_LLVM19_OPT") from error
    fields = getattr(xpu_options, "__dataclass_fields__", None)
    supported = ("llvm19_opt_path" in fields if fields is not None
                 else hasattr(xpu_options, "llvm19_opt_path"))
    if not supported:
        raise RuntimeError(
            "FLAGTREE_XPU_LLVM19_OPT is set but the active XPUOptions does not "
            "support llvm19_opt_path; unset FLAGTREE_XPU_LLVM19_OPT")
    options.update(llvm19_opt_path=path, llvm19_opt_level="O3")


def prepare_kernel(kind, inputs, backend, config=None):
    if kind in ("matmul_bias_gelu_exact", "matmul_bias_gelu_tanh",
                "matmul_bias_silu", "add_gelu_exact", "add_gelu_tanh",
                "add_silu", "add_layernorm", "add_layernorm_weight",
                "add_layernorm_bias", "add_layernorm_affine",
                "mul_sum", "mul_sum_keepdim"):
        from ._kernels_f06 import prepare_new
        return prepare_new(kind, inputs, backend, config)
    x = inputs[0]
    options = {"enable_fp_fusion": False}
    if backend == "xpu":
        llvm19_path = os.environ.get("FLAGTREE_XPU_LLVM19_OPT")
        if llvm19_path:
            _set_llvm19_options(options, llvm19_path)
        if kind.startswith("matmul") and x.dtype != torch.float32:
            # The lowp module admits aligned shapes plus bounded tails. Its
            # prepare guard rejects unqualified tails when the option is unset.
            from ._xpu_lowp import prepare
            return prepare(kind, inputs, options=options)
        if kind.startswith("matmul") and x.shape[1] in (64, 256, 1024):
            from ._xpu_matmul import prepare
            return prepare(kind, inputs, options=options)
    if kind.startswith("matmul"):
        weight, bias = inputs[1:]
        m, k = x.shape
        n = weight.shape[1]
        output = torch.empty((m, n), dtype=x.dtype, device=x.device)
        if backend == "xpu":
            if k > 256:
                grid = (m * n,)
                args = (x, weight, bias, output, n, k, *bias_strides(bias, m, n),
                        kind == "matmul_bias_relu", triton.next_power_of_2(k))
                kernel = _matmul_xpu_reduce
                options.update(buffer_size_limit=512, is_use_mask_zero=False)
            else:
                bn = 128 if n <= 128 else 256 if n <= 256 else 512
                grid = (m * triton.cdiv(n, bn),)
                args = (x, weight, bias, output, m, n, k, *bias_strides(bias, m, n),
                        kind == "matmul_bias_relu", bn)
                kernel = _matmul_xpu_tiled
                options.update(buffer_size_limit=512, is_use_mask_zero=False,
                               isCloseUnrollControl=True, core_num=bn // 8)
        else:
            if m > 128 or n > 1024 or k > 128:
                bm, bn, bk, stages = 32, 64, 32, 3
            elif x.dtype == torch.float32:
                bm, bn, bk, stages = 16, 32, 32, 2
            elif n <= 256:
                bm, bn, bk, stages = 16, 32, 32, 1
            else:
                bm, bn, bk, stages = 16, 64, 64, 2
            grid = ((m + bm - 1) // bm, (n + bn - 1) // bn)
            args = (x, weight, bias, output, m, n, k, *bias_strides(bias, m, n),
                    kind == "matmul_bias_relu", bm, bn, bk)
            kernel = _matmul
            options.update(num_warps=4, num_stages=stages)
    else:
        other = inputs[1]
        rows, cols = x.shape
        output = torch.empty_like(x)
        if backend == "xpu" and cols != triton.next_power_of_2(cols):
            # Keep the row path for padded widths: the grouped XPU layout is
            # qualified only for power-of-two widths (BF16 N=384 miscompiles).
            grid = (rows,)
            args = (x, other, output, cols, cols if other.shape == x.shape else 0,
                    True, triton.next_power_of_2(cols))
            kernel = _softmax
            options.update(buffer_size_limit=512, is_use_mask_zero=False, core_num=64)
        elif backend == "xpu":
            bm = 8 if x.dtype == torch.bfloat16 and cols == 1024 else 16
            grid = (triton.cdiv(rows, bm),)
            args = (x, other, output, rows, cols,
                    cols if other.shape == x.shape else 0, bm,
                    triton.next_power_of_2(cols), True)
            kernel = _softmax_xpu_bf16_packed if x.dtype == torch.bfloat16 else _softmax_xpu_grouped
            options.update(buffer_size_limit=512, is_use_mask_zero=False, core_num=64)
        else:
            grid = (rows,)
            args = (x, other, output, cols, cols if other.shape == x.shape else 0,
                    backend == "xpu", triton.next_power_of_2(cols))
            kernel = _softmax
            options.update(num_warps=8 if cols > 1024 else 1)
    with torch.cuda.device(x.device):
        compiled = kernel.warmup(*args, grid=grid, **options)
        if hasattr(compiled, "result"):
            compiled = compiled.result()
        # Handle initialization must use the same device as compilation/input.
        runner = compiled[grid + (1,) * (3 - len(grid))]

    # Cache the launch wrapper, but never input storage, output storage or stream.
    # CompiledKernel resolves the caller's current stream on every invocation.
    from triton.runtime import driver
    get_stream = driver.active.get_current_stream
    from triton import knobs
    run = compiled.run
    function, metadata = compiled.function, compiled.packed_metadata
    launch_grid = grid + (1,) * (3 - len(grid))
    suffix = args[len(inputs) + 1:]
    shape, dtype, device = tuple(output.shape), output.dtype, output.device

    def launch(current_inputs):
        result = torch.empty(shape, dtype=dtype, device=device)
        call_args = (*current_inputs, result, *suffix)
        # Preserve dynamic hooks and stream selection while avoiding repeated
        # driver lookup and CompiledKernel runner construction on the hot path.
        enter, exit_ = knobs.runtime.launch_enter_hook, knobs.runtime.launch_exit_hook
        if torch.cuda.current_device() == device.index:
            stream = get_stream(device.index)
            extra = compiled.launch_metadata(launch_grid, stream, *call_args) if enter else None
            run(*launch_grid, stream, function, metadata, extra, enter, exit_, *call_args)
        else:
            with torch.cuda.device(device):
                stream = get_stream(device.index)
                extra = compiled.launch_metadata(launch_grid, stream, *call_args) if enter else None
                run(*launch_grid, stream, function, metadata, extra, enter, exit_, *call_args)
        return result, compiled

    def execute():
        with torch.cuda.device(x.device):
            runner(*args)
        return output, compiled

    execute.launch = launch
    return execute
