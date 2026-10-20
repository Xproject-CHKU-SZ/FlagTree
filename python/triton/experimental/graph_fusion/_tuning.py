"""Explicit, finite parameter selection for the expanded F06 templates.

This module is deliberately outside the planning and execution hot path:

* ``select_configs`` is an explicit opt-in API. ``graph_fusion.compile`` never
  calls it.
* Candidate kernels are compiled and evaluated with ordinary host calls before
  the caller records or replays anything. There is no autotuning inside a CUDA
  Graph capture, and the returned launchers use one fixed configuration.
* The finite candidate domain is validated by this module. A FlagTune
  ``ConfigProposer`` may rank that domain when the caller supplies one (or
  explicitly opts into local model discovery); otherwise the bounded fallback
  configuration is used and its provenance says so.
* The benchmark callable is FlagTune's existing event/replay benchmark
  protocol, or an injected callable for tests. No duplicate GA/tuner exists.
"""

from dataclasses import dataclass
import math
import os

import torch

from . import _backend


CONFIG_VERSION = 1
_MATRIX_KINDS = frozenset(_backend.F06_KINDS) & frozenset((
    "matmul_bias_gelu_exact", "matmul_bias_gelu_tanh", "matmul_bias_silu",
))
_ADD_ACT_KINDS = frozenset(("add_gelu_exact", "add_gelu_tanh", "add_silu"))
_LAYERNORM_KINDS = frozenset(_backend.LAYERNORM_KINDS)
_MULSUM_KINDS = frozenset(_backend.MULSUM_KINDS)
_CACHE = {}


def _next_power_of_two(value):
    value = max(1, int(value))
    return 1 << (value - 1).bit_length()


def _freeze(value):
    if isinstance(value, dict):
        return tuple(sorted((key, _freeze(item)) for key, item in value.items()))
    if isinstance(value, (tuple, list)):
        return tuple(_freeze(item) for item in value)
    return value


def _key(kind, inputs, options=None):
    x = inputs[0]
    return (kind, str(x.device), str(x.dtype),
            tuple(tuple(t.shape) for t in inputs),
            tuple(tuple(t.stride()) for t in inputs),
            _freeze(options or ()))


def _compiler_context(inputs):
    x = inputs[0]
    context = [CONFIG_VERSION, str(x.device), str(x.dtype)]
    if x.device.type != "cuda":
        return tuple(context + ["cpu"])
    import triton
    from triton.runtime import driver
    with torch.cuda.device(x.device):
        active = driver.active
        target = active.get_current_target()
    context.extend((
        type(active).__module__, str(getattr(target, "backend", None)),
        str(getattr(target, "arch", None)), getattr(triton, "__version__", None),
        os.environ.get("DISABLE_LLVM_OPT"),
        os.environ.get("FLAGTREE_XPU_LLVM19_OPT"),
        os.environ.get("FLAGTUNE_BENCHMARK_MODE"),
        os.environ.get("FLAGTUNE_TOP_K"),
        bool(torch.backends.cuda.matmul.allow_tf32),
        bool(torch.backends.cuda.matmul.allow_fp16_reduced_precision_reduction),
        bool(torch.backends.cuda.matmul.allow_bf16_reduced_precision_reduction),
    ))
    return tuple(context)


def _cache_key(kind, inputs, match, backend, proposer, benchmarker,
               correctness, warmup_ms, measurement_ms, use_flagtune, identities):
    proposer_id = ("flagtune:" + repr(tuple(sorted(identities.items())))
                   if proposer is None and use_flagtune else
                   "none" if proposer is None else
                   f"{getattr(proposer, '__qualname__', type(proposer).__name__)}:{id(proposer)}")
    benchmarker_id = ("flagtune_event" if benchmarker is None
                      else f"{type(benchmarker).__name__}:{id(benchmarker)}")
    return (_compiler_context(inputs), kind, _key(kind, inputs, match.options),
            backend, proposer_id, benchmarker_id, bool(correctness),
            int(warmup_ms), int(measurement_ms))


def _stream_capturing(inputs):
    if not inputs or any(t.device.type != "cuda" for t in inputs):
        return False
    with torch.cuda.device(inputs[0].device):
        api = getattr(torch.cuda, "is_current_stream_capturing", None)
        if api is None:
            raise RuntimeError("cannot verify CUDA graph capture state on this runtime")
        return bool(api())


def finite_configs(kind, inputs):
    """Return the bounded, validated configuration domain for one kind.

    Matrix tiles are powers of two in the range accepted by the kernels.
    Smaller dimensions may cause preparation to clamp a tile to the padded
    problem, which is recorded in selection evidence. Kinds with retained
    qualified policies return an empty domain.
    """
    xpu = (inputs[0].device.type == "cuda" and _backend._backend_name(inputs[0]) == "xpu")
    if xpu and kind in _ADD_ACT_KINDS:
        return [{"block": block, "num_warps": 4, "core_num": cores}
                for block, cores in ((512, 32), (1024, 64), (4096, 64))]
    if xpu and kind in _LAYERNORM_KINDS | _MULSUM_KINDS:
        return [{"num_warps": 4, "core_num": cores} for cores in (16, 32, 64)]
    if kind in _MATRIX_KINDS:
        x, weight = inputs[:2]
        if xpu and x.dtype == torch.bfloat16:
            return [{"epi_block": 4096}]
        if xpu and x.dtype == torch.float16 and (x.shape[1] not in (64, 256, 1024) or weight.shape[1] % 128):
            return [{"epi_block": 4096}]
        m, n, k = x.shape[0], weight.shape[1], x.shape[1]
        padded = (_next_power_of_two(m), _next_power_of_two(n),
                  _next_power_of_two(k))
        raw = (
            (16, 16, 16, 4, 2, 2048),
            (16, 32, 32, 4, 2, 4096),
            (32, 64, 32, 4, 3, 2048),
            (64, 64, 32, 8, 3, 4096),
            (16, 64, 64, 4, 2, 2048),
        )
        result, seen = [], set()
        for bm, bn, bk, warps, stages, epi in raw:
            if bk > max(16, padded[2]) or bm > max(16, padded[0]) or bn > max(16, padded[1]):
                continue
            config = {"bm": bm, "bn": bn, "bk": bk, "num_warps": warps,
                      "num_stages": stages, "epi_block": epi}
            marker = tuple(sorted(config.items()))
            if marker not in seen:
                seen.add(marker)
                result.append(config)
        return result
    if kind in _ADD_ACT_KINDS:
        return [{"block": block, "num_warps": warps}
                for block, warps in ((256, 4), (512, 4), (1024, 4), (1024, 8))]
    if kind in _LAYERNORM_KINDS:
        return [{"num_warps": 1}, {"num_warps": 4}, {"num_warps": 8}]
    if kind in _MULSUM_KINDS:
        return [{"num_warps": 1}, {"num_warps": 2},
                {"num_warps": 4}, {"num_warps": 8}]
    return []


def _config_marker(config):
    return tuple(sorted(config.items()))


def _normalize_domain(kind, inputs, proposer_order=None):
    domain = finite_configs(kind, inputs)
    markers = {_config_marker(config) for config in domain}
    selected = []
    rejected = []
    for config in proposer_order or ():
        if not isinstance(config, dict):
            rejected.append({"config": repr(config), "reason": "not_a_dict"})
            continue
        marker = _config_marker(config)
        if marker not in markers:
            rejected.append({"config": dict(config),
                             "reason": "outside_validated_finite_domain"})
            continue
        if config not in selected:
            selected.append(config)
    return selected, domain, rejected


@dataclass(frozen=True)
class TuningPlan:
    """A fixed configuration map plus selection evidence.

    ``config_for`` uses the same kind/device/dtype/shape/stride key that
    ``select_configs`` recorded. Compilation never benchmarks this map.
    """

    configs: dict
    evidence: dict
    semantic_version: int = CONFIG_VERSION

    def config_for(self, kind, inputs, options=None):
        return self.configs.get(_key(kind, inputs, options))

    def as_dict(self):
        configs = {str(key): dict(value) for key, value in self.configs.items()}
        return {"semantic_version": self.semantic_version,
                "configs": configs, "evidence": self.evidence}


def _shape_dict(kind, inputs):
    result = {"kind": kind, "dtype": str(inputs[0].dtype),
              "device": str(inputs[0].device)}
    if kind in _MATRIX_KINDS:
        result.update(m=int(inputs[0].shape[0]), k=int(inputs[0].shape[1]),
                      n=int(inputs[1].shape[1]))
    elif kind in _LAYERNORM_KINDS or kind in _MULSUM_KINDS:
        result.update(m=int(inputs[0].shape[0]), n=int(inputs[0].shape[1]))
    else:
        result.update(m=int(inputs[0].shape[0]), n=int(inputs[0].shape[1]))
    return result


def _make_flagtune_proposer(kind, inputs, identities):
    from triton.flagtune import make_config_proposer
    from triton.flagtune.contract.identity import make_dtype_key, make_platform_key
    from triton.flagtune.runtime.device import probe_flagtune_device

    descriptor = probe_flagtune_device(inputs[0].device.index)
    platform_key = make_platform_key(descriptor.vendor, descriptor.device_name)
    dtype_key = make_dtype_key(tuple(t.dtype for t in inputs))
    op_id, variant = identities[kind]
    return make_config_proposer(op_id, variant, platform_key=platform_key,
                                dtype_key=dtype_key)


def _default_identities():
    return {
        "matmul_bias_gelu_exact": ("flagtree/graph_fusion_matmul_bias_gelu", "exact"),
        "matmul_bias_gelu_tanh": ("flagtree/graph_fusion_matmul_bias_gelu", "tanh"),
        "matmul_bias_silu": ("flagtree/graph_fusion_matmul_bias_silu", "triton"),
        "add_gelu_exact": ("flagtree/graph_fusion_add_gelu", "exact"),
        "add_gelu_tanh": ("flagtree/graph_fusion_add_gelu", "tanh"),
        "add_silu": ("flagtree/graph_fusion_add_silu", "triton"),
        "add_layernorm": ("flagtree/graph_fusion_add_layernorm", "triton"),
        "add_layernorm_weight": ("flagtree/graph_fusion_add_layernorm", "weight"),
        "add_layernorm_bias": ("flagtree/graph_fusion_add_layernorm", "bias"),
        "add_layernorm_affine": ("flagtree/graph_fusion_add_layernorm", "affine"),
        "mul_sum": ("flagtree/graph_fusion_mul_sum", "triton"),
        "mul_sum_keepdim": ("flagtree/graph_fusion_mul_sum", "keepdim"),
    }


def _get_attr(module, target):
    value = module
    try:
        for part in str(target).split("."):
            value = getattr(value, part)
    except (AttributeError, TypeError):
        return None
    return value


def _region_values(graph_module, graph, example_inputs):
    placeholders = [node for node in graph.nodes if node.op == "placeholder"]
    values = dict(zip(placeholders, example_inputs))
    result = {}
    for node in graph.nodes:
        if node.op == "placeholder":
            result[node] = values.get(node)
        elif node.op == "get_attr":
            result[node] = _get_attr(graph_module, node.target)
    return result


def _reference(graph_module, match, values):
    from torch import fx
    from ._runtime import _graph_function
    graph, env = fx.Graph(), {}
    for node in match.inputs:
        if node not in env:
            env[node] = graph.placeholder(node.name)
    for node in match.nodes:
        env[node] = graph.node_copy(node, lambda n: env[n])
    graph.output(env[match.nodes[-1]])
    function = _graph_function(graph)
    return function(graph_module, *values)


def _tolerances(dtype):
    if dtype == torch.bfloat16:
        return 3e-3, 3e-2
    if dtype == torch.float16:
        return 3e-3, 3e-3
    return 3e-4, 3e-4


def _runner_benchmarker(warmup_ms, measurement_ms):
    from triton.flagtune.runtime.benchmark_protocol import resolve_benchmarker
    resolved = resolve_benchmarker("event", warmup_ms=warmup_ms,
                                   measurement_ms=measurement_ms,
                                   allow_fallback=True)

    def run(call):
        return resolved.benchmark(call, [0.5]), resolved.protocol.as_dict()

    return run


def _benchmark_call(benchmarker, call):
    try:
        samples = benchmarker(call)
    except TypeError:
        samples = benchmarker(call, [0.5])
    if isinstance(samples, tuple) and len(samples) == 2 and isinstance(samples[1], dict):
        samples, protocol = samples
    else:
        protocol = None
    if isinstance(samples, (int, float)):
        samples = [samples]
    values = [float(value) for value in samples]
    if not values or not all(math.isfinite(value) and value >= 0.0
                             for value in values):
        raise ValueError("benchmark returned no finite non-negative sample")
    return values, protocol


def select_configs(graph_module, example_inputs, *, registry=None, proposer=None,
                   benchmarker=None, correctness=True, use_flagtune=False,
                   flagtune_identities=None, warmup_ms=25, measurement_ms=100,
                   use_cache=True):
    """Explicitly select fixed expanded-F06 configurations outside capture.

    Args:
        graph_module: matching ``torch.fx.GraphModule``.
        example_inputs: tensor metadata and values used for correctness/timing.
        proposer: optional FlagTune ``ConfigProposer``. It is called with
            ``benchmark_fn=None`` so ranking happens before outer evaluation.
        benchmarker: optional one-argument callable returning latency samples.
            By default the FlagTune event benchmark protocol is used.
        correctness: compare each candidate with the original FX subgraph
            before timing it.
        use_flagtune: explicitly attempt local FlagTune model resolution using
            the default identities. Failures fall back to bounded configs.
        flagtune_identities: optional ``{kind: (op_id, variant)}`` overrides.
        warmup_ms, measurement_ms: FlagTune event protocol settings.
        use_cache: reuse a previous selection with the same metadata.

    Planning and compilation of the baseline still happen only in ``compile``.
    This API is the only place that executes candidate kernels, and callers
    must invoke it before capture/replay starts.
    """
    from torch import fx
    from ._patterns import default_registry, match_graph

    if not isinstance(graph_module, fx.GraphModule):
        raise TypeError("select_configs expects a torch.fx.GraphModule")
    inputs = tuple(example_inputs)
    if _stream_capturing(inputs):
        raise RuntimeError("select_configs must run outside CUDA graph capture")
    values_by_node = _region_values(graph_module, graph_module.graph, inputs)
    selected, _ = match_graph(graph_module, registry or default_registry())
    configs, evidence = {}, {}

    identities = _default_identities()
    if flagtune_identities:
        identities.update(flagtune_identities)

    for template, match in selected:
        region_values = tuple(values_by_node.get(node) for node in match.inputs)
        if not all(type(value) in (torch.Tensor, torch.nn.Parameter)
                   for value in region_values):
            continue
        kind = match.kind
        key = _key(kind, region_values, match.options)
        record = {"template": template.template_id, "kind": kind,
                  "semantic_version": CONFIG_VERSION,
                  "calls": tuple(node.name for node in match.nodes),
                  "options": dict(match.options)}
        domain = finite_configs(kind, region_values)
        record["domain"] = domain
        if not domain:
            record.update(selected=None, source="retained_qualified_policy",
                          reason="template_keeps_existing_fixed_policy")
            evidence[str(key)] = record
            continue
        if match.options:
            backend, reason = _backend.check(kind, region_values,
                                             options=dict(match.options))
        else:
            backend, reason = _backend.check(kind, region_values)
        if reason:
            record.update(selected=None, source="eligibility_rejected",
                          reason=reason, backend=backend)
            evidence[str(key)] = record
            continue
        record["backend"] = backend
        cache_key = _cache_key(kind, region_values, match, backend, proposer,
                               benchmarker, correctness, warmup_ms,
                               measurement_ms, use_flagtune, identities)
        if use_cache and cache_key in _CACHE:
            config, cached = _CACHE[cache_key]
            if config in domain:
                record.update(cached)
                record["cache_hit"] = True
                configs[key] = config
                evidence[str(key)] = record
                continue

        candidate_proposer = proposer
        provenance = {"mode": "bounded_fallback",
                      "reason": "no_proposer_supplied"}
        if candidate_proposer is None and use_flagtune:
            try:
                candidate_proposer = _make_flagtune_proposer(kind, region_values,
                                                             identities)
                provenance = {"mode": "flagtune_model",
                              "identity": list(identities[kind])}
            except Exception as error:  # model availability must not break fallback
                provenance = {"mode": "bounded_fallback",
                              "reason": "flagtune_model_unavailable",
                              "detail": f"{type(error).__name__}: {error}"[:500]}
        ordered = []
        rejected = []
        if candidate_proposer is not None:
            try:
                proposed = candidate_proposer(None, _shape_dict(kind, region_values),
                                              domain, {"kind": kind,
                                                       "semantics": dict(match.options)})
                ordered, _, rejected = _normalize_domain(kind, region_values, proposed)
                if ordered:
                    provenance = dict(provenance, mode=("flagtune_model_ranked"
                        if provenance["mode"] == "flagtune_model" else "caller_proposer_ranked"))
                else:
                    provenance = dict(provenance, mode="bounded_fallback",
                                      reason="proposer_returned_no_valid_config")
            except Exception as error:
                provenance = {"mode": "bounded_fallback",
                              "reason": "proposer_failed",
                              "detail": f"{type(error).__name__}: {error}"[:500]}
        candidates = ordered + [config for config in domain if config not in ordered]
        record.update(proposer=provenance, proposer_rejected=rejected,
                      candidates=[dict(config) for config in candidates])

        if not torch.cuda.is_available() or region_values[0].device.type != "cuda":
            chosen = candidates[0]
            record.update(selected=chosen, source=provenance["mode"],
                          reason="requires_accelerator_for_candidate_execution",
                          correctness="not_run", latency_ms=None)
            configs[key] = chosen
            evidence[str(key)] = record
            if use_cache:
                _CACHE[cache_key] = (chosen, dict(record))
            continue

        benchmark = (benchmarker if benchmarker is not None
                     else _runner_benchmarker(warmup_ms, measurement_ms))
        reference = None
        reference_error = None
        try:
            with torch.no_grad():
                reference = _reference(graph_module, match, region_values)
        except Exception as error:
            reference_error = f"{type(error).__name__}: {error}"[:500]
        if correctness and reference_error is not None:
            record.update(selected=None, source=provenance["mode"],
                          reason="reference_failed", correctness="failed",
                          reference_error=reference_error)
            evidence[str(key)] = record
            continue

        results = []
        for config in candidates:
            prepared = None
            try:
                run_config = dict(config)
                run_config.update(dict(match.options))
                prepared = _backend.prepare(kind, region_values, backend,
                                            config=run_config)
                with torch.no_grad():
                    actual, _ = prepared()
                    if correctness and reference_error is None:
                        rtol, atol = _tolerances(region_values[0].dtype)
                        torch.testing.assert_close(actual, reference, rtol=rtol,
                                                   atol=atol, equal_nan=True)
                    samples, protocol = _benchmark_call(
                        benchmark, lambda: prepared())
                results.append({"config": dict(config), "latency_ms": samples[0],
                                "samples": samples, "protocol": protocol,
                                "correct": True})
            except Exception as error:
                results.append({"config": dict(config), "correct": False,
                                "error": f"{type(error).__name__}: {error}"[:500]})
        record["evaluations"] = results
        correct = [entry for entry in results if entry.get("correct")]
        if correct:
            chosen = min(correct, key=lambda entry: entry["latency_ms"])["config"]
            best = next(entry for entry in correct if entry["config"] == chosen)
            record.update(selected=chosen, source=provenance["mode"],
                          reason=("lowest_finite_latency_after_correctness"
                                  if correctness else
                                  "lowest_finite_latency_without_correctness"),
                          correctness=("passed" if correctness else "not_checked"),
                          latency_ms=best["latency_ms"],
                          protocol=best["protocol"])
            configs[key] = chosen
            if use_cache:
                _CACHE[cache_key] = (chosen, dict(record))
        else:
            record.update(selected=None, source=provenance["mode"],
                          reason=("reference_failed" if reference_error
                                  else "no_correct_candidate"),
                          correctness="failed", reference_error=reference_error)
        evidence[str(key)] = record

    return TuningPlan(configs=configs, evidence=evidence)
