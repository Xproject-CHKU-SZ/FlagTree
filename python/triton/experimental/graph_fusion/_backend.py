"""Narrow, metadata-only eligibility checks and backend selection."""

import os

import torch


MATMUL_KINDS = (
    "matmul_bias", "matmul_bias_relu",
    "matmul_bias_gelu_exact", "matmul_bias_gelu_tanh",
    "matmul_bias_silu",
)
ADD_SOFTMAX_KINDS = ("add_softmax",)
ADD_ACT_KINDS = (
    "add_gelu_exact", "add_gelu_tanh", "add_silu",
)
LAYERNORM_KINDS = (
    "add_layernorm", "add_layernorm_weight",
    "add_layernorm_bias", "add_layernorm_affine",
)
MULSUM_KINDS = ("mul_sum", "mul_sum_keepdim")
F06_KINDS = (ADD_ACT_KINDS + LAYERNORM_KINDS + MULSUM_KINDS
             + ("matmul_bias_gelu_exact", "matmul_bias_gelu_tanh",
                "matmul_bias_silu"))
KNOWN_KINDS = MATMUL_KINDS + ADD_SOFTMAX_KINDS + ADD_ACT_KINDS + LAYERNORM_KINDS + MULSUM_KINDS


def bias_strides(tensor, rows, columns):
    if tensor.ndim == 0:
        return 0, 0
    if tensor.ndim == 1 and tensor.shape[0] in (1, columns):
        return 0, 0 if tensor.shape[0] == 1 else tensor.stride(0)
    if tensor.ndim == 2 and tensor.shape[0] in (1, rows) and tensor.shape[1] in (1, columns):
        return (0 if tensor.shape[0] == 1 else tensor.stride(0),
                0 if tensor.shape[1] == 1 else tensor.stride(1))
    return None


def context_reason(inputs, backend):
    if torch.is_grad_enabled() and any(t.requires_grad for t in inputs):
        return "training_requires_original_graph"
    if torch.is_autocast_enabled():
        return "autocast_requires_original_graph"
    if backend == "xpu" and os.environ.get("DISABLE_LLVM_OPT") != "1":
        return "xpu_requires_disable_llvm_opt"
    return None


def _common(inputs):
    if any(type(x) not in (torch.Tensor, torch.nn.Parameter) for x in inputs):
        return None, "unsupported_tensor_type"
    x = inputs[0]
    if torch.is_grad_enabled() and any(t.requires_grad for t in inputs):
        return None, "training_requires_original_graph"
    if torch.is_autocast_enabled():
        return None, "autocast_requires_original_graph"
    if any(t.layout != torch.strided or t.device != x.device or t.dtype != x.dtype for t in inputs):
        return None, "mixed_dtype_device_or_layout"
    if x.dtype not in (torch.float32, torch.float16, torch.bfloat16):
        return None, "unsupported_dtype"
    if any(t.is_conj() or t.is_neg() or not t.is_contiguous() for t in inputs):
        return None, "unsupported_view_or_stride"
    if any(t.numel() == 0 for t in inputs):
        return None, "empty_tensor"
    if x.device.type != "cuda":
        return None, "unsupported_device"
    return x, None


def _backend_name(x):
    # XPU presents CUDA-compatible tensors/targets. Use the actual driver
    # implementation, not target.backend == 'cuda', to distinguish the chips.
    from triton.runtime import driver
    with torch.cuda.device(x.device):
        module = type(driver.active).__module__
    return "xpu" if ".xpu." in module else "nvidia" if ".nvidia." in module else None


def _check_matmul(kind, inputs):
    if len(inputs) != 3:
        return "invalid_operand_count"
    x, weight, bias = inputs
    if x.ndim != 2 or weight.ndim != 2 or x.shape[1] != weight.shape[0]:
        return "invalid_matmul_shape"
    if bias_strides(bias, x.shape[0], weight.shape[1]) is None:
        return "unsupported_bias_broadcast"
    return None


def _check_add_act(inputs):
    if len(inputs) != 2:
        return "invalid_operand_count"
    x, other = inputs
    if x.ndim != 2:
        return "requires_rank_two"
    if other.shape not in (x.shape, (x.shape[1],), (1, x.shape[1])):
        return "unsupported_row_broadcast"
    if x.shape[1] > 4096:
        return "row_resource_limit"
    return None


def _check_layernorm(kind, inputs, options=None):
    expected = {"add_layernorm": 2, "add_layernorm_weight": 3,
                "add_layernorm_bias": 3, "add_layernorm_affine": 4}[kind]
    if len(inputs) != expected:
        return "invalid_operand_count"
    x, other = inputs[:2]
    if x.ndim != 2:
        return "requires_rank_two"
    n = x.shape[1]
    if options and "normalized_shape" in options:
        normalized_shape = tuple(options["normalized_shape"])
        if normalized_shape != (n,):
            return "unsupported_layernorm_normalized_shape"
    if other.shape not in (x.shape, (n,), (1, n)):
        return "unsupported_row_broadcast"
    if kind in ("add_layernorm_weight", "add_layernorm_affine"):
        if inputs[2].shape != (n,):
            return "unsupported_layernorm_weight_shape"
    if kind in ("add_layernorm_bias", "add_layernorm_affine"):
        if inputs[-1].shape != (n,):
            return "unsupported_layernorm_bias_shape"
    if n > 4096:
        return "row_resource_limit"
    return None


def _check_mul_sum(inputs):
    if len(inputs) != 2:
        return "invalid_operand_count"
    x, other = inputs
    if x.ndim != 2:
        return "requires_rank_two"
    if bias_strides(other, x.shape[0], x.shape[1]) is None:
        return "unsupported_mulsum_broadcast"
    if x.shape[1] > 4096:
        return "row_resource_limit"
    return None


def check(kind, inputs, options=None):
    if kind not in KNOWN_KINDS:
        return None, "no_registered_implementation"
    if not inputs:
        return None, "invalid_operand_count"
    x, reason = _common(inputs)
    if reason:
        return None, reason
    if kind in MATMUL_KINDS:
        reason = _check_matmul(kind, inputs)
    elif kind in ADD_SOFTMAX_KINDS:
        reason = _check_add_act(inputs)
        if reason is None and x.shape[1] > 4096:
            reason = "row_resource_limit"
    elif kind in ADD_ACT_KINDS:
        reason = _check_add_act(inputs)
    elif kind in LAYERNORM_KINDS:
        reason = _check_layernorm(kind, inputs, options)
    elif kind in MULSUM_KINDS:
        reason = _check_mul_sum(inputs)
    else:
        reason = "no_registered_implementation"
    if reason:
        return None, reason

    backend = _backend_name(x)
    if backend is None:
        return None, "unsupported_backend"
    if backend == "xpu":
        # The tested LLVM 22 XPU package misoptimizes the cluster grid loop
        # with O3 enabled. Require the validated process setting explicitly;
        # never return a partially written output under the default setting.
        if os.environ.get("DISABLE_LLVM_OPT") != "1":
            return backend, "xpu_requires_disable_llvm_opt"
        if kind in MATMUL_KINDS and x.dtype != torch.float32:
            k, n = x.shape[1], inputs[1].shape[1]
            if k not in (64, 256, 1024) or n % 128:
                if os.environ.get("FLAGTREE_XPU_LLVM19_OPT"):
                    if k > 1024:
                        return backend, "xpu_matmul_reduction_limit"
                    if not (0 < k <= 1024 and 0 < n <= 1024 and x.shape[0] > 0):
                        return backend, "xpu_lowp_tail_shape_not_validated"
                    # Bounded lowp tails use native mm plus one in-place epilogue.
                    return backend, None
                if k not in (64, 256, 1024):
                    return backend, "xpu_lowp_matmul_reduction_not_validated"
                return backend, "xpu_matmul_alignment_not_validated"
        if kind in MATMUL_KINDS and x.shape[1] > 1024:
            return backend, "xpu_matmul_reduction_limit"
        # The vector K-loop's masked final iteration is miscompiled by this
        # backend. Keep unadmitted tails on the original operator path.
        if kind in MATMUL_KINDS and (x.shape[1] % 8 or inputs[1].shape[1] % 128):
            return backend, "xpu_matmul_alignment_not_validated"
        if kind in ADD_SOFTMAX_KINDS and (x.shape[1] % 128 or x.shape[1] > 1024):
            return backend, "xpu_row_alignment_or_resource_limit"
        if kind in ADD_ACT_KINDS and x.shape[1] % 128:
            return backend, "xpu_row_alignment_or_resource_limit"
        if (kind in LAYERNORM_KINDS or kind in MULSUM_KINDS) and (
                x.shape[1] & (x.shape[1] - 1)):
            return backend, "xpu_reduction_width_not_power_of_two"
    return backend, None


def prepare(kind, inputs, backend, config=None):
    from ._kernels import prepare_kernel
    if config is None:
        return prepare_kernel(kind, inputs, backend)
    return prepare_kernel(kind, inputs, backend, config=config)
