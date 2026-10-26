"""Explicit discovery/runtime provenance and raw actual-router qualification.

No model execution. A matched qualified candidate can cross source bundles only
when the actually consumed runtime/script bytes and policy identity are pinned.
This is not a compatibility guess based on Git HEAD or a saved passed string.
"""
from audit_dynamic_shape_pair import audit_reports


def validate_qualification_paths(paths, *, required):
    present = [value is not None for value in paths]
    if (any(present) and not all(present)) or (required and not all(present)):
        raise ValueError("Complete actual-router calibration/comparison/artifact-audit paths required")
    return all(present)


def validate_runtime_qualification(entry, calibration, comparison, audit, runtime_identity,
                                   calibration_sha, comparison_sha, policy_sha, runtime_files):
    if entry["mode"] != "candidate_requires_release_validation":
        raise ValueError("A retained entry cannot reuse an enabled-candidate timing qualification")
    if (audit.get("status") != "passed" or audit.get("array_comparisons") != 120
            or audit.get("model_id") != entry["model_id"]
            or audit.get("calibration_sha256") != calibration_sha
            or audit.get("comparison_sha256") != comparison_sha):
        raise ValueError("Independent actual-router qualification audit/hash mismatch")
    identity = comparison["identity"]
    if (comparison.get("calibration_sha256") != calibration_sha
            or identity.get("replay_policy_sha256") != policy_sha
            or identity.get("strategy") != "graph_replay"
            or calibration.get("policy_identity") != runtime_identity
            or comparison.get("policy_identity") != runtime_identity):
        raise ValueError("Qualification does not match the actual loaded policy/runtime")
    if any(identity.get(key) != entry[key] for key in ("model_id", "revision", "task", "pt2_sha256")):
        raise ValueError("Qualified model/revision/task/PT2 drift")
    measured = identity.get("source_files", {})
    if (not measured or any(runtime_files.get(name) != digest for name, digest in measured.items())
            or identity.get("script_sha256") != runtime_files.get("model_import_adapters/scripts/benchmark_dynamic_shape_pair.py")
            or identity.get("memory_policy_sha256") != runtime_files.get("model_import_adapters/scripts/memory_acceptance.py")):
        raise ValueError("Actually measured runtime/script source bytes changed")
    prepared = "preprocessing" in runtime_identity
    if identity.get("prepare_capture_constants", False) is not prepared:
        raise ValueError("Runtime preprocessing enabled-state differs from qualification")
    if prepared:
        from model_import_adapters.prepared_policy import bind_preprocessing
        base = {key: value for key, value in runtime_identity.items() if key != "preprocessing"}
        expected = bind_preprocessing(base, comparison.get("capture_constants"), identity.get("capture_constants_sha256"))
        if expected != runtime_identity or calibration.get("capture_constants") != comparison.get("capture_constants"):
            raise ValueError("Actual preparation records differ from qualified runtime")
    decision = audit_reports(calibration, comparison)
    if decision["candidate_outcome"] != "passed":
        raise ValueError("Actual-router raw performance gate not met; no qualified candidate publication")
    return {"status": "passed", "model_id": entry["model_id"], "mixed_speedup": decision["mixed_speedup"],
            "calibration_sha256": calibration_sha, "comparison_sha256": comparison_sha,
            "policy_sha256": policy_sha, "scope": "linked actual-router qualification, not timing measured by functional verifier"}
