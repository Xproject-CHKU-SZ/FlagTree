"""Versioned, opt-in exact-metadata policies for qualified compiled replay.

Each document belongs to one model/PT2/runtime and contains at most two exact
input metadata entries. A missing/rejected/disabled document retains compiled
B0. Evidence hashes identify qualification records, not signatures or proof
that an arbitrary input or another model is qualified.
"""
from collections import Counter
import hashlib
import json
from pathlib import Path

from .graph_replay import ExactReplayCache, identity_hash, tensor_metadata

SCHEMA = "ppu-exact-replay-policy-v1"


def digest(value):
    return hashlib.sha256(json.dumps(value,sort_keys=True,separators=(",",":"),allow_nan=False).encode()).hexdigest()


def is_sha256(value):
    return isinstance(value,str) and len(value)==64 and all(x in "0123456789abcdef" for x in value)


def runtime_identity(*,model_id,revision,task,pt2_sha256,protocol_sha256,compile_options):
    """Fingerprint the actual loaded runtime; never copy identity from a policy."""
    import importlib.metadata as metadata
    import torch
    import triton
    def file_hash(path):
        result=hashlib.sha256()
        with Path(path).open('rb') as file:
            for block in iter(lambda:file.read(1024*1024),b''):result.update(block)
        return result.hexdigest()
    triton_root=Path(triton.__file__).parent
    return {"model_id":model_id,"revision":revision,"task":task,"pt2_sha256":pt2_sha256,
        "protocol_sha256":protocol_sha256,"compile_options_sha256":digest(compile_options),
        "source_sha256":file_hash(Path(__file__).with_name('graph_replay.py')),
        "router_sha256":file_hash(__file__),"compiler_sha256":file_hash(triton_root/'backends/ppu/compiler.py'),
        "libtriton_sha256":file_hash(triton_root/'_C/libtriton.so'),"precision":f"FP32/{torch.get_float32_matmul_precision()}",
        "target":torch.cuda.get_device_name(0),
        "runtime":f"torch={torch.__version__};triton={triton.__version__};flagtree={metadata.version('flagtree')}"}


def validate_identity(identity):
    identity_hash(identity)
    if identity["precision"] != "FP32/highest":
        raise ValueError("Only measured FP32/highest policy is qualified")
    for name in ("pt2_sha256","source_sha256","compiler_sha256","libtriton_sha256",
                 "protocol_sha256","compile_options_sha256","router_sha256"):
        if not is_sha256(identity.get(name)):
            raise ValueError(f"Missing runtime/content hash: {name}")


def metadata_key(entries):
    result=[]
    if not isinstance(entries,list) or not entries:
        raise ValueError("At least one input descriptor required")
    for value in entries:
        if not isinstance(value,list) or len(value)!=5:
            raise ValueError("Expected shape/stride/offset/dtype/device descriptor")
        shape,stride,offset,dtype,device=value
        if (not isinstance(shape,list) or not shape or len(shape)!=len(stride)
                or any(type(n) is not int or n<=0 for n in shape)
                or any(type(n) is not int or n<=0 for n in stride)
                or type(offset) is not int or offset!=0 or device!="cuda:0"
                or dtype not in {"torch.int64","torch.int32","torch.bool","torch.float32"}):
            raise ValueError("Unqualified input metadata")
        result.append((tuple(shape),tuple(stride),offset,dtype,device))
    return tuple(result)


def policy_document(identity, entries, evidence):
    validate_identity(identity)
    if not isinstance(entries,list) or not 1<=len(entries)<=2:
        raise ValueError("One or two exact input entries required")
    keys=[metadata_key(x) for x in entries]
    if len(set(keys))!=len(keys):
        raise ValueError("Duplicate policy entries")
    if (set(evidence)!={"calibration_sha256","comparison_sha256","artifact_audit_sha256"}
            or not all(is_sha256(x) for x in evidence.values())):
        raise ValueError("Complete qualification evidence hashes required")
    body={"schema":SCHEMA,"identity":identity,"entries":entries,"evidence":evidence}
    return json.loads(json.dumps({**body,"sha256":digest(body)}))


def load_policy(path, expected_identity):
    validate_identity(expected_identity)
    try:
        value=json.loads(Path(path).read_text(encoding="utf-8"))
        if set(value)!={"schema","identity","entries","evidence","sha256"}:
            raise ValueError("Policy field/schema drift")
        expected=policy_document(value["identity"],value["entries"],value["evidence"])
        if value!=expected or value["identity"]!=expected_identity:
            raise ValueError("Policy checksum/identity mismatch")
        return value,"loaded"
    except (OSError,ValueError,KeyError,TypeError) as exc:
        return None,f"policy_rejected:{type(exc).__name__}:{exc}"


class PolicyReplayRouter:
    """Explicit preparation and compiled-only fallback; disabled by default."""
    def __init__(self,compiled,*,identity,policy_path,frozen_tensors,enabled=False):
        if not callable(compiled) or not callable(frozen_tensors):
            raise ValueError("Compiled forward and immutable model-state provider required")
        self.document,self.policy_status=load_policy(policy_path,identity)
        self.compiled=compiled;self.cache=None;self.last_route=None;self.counts=Counter()
        self.enabled=bool(enabled)
        self.namespace=digest({"identity":identity,"document":self.document,"enabled":self.enabled})
        self._keys={metadata_key(x) for x in self.document["entries"]} if self.document else set()
        if self.enabled and self.document:
            self.cache=ExactReplayCache(compiled,identity={**identity,"policy_sha256":self.document["sha256"]},
                frozen_tensors=frozen_tensors,allowed_shapes=[tuple(x[0] for x in key) for key in self._keys],
                enabled=True,max_entries=len(self._keys))

    def _qualified(self,inputs):
        try:return tuple(tensor_metadata(x) for x in inputs) in self._keys
        except (AttributeError,TypeError):return False

    def prepare(self,*inputs):
        if self.cache is None:return {"prepared":False,"reason":"disabled_or_rejected_policy"}
        if not self._qualified(inputs):return {"prepared":False,"reason":"metadata_not_in_policy"}
        return self.cache.prepare(*inputs)

    def __call__(self,*inputs):
        if self.cache is not None and self._qualified(inputs):
            result=self.cache(*inputs);self.last_route=dict(self.cache.last_route)
        else:
            reason="policy_disabled" if not self.enabled else self.policy_status if not self.document else "metadata_not_in_policy"
            self.last_route={"route":"original_compiled","reason":reason}
            result=self.compiled(*inputs)
        self.counts[self.last_route["route"]]+=1
        return result

    def disable(self):
        self.enabled=False
        if self.cache is not None:self.cache.disable()

    def snapshot(self):
        return {"namespace":self.namespace,"enabled":self.enabled,"policy_status":self.policy_status,
                "policy_sha256":self.document["sha256"] if self.document else None,
                "counters":dict(self.counts),"last_route":self.last_route,
                "cache":self.cache.snapshot() if self.cache is not None else None,
                "memory_note":"disable is behavioral rollback; captured graph pools remain resident"}
