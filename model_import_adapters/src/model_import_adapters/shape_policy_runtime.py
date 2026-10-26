"""Opt-in policy documents and bounded metadata routing for the qualified MLP.

The cache stores decisions, not tensors, outputs, graphs or Triton binaries.
A router is immutable: model/compiler/policy changes require another instance.
Compilation errors propagate; no exception-driven eager fallback is installed.
"""
from __future__ import annotations

from collections import Counter, OrderedDict
import hashlib
import json
from pathlib import Path

from .shape_policy import (POLICY_VERSION, ShapeDecision, decision_record,
                           policy_identity, select_mlp_config)

SCHEMA = "ppu-mlp-policy-document-v1"
DOMAIN = {"m": [1, 64], "k": 384, "n": 1536, "buckets": [[1, 16], [17, 64]],
          "dtype": "float32", "precision": "tf32x3", "inner_strides": [1, 1, 1]}


def digest(value):
    data = json.dumps(value, sort_keys=True, separators=(",", ":"), allow_nan=False).encode()
    return hashlib.sha256(data).hexdigest()


def validate_identity(identity):
    fields = dict(identity["fields"])
    version = fields.pop("policy_version")
    if version != POLICY_VERSION or policy_identity(**fields) != identity:
        raise ValueError("Policy identity checksum/version mismatch")
    if fields["dtype"] != "float32" or fields["precision"] != "tf32x3" or fields["target"] != "PPU-ZW810E":
        raise ValueError("Policy runtime requires qualified FP32/tf32x3 PPU target")


def policy_document(identity):
    validate_identity(identity)
    body = {"schema": SCHEMA, "identity": identity, "domain": DOMAIN}
    # JSON roundtrip prevents aliases to caller-owned mutable lists/dictionaries.
    return json.loads(json.dumps({**body, "sha256": digest(body)}))


def load_policy(path, expected_identity):
    """Invalid/stale configuration explicitly keeps compiled B0, never eager."""
    validate_identity(expected_identity)
    try:
        value = json.loads(Path(path).read_text(encoding="utf-8"))
        body = {k: value[k] for k in ("schema", "identity", "domain")}
        if set(value) != {*body, "sha256"} or value["sha256"] != digest(body):
            raise ValueError("Policy document checksum/fields mismatch")
        validate_identity(value["identity"])
        if body != {"schema": SCHEMA, "identity": expected_identity, "domain": DOMAIN}:
            raise ValueError("Policy document identity/domain mismatch")
        return value, "loaded"
    except (OSError, ValueError, KeyError, TypeError) as exc:
        return None, f"policy_rejected:{type(exc).__name__}:{exc}"


class MlpPolicyRouter:
    """Route actual request metadata outside Dynamo; compiled callbacks only.

    The caller supplies compiled native/scene paths and qualified candidates.
    Each callback retains its normal Dynamo/Inductor/Triton correctness keys.
    Errors raised by a callback propagate without retrying another path.
    """
    def __init__(self, *, identity, policy_path, native_compiled, scene_compiled,
                 candidates, enabled=False, cache_capacity=32):
        validate_identity(identity)
        if type(cache_capacity) is not int or not 1 <= cache_capacity <= 256:
            raise ValueError("Metadata cache capacity must be 1..256")
        if any(type(k) is not int or k not in (16, 32) or not callable(v) for k, v in candidates.items()):
            raise ValueError("Only qualified compiled BM16/BM32 callbacks are accepted")
        if not callable(native_compiled) or not callable(scene_compiled):
            raise ValueError("Explicit compiled baseline callbacks are required")
        self._identity = json.loads(json.dumps(identity))
        self._document, self.load_status = load_policy(policy_path, self._identity)
        self._enabled = bool(enabled)
        self.native_compiled = native_compiled
        self.scene_compiled = scene_compiled
        self._candidates = dict(candidates)
        self.capacity = cache_capacity
        self.cache = OrderedDict()
        self.counts = Counter()
        self.last_decision = None
        self.namespace = digest({"identity": self._identity, "document": self._document,
                                 "enabled": self._enabled, "policy_status": self.load_status})

    @property
    def enabled(self):
        return self._enabled

    @property
    def identity(self):
        return json.loads(json.dumps(self._identity))

    @staticmethod
    def metadata(a, weight, bias):
        return tuple((tuple(x.shape), tuple(x.stride()), str(x.dtype), str(x.device))
                     for x in (a, weight, bias))

    def decide(self, a, weight, bias):
        metadata = self.metadata(a, weight, bias)
        key = digest({"namespace": self.namespace, "metadata": metadata})
        if key in self.cache:
            self.counts["cache_hit"] += 1
            value = self.cache.pop(key)
            self.cache[key] = value
            return dict(value)
        self.counts["cache_miss"] += 1
        shapes = [item[0] for item in metadata]
        valid_geometry = (len(shapes[0]) == len(shapes[1]) == 2 and len(shapes[2]) == 1
                          and shapes[0][1] == shapes[1][0] and shapes[1][1] == shapes[2][0])
        qualified = False
        if valid_geometry:
            m, k = shapes[0]
            n = shapes[1][1]
            same = a.device.type == "cuda" and a.device == weight.device == bias.device
            fp32 = all(str(x.dtype) == "torch.float32" for x in (a, weight, bias))
            common = (m, k, n, a.stride(1), weight.stride(0), bias.stride(0), same, fp32)
            qualified = select_mlp_config(*common, enabled=True).route == "shape_triton"
            blocks = tuple(self._identity["fields"]["blocks"])
            decision = select_mlp_config(*common, enabled=self._enabled and self._document is not None, blocks=blocks)
        else:
            decision = ShapeDecision("original_compiled", "invalid_geometry")
        if qualified and self._enabled and self._document is None:
            decision = ShapeDecision("original_compiled", self.load_status)
        if decision.route == "shape_triton" and decision.block_m not in self._candidates and decision.block_m != 16:
            decision = ShapeDecision("original_compiled", "compiled_candidate_missing")
        # BM16 intentionally reuses the EXACT existing scene callable, rather
        # than compiling an equivalent custom-op wrapper as an extra version.
        route = ("shape_bm32" if decision.route == "shape_triton" and decision.block_m == 32
                 else "scene_b0" if qualified else "native_b0")
        result = {**decision_record(decision), "compiled_route": route, "cache_key": key,
                  "policy_namespace": self.namespace}
        self.cache[key] = result
        if len(self.cache) > self.capacity:
            self.cache.popitem(last=False)
            self.counts["cache_eviction"] += 1
        return dict(result)

    def __call__(self, a, weight, bias):
        decision = self.decide(a, weight, bias)
        self.last_decision = dict(decision)
        self.counts[decision["compiled_route"]] += 1
        forward = {"native_b0": self.native_compiled, "scene_b0": self.scene_compiled,
                   "shape_bm32": self._candidates.get(32)}[decision["compiled_route"]]
        return forward(a, weight, bias)

    def snapshot(self):
        return {"namespace": self.namespace, "policy_status": self.load_status,
                "enabled": self._enabled, "cache_entries": len(self.cache),
                "cache_capacity": self.capacity, "counters": dict(self.counts),
                "last_decision": dict(self.last_decision) if self.last_decision else None}


def compile_mlp_router(*, identity, policy_path, enabled=False, cache_capacity=32):
    """Local MLP integration; no global ATen overrides or full-model claims."""
    import torch
    from triton_kernels.ppu_mlp import small_mlp_gelu
    from triton_kernels.ppu_mlp_shape import small_mlp_gelu_shape
    if not torch.cuda.is_available() or torch.cuda.get_device_name(0) != "PPU-ZW810E":
        raise ValueError("PPU-ZW810E required")

    def native(a, weight, bias):
        return torch.nn.functional.gelu(torch.addmm(bias, a, weight), approximate="none")

    def bm32(a, weight, bias):
        return small_mlp_gelu_shape(a, weight, bias, 32)

    compile_ = lambda forward: torch.compile(forward, fullgraph=True, dynamic=True)
    return MlpPolicyRouter(identity=identity, policy_path=policy_path,
                           native_compiled=compile_(native), scene_compiled=compile_(small_mlp_gelu),
                           candidates={32: compile_(bm32)}, enabled=enabled, cache_capacity=cache_capacity)
