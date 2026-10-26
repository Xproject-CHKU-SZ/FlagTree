"""Opt-in two-entry exact-shape CUDA-compatible PPU graph replay.

Only compiled eval callables are accepted by contract. Preparation is explicit;
requests never capture a graph, change tensor shapes, or retry an exception via
eager. Frozen model state must have normal tensor version counters and must not
be concurrently mutated (including untracked .data writes).
"""
from __future__ import annotations
from collections import Counter
import hashlib
import json
import threading
import time


REQUIRED_IDENTITY = ("model_id", "revision", "task", "pt2_sha256", "source_sha256",
                     "compiler_sha256", "precision", "target", "runtime")


def identity_hash(identity):
    if not isinstance(identity, dict) or any(not isinstance(identity.get(k), str) or not identity[k]
                                             for k in REQUIRED_IDENTITY):
        raise ValueError("Complete immutable replay identity required")
    if identity["target"] != "PPU-ZW810E":
        raise ValueError("PPU-ZW810E replay target required")
    return hashlib.sha256(json.dumps(identity, sort_keys=True, separators=(",", ":"),
                                     allow_nan=False).encode()).hexdigest()


def tensor_metadata(tensor):
    return (tuple(tensor.shape), tuple(tensor.stride()), tensor.storage_offset(),
            str(tensor.dtype), str(tensor.device))


def state_signature(tensors):
    # Strong references live in the module/provider or the prepared entries.
    # _version rejects inference tensors that cannot prove weight immutability.
    return tuple((id(x), x._version, x.data_ptr(), tensor_metadata(x)) for x in tensors)


def execution_signature():
    import torch
    return (torch.get_float32_matmul_precision(), torch.backends.cuda.matmul.allow_tf32,
            torch.is_autocast_enabled("cuda"), str(torch.get_autocast_dtype("cuda")),
            torch.are_deterministic_algorithms_enabled())


class ExactReplayCache:
    """Synchronous host ownership, single CUDA stream, cloned returned output.

    One instance belongs to one immutable model/compiled context. Dynamic inputs
    are admitted by exact metadata, not observed input object identities. Data
    is copied on EVERY hit; graph outputs are cloned before the next replay.
    """
    def __init__(self, compiled, *, identity, frozen_tensors, allowed_shapes,
                 enabled=False, max_entries=2):
        if not callable(compiled) or not callable(frozen_tensors):
            raise ValueError("Compiled forward and current model-state provider required")
        if type(max_entries) is not int or not 1 <= max_entries <= 2:
            raise ValueError("Only one or two exact-shape graph entries allowed")
        if not allowed_shapes or len(allowed_shapes) > 5:
            raise ValueError("Declare a finite shape support set")
        model_namespace = identity_hash(identity)
        self._identity_json = json.dumps(identity, sort_keys=True)
        self._compiled, self._state_provider = compiled, frozen_tensors
        self._allowed = {tuple(tuple(s) for s in shapes) for shapes in allowed_shapes}
        self.namespace = hashlib.sha256(json.dumps({"model":model_namespace,"policy_version":"exact-replay-v1",
            "allowed_shapes":sorted(self._allowed),"max_entries":max_entries},sort_keys=True).encode()).hexdigest()
        self._enabled, self._capacity = bool(enabled), max_entries
        self._entries, self._events = {}, []
        self._counts = Counter()
        self._lock = threading.Lock()
        self._invalidated = False
        self._stream_id = None
        self._device = None
        self.last_route = None

    @property
    def identity(self):
        return json.loads(self._identity_json)

    def _request_key(self, inputs):
        import torch
        if not inputs or any(not isinstance(x, torch.Tensor) or x.device.type != "cuda"
                             or x.layout != torch.strided or not x.is_contiguous()
                             or x.storage_offset() != 0 for x in inputs):
            return None, "input_layout_or_device_not_qualified"
        if len({str(x.device) for x in inputs}) != 1:
            return None, "mixed_input_devices"
        if tuple(tuple(x.shape) for x in inputs) not in self._allowed:
            return None, "shape_not_declared"
        return tuple(tensor_metadata(x) for x in inputs), None

    def _fallback(self, inputs, reason):
        self.last_route = {"route":"original_compiled", "reason":reason}
        self._counts["original_compiled"] += 1
        self._counts[reason] += 1
        return self._compiled(*inputs)

    def prepare(self, *inputs):
        """Compile/warm first, then capture. Exceptions propagate with no retry."""
        import torch
        with self._lock:
            if not self._enabled or self._invalidated:
                return {"prepared":False,"reason":"disabled_or_invalidated"}
            key, reason = self._request_key(inputs)
            if key is None:
                return {"prepared":False,"reason":reason}
            if key in self._entries:
                return {"prepared":True,"reason":"already_prepared"}
            if len(self._entries) >= self._capacity:
                return {"prepared":False,"reason":"entry_budget_exhausted"}
            if torch.is_grad_enabled():
                raise ValueError("Prepare only under inference/no-grad mode")
            if torch.cuda.get_device_name(inputs[0].device) != "PPU-ZW810E":
                raise ValueError("PPU-ZW810E required")
            owner_stream = torch.cuda.current_stream(inputs[0].device)
            if self._stream_id is not None and (self._stream_id != owner_stream.cuda_stream
                                                or self._device != inputs[0].device):
                return {"prepared":False,"reason":"different_owner_stream_or_device"}
            state = tuple(self._state_provider())
            execution = execution_signature()
            try:
                signature = state_signature(state)
            except RuntimeError:
                return {"prepared":False,"reason":"unversioned_model_state"}
            static = tuple(x.clone() for x in inputs)
            stream = torch.cuda.Stream(device=inputs[0].device)
            stream.wait_stream(owner_stream)
            with torch.cuda.stream(stream):
                for _ in range(20):
                    self._compiled(*static)
            owner_stream.wait_stream(stream)
            torch.cuda.synchronize(inputs[0].device)
            graph = torch.cuda.CUDAGraph()
            before = torch.cuda.memory_allocated(inputs[0].device)
            start = time.perf_counter()
            with torch.cuda.graph(graph):
                output = self._compiled(*static)
            torch.cuda.synchronize(inputs[0].device)
            leaves, spec = torch.utils._pytree.tree_flatten(output)
            if len(leaves) != 1 or not isinstance(leaves[0], torch.Tensor) or leaves[0].device != inputs[0].device:
                raise ValueError("Exactly one PPU tensor output required; preserve its container")
            if state_signature(tuple(self._state_provider())) != signature or execution_signature() != execution:
                self._invalidated = True
                raise ValueError("Model state changed during graph preparation")
            event = {"prepared":True,"entry":len(self._entries),"input_metadata":key,
                     "capture_s":time.perf_counter()-start,
                     "capture_persistent_torch_bytes":torch.cuda.memory_allocated(inputs[0].device)-before,
                     "static_input_bytes":sum(x.numel()*x.element_size() for x in static)}
            self._entries[key] = {"graph":graph,"static":static,"output":leaves[0],"spec":spec,
                                  "state_signature":signature,"state_refs":state,"execution_signature":execution}
            self._stream_id, self._device = owner_stream.cuda_stream, inputs[0].device
            self._events.append(event)
            return dict(event)

    def __call__(self, *inputs):
        import torch
        with self._lock:
            if not self._enabled:
                return self._fallback(inputs,"policy_disabled")
            if self._invalidated:
                return self._fallback(inputs,"model_state_invalidated")
            if torch.is_grad_enabled():
                return self._fallback(inputs,"grad_enabled")
            key, reason = self._request_key(inputs)
            if key is None:
                return self._fallback(inputs,reason)
            entry = self._entries.get(key)
            if entry is None:
                return self._fallback(inputs,"not_prepared_or_budget_miss")
            if torch.cuda.current_stream(inputs[0].device).cuda_stream != self._stream_id:
                return self._fallback(inputs,"different_owner_stream")
            if execution_signature() != entry["execution_signature"]:
                self._invalidated = True
                return self._fallback(inputs,"execution_policy_changed")
            try:
                current = state_signature(tuple(self._state_provider()))
            except RuntimeError:
                current = None
            if current != entry["state_signature"]:
                self._invalidated = True
                return self._fallback(inputs,"model_state_changed")
            for target, value in zip(entry["static"], inputs):
                target.copy_(value)
            entry["graph"].replay()
            result = entry["output"].clone()
            self.last_route = {"route":"graph_replay","reason":"prepared_exact_metadata"}
            self._counts["graph_replay"] += 1
            return torch.utils._pytree.tree_unflatten([result],entry["spec"])

    def disable(self):
        """Stop replay immediately; entries stay resident until owner disposal.

        This is behavioral rollback, NOT release of graph-pool memory. Reports
        must retain resident allocation in the disabled/rollback state.
        """
        with self._lock:
            self._enabled = False

    def snapshot(self):
        with self._lock:
            return {"namespace":self.namespace,"enabled":self._enabled,"capacity":self._capacity,
                    "entries":len(self._entries),"invalidated":self._invalidated,
                    "owner_stream":self._stream_id,"counters":dict(self._counts),
                    "last_route":dict(self.last_route) if self.last_route else None,
                    "preparations":json.loads(json.dumps(self._events)),
                    "memory_scope":"graph pools retained, including disabled mode; input copies and output clone included"}
