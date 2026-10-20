"""Expanded F06 activation, normalization and reduction kernels.

The existing three templates keep their qualified policies in ``_kernels``.
This module owns the additive F06 templates:

* ``matmul_bias_gelu_{exact,tanh}`` and ``matmul_bias_silu``;
* bounded ``add_gelu_{exact,tanh}`` and ``add_silu``;
* last-axis ``add_layernorm*`` with optional affine parameters;
* last-axis ``mul_sum[_keepdim]``.

Every kernel uses only scalar/block operations. Matrix low-precision routes on
XPU preserve the existing native-mm-plus-epilogue partition and its LLVM19
eligibility guards. No tuning happens here; a fixed candidate configuration is
compiled before the first launch.
"""

import math
import os
from types import SimpleNamespace

import torch
import triton
import triton.language as tl

from ._backend import bias_strides
from ._kernels import _round_intermediate, _set_llvm19_options

try:  # Imported lazily by callers on non-XPU stacks, but constants are harmless.
    from . import _xpu_matmul as ref
    from ._xpu_lowp import _round_lowp, _round_mm
except ImportError:  # pragma: no cover - only for stripped reference trees
    ref = None
    _round_lowp = None
    _round_mm = None


ACT_GELU = 1
ACT_SILU = 2
NEW_KINDS = frozenset((
    "matmul_bias_gelu_exact", "matmul_bias_gelu_tanh", "matmul_bias_silu",
    "add_gelu_exact", "add_gelu_tanh", "add_silu",
    "add_layernorm", "add_layernorm_weight", "add_layernorm_bias",
    "add_layernorm_affine", "mul_sum", "mul_sum_keepdim",
))


@triton.jit
def _load_fp32(P, offsets, mask, XPU: tl.constexpr):
    if XPU and P.dtype.element_ty == tl.bfloat16:
        raw = tl.load(P.to(tl.pointer_type(tl.uint16)) + offsets, mask=mask, other=0)
        return (raw.to(tl.uint32) << 16).to(tl.float32, bitcast=True)
    return tl.load(P + offsets, mask=mask, other=0.0).to(tl.float32)


@triton.jit
def _round_boundary(value, DTYPE: tl.constexpr, XPU: tl.constexpr):
    # Use the validated P800 low-precision cast policy on XPU. Floating FP32
    # and all NVIDIA boundaries use the ordinary dtype cast.
    if XPU and (DTYPE == tl.float16 or DTYPE == tl.bfloat16):
        return _round_lowp(value, DTYPE)
    return _round_intermediate(value, DTYPE, XPU)


@triton.jit
def _store_output(Y, offsets, value, mask, XPU: tl.constexpr):
    # The tested XPU BF16 store truncates. Store rounded raw bits instead. FP16
    # uses explicit RTNE on XPU; NVIDIA keeps the ordinary cast.
    if XPU and Y.dtype.element_ty == tl.bfloat16:
        rounded = _round_intermediate(value, tl.bfloat16, True)
        bits = (rounded.to(tl.uint32, bitcast=True) >> 16).to(tl.uint16)
        tl.store(Y.to(tl.pointer_type(tl.uint16)) + offsets, bits, mask=mask)
    elif XPU and Y.dtype.element_ty == tl.float16:
        tl.store(Y + offsets,
                 value.to(tl.float16, fp_downcast_rounding="rtne"), mask=mask)
    else:
        tl.store(Y + offsets, value, mask=mask)


@triton.jit
def _activate(value, ACT: tl.constexpr, GELU_TANH: tl.constexpr):
    if ACT == 1:  # GELU
        if GELU_TANH:
            inner = 0.7978845608028654 * (
                value + 0.044715 * value * value * value)
            # Portable tanh: no tl.math.tanh dependency. This is stable for
            # +-inf/overflow and preserves NaN propagation.
            tanh_inner = 1.0 - 2.0 / (tl.exp(2.0 * inner) + 1.0)
            return 0.5 * value * (1.0 + tanh_inner)
        return 0.5 * value * (1.0 + tl.math.erf(value * 0.7071067811865476))
    # SiLU is x / (1 + exp(-x)): +inf -> +inf and -inf -> NaN, matching torch.
    return value / (1.0 + tl.exp(-value))


@triton.jit
def _matmul_act(X, W, B, Y, M, N, K, B_M, B_N,
                ACT: tl.constexpr, GELU_TANH: tl.constexpr,
                BM: tl.constexpr, BN: tl.constexpr, BK: tl.constexpr):
    rows = tl.program_id(0).to(tl.int64) * BM + tl.arange(0, BM)
    cols = tl.program_id(1).to(tl.int64) * BN + tl.arange(0, BN)
    inner = tl.arange(0, BK)
    acc = tl.zeros((BM, BN), tl.float32)
    for block in range(tl.cdiv(K, BK)):
        ks = block * BK + inner
        a = tl.load(X + rows[:, None] * K + ks[None, :],
                    (rows[:, None] < M) & (ks[None, :] < K), 0)
        b = tl.load(W + ks[:, None] * N + cols[None, :],
                    (ks[:, None] < K) & (cols[None, :] < N), 0)
        acc = tl.dot(a, b, acc, input_precision="ieee")
    mask = (rows[:, None] < M) & (cols[None, :] < N)
    bias = tl.load(B + rows[:, None] * B_M + cols[None, :] * B_N,
                   mask, 0).to(tl.float32)
    product = _round_intermediate(acc, Y.dtype.element_ty, False)
    value = _round_intermediate(product + bias, Y.dtype.element_ty, False)
    value = _activate(value, ACT, GELU_TANH)
    tl.store(Y + rows[:, None] * N + cols[None, :], value, mask)


@triton.jit
def _epilogue_act(P, B, Y, M, N: tl.constexpr, B_M: tl.constexpr,
                  B_N: tl.constexpr, ACT: tl.constexpr,
                  GELU_TANH: tl.constexpr, XPU: tl.constexpr,
                  BLOCK: tl.constexpr):
    offsets = tl.program_id(0).to(tl.int64) * BLOCK + tl.arange(0, BLOCK)
    mask = offsets < M * N
    rows, cols = offsets // N, offsets % N
    value = tl.load(P + offsets, mask=mask, other=0.0).to(tl.float32)
    bias = tl.load(B + rows * B_M + cols * B_N, mask=mask,
                   other=0.0).to(tl.float32)
    value = _round_intermediate(value + bias, Y.dtype.element_ty, XPU)
    value = _activate(value, ACT, GELU_TANH)
    tl.store(Y + offsets, value, mask=mask)


@triton.jit
def _add_act_flat(X, R, Y, M, N: tl.constexpr, R_ROW: tl.constexpr,
                  ACT: tl.constexpr, GELU_TANH: tl.constexpr,
                  XPU: tl.constexpr, BLOCK: tl.constexpr):
    offsets = tl.program_id(0).to(tl.int64) * BLOCK + tl.arange(0, BLOCK)
    mask = offsets < M * N
    rows, cols = offsets // N, offsets % N
    x = _load_fp32(X, offsets, mask, XPU)
    r = _load_fp32(R, rows * R_ROW + cols, mask, XPU)
    value = _round_boundary(x + r, X.dtype.element_ty, XPU)
    value = _activate(value, ACT, GELU_TANH)
    _store_output(Y, offsets, value, mask, XPU)


@triton.jit
def _add_layernorm(X, R, W, B, Y, M, N: tl.constexpr, R_ROW: tl.constexpr,
                   EPS, AFFINE_W: tl.constexpr, AFFINE_B: tl.constexpr,
                   XPU: tl.constexpr, BLOCK: tl.constexpr):
    row = tl.program_id(0).to(tl.int64)
    cols = tl.arange(0, BLOCK)
    mask = cols < N
    x = _load_fp32(X, row * N + cols, mask, XPU)
    r = _load_fp32(R, row * R_ROW + cols, mask, XPU)
    # The eager graph materializes the add before layer_norm reads it.
    added = _round_boundary(x + r, X.dtype.element_ty, XPU)
    added = tl.where(mask, added, 0.0)
    mean = tl.sum(added, 0) / N
    centered = tl.where(mask, added - mean, 0.0)
    variance = tl.sum(centered * centered, 0) / N
    value = centered * tl.rsqrt(variance + EPS)
    if AFFINE_W:
        value *= _load_fp32(W, cols, mask, XPU)
    if AFFINE_B:
        value += _load_fp32(B, cols, mask, XPU)
    _store_output(Y, row * N + cols, value, mask, XPU)


@triton.jit
def _mul_sum(X, R, Y, M, N: tl.constexpr, B_M: tl.constexpr,
             B_N: tl.constexpr, KEEP: tl.constexpr, XPU: tl.constexpr,
             BLOCK: tl.constexpr):
    row = tl.program_id(0).to(tl.int64)
    cols = tl.arange(0, BLOCK)
    mask = cols < N
    x = _load_fp32(X, row * N + cols, mask, XPU).to(tl.float32)
    r = _load_fp32(R, row * B_M + cols * B_N, mask, XPU)
    # Preserve the materialized mul boundary before the sum accumulator.
    product = _round_boundary(x * r, X.dtype.element_ty, XPU)
    total = tl.sum(tl.where(mask, product, 0.0), 0)
    _store_output(Y, row, total, row < M, XPU)


@triton.jit
def _lowp_epilogue_act(P, B, Y, M, N: tl.constexpr, B_M: tl.constexpr,
                       B_N: tl.constexpr, ACT: tl.constexpr,
                       GELU_TANH: tl.constexpr, MATERIALIZED: tl.constexpr,
                       BLOCK: tl.constexpr):
    offsets = tl.program_id(0).to(tl.int64) * BLOCK + tl.arange(0, BLOCK)
    mask = offsets < M * N
    rows, cols = offsets // N, offsets % N
    if MATERIALIZED:
        raw = tl.load(P.to(tl.pointer_type(tl.uint16)) + offsets,
                      mask=mask, other=0)
        value = (raw.to(tl.uint32) << 16).to(tl.float32, bitcast=True)
        raw_bias = tl.load(B.to(tl.pointer_type(tl.uint16))
                           + rows * B_M + cols * B_N, mask=mask, other=0)
        bias = (raw_bias.to(tl.uint32) << 16).to(tl.float32, bitcast=True)
    else:
        value = tl.load(P + offsets, mask=mask, other=0.0).to(tl.float32)
        value = _round_mm(value)
        bias = tl.load(B + rows * B_M + cols * B_N, mask=mask,
                       other=0.0).to(tl.float32)
    value = _round_lowp(value + bias, Y.dtype.element_ty)
    value = _activate(value, ACT, GELU_TANH)
    if Y.dtype.element_ty == tl.bfloat16:
        value = _round_lowp(value, tl.bfloat16)
        bits = (value.to(tl.uint32, bitcast=True) >> 16).to(tl.uint16)
        tl.store(Y.to(tl.pointer_type(tl.uint16)) + offsets, bits, mask=mask)
    else:
        tl.store(Y + offsets, value.to(tl.float16, fp_downcast_rounding="rtne"),
                 mask=mask)


@triton.jit
def _lowp_epilogue_act_inplace(P, B, M, N: tl.constexpr, B_M: tl.constexpr,
                               B_N: tl.constexpr, ACT: tl.constexpr,
                               GELU_TANH: tl.constexpr, BLOCK: tl.constexpr):
    offsets = tl.program_id(0).to(tl.int64) * BLOCK + tl.arange(0, BLOCK)
    mask = offsets < M * N
    rows, cols = offsets // N, offsets % N
    if P.dtype.element_ty == tl.bfloat16:
        pointer = P.to(tl.pointer_type(tl.uint16))
        raw = tl.load(pointer + offsets, mask=mask, other=0)
        raw_bias = tl.load(B.to(tl.pointer_type(tl.uint16))
                           + rows * B_M + cols * B_N, mask=mask, other=0)
        value = (raw.to(tl.uint32) << 16).to(tl.float32, bitcast=True)
        bias = (raw_bias.to(tl.uint32) << 16).to(tl.float32, bitcast=True)
        value = _round_lowp(value + bias, tl.bfloat16)
        value = _activate(value, ACT, GELU_TANH)
        value = _round_lowp(value, tl.bfloat16)
        bits = (value.to(tl.uint32, bitcast=True) >> 16).to(tl.uint16)
        tl.store(pointer + offsets, bits, mask=mask)
    else:
        value = tl.load(P + offsets, mask=mask, other=0.0).to(tl.float32)
        bias = tl.load(B + rows * B_M + cols * B_N, mask=mask,
                       other=0.0).to(tl.float32)
        value = _round_lowp(value + bias, tl.float16)
        value = _activate(value, ACT, GELU_TANH)
        tl.store(P + offsets, value.to(tl.float16, fp_downcast_rounding="rtne"),
                 mask=mask)


def _act_for_kind(kind):
    if "gelu" in kind:
        return ACT_GELU, kind.endswith("_tanh")
    return ACT_SILU, False


def _power_of_two(name, value, minimum, maximum):
    if (type(value) is not int or value < minimum or value > maximum
            or value & (value - 1)):
        raise ValueError(f"{name} must be a power of two in "
                         f"[{minimum}, {maximum}], got {value!r}")
    return value


def _normalize_config(config, allowed, defaults):
    values = dict(defaults)
    for key, value in (config or {}).items():
        if key not in allowed:
            raise ValueError(f"unsupported F06 kernel configuration key: {key}")
        values[key] = value
    return values


def _matrix_config(config, m, n, k, dtype, lowp):
    defaults = {
        "bm": 16 if not (m > 128 or n > 1024 or k > 128) else 32,
        "bn": 32 if dtype == torch.float32 or n <= 256 else 64,
        "bk": 32 if dtype == torch.float32 or n <= 256 else 64,
        "num_warps": 4,
        "num_stages": 2 if dtype == torch.float32 or n <= 256 else 3,
        "epi_block": (4096 if not lowp else
                      4096 if dtype == torch.bfloat16 else
                      2048 if m * n >= 65536 else 256),
    }
    values = _normalize_config(config, {"bm", "bn", "bk", "num_warps",
                                        "num_stages", "epi_block"}, defaults)
    for name in ("bm", "bn", "bk"):
        _power_of_two(name, values[name], 16, 128)
    _power_of_two("epi_block", values["epi_block"], 128, 8192)
    if values["num_warps"] not in (1, 2, 4, 8):
        raise ValueError("num_warps must be one of 1, 2, 4, 8")
    if values["num_stages"] not in (1, 2, 3, 4):
        raise ValueError("num_stages must be one of 1, 2, 3, 4")
    # Never materialize a tile larger than the padded problem.
    values["bm"] = max(16, min(values["bm"], triton.next_power_of_2(max(16, m))))
    values["bn"] = max(16, min(values["bn"], triton.next_power_of_2(max(16, n))))
    values["bk"] = max(16, min(values["bk"], triton.next_power_of_2(max(16, k))))
    return values


def _elementwise_config(config, defaults):
    values = _normalize_config(config, {"block", "num_warps", "core_num"},
                               dict(defaults, core_num=64))
    if values["core_num"] not in (16, 32, 64):
        raise ValueError("core_num must be 16, 32 or 64")
    _power_of_two("block", values["block"], 128, 8192)
    if values["num_warps"] not in (1, 2, 4, 8):
        raise ValueError("num_warps must be one of 1, 2, 4, 8")
    return values


def _row_config(config):
    values = _normalize_config(config, {"num_warps", "core_num"},
                               {"num_warps": 4, "core_num": 64})
    if values["core_num"] not in (16, 32, 64):
        raise ValueError("core_num must be 16, 32 or 64")
    if values["num_warps"] not in (1, 2, 4, 8):
        raise ValueError("num_warps must be one of 1, 2, 4, 8")
    return values


def _base_options(backend):
    options = {"enable_fp_fusion": False}
    if backend == "xpu":
        llvm19_path = os.environ.get("FLAGTREE_XPU_LLVM19_OPT")
        if llvm19_path:
            _set_llvm19_options(options, llvm19_path)
    return options


def _nvidia_bind(kernel, args, grid, options, device):
    with torch.cuda.device(device):
        compiled = kernel.warmup(*args, grid=grid, **options)
        if hasattr(compiled, "result"):
            compiled = compiled.result()
        runner = compiled[grid + (1,) * (3 - len(grid))]
    return SimpleNamespace(compiled=compiled, runner=runner,
                           run=compiled.run, function=compiled.function,
                           metadata=compiled.packed_metadata,
                           grid=grid + (1,) * (3 - len(grid)),
                           name=getattr(compiled, "name", None) or kernel.__name__)


def _nvidia_run(bound, call_args, device):
    from triton import knobs
    from triton.runtime import driver
    enter, exit_ = knobs.runtime.launch_enter_hook, knobs.runtime.launch_exit_hook
    if type(enter) is knobs.HookChain and not enter.calls:
        enter = None
    if type(exit_) is knobs.HookChain and not exit_.calls:
        exit_ = None
    get_stream = driver.active.get_current_stream
    if torch.cuda.current_device() == device.index:
        stream = get_stream(device.index)
        extra = bound.compiled.launch_metadata(bound.grid, stream, *call_args) if enter else None
        bound.run(*bound.grid, stream, bound.function, bound.metadata,
                  extra, enter, exit_, *call_args)
    else:
        with torch.cuda.device(device):
            stream = get_stream(device.index)
            extra = bound.compiled.launch_metadata(bound.grid, stream, *call_args) if enter else None
            bound.run(*bound.grid, stream, bound.function, bound.metadata,
                      extra, enter, exit_, *call_args)


def _xpu_bind(kernel, args, grid, options, cores):
    return ref._bind(kernel, args, grid, ref._options(options, cores))


def _xpu_run(calls, device):
    from triton.runtime import driver
    ref._launch_all(calls, device, driver.active.get_current_stream)


def _finish(launch, initial_inputs, bounds, scope,
            native_operator_calls=0, native_operators=()):
    names = tuple(bound.name for bound in bounds)
    info = SimpleNamespace(name="+".join(names), kernel_launches=len(bounds),
                           kernel_names=names, fusion_scope=scope,
                           native_operator_calls=native_operator_calls,
                           native_operators=tuple(native_operators))

    def execute():
        return launch(initial_inputs)

    execute.launch = launch
    execute.kernel_launches = len(bounds)
    execute.kernel_names = names
    execute.fusion_scope = scope
    execute.native_operator_calls = native_operator_calls
    execute.native_operators = tuple(native_operators)
    execute.info = info
    return execute


def _prepare_matrix_nvidia(kind, inputs, config):
    x, weight, bias = inputs[:3]
    m, k = x.shape
    n = weight.shape[1]
    cfg = _matrix_config(config, m, n, k, x.dtype, False)
    act, tanh = _act_for_kind(kind)
    output = torch.empty((m, n), dtype=x.dtype, device=x.device)
    b_m, b_n = (int(value) for value in bias_strides(bias, m, n))
    grid = (triton.cdiv(m, cfg["bm"]), triton.cdiv(n, cfg["bn"]))
    args = (x, weight, bias, output, m, n, k, b_m, b_n, act, tanh,
            cfg["bm"], cfg["bn"], cfg["bk"])
    options = dict(enable_fp_fusion=False, num_warps=cfg["num_warps"],
                   num_stages=cfg["num_stages"])
    bound = _nvidia_bind(_matmul_act, args, grid, options, x.device)

    def launch(current):
        y = torch.empty((m, n), dtype=x.dtype, device=x.device)
        call_args = (current[0], current[1], current[2], y, m, n, k,
                     b_m, b_n, act, tanh, cfg["bm"], cfg["bn"], cfg["bk"])
        _nvidia_run(bound, call_args, x.device)
        return y, bound

    return _finish(launch, inputs, [bound], "matmul_bias_activation")


def _prepare_matrix_xpu_fp32(kind, inputs, config, options):
    x, weight, bias = inputs[:3]
    m, k = x.shape
    n = weight.shape[1]
    cfg = _matrix_config(config, m, n, k, x.dtype, False)
    act, tanh = _act_for_kind(kind)
    b_m, b_n = (int(value) for value in bias_strides(bias, m, n))
    if k in (64, 256, 1024):
        product = torch.empty((m, n), dtype=x.dtype, device=x.device)
        output = torch.empty_like(product)
        dot_grid = (triton.cdiv(m, cfg["bm"]) * triton.cdiv(n, cfg["bn"]),)
        dot = _xpu_bind(ref._dot_sdnn,
                        (x, weight, product, m, n, k, cfg["bm"], cfg["bn"],
                         triton.next_power_of_2(k)), dot_grid, options, 64)
        epi_grid = (triton.cdiv(m * n, cfg["epi_block"]),)
        epi = _xpu_bind(_epilogue_act,
                        (product, bias, output, m, n, b_m, b_n, act, tanh,
                         True, cfg["epi_block"]), epi_grid, options, 64)

        def launch(current):
            p = torch.empty((m, n), dtype=x.dtype, device=x.device)
            y = torch.empty_like(p)
            _xpu_run([
                (dot, (current[0], current[1], p, m, n, k, cfg["bm"],
                       cfg["bn"], triton.next_power_of_2(k))),
                (epi, (p, current[2], y, m, n, b_m, b_n, act, tanh, True,
                       cfg["epi_block"])),
            ], x.device)
            return y, epi

        return _finish(launch, inputs, [dot, epi], "partitioned_matmul_bias_activation")

    output = torch.empty((m, n), dtype=x.dtype, device=x.device)
    grid = (triton.cdiv(m, cfg["bm"]), triton.cdiv(n, cfg["bn"]))
    bound = _xpu_bind(_matmul_act,
                      (x, weight, bias, output, m, n, k, b_m, b_n, act, tanh,
                       cfg["bm"], cfg["bn"], cfg["bk"]), grid, options, 64)

    def launch(current):
        y = torch.empty((m, n), dtype=x.dtype, device=x.device)
        _xpu_run([(bound, (current[0], current[1], current[2], y, m, n, k,
                           b_m, b_n, act, tanh, cfg["bm"], cfg["bn"],
                           cfg["bk"]))], x.device)
        return y, bound

    return _finish(launch, inputs, [bound], "matmul_bias_activation")


def _prepare_matrix_xpu_lowp(kind, inputs, config, options):
    x, weight, bias = inputs[:3]
    m, k = x.shape
    n = weight.shape[1]
    dtype = x.dtype
    cfg = _matrix_config(config, m, n, k, dtype, True)
    act, tanh = _act_for_kind(kind)
    b_m, b_n = (int(value) for value in bias_strides(bias, m, n))
    tail = k not in (64, 256, 1024) or n % 128
    llvm19 = bool(os.environ.get("FLAGTREE_XPU_LLVM19_OPT"))
    if tail and not llvm19:
        raise ValueError("F06 XPU low-precision tail requires "
                         "FLAGTREE_XPU_LLVM19_OPT")
    inplace = tail or (dtype == torch.bfloat16 and llvm19)
    # The in-place route is only validated with the 64-core, block-4096
    # configuration; smaller launches produced duplicate updates on P800.
    epi_block = 4096 if inplace or dtype == torch.bfloat16 else cfg["epi_block"]
    epi_cores = (64 if inplace or dtype == torch.bfloat16 else
                 64 if m * n >= 65536 else 32)
    product_dtype = (torch.float32 if dtype == torch.float16 and not tail
                     else dtype)
    product = torch.empty((m, n), dtype=product_dtype, device=x.device)
    output = torch.empty((m, n), dtype=dtype, device=x.device)
    epi_grid = (triton.cdiv(m * n, epi_block),)

    if inplace:
        epi = _xpu_bind(_lowp_epilogue_act_inplace,
                        (product, bias, m, n, b_m, b_n, act, tanh, epi_block),
                        epi_grid, options, epi_cores)
        scope = "aten_mm_bias_tail_inplace_activation"

        def launch(current):
            value = torch.mm(current[0], current[1])
            _xpu_run([(epi, (value, current[2], m, n, b_m, b_n, act, tanh,
                             epi_block))], x.device)
            return value, epi

        return _finish(launch, inputs, [epi], scope, 1, ("aten.mm",))

    if dtype == torch.bfloat16:
        epi = _xpu_bind(_lowp_epilogue_act,
                        (product, bias, output, m, n, b_m, b_n, act, tanh,
                         True, epi_block), epi_grid, options, epi_cores)
        scope = "aten_mm_bias_activation_epilogue"

        def launch(current):
            value = torch.mm(current[0], current[1])
            y = torch.empty_like(value)
            _xpu_run([(epi, (value, current[2], y, m, n, b_m, b_n, act, tanh,
                             True, epi_block))], x.device)
            return y, epi

        return _finish(launch, inputs, [epi], scope, 1, ("aten.mm",))

    # Aligned FP16 keeps the two-kernel SDNN-dot plus flat-epilogue route.
    dot_grid = (triton.cdiv(m, cfg["bm"]) * triton.cdiv(n, cfg["bn"]),)
    dot = _xpu_bind(ref._dot_sdnn,
                    (x, weight, product, m, n, k, cfg["bm"], cfg["bn"],
                     triton.next_power_of_2(k)), dot_grid, options, 64)
    epi = _xpu_bind(_lowp_epilogue_act,
                    (product, bias, output, m, n, b_m, b_n, act, tanh, False,
                     epi_block), epi_grid, options, epi_cores)

    def launch(current):
        p = torch.empty((m, n), dtype=torch.float32, device=x.device)
        y = torch.empty((m, n), dtype=dtype, device=x.device)
        _xpu_run([
            (dot, (current[0], current[1], p, m, n, k, cfg["bm"], cfg["bn"],
                   triton.next_power_of_2(k))),
            (epi, (p, current[2], y, m, n, b_m, b_n, act, tanh, False,
                   epi_block)),
        ], x.device)
        return y, epi

    return _finish(launch, inputs, [dot, epi], "split_lowp_fp32")


def _prepare_add_act(kind, inputs, backend, config):
    x, other = inputs
    m, n = x.shape
    cfg = _elementwise_config(config, {"block": 1024, "num_warps": 4})
    act, tanh = _act_for_kind(kind)
    r_row = n if other.shape == x.shape else 0
    output = torch.empty_like(x)
    grid = (triton.cdiv(m * n, cfg["block"]),)
    args = (x, other, output, m, n, r_row, act, tanh, backend == "xpu",
            cfg["block"])
    options = _base_options(backend)
    if backend == "xpu":
        bound = _xpu_bind(_add_act_flat, args, grid, options, cfg["core_num"])

        def launch(current):
            y = torch.empty_like(current[0])
            _xpu_run([(bound, (current[0], current[1], y, m, n, r_row, act,
                               tanh, True, cfg["block"]))], x.device)
            return y, bound
    else:
        bound = _nvidia_bind(_add_act_flat, args, grid,
                             dict(options, num_warps=cfg["num_warps"]),
                             x.device)

        def launch(current):
            y = torch.empty_like(current[0])
            _nvidia_run(bound, (current[0], current[1], y, m, n, r_row, act,
                                tanh, False, cfg["block"]), x.device)
            return y, bound

    return _finish(launch, inputs, [bound], f"{kind}_flat")


def _prepare_layernorm(kind, inputs, backend, config):
    x, other = inputs[:2]
    m, n = x.shape
    eps = float((config or {}).get("eps", 1e-5))
    cfg = _row_config({key: value for key, value in (config or {}).items()
                       if key not in ("eps", "normalized_shape")})
    if not math.isfinite(eps):
        raise ValueError("layer_norm eps must be finite")
    has_w = kind in ("add_layernorm_weight", "add_layernorm_affine")
    has_b = kind in ("add_layernorm_bias", "add_layernorm_affine")
    weight = inputs[2] if has_w else x
    bias = inputs[-1] if has_b else x
    r_row = n if other.shape == x.shape else 0
    block = triton.next_power_of_2(n)
    output = torch.empty_like(x)
    grid = (m,)
    args = (x, other, weight, bias, output, m, n, r_row, eps, has_w, has_b,
            backend == "xpu", block)
    options = _base_options(backend)
    if backend == "xpu":
        bound = _xpu_bind(_add_layernorm, args, grid, options, cfg["core_num"])

        def launch(current):
            y = torch.empty_like(current[0])
            weight_arg = current[2] if has_w else current[0]
            bias_arg = (current[3] if has_w else current[2]) if has_b else current[0]
            _xpu_run([(bound, (current[0], current[1], weight_arg, bias_arg,
                               y, m, n, r_row, eps, has_w, has_b,
                               True, block))], x.device)
            return y, bound
    else:
        bound = _nvidia_bind(_add_layernorm, args, grid,
                             dict(options, num_warps=cfg["num_warps"]),
                             x.device)

        def launch(current):
            y = torch.empty_like(current[0])
            weight_arg = current[2] if has_w else current[0]
            bias_arg = (current[3] if has_w else current[2]) if has_b else current[0]
            _nvidia_run(bound, (current[0], current[1], weight_arg, bias_arg,
                                y, m, n, r_row, eps, has_w, has_b,
                                False, block), x.device)
            return y, bound

    return _finish(launch, inputs, [bound], "add_layernorm_last_axis")


def _prepare_mul_sum(kind, inputs, backend, config):
    x, other = inputs
    m, n = x.shape
    cfg = _row_config(config)
    keep = kind == "mul_sum_keepdim"
    b_m, b_n = (int(value) for value in bias_strides(other, m, n))
    block = triton.next_power_of_2(n)
    shape = (m, 1) if keep else (m,)
    output = torch.empty(shape, dtype=x.dtype, device=x.device)
    grid = (m,)
    args = (x, other, output, m, n, b_m, b_n, keep, backend == "xpu", block)
    options = _base_options(backend)
    if backend == "xpu":
        bound = _xpu_bind(_mul_sum, args, grid, options, cfg["core_num"])

        def launch(current):
            y = torch.empty(shape, dtype=x.dtype, device=x.device)
            _xpu_run([(bound, (current[0], current[1], y, m, n, b_m, b_n,
                               keep, True, block))], x.device)
            return y, bound
    else:
        bound = _nvidia_bind(_mul_sum, args, grid,
                             dict(options, num_warps=cfg["num_warps"]),
                             x.device)

        def launch(current):
            y = torch.empty(shape, dtype=x.dtype, device=x.device)
            _nvidia_run(bound, (current[0], current[1], y, m, n, b_m, b_n,
                                keep, False, block), x.device)
            return y, bound

    return _finish(launch, inputs, [bound], "mul_sum_last_axis")


def prepare_new(kind, inputs, backend, config=None):
    """Compile one fixed expanded-F06 kernel configuration."""
    if kind not in NEW_KINDS:
        raise ValueError(f"not an expanded F06 template: {kind}")
    if backend == "xpu":
        options = _base_options(backend)
    else:
        options = None
    if kind.startswith("matmul"):
        if backend == "xpu":
            if inputs[0].dtype != torch.float32:
                return _prepare_matrix_xpu_lowp(kind, inputs, config, options)
            return _prepare_matrix_xpu_fp32(kind, inputs, config, options)
        return _prepare_matrix_nvidia(kind, inputs, config)
    if kind.startswith("add_layernorm"):
        return _prepare_layernorm(kind, inputs, backend, config)
    if kind in ("mul_sum", "mul_sum_keepdim"):
        return _prepare_mul_sum(kind, inputs, backend, config)
    return _prepare_add_act(kind, inputs, backend, config)
