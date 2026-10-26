"""Bind explicit graph preprocessing to the existing exact-replay identity.

The outer policy schema and default-disabled router stay unchanged. Prepared
and unprepared identities are deliberately incompatible, including when the
preparation matched zero edges. Runtime callers supply actual preparation
records, never records copied from the document they are about to load.
"""
import hashlib
from pathlib import Path

from .replay_policy import digest, is_sha256, validate_identity

PREPROCESSING_SCHEMA = "capture-constant-preprocessing-v1"


def file_hash(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def preprocessing_binding(records, helper_sha256=None):
    if not isinstance(records, list):
        raise ValueError("Actual preparation record list required")
    fields = {"source_attribute", "conversion_node", "buffer", "shape", "dtype", "target", "source_value_sha256"}
    seen = set()
    for row in records:
        if (not isinstance(row, dict) or set(row) != fields or row["shape"] != [] or row["target"] != "cuda:0"
                or row["dtype"] not in {"torch.int64", "torch.int32", "torch.float32", "torch.float64", "torch.bool"}
                or not all(isinstance(row[key], str) and row[key] for key in ("source_attribute", "conversion_node", "buffer"))
                or not is_sha256(row["source_value_sha256"])):
            raise ValueError("Unqualified capture preparation record")
        if row["conversion_node"] in seen:
            raise ValueError("Duplicate capture conversion record")
        seen.add(row["conversion_node"])
    actual_helper = file_hash(Path(__file__).with_name("capture_constants.py"))
    if helper_sha256 is not None and helper_sha256 != actual_helper:
        raise ValueError("Discovery/runtime capture helper source drift")
    return {"schema": PREPROCESSING_SCHEMA, "enabled": True,
            "helper_sha256": actual_helper, "binding_source_sha256": file_hash(__file__),
            "records_sha256": digest(records), "converted_edges": len(records)}


def bind_preprocessing(identity, records, helper_sha256=None):
    validate_identity(identity)
    if "preprocessing" in identity:
        raise ValueError("Bind actual preprocessing once; do not reuse a policy identity as runtime input")
    return {**identity, "preprocessing": preprocessing_binding(records, helper_sha256)}


def bind_discovery_preprocessing(identity, calibration, comparison):
    """Qualification checks the selected AA/AB and actual local helper bytes."""
    flags = [report["identity"].get("prepare_capture_constants", False) for report in (calibration, comparison)]
    if any(type(flag) is not bool for flag in flags) or flags[0] != flags[1]:
        raise ValueError("A/A and A/B preprocessing flag drift")
    if not flags[0]:
        return identity
    records = comparison.get("capture_constants")
    if records != calibration.get("capture_constants"):
        raise ValueError("A/A and A/B actual preprocessing records drift")
    helper = comparison["identity"].get("capture_constants_sha256")
    relative = "model_import_adapters/src/model_import_adapters/capture_constants.py"
    if (not is_sha256(helper) or any(report["identity"].get("capture_constants_sha256") != helper
            or report["identity"].get("source_files", {}).get(relative) != helper for report in (calibration, comparison))):
        raise ValueError("Missing/inconsistent measured preprocessing helper identity")
    return bind_preprocessing(identity, records, helper)
