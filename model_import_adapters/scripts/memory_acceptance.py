"""Versioned memory observations; allocation growth is not a performance veto."""

MEMORY_POLICY = "record_only_v1"


def memory_observation(peaks, gate):
    within = peaks["B"] <= peaks["A"] + gate["max_transient_memory_extra_bytes"]
    return {"memory_policy": MEMORY_POLICY,
            "memory_within_reference_budget": within,
            "extra_transient_memory_bytes": peaks["B"] - peaks["A"],
            # Keep the historical measurement Boolean truthful, not forced True.
            "resource_passed": within, "memory_gate_passed": True}


def memory_gate_passed(record):
    policy = record.get("memory_policy", "blocking_legacy")
    if policy == MEMORY_POLICY:
        return True
    if policy == "blocking_legacy":
        return record.get("resource_passed") is True
    raise ValueError(f"Unknown memory policy: {policy}")
