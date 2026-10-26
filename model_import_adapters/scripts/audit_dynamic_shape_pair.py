#!/usr/bin/env python3
"""Recompute full-model paired decisions from raw rounds; no model execution."""
import argparse
import json
from pathlib import Path

from audit_observed_gemm_pair import same_statistics
from benchmark_scene_pair import freeze_gate, performance_passed, sha256, summarize_rounds
from memory_acceptance import MEMORY_POLICY, memory_gate_passed, memory_observation
from run_shape301_calibration import candidate_outcome

PROBES = {(1,8), (2,24), (4,64), (2,8), (1,64)}


def indexed(report):
    probes = report["probes"]
    result = {(p["batch"],p["sequence"]):p for p in probes}
    if len(probes) != 5 or set(result) != PROBES:
        raise ValueError("Five unique frozen probes required")
    return result


def check_statistics(a, b):
    aa, ab = summarize_rounds(a["rounds"]), summarize_rounds(b["rounds"])
    gate = freeze_gate(aa)
    if (not gate["ready"] or not same_statistics(aa,a["summary"])
            or not same_statistics(ab,b["summary"])
            or not same_statistics(gate,a["gate"]) or not same_statistics(gate,b["gate"])):
        raise ValueError("Raw statistics/calibration gate mismatch")
    passed = performance_passed(ab,gate)
    if passed != b["performance_passed"]:
        raise ValueError("Saved gain decision differs from raw samples")
    return gate, ab, passed


def audit_reports(calibration, comparison):
    if (calibration["status"] != "calibrated" or comparison["status"] != "measured"
            or calibration["identity"] != comparison["identity"]):
        raise ValueError("A/A and A/B identity/status mismatch")
    ca, cb = indexed(calibration), indexed(comparison)
    rows = []
    for shape in sorted(PROBES):
        a,b = ca[shape],cb[shape]
        if (a["input_sha256"] != b["input_sha256"]
                or a["repeats_per_block"] != b["repeats_per_block"]):
            raise ValueError("Probe bytes/repetition drift")
        if any(not all(x["passed"] is True for x in record["comparisons"].values())
               or not record["comparisons"] for record in (a,b)):
            raise ValueError("Missing/failed numerical comparisons")
        gate, summary, gain = check_statistics(a,b)
        policy = b.get("memory_policy", "blocking_legacy")
        if policy != comparison.get("memory_policy", "blocking_legacy"):
            raise ValueError("Per-shape memory policy drift")
        if policy == MEMORY_POLICY:
            expected = memory_observation(b["torch_allocator_transient_bytes"],gate)
            if any(b.get(k) != v for k,v in expected.items()):
                raise ValueError("Memory observations mismatch")
        else:
            observed = b["torch_allocator_transient_bytes"]
            if b["resource_passed"] != (observed["B"] <= observed["A"]+gate["max_transient_memory_extra_bytes"]):
                raise ValueError("Legacy memory observation mismatch")
        first = b["first_call_s"]["B"] <= (gate["max_extra_first_call_seconds"]
            if comparison["identity"].get("strategy") == "graph_replay" else
            b["first_call_s"]["A"]+gate["max_extra_first_call_seconds"])
        status = "performance_passed" if gain and first and memory_gate_passed(b) else "retain_baseline"
        if first != b["first_call_cost_passed"] or status != b["status"]:
            raise ValueError("First-call/status decision mismatch")
        rows.append({"shape":list(shape),"hit":b["hit"],"route":b["candidate_route"],
                     "speedup":summary["geomean_speedup"],"noise":gate["measured_aa_noise"],"status":status})
    check_statistics(calibration["mixed_measurement"],comparison["mixed_measurement"])
    order = comparison["mixed_measurement"]["order"]
    if order != calibration["mixed_measurement"]["order"] or len(order) != 15 or set(order) != set(range(5)):
        raise ValueError("Mixed trace identity drift")
    trace = comparison.get("warm_mixed_trace",[])
    if len(trace) != len(order) or any(not x["comparison"]["passed"] or
            x["counters_before"] != x["counters_after"] for x in trace):
        raise ValueError("Mixed correctness/recompilation evidence missing or failed")
    outcome, reason = candidate_outcome(comparison)
    return {"audit_status":"passed","model_id":comparison["identity"]["model_id"],
            "candidate_outcome":outcome,"reason":reason,"rows":rows,
            "mixed_speedup":comparison["mixed_measurement"]["summary"]["geomean_speedup"],
            "cpu_model_forward":"not_run","scope":"raw-statistics and decision audit; array archives checked separately"}


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    for name in ("calibration","comparison","output"):
        parser.add_argument("--"+name,type=Path,required=True)
    args=parser.parse_args()
    a=json.loads(args.calibration.read_text());b=json.loads(args.comparison.read_text())
    if b["calibration_sha256"] != sha256(args.calibration):
        raise ValueError("Calibration report hash drift")
    result=audit_reports(a,b)
    result.update(calibration_sha256=sha256(args.calibration),comparison_sha256=sha256(args.comparison))
    with args.output.open("x",encoding="utf-8") as file:
        json.dump(result,file,ensure_ascii=False,indent=2,allow_nan=False)
    print(json.dumps(result,ensure_ascii=False))


if __name__=="__main__":main()
