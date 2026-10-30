"""Attach a resource request to compiler-generated kernels, not their math.

Experimental Torch 2.5 bridge. The native Inductor heuristic factory, generated
function body and native configs remain unchanged. Scoped P800 backend repairs
are implemented separately in _p800_compiler and its lowering helpers.
"""
import ast
from contextlib import contextmanager
from contextvars import ContextVar
import hashlib
import threading

_REQUEST = ContextVar("flagtree_inductor_resource", default=None)
_SCALAR_REDUCTION = ContextVar("flagtree_p800_scalar_reduction", default=False)
_LOCK = threading.RLock()
_EVIDENCE = []
_FACTORIES = frozenset(("pointwise", "reduction", "persistent_reduction", "split_scan", "template", "foreach"))


def baidu_target():
    """Do not confuse the vendor's CUDA alias with an NVIDIA device."""
    try:
        import triton
        driver = triton.runtime.driver.active
    except (ImportError, RuntimeError, AttributeError):
        return None
    cls = type(driver)
    if cls.__module__ != "triton.backends.xpu.driver" or cls.__name__ != "XPUDriver":
        return None
    target = driver.get_current_target()
    if type(target.arch) is not int or target.arch not in (2, 3, 4, 5):
        return None
    return {
        "driver": cls.__module__ + "." + cls.__name__, "arch": target.arch, "warp_size": target.warp_size,
        "backend_alias": target.backend
    }


def _inspection_tree(source):
    # Native codegen has not yet substituted its final function name here.
    # Normalize only the AST inspection copy, leaving the generated text and
    # all computation intact for Inductor's own later name substitution.
    return ast.parse(source.replace('def Placeholder.KERNEL_NAME(', 'def __flagtree_inspection_kernel('))


def _function_bodies(source):
    return [
        ast.dump(ast.Module(body=n.body, type_ignores=[]), include_attributes=False)
        for n in _inspection_tree(source).body
        if isinstance(n, (ast.FunctionDef, ast.AsyncFunctionDef))
    ]


def annotate_source(source, resource):
    if resource not in ("cluster", "sdnn"):
        raise ValueError("explicit Cluster or SDNN resource required")
    before = _function_bodies(source)
    tree = _inspection_tree(source)
    factories = []
    for n in tree.body:
        if not isinstance(n, ast.FunctionDef):
            continue
        for decorator in n.decorator_list:
            if (isinstance(decorator, ast.Call) and isinstance(decorator.func, ast.Attribute)
                    and isinstance(decorator.func.value, ast.Name) and decorator.func.value.id == "triton_heuristics"):
                if decorator.func.attr not in _FACTORIES:
                    raise RuntimeError("unsupported native heuristic: " + decorator.func.attr)
                factories.append(decorator.func.attr)
    if not factories:
        raise RuntimeError("no native Inductor heuristic in generated kernel")
    # The generated function body is left byte-for-byte intact. An explicit
    # resource literal in the generated module also separates code-cache keys.
    prefix = ("from triton.experimental.graph_fusion._resource_codegen import ResourceHeuristics\n"
              "_flagtree_resource_heuristics = ResourceHeuristics(" + repr(resource) + ")\n")
    from ._p800_compiler import policy_key
    prefix += "# P800 compiler policy: " + policy_key() + "\n"
    changed = source
    for name in set(factories):
        changed = changed.replace("@triton_heuristics." + name + "(", "@_flagtree_resource_heuristics." + name + "(")
    changed = prefix + changed
    if _function_bodies(changed) != before:
        raise RuntimeError("resource annotation changed generated computation")
    return changed


def _record_binary(binary, requested):
    meta = binary.metadata
    actual = "sdnn" if meta.is_sdnn else "cluster"
    # Deployed legacy P800 binaries expose is_sdnn but not resource_kind.
    # Still require an actual boolean; never infer resource from the request.
    if (type(meta.is_sdnn) is not bool or actual != requested
            or getattr(meta, "resource_kind", requested if getattr(meta, "arch", None) == 3 else None) != requested):
        raise RuntimeError("compiled resource metadata does not match request")
    entry = {
        "requested": requested, "effective": actual, "kernel_name": meta.name, "binary_hash":
        str(getattr(binary, "hash", "")), "launch_clusters": getattr(meta, "launch_clusters", None), "launch_cores":
        getattr(meta, "launch_cores", None), "asm_sha256": {
            name: hashlib.sha256(value if isinstance(value, bytes) else str(value).encode()).hexdigest()
            for name, value in binary.asm.items()
        }
    }
    _EVIDENCE.append(entry)
    return entry


def _bound_kernel_evidence(compiled, resource):
    """Inspect binaries actually bound by the wrapper, also on cache reuse.

    A cache hit need not call _precompile_config again. Conversely, newly
    benchmarked candidates do not prove which binaries the final wrapper uses.
    """
    from pathlib import Path
    from torch._inductor.codecache import PyCodeCache
    module = PyCodeCache.cache.get(compiled.cache_key)
    if module is None or Path(module.__file__).read_text() != compiled.source_code:
        raise RuntimeError("native wrapper cache/source identity could not be verified")
    proofs = []
    for node in ast.walk(ast.parse(compiled.source_code)):
        if not (isinstance(node, ast.Assign) and isinstance(node.value, ast.Call)
                and ast.unparse(node.value.func) == 'async_compile.triton'):
            continue
        if len(node.targets) != 1 or not isinstance(node.targets[0], ast.Name):
            raise RuntimeError('unknown native kernel binding')
        name = node.targets[0].id
        tuner = getattr(module, name)
        tuner.precompile()
        if not tuner.launchers:
            raise RuntimeError('native kernel has no compiled launcher')
        for launcher in tuner.launchers:
            binary = getattr(launcher, '__globals__', {}).get('bin')
            if binary is None:
                raise RuntimeError('native launcher lacks its bound compiled binary')
            entry = dict(_record_binary(binary, resource))
            entry.update(wrapper_binding=name,
                         source_sha256=hashlib.sha256(node.value.args[1].value.encode()).hexdigest(),
                         proof_scope='bound_native_wrapper_binary')
            proofs.append(entry)
    return proofs


class ResourceHeuristics:

    def __init__(self, resource):
        if resource not in ("cluster", "sdnn"):
            raise ValueError("unknown resource")
        self.resource = resource

    def __getattr__(self, name):
        if name not in _FACTORIES:
            raise AttributeError(name)
        from torch._inductor.runtime import triton_heuristics
        original = getattr(triton_heuristics, name)
        resource = self.resource

        def factory(*args, **kwargs):
            decorate = original(*args, **kwargs)

            def wrapped(fn):
                tuner = decorate(fn)
                compile_config = tuner._precompile_config

                def compile_for_resource(*a, **kw):
                    target = baidu_target()
                    if target and target['arch'] == 3 and target['warp_size'] == 1:
                        from ._p800_compiler import resource_scope
                    else:
                        from triton.backends.xpu.resource_context import resource_scope
                    with resource_scope(resource):
                        result = compile_config(*a, **kw)
                    binary = result[0] if isinstance(result, tuple) else result
                    _record_binary(binary, resource)
                    return result

                tuner._precompile_config = compile_for_resource
                return tuner

            return wrapped

        return factory


def _annotate_partial_render(rendered, resource):
    """Cover native autotune rendering and native final epilogue rendering."""
    finalize = rendered.finalize_all
    finalize_hook = rendered.finalize_hook
    annotated = False

    def finalize_resource():
        return annotate_source(finalize(), resource)

    def finalize_hook_resource(*args, **kwargs):
        nonlocal annotated
        result = finalize_hook(*args, **kwargs)
        # The final template path reads .code after individual hooks, without
        # calling finalize_all. Wait until every native substitution finishes.
        if not annotated and all(fn is None for fn in rendered.replacement_hooks.values()):
            rendered.code = annotate_source(rendered.code, resource)
            annotated = True
        return result

    rendered.finalize_all = finalize_resource
    rendered.finalize_hook = finalize_hook_resource
    return rendered


@contextmanager
def generated_resource(resource, *, native_template_eligibility=False, scalar_reduction=False):
    if resource not in ("cluster", "sdnn"):
        raise ValueError("explicit resource required")
    if baidu_target() is None:
        raise RuntimeError("resource routing requires positively identified Baidu XPU backend")
    if _REQUEST.get() is not None:
        raise RuntimeError("nested resource compilation is unsupported")
    from torch._inductor.codegen.triton import TritonKernel
    from torch._inductor.select_algorithm import TritonTemplateKernel
    from torch._inductor.select_algorithm import AlgorithmSelectorCache
    from torch._inductor import config
    from torch._inductor import utils
    from torch._dynamo.convert_frame import compile_lock
    # Scoped codegen change is context-local for unrelated compiler threads;
    # explicit resource decorators survive async module loading. Disable the
    # graph cache so a previously compiled unannotated graph cannot bypass this.
    # Share Dynamo's compilation lock so temporary native config settings do
    # not leak into a concurrent torch.compile callback on another thread.
    with compile_lock, _LOCK:
        original = TritonKernel.codegen_kernel
        original_no_x = TritonKernel.want_no_x_dim
        original_render = TritonTemplateKernel.render
        original_big_gpu = utils.is_big_gpu
        original_select = AlgorithmSelectorCache.__call__
        token = _REQUEST.set(resource)
        reduction_token = _SCALAR_REDUCTION.set(scalar_reduction)
        target = baidu_target()
        repair_reduction = target['arch'] == 3 and target['warp_size'] == 1

        def select_algorithm(selector, *args, **kwargs):
            # Torch 2.5's GEMM selector has a separate precompilation thread
            # pool, even with compile_threads=1. Waiting for that pool while
            # holding Dynamo's compile lock deadlocks the resource decorator.
            # Skip only speculative parallel precompilation: native candidate
            # benchmarking/selection still compiles synchronously as needed.
            if repair_reduction and _REQUEST.get() is not None:
                import inspect
                bound = inspect.signature(original_select).bind(selector, *args, **kwargs)
                if 'precompilation_timeout_seconds' not in inspect.signature(original_select).parameters:
                    raise RuntimeError('P800 native precompilation API is unavailable')
                bound.arguments['precompilation_timeout_seconds'] = 0
                return original_select(*bound.args, **bound.kwargs)
            return original_select(selector, *args, **kwargs)

        AlgorithmSelectorCache.__call__ = select_algorithm

        def want_no_x_dim(kernel):
            # Keep native 2D reduction layout: the P800 rank-1 lowering writes
            # the scalar result from every core. Native 2D writeback predicates
            # the owning core. No tiling or generated arithmetic is supplied.
            if repair_reduction and _REQUEST.get() == 'cluster' and _SCALAR_REDUCTION.get():
                return False
            return original_no_x(kernel)

        TritonKernel.want_no_x_dim = want_no_x_dim
        if native_template_eligibility:
            # P800 exposes 8 units through the CUDA alias. Native Torch 2.5's
            # >=68 NVIDIA SM heuristic otherwise suppresses every GEMM template.
            # This only admits native candidates for this identified backend;
            # their configs, generated math and backend validation stay native.
            def eligible(index):
                return True if _REQUEST.get() == resource else original_big_gpu(index)

            utils.is_big_gpu = eligible

        def codegen(kernel, *args, **kwargs):
            code = original(kernel, *args, **kwargs)
            requested = _REQUEST.get()
            return annotate_source(code, requested) if requested else code

        TritonKernel.codegen_kernel = codegen

        def render(kernel, *args, **kwargs):
            rendered = original_render(kernel, *args, **kwargs)
            requested = _REQUEST.get()
            return _annotate_partial_render(rendered, requested) if requested else rendered

        TritonTemplateKernel.render = render
        try:
            with config.patch({"compile_threads": 1, "fx_graph_cache": False, "fx_graph_remote_cache": False}):
                yield
        finally:
            if AlgorithmSelectorCache.__call__ is select_algorithm:
                AlgorithmSelectorCache.__call__ = original_select
            if TritonKernel.want_no_x_dim is want_no_x_dim:
                TritonKernel.want_no_x_dim = original_no_x
            if native_template_eligibility and utils.is_big_gpu is eligible:
                utils.is_big_gpu = original_big_gpu
            if TritonKernel.codegen_kernel is codegen:
                TritonKernel.codegen_kernel = original
            if TritonTemplateKernel.render is render:
                TritonTemplateKernel.render = original_render
            _REQUEST.reset(token)
            _SCALAR_REDUCTION.reset(reduction_token)


def evidence():
    return list(_EVIDENCE)


def audit_wrapper(source, resource):
    """Fail closed if a generated kernel or external operation is unaccounted."""
    tree = ast.parse(source)
    kernels = []
    external = []
    for n in ast.walk(tree):
        if not isinstance(n, ast.Call):
            continue
        target = ast.unparse(n.func)
        if target == "async_compile.triton":
            if len(n.args) < 2 or not isinstance(n.args[1], ast.Constant) or not isinstance(n.args[1].value, str):
                raise RuntimeError("unrecognized native generated kernel source")
            code = n.args[1].value
            expected = "ResourceHeuristics(" + repr(resource) + ")"
            if expected not in code or "@triton_heuristics." in code:
                raise RuntimeError("generated kernel is missing its explicit resource")
            kernels.append(hashlib.sha256(code.encode()).hexdigest())
        elif target.startswith(("extern_kernels.", "torch.ops.", "aten.", "ops.")):
            external.append(target)
    return {"generated_kernel_sources": kernels, "external_call_targets": external}


def compile_region(gm, inputs, resource, *, matmul_path="external"):
    """Use native decomposition and Inductor; caller validates the result.

    External-library calls remain a hard, unverified boundary. They are not
    assigned SDNN based on an operator name. The optional template path uses
    native Inductor templates/configs, without editing generated computation.
    """
    from torch._inductor.compile_fx import compile_fx_inner, BoxedBool
    from torch._inductor.decomposition import select_decomp_table
    from torch.fx.experimental.proxy_tensor import make_fx
    from torch._inductor import config
    import torch
    if torch.cuda.is_initialized() and torch.cuda.is_current_stream_capturing():
        raise RuntimeError("resource compilation/autotuning must finish before graph capture")
    if matmul_path not in ("external", "template"):
        raise ValueError("matmul_path must be external or template")
    output = next(n for n in gm.graph.nodes if n.op == "output")
    if not isinstance(output.args[0], tuple):
        raise ValueError("region graph output must be a tuple")
    lowered = make_fx(gm, decomposition_table=select_decomp_table(), tracing_mode="fake",
                      _allow_non_fake_inputs=True)(*inputs)
    # Explicitly select native candidates; never alter math precision flags or
    # hand-pick tile/warp configs. Autotuning is offline, before graph capture.
    options = {
        "max_autotune_gemm": matmul_path == "template", "max_autotune_gemm_backends":
        "TRITON" if matmul_path == "template" else "ATEN", "max_autotune": False, "autotune_in_subproc": False
    }
    # Only scalar-output reductions need the P800 ownership repair. Softmax
    # and LayerNorm write full rows and should keep native reduction layouts.
    output_node = next(n for n in lowered.graph.nodes if n.op == 'output')
    outputs = output_node.args[0]
    scalar_reduction = (any(n.target == torch.ops.aten.sum.dim_IntList for n in lowered.graph.nodes) and all(
        isinstance(n, torch.fx.Node) and isinstance(n.meta.get('val'), torch.Tensor) and n.meta['val'].numel() < max(
            (x.numel() for x in inputs if isinstance(x, torch.Tensor)), default=0) for n in outputs))
    with generated_resource(resource, native_template_eligibility=matmul_path == "template",
                            scalar_reduction=scalar_reduction), config.patch(options):
        compiled = compile_fx_inner(lowered, list(inputs), is_inference=True, cudagraphs=BoxedBool(False))
    source = compiled.source_code
    wrapper_audit = audit_wrapper(source, resource)
    external = len(wrapper_audit['external_call_targets'])
    bound_evidence = _bound_kernel_evidence(compiled, resource)
    return compiled, {
        "resource": resource, "matmul_path": matmul_path, "scalar_reduction_layout": scalar_reduction,
        "native_template_eligibility": matmul_path == "template", "wrapper_audit": wrapper_audit, "external_calls":
        external, "kernel_evidence": bound_evidence, "source_code": source, "resource_verified": external == 0
        and bool(wrapper_audit['generated_kernel_sources']) and bool(bound_evidence)
    }
