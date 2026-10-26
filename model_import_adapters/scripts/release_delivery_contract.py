"""Strict final301 scope gate; this pure check is not raw evidence validation.

The caller must reopen terminal provenance, source/runtime files, original IR
bindings and independently audit all raw wave evidence before exporting files.
Partial scopes and saved passed counters never authorize final publication.
"""
import math
import re

SCOPE = 301
SHAPES = 1505
IDENTITY = ("model_id", "revision", "task")
STATES = {"validated_candidate", "validated_retention"}
IR_FILES = {"model.core_aten.pt2", "manifest.json", "semantics.json", "validation.json",
            "graph.readable.txt", "graph_module.py", "example_inputs.npz", "model-files.json",
            "task-protocol.json", "environment.json", "command.json", "report.json",
            "probe-1x8.npz", "probe-2x24.npz", "probe-4x64.npz", "probe-2x8.npz", "probe-1x64.npz"}


def require(condition, message):
    if not condition:
        raise ValueError(message)


def sha256_string(value):
    return isinstance(value, str) and re.fullmatch(r"[0-9a-f]{64}", value) is not None


def index_original301(rows, label):
    require(isinstance(rows, list) and len(rows) == SCOPE, label + ": exact301 required")
    require(all(isinstance(x, dict) and all(isinstance(x.get(k), str) and x[k] for k in IDENTITY) for x in rows),
            label + ": complete model identity required")
    result = {x["model_id"]: x for x in rows}
    require(len(result) == SCOPE, label + ": duplicate model ID")
    return result


def validate_final_scope(accepted, chain, wave, audit, ir, accepted_sha256):
    """Return bounded export counts, without granting final_C1 acceptance."""
    original = index_original301(accepted, "accepted")
    require(sha256_string(accepted_sha256), "Accepted hash required")
    require(chain.get("status") == "completed_release_scope_pending_final_delivery"
            and type(chain.get("validated_models")) is int and chain["validated_models"] == SCOPE,
            "Chain is not terminal301")
    endpoints = chain.get("endpoints")
    require(isinstance(endpoints, list) and endpoints and endpoints[-1] == SCOPE
            and all(type(x) is int for x in endpoints) and endpoints == sorted(set(endpoints)), "Invalid chain endpoints")
    children = chain.get("records")
    require(isinstance(children, list) and [x.get("cumulative_scope") for x in children] == endpoints,
            "Every owned chain endpoint must be present exactly once")
    for child in children:
        require(type(child.get("exit_code")) is int and child["exit_code"] == 0
                and child.get("terminal_observation") == "actual waitid WNOWAIT; not yet reaped"
                and all(type(child.get(k)) is int and child[k] > 0 for k in ("pid", "start_ticks")),
                "Real owned wait observations required; a missing process is not success")
    require(wave.get("status") == "completed_wave_not_final301"
            and type(wave.get("target_models")) is int and wave["target_models"] == SCOPE,
            "Final wave is not terminal301")
    for value in (chain, wave, audit):
        require(value.get("cpu_model_forward") == "not_run" and value.get("final_C1_accepted") is False,
                "Stages must retain no-CPU and pending-final semantics")
    records = wave.get("records"); indexed = index_original301(records, "wave")
    require(set(indexed) == set(original), "Final wave replaced original IDs")
    require(audit.get("status") == "passed" and audit.get("wave_closure_complete") is True
            and all(type(audit.get(k)) is int and audit[k] == SCOPE
                    for k in ("historical_scope", "wave_scope", "audited_records", "validated_models"))
            and audit.get("errors") == [] and audit.get("pending_retention_models") == []
            and audit.get("pending_wave_models") == [], "Independent complete301 raw audit required")
    audited = audit.get("models"); audited_index = index_original301(audited, "audit")
    require([x["model_id"] for x in audited] == [x["model_id"] for x in records], "Independent audit order drift")
    require(ir.get("status") == "passed" and type(ir.get("passed")) is int and ir["passed"] == SCOPE
            and type(ir.get("failed")) is int and ir["failed"] == 0
            and ir.get("cpu_model_forward") == "not_run" and ir.get("accepted_sha256") == accepted_sha256,
            "Original IR301 provenance required; not a runtime approval")
    ir_index = index_original301(ir.get("models"), "IR")
    require(set(ir_index) == set(original), "IR scope replaced original IDs")
    candidates = 0; retained = 0
    for model_id, expected in original.items():
        row, checked, provenance = indexed[model_id], audited_index[model_id], ir_index[model_id]
        for value in (row, checked, provenance):
            require(all(value[k] == expected[k] for k in IDENTITY), "Original model revision/task drift: " + model_id)
        require(row.get("status") in STATES and row.get("final_C1_accepted") is False,
                "Unresolved/negative-only model cannot disappear into final count")
        require(all(row.get(k) == checked.get(k) for k in ("status", "directory", "functional_report_sha256"))
                and sha256_string(row.get("functional_report_sha256")), "Independent functional binding drift")
        if row["status"] == "validated_candidate":
            speedup = row.get("actual_policy_mixed_speedup")
            require(row.get("actual_policy_outcome") == "passed" and type(speedup) in (int, float)
                    and math.isfinite(speedup) and speedup > 0, "Candidate lacks actual-router qualification")
            candidates += 1
        else:
            require(row.get("actual_policy_outcome") != "passed", "Retention cannot masquerade as qualified strategy")
            retained += 1
        metadata = provenance.get("ir_metadata", {})
        rules = metadata.get("rule_checks", {})
        require(provenance.get("status") == "passed" and provenance.get("errors") == []
                and type(provenance.get("input_probes")) is int and provenance["input_probes"] == 5
                and metadata.get("status") == "passed" and metadata.get("saved_and_loaded") is True
                and metadata.get("shape_constraints_equal") is True and type(rules.get("failed")) is int and rules["failed"] == 0,
                "Original IR readback/constraints/probe evidence incomplete")
        hashes = provenance.get("hashes", {})
        require(IR_FILES <= hashes.keys() and all(sha256_string(hashes[k]) for k in IR_FILES), "IR artifact hashes incomplete")
    return {"schema": "shape301-delivery-scope-check-v1", "status": "scope_ready_for_raw_validation",
            "unique_models": SCOPE, "original_main_shapes": SHAPES, "qualified_strategies": candidates,
            "retained_original_compiled": retained, "final_C1_accepted": False,
            "scope": "pure gate only; raw files/terminal/runtime/Windows synchronization remain separate requirements"}
