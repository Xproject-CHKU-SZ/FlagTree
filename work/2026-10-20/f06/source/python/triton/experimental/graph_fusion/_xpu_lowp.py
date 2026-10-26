"""F06 XPU FP16/BF16 SDNN matrix route.

Aligned K=64/256/1024 with N%128==0 keep the validated fixed-shape routes:
FP16 uses the two-kernel SDNN route; BF16 uses native Torch ``mm`` followed by
either the separate-output epilogue without LLVM19 or the single-pointer
in-place epilogue with LLVM19.

A bounded tail route (K outside 64/256/1024 or N%128!=0, with 0<K<=1024 and
0<N<=1024) is compiled only when FLAGTREE_XPU_LLVM19_OPT is set. Tails use
native Torch ``mm`` for the fresh FP16/BF16 product and one in-place
single-pointer epilogue on 64 cores. FP16 is loaded as FP32 and rounded at the
add boundary with RTNE; BF16 retains the validated raw-bits RNE path.
"""

import os
from types import SimpleNamespace

import torch
import triton
import triton.language as tl
from triton.runtime import driver

from ._backend import bias_strides
from ._kernels import _round_intermediate
from . import _xpu_matmul as ref


@triton.jit
def _round_lowp(value, DTYPE: tl.constexpr):
    # BF16 uses the validated RNE-bits path. FP16 uses explicit RTNE downcast.
    if DTYPE == tl.bfloat16:
        return _round_intermediate(value, DTYPE, True)
    return value.to(tl.float16, fp_downcast_rounding="rtne").to(tl.float32)


@triton.jit
def _round_mm(value):
    # FP16 matrix materialization is RNE. BF16 products are materialized by the
    # original Torch mm and therefore already have the target's representation.
    return value.to(tl.float16, fp_downcast_rounding="rtne").to(tl.float32)


@triton.jit
def _epilogue_lowp(P, B, Y, M: tl.constexpr, N: tl.constexpr,
                   B_M: tl.constexpr, B_N: tl.constexpr,
                   RELU: tl.constexpr, MATERIALIZED: tl.constexpr,
                   BLOCK: tl.constexpr):
    offsets = tl.program_id(0).to(tl.int64) * BLOCK + tl.arange(0, BLOCK)
    mask = offsets < M * N
    rows, cols = offsets // N, offsets % N
    if MATERIALIZED:
        # Raw BF16 bits avoid the known XPU BF16 -> FP32 vector-load
        # conversion miscompile. Shifting the stored bits is exact.
        raw = tl.load(P.to(tl.pointer_type(tl.uint16)) + offsets,
                      mask=mask, other=0)
        value = (raw.to(tl.uint32) << 16).to(tl.float32, bitcast=True)
        raw_bias = tl.load(
            B.to(tl.pointer_type(tl.uint16)) + rows * B_M + cols * B_N,
            mask=mask, other=0)
        bias = (raw_bias.to(tl.uint32) << 16).to(tl.float32, bitcast=True)
    else:
        value = tl.load(P + offsets, mask=mask, other=0.0).to(tl.float32)
        value = _round_mm(value)                             # FP16 mm boundary
        bias = tl.load(B + rows * B_M + cols * B_N, mask=mask,
                       other=0.0).to(tl.float32)
    value = _round_lowp(value + bias, Y.dtype.element_ty)    # add materialization
    if RELU:
        value = ref._relu_bits(value)
    if Y.dtype.element_ty == tl.bfloat16:
        bits = (value.to(tl.uint32, bitcast=True) >> 16).to(tl.uint16)
        tl.store(Y.to(tl.pointer_type(tl.uint16)) + offsets, bits, mask=mask)
    else:
        tl.store(Y + offsets, value.to(tl.float16, fp_downcast_rounding="rtne"),
                 mask=mask)


@triton.jit
def _epilogue_bf16_inplace(P, B, M: tl.constexpr, N: tl.constexpr,
                          B_M: tl.constexpr, B_N: tl.constexpr,
                          RELU: tl.constexpr, BLOCK: tl.constexpr):
    # The fresh native-mm result is the sole read/write argument. Full 64-core
    # launch configuration is required: smaller configurations showed duplicate
    # updates in validation even where out-of-place stores appeared correct.
    offsets = tl.program_id(0).to(tl.int64) * BLOCK + tl.arange(0, BLOCK)
    mask = offsets < M * N
    pointer = P.to(tl.pointer_type(tl.uint16))
    raw = tl.load(pointer + offsets, mask=mask, other=0)
    raw_bias = tl.load(B.to(tl.pointer_type(tl.uint16))
                       + (offsets // N) * B_M + (offsets % N) * B_N,
                       mask=mask, other=0)
    value = (raw.to(tl.uint32) << 16).to(tl.float32, bitcast=True)
    bias = (raw_bias.to(tl.uint32) << 16).to(tl.float32, bitcast=True)
    value = _round_lowp(value + bias, tl.bfloat16)
    if RELU:
        value = ref._relu_bits(value)
    bits = (value.to(tl.uint32, bitcast=True) >> 16).to(tl.uint16)
    tl.store(pointer + offsets, bits, mask=mask)


@triton.jit
def _epilogue_fp16_inplace(P, B, M: tl.constexpr, N: tl.constexpr,
                          B_M: tl.constexpr, B_N: tl.constexpr,
                          RELU: tl.constexpr, BLOCK: tl.constexpr):
    # The fresh native-mm result is the sole read/write argument. FP16 is
    # converted numerically, never through the BF16 raw-bits path.
    offsets = tl.program_id(0).to(tl.int64) * BLOCK + tl.arange(0, BLOCK)
    mask = offsets < M * N
    value = tl.load(P + offsets, mask=mask, other=0.0).to(tl.float32)
    bias = tl.load(B + (offsets // N) * B_M + (offsets % N) * B_N,
                   mask=mask, other=0.0).to(tl.float32)
    value = _round_lowp(value + bias, tl.float16)
    if RELU:
        value = ref._relu_bits(value)
    tl.store(P + offsets, value.to(tl.float16, fp_downcast_rounding="rtne"),
             mask=mask)


def prepare(kind, inputs, *, options=None):
    """Compile the low-precision route before any launch side effects.

    Aligned shapes keep the existing FP16 two-kernel or BF16 native-mm paths.
    Bounded tails require FLAGTREE_XPU_LLVM19_OPT, materialize a fresh native
    ``mm`` product and launch one in-place epilogue. ``launch(current_inputs)``
    allocates a fresh product on every call and uses the caller's current
    device and stream. Only static shape/dtype metadata is cached.
    """
    x, weight, bias = inputs[:3]
    m, k = x.shape
    n = weight.shape[1]
    dtype = x.dtype
    if dtype not in (torch.float16, torch.bfloat16):
        raise ValueError("F06 XPU low-precision route requires FP16/BF16 inputs")
    if weight.shape[0] != k or m <= 0 or n <= 0:
        raise ValueError("F06 XPU low-precision route requires matching K "
                         "and positive M/N")
    tail = k not in (64, 256, 1024) or n % 128 != 0
    if tail:
        if (not os.environ.get("FLAGTREE_XPU_LLVM19_OPT")
                or not (options or {}).get("llvm19_opt_path")):
            raise ValueError("F06 XPU low-precision tail requires "
                             "FLAGTREE_XPU_LLVM19_OPT")
        if not (0 < k <= 1024 and 0 < n <= 1024):
            raise ValueError("F06 XPU low-precision tail requires "
                             "0 < K <= 1024 and 0 < N <= 1024")
    strides = bias_strides(bias, m, n)
    if strides is None:
        raise ValueError("unsupported bias broadcast")
    b_m, b_n = (int(value) for value in strides)
    relu = kind == "matmul_bias_relu"
    output_numel = m * n
    if dtype == torch.bfloat16 or tail:
        epi_block, epi_cores = 4096, 64
    else:
        epi_block = 2048 if output_numel >= 65536 else 256
        epi_cores = 64 if output_numel >= 65536 else 32
    epilogue_grid = (triton.cdiv(output_numel, epi_block),)

    # The epilogue is compiled before the first execution; only warmup tensors
    # are used here. Every launch below allocates fresh product/output storage.
    warm_output = torch.empty((m, n), dtype=dtype, device=x.device)
    warm_product = torch.empty(
        (m, n), dtype=dtype if dtype == torch.bfloat16 or tail else torch.float32,
        device=x.device)
    reuse_product = dtype == torch.bfloat16 and bool((options or {}).get("llvm19_opt_path"))
    if tail:
        kernel = (_epilogue_bf16_inplace if dtype == torch.bfloat16
                  else _epilogue_fp16_inplace)
        kernels = [ref._bind(kernel,
                             (warm_product, bias, m, n, b_m, b_n, relu, epi_block),
                             epilogue_grid, ref._options(options, epi_cores))]
        if dtype == torch.bfloat16:
            fusion_scope = ("aten_mm_bias_relu_tail_inplace_epilogue" if relu
                            else "aten_mm_bias_tail_inplace_epilogue")
        else:
            fusion_scope = ("aten_mm_fp16_bias_relu_tail_inplace_epilogue" if relu
                            else "aten_mm_fp16_bias_tail_inplace_epilogue")
        owned_launches = 1
        native_operator_calls = 1
        native_operators = ("aten.mm",)
    elif dtype == torch.bfloat16:
        if reuse_product:
            kernels = [ref._bind(_epilogue_bf16_inplace,
                                 (warm_product, bias, m, n, b_m, b_n, relu, epi_block),
                                 epilogue_grid, ref._options(options, epi_cores))]
        else:
            # Keep the separate-output path for compiler configurations that
            # have not qualified single-pointer in-place execution.
            kernels = [ref._bind(_epilogue_lowp,
                                 (warm_product, bias, warm_output, m, n, b_m, b_n,
                                  relu, True, epi_block),
                                 epilogue_grid, ref._options(options, epi_cores))]
        fusion_scope = ("aten_mm_bias_relu_epilogue" if relu
                        else "aten_mm_bias_epilogue")
        owned_launches = 1
        native_operator_calls = 1
        native_operators = ("aten.mm",)
    else:
        bm, bn = ref._tiles(m, n)
        bk = triton.next_power_of_2(k)
        dot_grid = (triton.cdiv(m, bm) * triton.cdiv(n, bn),)
        kernels = [
            ref._bind(ref._dot_sdnn,
                      (x, weight, warm_product, m, n, k, bm, bn, bk),
                      dot_grid, ref._options(options, 64)),
            ref._bind(_epilogue_lowp,
                      (warm_product, bias, warm_output, m, n, b_m, b_n,
                       relu, False, epi_block),
                      epilogue_grid, ref._options(options, epi_cores)),
        ]
        fusion_scope = "split_lowp_fp32"
        owned_launches = 2
        native_operator_calls = 0
        native_operators = ()

    names = tuple(kernel.name for kernel in kernels)
    info = SimpleNamespace(name="+".join(names), kernel_launches=owned_launches,
                           kernel_names=names, fusion_scope=fusion_scope,
                           native_operator_calls=native_operator_calls,
                           native_operators=native_operators)
    shape, device = (m, n), x.device
    initial_inputs = tuple(inputs)
    get_stream = driver.active.get_current_stream

    if tail:
        def launch(current_inputs):
            current = tuple(current_inputs)
            # Native mm produces the fresh final output; never reuse inputs or
            # a previous result. The epilogue updates only that product.
            product = torch.mm(current[0], current[1])
            ref._launch_all([
                (kernels[0], (product, current[2], m, n, b_m, b_n, relu, epi_block)),
            ], device, get_stream)
            return product, info
    elif reuse_product:
        def launch(current_inputs):
            current = tuple(current_inputs)
            # Native torch.mm selects the input device and its current stream.
            product = torch.mm(current[0], current[1])
            ref._launch_all([
                (kernels[0], (product, current[2], m, n, b_m, b_n, relu, epi_block)),
            ], device, get_stream)
            return product, info
    elif dtype == torch.bfloat16:
        def launch(current_inputs):
            current = tuple(current_inputs)
            product = torch.mm(current[0], current[1])
            y = torch.empty_like(product)
            ref._launch_all([(kernels[0], (product, current[2], y, m, n,
                                           b_m, b_n, relu, True, epi_block))],
                            device, get_stream)
            return y, info
    else:
        def launch(current_inputs):
            current = tuple(current_inputs)
            product = torch.empty(shape, dtype=torch.float32, device=device)
            y = torch.empty(shape, dtype=dtype, device=device)
            ref._launch_all([
                (kernels[0],
                 (current[0], current[1], product, m, n, k, bm, bn, bk)),
                (kernels[1],
                 (product, current[2], y, m, n, b_m, b_n, relu, False, epi_block)),
            ], device, get_stream)
            return y, info

    def execute():
        return launch(initial_inputs)

    execute.launch = launch
    execute.kernel_launches = owned_launches
    execute.kernel_names = names
    execute.fusion_scope = fusion_scope
    execute.native_operator_calls = native_operator_calls
    execute.native_operators = native_operators
    execute.info = info
    return execute
