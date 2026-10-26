"""Explicit negative-policy to original-compiled functional resolution.

Original discovery/actual timing records stay immutable. A resolved view adds
new B0 execution evidence; it never promotes the failed strategy to passed.
"""
import copy
from pathlib import Path

from run_shape_release_wave import audit_actual_pair, performance_streak, read, sha


def apply_selection(previous, audit, selections, validated):
    result, checked = copy.deepcopy(previous), copy.deepcopy(audit)
    indexed = {row["model_id"]: row for row in selections}
    if len(indexed) != len(selections) or not indexed:
        raise ValueError("Nonempty unique explicit retention selections required")
    pending = {row["model_id"] for row in previous["records"] if row["status"] in {"actual_policy_timing_not_met", "actual_policy_measurement_unstable"}}
    if set(indexed) != pending or set(validated) != pending:
        raise ValueError("Resolve exactly the original pending negative records; never replace a passing model")
    if previous["status"] != "completed_wave_not_final301" or audit["status"] != "passed" or audit["errors"]:
        raise ValueError("A completed independently audited original wave is required")
    if audit["audited_records"] != previous["target_models"] or audit["pending_wave_models"]:
        raise ValueError("Other unresolved models cannot disappear into a retention selection")
    for i, old in enumerate(previous["records"]):
        if old["model_id"] not in pending:
            continue
        new = validated[old["model_id"]]
        outcome = "measurement_unstable" if old["status"] == "actual_policy_measurement_unstable" else "not_met"
        if (new["model_id"] != old["model_id"] or new["status"] != "validated_retention"
                or new["actual_policy_outcome"] != outcome or new["functional_array_checks"] != 80):
            raise ValueError("New original-compiled runtime evidence is required, not a policy pass override")
        result["records"][i] = {**old, "status": "validated_retention", "retention_resolution":indexed[old["model_id"]],
            "negative_origin":copy.deepcopy(old), "array_comparisons":80,
            "counterexample_array_checks":new["counterexample_array_checks"],"functional_report_sha256":new["functional_report_sha256"]}
        checked["models"][i] = new
    result["consecutive_performance_nonacceptance"] = performance_streak(result["records"])
    checked.update(validated_models=len(result["records"]),pending_retention_models=[],wave_closure_complete=True,
                   resolution_scope="original immutable negative timing plus separately verified B0; no strategy performance approval")
    return result, checked


def audit_selection(original, selection, accepted, source):
    if original.get("status") == "actual_policy_measurement_unstable":
        from unstable_retention import audit_selection as audit_unstable_selection
        return audit_unstable_selection(original, selection, accepted, source)
    from audit_shape_release_case import audit_case
    model = original["model_id"]; directory=Path(original["directory"])
    if selection["model_id"] != model or original["status"] != "actual_policy_timing_not_met":
        raise ValueError("Retention resolution may only target this original negative record")
    pair=directory/"actual-policy-pair";comparison=read(pair/"compare/report.json");baseline=Path(comparison["case"])
    negative=audit_actual_pair(pair,baseline,source,directory/"policy.json")
    if negative["candidate_outcome"]!="not_met" or original["actual_policy_outcome"]!="not_met":
        raise ValueError("Raw actual policy must retain its explicit negative result")
    case=Path(selection["functional_case"]);enrollment=Path(selection["enrollment"])
    if sha(enrollment)!=selection["enrollment_sha256"]:
        raise ValueError("Selected B0 enrollment changed")
    selected=read(enrollment);e=selected["evidence_selection"]
    if (e["stage"]!="actual_policy_negative_measurement" or e["original_discovery_enrollment_sha256"]!=sha(directory/"enrollment.json")
            or e["actual_policy_audit_sha256"]!=sha(directory/"actual-policy-audit.json")
            or e["original_discovery_passed_preserved"] is not True or e["not_a_performance_pass"] is not True):
        raise ValueError("Explicit selected negative provenance changed")
    row=next(x for x in selected["models"] if x["model_id"]==model)
    if (row["mode"]!="retain_requires_runtime_validation" or row["discovery_status"]!="not_met"
            or row["calibration_sha256"]!=negative["calibration_sha256"] or row["comparison_sha256"]!=negative["comparison_sha256"]):
        raise ValueError("Retention enrollment must select the real negative AA/AB, not rewrite original discovery")
    verified=audit_case(case,accepted,enrollment);report=read(case/"report.json")
    if (verified["mode"]!="retain_requires_runtime_validation" or report["policy_path"] is not None
            or report["capture_constants"] is not None or report["identity"]["pt2_sha256"]!=negative["pt2_sha256"]
            or Path(report["source"])!=source or any(x["route"]["route"]!="original_compiled" for x in report["probes"])):
        raise ValueError("Resolution must execute the same original unprepared fullgraph B0 with no enabled policy")
    receipt=read(selection["terminal_receipt"])
    if (sha(selection["terminal_receipt"])!=selection["terminal_receipt_sha256"] or receipt["exit_code"]!=0
            or receipt["job"]["command"]!=read(case/"command.json") or receipt["terminal_state"]!="Z"
            or receipt["report_sha256"]!=sha(case/"report.json")):
        raise ValueError("Real new B0 command and terminal exit0 receipt required")
    for key in ("stdout","stderr"):
        if sha(receipt[key]["path"])!=receipt[key]["sha256"]:
            raise ValueError("B0 raw execution log changed")
    return {"model_id":model,"revision":original["revision"],"task":original["task"],"status":"validated_retention",
        "directory":original["directory"],"actual_policy_outcome":"not_met", "actual_policy_array_checks":120,
        "actual_policy_mixed_speedup":negative["mixed_speedup"],"functional_array_checks":verified["array_comparisons"],
        "counterexample_array_checks":verified["counterexample_array_checks"],"functional_report_sha256":verified["report_sha256"],
        "retention_functional_case":str(case),"scope":"measured negative strategy remains disabled; original fullgraph validated separately"}


def resolve_previous(wave, accepted, models, resolution_path):
    from audit_shape_release_wave import audit_wave
    previous=read(wave/"report.json");audit=audit_wave(wave,accepted,models)
    selections=read(resolution_path)
    if selections["schema"]!="shape301-retention-resolution-v1" or selections["origin_report_sha256"]!=sha(wave/"report.json"):
        raise ValueError("Resolution refers to a different immutable original wave")
    command=read(wave/"command.json");source=Path(command[command.index("--source")+1])
    original={row["model_id"]:row for row in previous["records"]}
    validated={row["model_id"]:audit_selection(original[row["model_id"]],row,accepted,source) for row in selections["selections"]}
    return apply_selection(previous,audit,selections["selections"],validated)
