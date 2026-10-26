"""Static input guards and ordered FX execution with explicit region fallback."""

import inspect
from builtins import compile as compile_builtin

import torch
from torch import fx

from ._patterns import default_registry, match_graph
from . import _backend


_PREPARED_ATTRS = ("kernel_launches", "kernel_names", "fusion_scope")


def _prepared_diagnostics(prepared):
    version = "v3" if any(hasattr(prepared, name) for name in _PREPARED_ATTRS) else "v2"
    launches = getattr(prepared, "kernel_launches", 1)
    if launches is None:
        launches = 1
    try:
        launches = int(launches)
    except (TypeError, ValueError):
        launches = 1
    names = getattr(prepared, "kernel_names", ())
    if names is None:
        names = ()
    elif isinstance(names, str):
        names = (names,)
    else:
        try:
            names = tuple(names)
        except TypeError:
            names = ()
    native_calls = getattr(prepared, "native_operator_calls", 0)
    if native_calls is None:
        native_calls = 0
    try:
        native_calls = int(native_calls)
    except (TypeError, ValueError):
        native_calls = 0
    native_names = getattr(prepared, "native_operators", ())
    if native_names is None:
        native_names = ()
    elif isinstance(native_names, str):
        native_names = (native_names,)
    else:
        try:
            native_names = tuple(native_names)
        except TypeError:
            native_names = ()
    return (launches, names, getattr(prepared, "fusion_scope", None),
            native_calls, native_names, version)


def _fused_reason(launches, native_calls=0):
    return "supported_partitioned_template" if launches + native_calls > 1 else "supported_template"


def _spec(value):
    if type(value) in (torch.Tensor, torch.nn.Parameter) and value.layout == torch.strided:
        return (type(value), tuple(value.shape), tuple(value.stride()), value.dtype, value.device,
                value.requires_grad, value.is_conj(), value.is_neg())
    raise TypeError("example_inputs must contain ordinary strided tensors only")


class _TensorGuard:
    """Use PyTorch's C++ metadata guard when available, with a portable fallback."""

    def __init__(self, values):
        self.specs = tuple(_spec(x) for x in values)
        self.check = self._python_check
        try:
            guard = torch._C._dynamo.guards.TensorGuards(
                *values, dynamic_dims_sizes=[list(x.shape) for x in values],
                dynamic_dims_strides=[list(x.stride()) for x in values])
            self.check = guard.check
        except (AttributeError, TypeError, RuntimeError):
            pass

    def _python_check(self, *values):
        try:
            return tuple(_spec(x) for x in values) == self.specs
        except TypeError:
            return False


class _Region:
    def __init__(self, owner, template, match, config=None):
        self.owner, self.template, self.match = owner, template, match
        self.config = dict(config or {})
        self.config.update(dict(match.options))
        self.guard = None
        self.launch = None
        self.backend = None
        self.kernel_launches = 1
        self.kernel_names = ()
        self.fusion_scope = None
        self.native_operator_calls = 0
        self.native_operators = ()
        self.implementation_version = "v2"
        self.record = {"template": template.template_id, "version": template.version,
                       "output": match.nodes[-1].name, "backend": None,
                       "mode": "fallback", "reason": "not_run", "kernel_launches": 0,
                       "kernel_names": (), "fusion_scope": None,
                       "native_operator_calls": 0, "native_operators": (),
                       "calls": tuple(node.name for node in match.nodes),
                       "cross_call": len(match.nodes) > 1,
                       "config": dict(self.config) or None}
        # Compile the original region once as a callable, preserving arguments.
        graph, env = fx.Graph(), {}
        for node in match.inputs:
            if node not in env:
                env[node] = graph.placeholder(node.name)
        for node in match.nodes:
            env[node] = graph.node_copy(node, lambda n: env[n])
        graph.output(env[match.nodes[-1]])
        self.fallback = _graph_function(graph)

    def __call__(self, *inputs):
        return self.run(inputs)

    def run(self, inputs, prechecked=False):
        record = self.record
        # Guard context that may change even for tensors with identical metadata.
        if (self.launch is not None and (prechecked or self.guard.check(*inputs))
                and _backend.context_reason(inputs, self.backend) is None):
            try:
                output, kernel = self.launch(inputs)
            except Exception:
                record.update(mode="error", reason="execution_error")
                raise
            if record["mode"] != "fused":
                record.update(mode="fused", reason=_fused_reason(self.kernel_launches, self.native_operator_calls),
                              kernel_launches=self.kernel_launches,
                              kernel_names=self.kernel_names,
                              fusion_scope=self.fusion_scope,
                              native_operator_calls=self.native_operator_calls,
                              native_operators=self.native_operators,
                              implementation=f"{self.backend}.{self.match.kind}.{self.implementation_version}",
                              kernel_name=getattr(kernel, "name", None) or record.get("kernel_name"))
            return output
        if self.match.options:
            backend, reason = _backend.check(self.match.kind, inputs,
                                             options=dict(self.match.options))
        else:
            backend, reason = _backend.check(self.match.kind, inputs)
        record.update(backend=backend, mode="fallback", reason=reason, kernel_launches=0,
                      kernel_names=(), fusion_scope=None,
                      native_operator_calls=0, native_operators=())
        if reason is None:
            from triton.compiler.errors import CompilationError
            from triton.runtime.errors import OutOfResources
            try:
                if self.config:
                    prepared = _backend.prepare(self.match.kind, inputs, backend,
                                                config=self.config)
                else:
                    prepared = _backend.prepare(self.match.kind, inputs, backend)
            except (CompilationError, OutOfResources) as error:
                record.update(reason="compilation_rejected", detail=str(error))
            else:
                (launches, names, scope, native_calls,
                 native_names, version) = _prepared_diagnostics(prepared)
                record.update(kernel_launches=launches, kernel_names=names,
                              fusion_scope=scope,
                              native_operator_calls=native_calls,
                              native_operators=native_names,
                              implementation=f"{backend}.{self.match.kind}.{version}")
                try:
                    output, kernel = prepared()
                except Exception:
                    record.update(mode="error", reason="execution_error")
                    raise
                self.kernel_launches, self.kernel_names = launches, names
                self.fusion_scope, self.implementation_version = scope, version
                self.native_operator_calls, self.native_operators = native_calls, native_names
                self.launch = getattr(prepared, "launch", None)
                self.guard, self.backend = _TensorGuard(inputs), backend
                record.update(mode="fused", reason=_fused_reason(launches, native_calls),
                              kernel_name=getattr(kernel, "name", None))
                return output
        # Device execution errors never reach the fallback branch.
        return self._fallback(inputs)

    def _fallback(self, inputs):
        unique = dict(zip(self.match.inputs, inputs))
        return self.fallback(self.owner.graph_module, *unique.values())


def _graph_function(graph):
    code = graph.python_code("self")
    namespace = dict(code.globals)
    exec(compile_builtin(code.src, "<flagtree-fusion-plan>", "exec"), namespace)
    return namespace["forward"]


def _make_graph_guard(graph):
    # FX node arguments/kwargs are immutable containers. Checking their identity
    # and the linked node order detects structural edits without rendering IR.
    # FX stores args/kwargs and links in private slots on supported versions.
    # Pick fields independently: op/target are public plain attributes in 2.5.
    # Versions without a slot retain the public-property guard.
    nodes = list(graph.nodes)
    fields = tuple(private if nodes and all(hasattr(node, private) for node in nodes)
                   else public for public, private in
                   (("op", "_op"), ("target", "_target"), ("args", "_args"),
                    ("kwargs", "_kwargs"), ("next", "_next")))
    op_field, target_field, args_field, kwargs_field, next_field = fields
    namespace = {"original": graph, "count": len(nodes)}
    checks = ["graph is original", "len(graph.nodes) == count"]
    first = nodes[0] if nodes else None
    if first is not None:
        namespace.update(root=first.prev, first=first)
        checks.append(f"root.{next_field} is first")
    for i, node in enumerate(nodes):
        namespace.update({f"n{i}": node,
                          f"op{i}": getattr(node, op_field),
                          f"target{i}": getattr(node, target_field),
                          f"args{i}": getattr(node, args_field),
                          f"kwargs{i}": getattr(node, kwargs_field),
                          f"next{i}": getattr(node, next_field)})
        checks.extend((f"n{i}.{op_field} is op{i}", f"n{i}.{target_field} is target{i}",
                       f"n{i}.{args_field} is args{i}", f"n{i}.{kwargs_field} is kwargs{i}",
                       f"n{i}.{next_field} is next{i}"))
    source = "def check(graph):\n    return (" + " and ".join(checks) + ")\n"
    exec(compile_builtin(source, "<flagtree-graph-guard>", "exec"), namespace)
    return namespace["check"]


class CompiledGraph:
    """A static FX plan. Calls may replace inputs with matching tensor metadata.

    Values and storage addresses are not specialized. Shape/stride/dtype/device
    changes execute the original graph. The plan is inference-only; training
    and autocast use the original graph. Diagnostics describe the latest call.
    The execution plan uses generated Python and cached kernel launchers.
    """

    def __init__(self, graph_module, example_inputs, *, enabled=True, registry=None,
                 tuning=None):
        if not isinstance(graph_module, fx.GraphModule):
            raise TypeError("compile expects a torch.fx.GraphModule; trace the model explicitly first")
        self.graph_module = graph_module
        self.enabled = enabled
        self._signature = inspect.signature(graph_module.forward)
        bound = self._signature.bind(*example_inputs)
        bound.apply_defaults()
        self._names = tuple(bound.arguments)
        self._specs = tuple(_spec(x) for x in bound.arguments.values())
        self._graph = graph_module.graph
        self._graph_guard = _make_graph_guard(self._graph)
        self._input_guard = _TensorGuard(tuple(bound.arguments.values()))
        self._positional = all(p.kind == inspect.Parameter.POSITIONAL_OR_KEYWORD
                               for p in self._signature.parameters.values())
        self.tuning = tuning
        self.groups, self.rejected = match_graph(graph_module, registry or default_registry())
        self.last_report = {"mode": "not_run", "reason": "planned", "regions": []}
        placeholders = [n for n in self._graph.nodes if n.op == "placeholder"]
        example_values = dict(zip(placeholders, bound.arguments.values()))

        def value_for(node):
            if node.op == "placeholder":
                return example_values.get(node)
            if node.op == "get_attr":
                value = graph_module
                try:
                    for part in str(node.target).split("."):
                        value = getattr(value, part)
                except (AttributeError, TypeError):
                    return None
                return value
            return None

        regions = []
        for template, match in self.groups:
            config = None
            if tuning is not None:
                values = tuple(value_for(node) for node in match.inputs)
                if all(type(value) in (torch.Tensor, torch.nn.Parameter)
                       for value in values):
                    try:
                        config = tuning.config_for(match.kind, values,
                                                   options=match.options)
                    except (AttributeError, TypeError, ValueError):
                        config = None
            regions.append(_Region(self, template, match, config=config))
        self._regions = regions
        ends = {r.match.nodes[-1]: r for r in self._regions}
        internal = {n for r in self._regions for n in r.match.nodes[:-1]}
        graph, env = fx.Graph(), {}
        for node in self._graph.nodes:
            if node in internal:
                continue
            if node in ends:
                region = ends[node]
                def call_region(*args, _region=region):
                    return _region(*args)
                call_region.__name__ = "fused_" + node.name
                env[node] = graph.call_function(call_region, tuple(env[n] for n in region.match.inputs))
            else:
                env[node] = graph.node_copy(node, lambda n: env[n])
        self._forward = _graph_function(graph)
        self._records = [r.record for r in self._regions]
        self._direct = None
        nodes = list(self._graph.nodes)
        if (len(self._regions) == 1 and nodes[-1].op == "output"
                and nodes[-1].args == (self._regions[0].match.nodes[-1],)
                and self._regions[0].match.inputs == tuple(n for n in nodes if n.op == "placeholder")
                and all(n.op in ("placeholder", "output") or n in self._regions[0].match.nodes for n in nodes)):
            self._direct = self._regions[0]

    def warm(self, *args, **kwargs):
        """Run one ordinary call so lazy kernels compile before user capture.

        This is an explicit convenience, not autotuning. It uses the same
        guards and fresh-output semantics as a normal plan call.
        """
        return self(*args, **kwargs)

    def explain(self):
        cross_call = [{"template": template.template_id, "kind": match.kind,
                       "output": match.nodes[-1].name,
                       "calls": tuple(node.name for node in match.nodes),
                       "cross_call": len(match.nodes) > 1,
                       "options": dict(match.options),
                       "eligibility": "selected_adjacent_single_consumer"}
                      for template, match in self.groups]
        return {"templates": [{"id": t.template_id, "version": t.version,
                                "nodes": [n.name for n in m.nodes]} for t, m in self.groups],
                "rejected": list(self.rejected), "last_run": self.last_report,
                "cross_call": cross_call,
                "tuning": self.tuning.as_dict() if self.tuning is not None else None}

    def _mark_fused(self, region, kernel):
        record = region.record
        record.update(mode="fused",
                      reason=_fused_reason(region.kernel_launches,
                                           region.native_operator_calls),
                      kernel_launches=region.kernel_launches,
                      kernel_names=region.kernel_names,
                      fusion_scope=region.fusion_scope,
                      native_operator_calls=region.native_operator_calls,
                      native_operators=region.native_operators,
                      implementation=(f"{region.backend}.{region.match.kind}."
                                      f"{region.implementation_version}"),
                      kernel_name=(getattr(kernel, "name", None)
                                   or record.get("kernel_name")))
        self.last_report = {"mode": "fused", "reason": "completed",
                            "regions": self._records}

    def _call_slow(self, args, kwargs):
        if not kwargs and self._positional and len(args) == len(self._names):
            values = args
        else:
            bound = self._signature.bind(*args, **kwargs)
            bound.apply_defaults()
            values = tuple(bound.arguments.values())
        reason = None
        if not self.enabled:
            reason = "disabled"
        elif not self._graph_guard(self.graph_module.graph):
            reason = "graph_changed"
        elif not self.groups:
            reason = "no_matching_template"
        else:
            same = self._input_guard.check(*values)
            if not same:
                reason = "static_input_guard_failed"
        if reason:
            self.last_report = {"mode": "fallback", "reason": reason, "regions": []}
            return self.graph_module(*args, **kwargs)
        records = self._records
        self.last_report = {"mode": "running", "reason": None, "regions": records}
        try:
            output = self._direct.run(values, prechecked=True) if self._direct else self._forward(self.graph_module, *values)
        except Exception:
            self.last_report["mode"] = "error"
            raise
        if self._direct:
            mode = self._direct.record["mode"]
        else:
            fused = sum(record["mode"] == "fused" for record in records)
            mode = "fused" if fused == len(self.groups) else "mixed" if fused else "fallback"
        self.last_report.update(mode=mode, reason="completed")
        return output

    def __call__(self, *args, **kwargs):
        region = self._direct
        # Keep all live guards in the direct call frame; cold/changed calls use
        # the ordered plan and refresh fallback diagnostics.
        if (not kwargs and self._positional and len(args) == len(self._names)
                and self.enabled and region is not None and region.launch is not None
                and self._graph_guard(self.graph_module.graph)
                and self._input_guard.check(*args)
                and _backend.context_reason(args, region.backend) is None):
            try:
                output, kernel = region.launch(args)
            except Exception:
                region.record.update(mode="error", reason="execution_error")
                self.last_report = {"mode": "error", "reason": "completed", "regions": self._records}
                raise
            if region.record["mode"] != "fused" or self.last_report["mode"] != "fused":
                self._mark_fused(region, kernel)
            return output
        return self._call_slow(args, kwargs)


def compile(graph_module, example_inputs, *, enabled=True, registry=None, tuning=None):
    """Plan static 2D inference compositions without running example inputs.

    Supports functional/method mm or matmul + add (+ ReLU/GELU/SiLU),
    add + softmax or GELU/SiLU, add + last-axis layer_norm,
    and mul + last-axis sum. A "cross-call" region is a chain of adjacent FX
    operator calls, never a captured kernel launch or a call from an earlier
    plan invocation. Unknown operations stay in original order and block
    fusion across them. A registry can restrict template selection. Kernels
    compile lazily; a TuningPlan is an optional precomputed, finite selection.
    """
    return CompiledGraph(graph_module, tuple(example_inputs), enabled=enabled,
                         registry=registry, tuning=tuning)
