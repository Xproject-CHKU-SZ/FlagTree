#!/usr/bin/env python3
"""Recompute local paired statistics from raw samples; never execute a model."""
import argparse
import json
import math
from pathlib import Path

from benchmark_scene_pair import freeze_gate, performance_passed, sha256, summarize_rounds
from memory_acceptance import MEMORY_POLICY, memory_gate_passed, memory_observation


def same_statistics(a, b):
    """Allow four ULPs for Linux/Windows libm summaries, never relax a gate.

    Decisions below are recomputed and compared as exact Booleans. The observed
    cross-platform difference was one CI endpoint at 2.22e-16; input hashes,
    keys, counts, ready flags and accept/reject outcomes remain exact.
    """
    if isinstance(a, dict) and isinstance(b, dict):
        return a.keys() == b.keys() and all(same_statistics(a[k],b[k]) for k in a)
    if isinstance(a, list) and isinstance(b, list):
        return len(a) == len(b) and all(same_statistics(x,y) for x,y in zip(a,b))
    if type(a) is float and type(b) is float:
        return math.isfinite(a) and math.isfinite(b) and abs(a-b) <= 4*max(math.ulp(a),math.ulp(b))
    return type(a) is type(b) and a == b


def audit_reports(calibration, comparison):
    if calibration.get("status") != "calibrated" or calibration.get("identity") != comparison.get("identity"):
        raise ValueError("Calibration status/identity mismatch")
    models = calibration["identity"]["models"]
    expected = {(m, n) for m in models for n in (8,16,48,64)}
    result = {}
    for name, report in (("A/A",calibration),("A/B",comparison)):
        records = [x for x in report["cases"] if x.get("status") != "not_hit"]
        indexed = {(x["model_id"],x["shape_mkn"][0]): x for x in records}
        if len(indexed) != len(records) or set(indexed) != expected:
            raise ValueError(f"Missing/duplicate qualified cases: {name}")
        result[name] = indexed
    rows = []
    for key in sorted(expected):
        a, b = result["A/A"][key], result["A/B"][key]
        aa, ab = summarize_rounds(a["rounds"]), summarize_rounds(b["rounds"])
        gate = freeze_gate(aa)
        if (not same_statistics(aa,a["summary"]) or not same_statistics(ab,b["summary"])
                or not same_statistics(gate,a["gate"]) or not same_statistics(gate,b["gate"]) or not gate["ready"]):
            raise ValueError("Saved statistics/gate differ from raw samples")
        if (a["input_sha256"] != b["input_sha256"] or a["weight_sha256"] != b["weight_sha256"]
                or a["repeats_per_block"] != b["repeats_per_block"]):
            raise ValueError("Measurement input/repeat drift")
        if not all(v["passed"] for v in b["checks"].values()):
            raise ValueError("Numerical comparison failed")
        gain = performance_passed(ab,gate)
        memory = b["transient_torch_memory_bytes"]["B"] <= b["transient_torch_memory_bytes"]["A"] + gate["max_transient_memory_extra_bytes"]
        first = b["first_call_s"]["B"] <= b["first_call_s"]["A"] + gate["max_extra_first_call_seconds"]
        policy = b.get("memory_policy", "blocking_legacy")
        if policy != comparison.get("memory_policy", "blocking_legacy"):
            raise ValueError("Per-case/report memory policy mismatch")
        if policy == MEMORY_POLICY:
            expected_memory = memory_observation(b["transient_torch_memory_bytes"], gate)
            if any(b.get(k) != v for k,v in expected_memory.items()):
                raise ValueError("Saved memory observation differs from measurements")
        status = "performance_passed" if gain and memory_gate_passed(b) and first else "retain_baseline"
        if gain != b["performance_passed"] or memory != b["resource_passed"] or first != b["first_call_cost_passed"] or status != b["status"]:
            raise ValueError("Saved decision differs from recomputed gates")
        rows.append({"model_id":key[0],"M":key[1],"noise":gate["measured_aa_noise"],
                     "speedup":ab["geomean_speedup"],"t95_lower":ab["log_round_t95_lower"],
                     "t95_upper":ab["log_round_t95_upper"],"min_round_speedup":min(ab["round_speedups"]),
                     "gain_floor":gate["min_geomean_speedup"],"status":status})
    expected_status = "passed" if all(x["status"] == "performance_passed" for x in rows) else "retain_baseline"
    if comparison["status"] != expected_status:
        raise ValueError("Aggregate status mismatch")
    return {"audit_status":"passed", "scope":"local configuration-only gains; not complete-model acceptance",
            "qualified_cases":len(rows),"performance_passed":sum(x["status"]=="performance_passed" for x in rows),
            "maximum_noise":max(x["noise"] for x in rows),"rows":rows,"cpu_model_forward":"not_run"}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--calibration",type=Path,required=True)
    p.add_argument("--comparison",type=Path,required=True)
    p.add_argument("--output",type=Path,required=True)
    args=p.parse_args()
    a=json.loads(args.calibration.read_text());b=json.loads(args.comparison.read_text())
    if b["calibration_sha256"] != sha256(args.calibration):
        raise ValueError("Calibration file hash mismatch")
    report=audit_reports(a,b)
    report.update(calibration_sha256=sha256(args.calibration),comparison_sha256=sha256(args.comparison))
    with args.output.open("x",encoding="utf-8") as f:json.dump(report,f,indent=2,allow_nan=False)
    print(json.dumps({k:report[k] for k in ("audit_status","qualified_cases","performance_passed","maximum_noise")}))


if __name__=="__main__":main()
