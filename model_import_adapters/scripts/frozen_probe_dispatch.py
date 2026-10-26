"""Request dispatch for audited, resident benchmark probes, not general serving.

Internal MLP shapes are observed by the diagnostic interpreter. They are NOT
proven functions of arbitrary input metadata. Therefore a route is bound only
to the exact benchmark-owned tensors (normal versioned tensors, no .data writes
or concurrent mutation). A new/mutated tensor goes to original compiled PT2;
an observed shape must never qualify an arbitrary future request.
"""
from collections import Counter
import hashlib
import json


class FrozenProbeDispatcher:
    def __init__(self, native_compiled, *, namespace, max_probes=5):
        if not callable(native_compiled) or not 1 <= max_probes <= 32:
            raise ValueError("Compiled fallback and bounded probe count required")
        self.native = native_compiled
        self.namespace = hashlib.sha256(json.dumps(namespace, sort_keys=True,
            allow_nan=False, separators=(",", ":")).encode()).hexdigest()
        self.max_probes = max_probes
        self._entries = {}
        self._sealed = False
        self.counts = Counter()
        self.last_route = None

    @staticmethod
    def signature(inputs):
        return tuple((id(x), x._version, tuple(x.shape), tuple(x.stride()),
                      x.storage_offset(), str(x.dtype), str(x.device)) for x in inputs)

    def register(self, inputs, forward, *, route, input_sha256):
        if self._sealed:
            raise ValueError("Probe qualification is frozen")
        if len(self._entries) >= self.max_probes or not callable(forward):
            raise ValueError("Probe budget exceeded or non-callable compiled path")
        if route not in {"original_compiled", "scene_v3_compiled", "shape_bm32", "static_shape_compiled", "exact_shape_replay"}:
            raise ValueError("No eager route is allowed")
        if len(input_sha256) != 64 or any(c not in "0123456789abcdef" for c in input_sha256):
            raise ValueError("Audited input SHA-256 required")
        key = tuple(id(x) for x in inputs)
        if key in self._entries:
            raise ValueError("Duplicate resident probe")
        # Strong references prevent identity reuse while this dispatcher exists.
        self._entries[key] = (tuple(inputs), self.signature(inputs), forward, route, input_sha256)

    def seal(self):
        self._sealed = True

    def __call__(self, *inputs):
        entry = self._entries.get(tuple(id(x) for x in inputs))
        if entry is not None and self.signature(inputs) == entry[1]:
            self.counts["qualified_request"] += 1
            forward, route = entry[2:4]
        else:
            self.counts["unqualified_request"] += 1
            forward, route = self.native, "original_compiled"
        self.counts[route] += 1
        self.last_route = route
        # Compilation/runtime errors propagate; never retry eager or another path.
        return forward(*inputs)

    def snapshot(self):
        return {"scope": "exact audited resident probes only", "namespace": self.namespace,
                "sealed": self._sealed, "resident_probes": len(self._entries),
                "counters": dict(self.counts), "last_route": self.last_route,
                "input_sha256": sorted(e[4] for e in self._entries.values())}
