"""Reuse lowered code within a search over one frozen model and input adapter."""
import copy
import itertools
import threading
import pickle

import torch
from torch import fx
from torch._subclasses.fake_tensor import FakeTensor

from ._graph_cleanup import UnsupportedPlan, literal_key, tensor_layout


def _metadata_key(value):
    if isinstance(value, torch.Tensor):
        return tensor_layout(value)
    if type(value) in (tuple, list):
        return type(value), tuple(_metadata_key(v) for v in value)
    return literal_key(value, {})


def _graph_key(gm, inputs):
    # Opaque modules, captured constants and custom graph code generators may
    # carry state outside FX. Only reuse graphs with a fully explicit ABI.
    if type(gm.graph._codegen) is not fx.graph.CodeGen:
        raise UnsupportedPlan()
    indices = {}
    rows = []
    for node in gm.graph.nodes:
        target = node.target
        if node.op == 'call_function':
            if not (isinstance(target, torch._ops.OpOverload)
                    or getattr(target, '__module__', None) in ('torch', 'torch._C._nn', '_operator')):
                raise UnsupportedPlan()
        elif node.op not in ('placeholder', 'call_method', 'output'):
            raise UnsupportedPlan()
        if node.op != 'output' and not ('example_value' in node.meta or 'val' in node.meta):
            raise UnsupportedPlan()
        val = node.meta.get('example_value', node.meta.get('val'))
        rows.append((node.op, target, literal_key((node.args, node.kwargs), indices), _metadata_key(val)))
        indices[node] = len(indices)

    storages = {}
    bindings = []
    for value in inputs:
        layout = tensor_layout(value)
        storage = value.untyped_storage()._cdata
        alias_group = storages.setdefault(storage, len(storages))
        # Preserve backend vector alignment even for externally supplied storage.
        alignment = None if isinstance(value, FakeTensor) or value.is_meta else value.data_ptr() % 256
        bindings.append((type(value), layout, alias_group, alignment))
    return tuple(rows), tuple(bindings)


class ExecutionPlans:
    def __init__(self):
        self._entries = {}
        self._ids = itertools.count()
        self._lock = threading.RLock()

    def finish_search(self):
        # Dynamo may extract the returned callable's code and release the original
        # Python object. Keep it alive through preparation, then release losers.
        with self._lock:
            self._entries = None

    def compile(self, gm, inputs, schedule, build, record):
        from torch._inductor import config
        try:
            if self._entries is None or config.freezing:
                raise UnsupportedPlan()
            context = (torch.is_grad_enabled(), torch.is_inference_mode_enabled(),
                       torch.are_deterministic_algorithms_enabled(), torch.get_float32_matmul_precision(),
                       torch.is_autocast_enabled('cpu'), torch.is_autocast_enabled('cuda'))
            key = (_graph_key(gm, inputs), literal_key(schedule, {}), context, config.save_config())
        except (UnsupportedPlan, pickle.PicklingError, TypeError, AttributeError):
            return build()
        with self._lock:
            if self._entries is None:
                return build()
            entry = self._entries.get(key)
            if entry is not None:
                token, body, evidence = entry
                record.update(copy.deepcopy(evidence))
                record.update(execution_plan_id=token, reused_execution_plan=True)
                return body
            body = build()
            token = next(self._ids)
            evidence = {k: copy.deepcopy(record[k]) for k in
                        ('pointwise_resource_candidates', 'fp16_buffer_kernels', 'matrix_candidates')
                        if k in record}
            self._entries[key] = (token, body, evidence)
            record['execution_plan_id'] = token
            return body
