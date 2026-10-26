"""Small metadata-only policy for qualified PPU MLP configurations.

This policy chooses launch parameters, never changes tensors or JIT cache keys.
Unqualified inputs retain the caller's original compiled graph.
"""
from __future__ import annotations

from dataclasses import asdict, dataclass
import hashlib
import json

POLICY_VERSION = "ppu-small-mlp-shape-v1"
BASELINE_BM = 16
# BM=8 compiled but failed all nine real-PPU boundary precision probes. It is
# deliberately not a deployable choice, even for shapes whose M is below 16.
ALLOWED_BM = (16, 32)


@dataclass(frozen=True)
class ShapeDecision:
    route: str
    reason: str
    bucket: str | None = None
    block_m: int | None = None
    policy_version: str = POLICY_VERSION


def select_mlp_config(m, k, n, a_stride, weight_stride, bias_stride,
                      same_device, fp32, *, enabled=False, blocks=(16, 16)):
    """Use actual runtime metadata; no model-name or bucket-padding heuristics."""
    if len(blocks) != 2 or any(type(b) is not int or b not in ALLOWED_BM for b in blocks):
        raise ValueError("Exactly two qualified block_m values required")
    if not enabled:
        return ShapeDecision("original_compiled", "policy_disabled")
    if any(type(v) is not int for v in (m, k, n, a_stride, weight_stride, bias_stride)):
        return ShapeDecision("original_compiled", "nonconcrete_metadata")
    if not same_device or not fp32:
        return ShapeDecision("original_compiled", "dtype_or_device")
    if k != 384 or n != 1536 or not 1 <= m <= 64:
        return ShapeDecision("original_compiled", "shape_outside_qualified_domain")
    if (a_stride, weight_stride, bias_stride) != (1, 1, 1):
        return ShapeDecision("original_compiled", "layout_outside_qualified_domain")
    index = 0 if m <= 16 else 1
    return ShapeDecision("shape_triton", "qualified", ("m1_16", "m17_64")[index], blocks[index])


def policy_identity(*, model_id, revision, task, dtype, strides, precision,
                    target, compiler_sha256, source_sha256, blocks):
    """Version a policy result; this is NOT a substitute for Triton's cache key."""
    if len(blocks) != 2 or any(type(b) is not int or b not in ALLOWED_BM for b in blocks):
        raise ValueError("Invalid block configuration")
    value = dict(policy_version=POLICY_VERSION, model_id=model_id, revision=revision,
                 task=task, dtype=dtype, strides=strides, precision=precision,
                 target=target, compiler_sha256=compiler_sha256, source_sha256=source_sha256,
                 blocks=list(blocks))
    if any(value[k] in (None, "") for k in ("model_id", "revision", "task", "dtype", "precision", "target", "compiler_sha256", "source_sha256")):
        raise ValueError("Incomplete policy identity")
    data = json.dumps(value, sort_keys=True, separators=(",", ":"), allow_nan=False).encode()
    return {"fields": value, "sha256": hashlib.sha256(data).hexdigest()}


def decision_record(decision):
    return asdict(decision)
