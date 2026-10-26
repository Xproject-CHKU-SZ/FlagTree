"""Pure validation for extending a closed release wave without new-run inflation."""
import copy

from run_shape_release_wave import performance_streak


def validate_extension(previous, previous_models, next_models, audit, stable_inputs):
    old = [row["model_id"] for row in previous_models]
    new = [row["model_id"] for row in next_models]
    if (len(old) != len(set(old)) or len(new) != len(set(new))
            or not 1 <= len(new) - len(old) <= 50 or next_models[:len(old)] != previous_models):
        raise ValueError("Release extension requires an unchanged prefix and1--50 new IDs")
    records = previous["records"]
    if (previous.get("status") != "completed_wave_not_final301" or previous.get("target_models") != len(old)
            or previous.get("final_C1_accepted") is not False or previous.get("cpu_model_forward") != "not_run"
            or [row["model_id"] for row in records] != old
            or any(row["status"] not in {"validated_candidate", "validated_retention"} for row in records)):
        raise ValueError("A partial, negative or stopped release wave cannot authorize continuation")
    if any(any(row.get(key) != model[key] for key in ("model_id", "revision", "task"))
           or row.get("final_C1_accepted") is not False for row, model in zip(records, previous_models)):
        raise ValueError("Inherited release model/task/final status drift")
    if (audit.get("status") != "passed" or audit.get("wave_closure_complete") is not True
            or audit.get("historical_scope") != 301 or audit.get("wave_scope") != len(old)
            or audit.get("audited_records") != len(old) or audit.get("validated_models") != len(old)
            or audit.get("errors") or audit.get("pending_retention_models") or audit.get("pending_wave_models")
            or [row["model_id"] for row in audit["models"]] != old):
        raise ValueError("Independent complete-wave closure required before extension")
    for record, checked in zip(records, audit["models"]):
        if any(checked.get(key) != record.get(key) for key in ("status", "directory", "functional_report_sha256")):
            raise ValueError("Audited inherited runtime evidence differs from saved records")
    if any(previous["pinned_inputs"].get(name) != digest for name, digest in stable_inputs.items()):
        raise ValueError("Accepted scope/discovery/runtime changed across release waves")
    streak = performance_streak(records)
    if streak >= 10 or previous.get("consecutive_performance_nonacceptance") != streak:
        raise ValueError("Inherited distinct-model performance stop ledger mismatch")
    return len(old)


def seed_release_progress(progress, previous, provenance):
    result = copy.deepcopy(progress)
    result.update(records=copy.deepcopy(previous["records"]), commands=copy.deepcopy(previous["commands"]),
                  consecutive_performance_nonacceptance=performance_streak(previous["records"]),
                  continuation=copy.deepcopy(provenance))
    return result
