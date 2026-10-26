"""Explicit original-compiled validation after an unstable actual-policy A/A.

The original discovery pair remains passed and immutable. Missing A/B evidence
stays None: it is never manufactured or promoted to a performance pass.
"""
import copy
from pathlib import Path

MODE = "retain_unstable_requires_runtime_validation"
STAGE = "actual_policy_unstable_measurement"


def validate_entry(entry, manifest):
    selection = manifest.get("evidence_selection", {})
    if (entry.get("mode") != MODE or entry.get("discovery_status") != "passed"
            or entry.get("actual_policy_outcome") != "measurement_unstable"
            or entry.get("comparison_sha256") is not None
            or selection.get("stage") != STAGE or selection.get("model_id") != entry.get("model_id")
            or selection.get("original_discovery_passed_preserved") is not True
            or selection.get("not_a_performance_pass") is not True):
        raise ValueError("Explicit unstable A/A retention must preserve discovery, absent A/B and no performance pass")
    names = ["pt2_sha256", "calibration_sha256", "calibration_terminal_sha256",
             "original_discovery_calibration_sha256", "original_discovery_comparison_sha256"]
    for name in names:
        digest = entry.get(name)
        if not isinstance(digest, str) or len(digest) != 64 or any(x not in "0123456789abcdef" for x in digest):
            raise ValueError("Missing unstable/original evidence hash: " + name)


def build_entry(original, calibration, audit):
    if (original.get("mode") != "candidate_requires_release_validation" or original.get("discovery_status") != "passed"
            or calibration.get("status") != "unstable_baseline" or audit.get("status") != "passed"
            or audit.get("actual_policy_outcome") != "measurement_unstable" or audit.get("performance_passed") is not False
            or audit.get("array_comparisons") != 60 or audit.get("max_aa_noise", 0) <= .05
            or audit.get("pt2_sha256") != original.get("pt2_sha256")
            or any(calibration["identity"].get(k) != original.get(k) for k in ("model_id", "revision", "task", "pt2_sha256"))):
        raise ValueError("Exactly this originally passed model and independently audited unstable A/A are required")
    result = copy.deepcopy(original)
    result.update(mode=MODE, actual_policy_outcome="measurement_unstable",
        original_discovery_calibration_sha256=original["calibration_sha256"],
        original_discovery_comparison_sha256=original["comparison_sha256"],
        calibration_sha256=audit["calibration_sha256"], comparison_sha256=None,
        calibration_terminal_sha256=audit["terminal_report_sha256"])
    return result


def validate_terminal(receipt, command, report_sha):
    if (receipt.get("terminal_state") != "Z" or receipt.get("exit_code") != 0
            or receipt.get("job", {}).get("command") != command or receipt.get("report_sha256") != report_sha):
        raise ValueError("Exact new original-compiled command and real terminal exit0 are required")
    raw = receipt.get("raw_stat", ""); prefix, _, fields = raw.partition(") ")
    values = fields.split()
    if (not prefix.startswith(str(receipt["job"]["pid"]) + " (") or len(values) < 50
            or values[0] != "Z" or int(values[19]) != receipt["job"]["start_ticks"] or int(values[49]) != 0):
        raise ValueError("Original-compiled /proc terminal PID/birth/wait status mismatch")


def audit_selection(original, selection, accepted, source):
    from audit_shape_release_case import audit_case
    from run_shape_release_wave import read, sha
    from unstable_release_recovery import STATUS, audit_unstable_pair
    model = original["model_id"]; directory = Path(original["directory"])
    if (original.get("status") != STATUS or original.get("actual_policy_outcome") != "measurement_unstable"
            or selection.get("model_id") != model):
        raise ValueError("Only this original unstable record may select a separate B0 proof")
    pair = directory / "actual-policy-pair"; a = read(pair / "calibrate/report.json")
    negative = audit_unstable_pair(pair, Path(a["case"]), source, directory / "policy.json")
    case, enrollment = Path(selection["functional_case"]), Path(selection["enrollment"])
    if sha(enrollment) != selection["enrollment_sha256"]:
        raise ValueError("Selected unstable B0 enrollment changed")
    selected = read(enrollment); e = selected["evidence_selection"]
    entry = next(x for x in selected["models"] if x["model_id"] == model); validate_entry(entry, selected)
    if (e["original_discovery_enrollment_sha256"] != sha(directory / "enrollment.json")
            or sha(e["actual_policy_unstable_audit_path"]) != e["actual_policy_unstable_audit_sha256"]
            or read(e["actual_policy_unstable_audit_path"]) != negative
            or entry["calibration_sha256"] != negative["calibration_sha256"]
            or entry["calibration_terminal_sha256"] != negative["terminal_report_sha256"]):
        raise ValueError("Selected original/unstable evidence differs from physically reopened A/A")
    original_entry = next(x for x in read(directory / "enrollment.json")["models"] if x["model_id"] == model)
    expected = build_entry(original_entry, a, negative)
    if entry != expected:
        raise ValueError("Original discovery fields were rewritten during unstable retention selection")
    verified = audit_case(case, accepted, enrollment); report = read(case / "report.json")
    if (verified["mode"] != MODE or report["policy_path"] is not None or report["capture_constants"] is not None
            or report.get("qualification_evidence") is not None or Path(report["source"]) != source
            or report["identity"]["pt2_sha256"] != negative["pt2_sha256"]
            or any(x["route"]["route"] != "original_compiled" for x in report["probes"])):
        raise ValueError("Unstable resolution requires the same original unprepared fullgraph without enabled policy")
    verifier_source = Path(report["verifier_path"]).parents[2]
    if sha(verifier_source / "source-baseline.json") != selection["verifier_source_manifest_sha256"]:
        raise ValueError("Functional verifier frozen identity changed")
    for name, digest in read(verifier_source / "source-baseline.json")["files"].items():
        if sha(verifier_source / name) != digest:
            raise ValueError("Functional verifier dependency bytes changed")
    receipt = read(selection["terminal_receipt"])
    if sha(selection["terminal_receipt"]) != selection["terminal_receipt_sha256"]:
        raise ValueError("New B0 terminal receipt changed")
    validate_terminal(receipt, read(case / "command.json"), sha(case / "report.json"))
    for key in ("stdout", "stderr"):
        if sha(receipt[key]["path"]) != receipt[key]["sha256"]:
            raise ValueError("New B0 raw log changed")
    return {"model_id": model, "revision": original["revision"], "task": original["task"],
        "status": "validated_retention", "directory": original["directory"],
        "actual_policy_outcome": "measurement_unstable", "actual_policy_array_checks": 60,
        "actual_policy_mixed_speedup": None, "max_aa_noise": negative["max_aa_noise"],
        "functional_array_checks": verified["array_comparisons"],
        "counterexample_array_checks": verified["counterexample_array_checks"],
        "functional_report_sha256": verified["report_sha256"], "retention_functional_case": str(case),
        "scope": "unstable actual policy remains unaccepted and disabled; separately validated original fullgraph"}
