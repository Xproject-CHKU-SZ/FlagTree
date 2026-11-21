"""P800 alternatives for Inductor's complete FP32 tensor graph.

Inductor generates pointwise bodies using LM-sized packets. Short softmax and
explicit non-contiguous copies retain the vendor implementations as graph nodes.
"""
from contextlib import contextmanager
import copy
import hashlib
from pathlib import Path

import torch
import torch.nn.functional as F
from torch._inductor.lowering import make_fallback


@torch.library.custom_op('flagtree_p800::model_contiguous', mutates_args=())
def _contiguous(x: torch.Tensor) -> torch.Tensor:
    return x.clone(memory_format=torch.contiguous_format)


@_contiguous.register_fake
def _fake_contiguous(x):
    return torch.empty(x.shape, dtype=x.dtype, device=x.device)


make_fallback(torch.ops.flagtree_p800.model_contiguous.default, warn=False)


@torch.library.custom_op('flagtree_p800::model_short_softmax', mutates_args=())
def _short_softmax(x: torch.Tensor, dim: int) -> torch.Tensor:
    return torch.softmax(x, dim=dim)


@_short_softmax.register_fake
def _fake_short_softmax(x, dim):
    return torch.empty(x.shape, dtype=x.dtype, device=x.device)


make_fallback(torch.ops.flagtree_p800.model_short_softmax.default, warn=False)


def schedule_variants(bases):
    """Cross validated arithmetic alternatives with schedules, deduplicating aliases.

    A faster tile does not make a different normalization formula acceptable.
    Keep the vendor-norm graph eligible for the same schedules as fused math.
    """
    variants, seen = [], set()
    for name, graph, regions in bases:
        if graph.code in seen:
            continue
        seen.add(graph.code)
        scheduled = copy.deepcopy(graph)
        copies = preserve_block_transpose(scheduled) + preserve_short_softmax(scheduled)
        for suffix in ('', '2048'):
            variants.append((name + suffix, copy.deepcopy(scheduled), regions + copies))
        if any(n.op == 'call_function' and n.target in
               (F.linear, torch.ops.aten.linear.default, torch.ops.aten.addmm.default)
               for n in scheduled.graph.nodes):
            variants.append((name + '_native_bias_mm2048', copy.deepcopy(scheduled),
                regions + copies + [dict(kind='fp32_mm_native_bias', state='inductor_lowering_candidate')]))
    return variants


@contextmanager
def _split_fp32_addmm(enabled):
    """Avoid the SDK's materialized bias broadcast in unit-scale FP32 addmm."""
    if not enabled:
        yield
        return
    from torch._inductor.lowering import fallback_handler, lowerings
    from torch._inductor.kernel import mm as _mm_registration  # noqa: F401
    op = torch.ops.aten.addmm.default
    original = lowerings[op]
    def split(bias, lhs, rhs, *, beta=1, alpha=1):
        if (type(alpha) in (int, float) and type(beta) in (int, float)
                and alpha == 1 and beta == 1
                and all(x.get_dtype() == torch.float32 for x in (bias, lhs, rhs))):
            product = lowerings[torch.ops.aten.mm.default](lhs, rhs)
            # The native add broadcasts directly. Letting the current XPU
            # pointwise codegen implement this gather was slower than the
            # materialized addmm in complete CLIP validation. This fallback
            # remains one node in Inductor's graph and uses no full bias copy.
            return fallback_handler(torch.ops.aten.add.Tensor, add_to_fallback_set=False)(product, bias)
        # Preserve scaling, NaN/zero-beta semantics and other dtypes verbatim.
        return original(bias, lhs, rhs, beta=beta, alpha=alpha)
    try:
        lowerings[op] = split
        yield
    finally:
        lowerings[op] = original


@contextmanager
def _compile_buffer_option(fn, buffer_bytes):
    """Torch 2.9's whitelist drops XPU metadata; bind it to this JIT only."""
    import triton
    from torch._dynamo.convert_frame import compile_lock
    if buffer_bytes != 2048:
        raise ValueError('Unsupported model schedule buffer size')
    with compile_lock:
        original = triton.compile
        forwarded = []
        def compile_with_option(source, *args, **kwargs):
            matching = getattr(source, 'fn', None) is fn
            if matching:
                kwargs['options'] = dict(kwargs.get('options') or {}, buffer_size_limit=buffer_bytes)
            result = original(source, *args, **kwargs)
            if matching:
                forwarded.append(result)
            return result
        try:
            triton.compile = compile_with_option
            yield forwarded
        finally:
            triton.compile = original


def _validate_buffer_option(binary, requested, forwarded):
    """Distinguish lost options from the backend's safe stack-budget retuning."""
    applied = (any(value is binary for value in forwarded)
               or getattr(binary, '_p800_requested_buffer_size', None) == requested)
    actual = getattr(getattr(binary, 'metadata', None), 'buffer_size_limit', None)
    # The XPU compiler halves this limit until the emitted ELF fits. Requiring
    # equality rejected those legal kernels. A lower value alone is not proof
    # that Torch forwarded the option, so retain the per-compilation evidence.
    if (not applied or type(actual) is not int or not 16 <= actual <= requested
            or actual & (actual - 1)):
        raise RuntimeError('XPU model schedule buffer option was not applied or retuned legally')
    binary._p800_requested_buffer_size = requested
    return dict(requested=requested, actual=actual, retuned=actual != requested)


def p800_fixed_config(*args, **kwargs):
    """Preserve backend options through deferred compilation; no launch wrapper."""
    from torch._inductor.runtime.triton_heuristics import fixed_config
    buffer_bytes = kwargs['triton_meta']['buffer_size_limit']
    decorate = fixed_config(*args, **kwargs)
    def apply(fn):
        tuner = decorate(fn)
        original = tuner._precompile_config
        def compile_config(*a, **kw):
            with _compile_buffer_option(fn, buffer_bytes) as forwarded:
                result = original(*a, **kw)
            binary = getattr(result, 'kernel', result)
            tuner.p800_buffer_choice = _validate_buffer_option(binary, buffer_bytes, forwarded)
            return result
        tuner._precompile_config = compile_config
        return tuner
    return apply


def preserve_short_softmax(gm):
    from ._model_inductor import _value
    records = []
    for node in gm.graph.nodes:
        if node.op != 'call_function' or node.target not in (F.softmax, torch.softmax):
            continue
        # The pure replacement cannot preserve an explicit out buffer or its
        # aliasing contract. Do not discard unrecognized call arguments.
        allowed = {'dim', 'dtype', '_stacklevel'} if node.target is F.softmax else {'dim', 'dtype'}
        if set(node.kwargs) - allowed:
            continue
        value = _value(node.args[0])
        dim = node.kwargs.get('dim', node.args[1] if len(node.args) > 1 else None)
        # A dtype override has independent semantics and remains native Inductor.
        if (not isinstance(value, torch.Tensor) or value.dtype != torch.float32
                or value.layout != torch.strided or value.ndim < 2
                or type(dim) is not int or dim not in (-1, value.ndim - 1)
                or type(value.shape[-1]) is not int or not 2 <= value.shape[-1] <= 128
                or node.kwargs.get('dtype') is not None or len(node.args) > 2):
            continue
        node.target = torch.ops.flagtree_p800.model_short_softmax.default
        node.args = (node.args[0], dim)
        node.kwargs = {}
        records.append(dict(kind='short_softmax', node=node.name, state='vendor_reduction_in_inductor_graph'))
    gm.graph.lint()
    gm.recompile()
    return records


def preserve_block_transpose(gm):
    from ._model_inductor import _value
    records = []
    for node in gm.graph.nodes:
        if not (node.op == 'call_method' and node.target == 'contiguous'
                and len(node.args) == 1 and not node.kwargs):
            continue
        value = _value(node.args[0])
        if (not isinstance(value, torch.Tensor) or value.dtype != torch.float32
                or value.layout != torch.strided or value.ndim < 2 or value.is_contiguous()
                or not all(type(n) is int for n in value.shape)):
            continue
        node.op, node.target = 'call_function', torch.ops.flagtree_p800.model_contiguous.default
        records.append(dict(kind='block_transpose', node=node.name, state='vendor_copy_in_inductor_graph'))
    gm.graph.lint()
    gm.recompile()
    return records


@contextmanager
def p800_lm_schedule(buffer_bytes=None, split_addmm=False):
    from torch._dynamo.convert_frame import compile_lock
    from torch._inductor import config
    from torch._inductor.codegen.triton import FixedTritonConfig, TritonKernel
    from torch._inductor.virtualized import V
    original = V.choices
    original_body = TritonKernel.codegen_body
    original_kernel = TritonKernel.codegen_kernel

    def codegen_kernel(kernel, *args, **kwargs):
        # Torch's flag name is broader than it sounds: persistent reductions
        # also consume autotune_pointwise. Disabling it globally picked a much
        # slower short masked-mean tile. Limit the calibration workaround to
        # pointwise kernels; keep native reduction choices and validation.
        if kernel.inside_reduction:
            with config.patch({'triton.autotune_pointwise': True}):
                source = original_kernel(kernel, *args, **kwargs)
        else:
            source = original_kernel(kernel, *args, **kwargs)
        if kernel.triton_meta and kernel.triton_meta.get('buffer_size_limit') == 2048:
            marker = '@triton_heuristics.fixed_config('
            if source.count(marker) != 1:
                raise RuntimeError('Unrecognized fixed-config code generation')
            identity = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()[:16]
            source = ('from triton.experimental.graph_fusion._p800_model_schedule import p800_fixed_config\n'
                      '# P800 model schedule policy: '+identity+'\n' + source.replace(marker, '@p800_fixed_config('))
        return source

    def codegen_body(kernel):
        meta = kernel.triton_meta
        if buffer_bytes is not None and kernel.fixed_config and meta is not None:
            pointers = [v for v in meta['signature'].values() if isinstance(v, str) and v.startswith('*')]
            if pointers and all(v == '*fp32' for v in pointers):
                # Persist the option in generated code and its cache key. Apply
                # it only to the fixed large pointwise FP32 kernels, not integer
                # masks, conversions or reduction kernels.
                meta['buffer_size_limit'] = buffer_bytes
        return original_body(kernel)

    class Choices:
        def __getattr__(self, name):
            return getattr(original, name)

        def triton_kernel_kwargs(self, kernel_cls, features, groups, kwargs):
            kwargs = original.triton_kernel_kwargs(kernel_cls, features, groups, kwargs)
            if kwargs.get('fixed_config') is not None:
                return kwargs
            numel = V.graph.sizevars.size_hint(features.numel, fallback=0)
            reduction = V.graph.sizevars.size_hint(features.reduction_numel, fallback=0)
            if reduction == 1 and numel >= 65536:
                tile = FixedTritonConfig({'XBLOCK': 32768, 'num_warps': 4, 'num_stages': 1})
                return dict(kwargs, fixed_config=tile)
            return kwargs

    # Flatten pointwise iteration so the fixed tile covers one contiguous packet.
    # Do not force a different reduction tile: compound masks must retain their
    # compiler-generated semantics, especially int64 attention masks at a tail.
    with compile_lock, _split_fp32_addmm(split_addmm), V.set_choices_handler(Choices()), config.patch({
        'triton.max_tiles': 1, 'triton.coalesce_tiling_analysis': False,
        'coordinate_descent_tuning': False,
        # The temporary codegen choice is not part of Torch's FX graph hash.
        # Triton and generated-source caches still key the explicit metadata.
        'fx_graph_cache': False,
    }):
        try:
            TritonKernel.codegen_body = codegen_body
            TritonKernel.codegen_kernel = codegen_kernel
            yield
        finally:
            TritonKernel.codegen_body = original_body
            TritonKernel.codegen_kernel = original_kernel
