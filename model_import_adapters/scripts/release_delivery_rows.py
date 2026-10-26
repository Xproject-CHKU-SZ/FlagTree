"""Separate historical, current functional, strategy and A100 export states.

Inputs must already be independently audited; this pure projection does not
approve a model, measure timing, pair A100 outputs or infer scene-optimization
success from an original baseline. Pending rows are deliberately not successes.
"""
import math
from release_delivery_contract import IDENTITY, require

PROBES = {(1,8),(2,24),(4,64),(2,8),(1,64)}
CSV_FIELDS = ("model_id", "revision", "task", "historical_status", "existing_scene_status",
    "shape_candidate_status", "strategy_hit", "fallback_reason", "performance_status",
    "failure_stage", "a100_review", "status", "main_shapes", "actual_policy_outcome", "actual_policy_mixed_speedup")


def pending_status_fields(accepted):
    require(all(isinstance(accepted.get(k), str) and accepted[k] for k in IDENTITY), "Complete historical identity required")
    return {**{k:accepted[k] for k in IDENTITY}, "historical_status":accepted.get("status", "not_linked"),
        "existing_scene_status":"not_linked", "shape_candidate_status":"pending", "strategy_hit":None,
        "strategy_hit_shapes":[], "fallback_reason":None, "performance_status":"pending", "failure_stage":None,
        "a100_review":"pending", "historical_a100_review":accepted.get("a100_review", "pending"),
        "a100_review_context":"new_shape_release_requires_matched_evidence", "status":"pending",
        "main_shapes":0, "actual_policy_outcome":None, "actual_policy_mixed_speedup":None,
        "performance_nonacceptance_stage":None}


def build_status_fields(accepted, record, functional):
    result = pending_status_fields(accepted)
    require(record.get("status") in {"validated_candidate","validated_retention"}
        and record.get("final_C1_accepted") is False, "Only explicitly verified records may populate completed fields")
    require(functional.get("status") == "passed" and functional.get("cpu_model_forward") == "not_run"
        and functional.get("final_C1_accepted") is False and functional.get("failure_stage") is None,
        "Completed no-CPU functional evidence required")
    identity = functional.get("identity", {})
    require(all(record.get(k) == accepted[k] == identity.get(k) == functional.get(k) for k in IDENTITY), "Historical/current task identity drift")
    probes = functional.get("probes", [])
    require(len(probes) == 5 and {(p["batch"],p["sequence"]) for p in probes} == PROBES,
        "Five original distinct shape probes required")
    require(all(p.get("route",{}).get("route") in {"graph_replay","original_compiled"} for p in probes),
        "Unknown/eager route cannot populate released model fields")
    hits = [[p["batch"],p["sequence"]] for p in probes if p["route"]["route"] == "graph_replay"]
    misses = [p["route"].get("reason") for p in probes if p["route"]["route"] == "original_compiled"]
    require(all(isinstance(x,str) and x for x in misses), "Every fallback requires its observed reason")
    qualified = record["status"] == "validated_candidate"
    if qualified:
        qualification = functional.get("runtime_qualification")
        speedup = record.get("actual_policy_mixed_speedup")
        require(record.get("actual_policy_outcome") == "passed" and 1 <= len(hits) <= 2 and functional.get("policy_path") is not None
            and isinstance(qualification,dict) and qualification.get("status") == "passed"
            and type(speedup) in (int,float) and math.isfinite(speedup) and speedup > 0
            and functional.get("router_active",{}).get("enabled") is True, "Qualified strategy evidence required")
        candidate_status, performance = "qualified_runtime_verified", "passed"
    else:
        require(not hits and functional.get("policy_path") is None and functional.get("runtime_qualification") is None
            and functional.get("router_active",{}).get("enabled") is False
            and record.get("actual_policy_outcome") != "passed", "Retention must remain original compiled, not policy approval")
        candidate_status = "not_accepted_original_retained"
        outcome = record.get("actual_policy_outcome") or record.get("discovery_outcome")
        performance = "measurement_unstable_retained" if outcome == "measurement_unstable" else "not_met_retained" if outcome == "not_met" else "not_qualified_retained"
    result.update(shape_candidate_status=candidate_status, strategy_hit=bool(hits), strategy_hit_shapes=hits,
        fallback_reason=";".join(sorted(set(misses))) if misses else None, performance_status=performance,
        status=record["status"], main_shapes=5, actual_policy_outcome=record.get("actual_policy_outcome"),
        actual_policy_mixed_speedup=record.get("actual_policy_mixed_speedup"),
        performance_nonacceptance_stage=None if qualified else "actual_policy_pair" if record.get("actual_policy_outcome") else "discovery")
    return result
