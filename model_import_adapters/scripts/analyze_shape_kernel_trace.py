#!/usr/bin/env python3
"""Conservatively link Chrome trace device kernels to recorded ATen geometry.

Only unique launch correlation + host PID + external-ID + containment joins
are accepted. Missing/ambiguous evidence stays unlinked. Host durations and
CompiledFxGraph annotations are never added to the device-kernel duration sum.
"""
import argparse
from collections import Counter, defaultdict
import hashlib
import json
from pathlib import Path


def analyze_trace(trace):
    events = trace["traceEvents"]
    launches, operators = defaultdict(list), defaultdict(list)
    kernels = []
    for index, event in enumerate(events):
        if event.get("ph") != "X":
            continue
        args = event.get("args", {})
        category = event.get("cat")
        if category in {"cuda_runtime", "cuda_driver"} and "LaunchKernel" in event.get("name", ""):
            if "correlation" in args and "External id" in args:
                launches[args["correlation"]].append((index, event))
        elif category == "cpu_op" and event.get("name", "").startswith("aten::"):
            if "External id" in args:
                operators[event.get("pid"), args["External id"]].append((index, event))
        elif category == "kernel":
            kernels.append((index, event))
    records = []
    for index, kernel in kernels:
        args = kernel.get("args", {})
        record = {"kernel_event_index": index, "kernel": kernel.get("name"),
                  "duration_us": kernel.get("dur"), "device": args.get("device"),
                  "stream": args.get("stream"), "grid": args.get("grid"), "block": args.get("block"),
                  "registers_per_thread": args.get("registers per thread"),
                  "shared_memory": args.get("shared memory"),
                  "correlation": args.get("correlation"), "external_id": args.get("External id")}
        candidates = [x for x in launches.get(args.get("correlation"), [])
                      if args.get("External id") is not None
                      and x[1]["args"]["External id"] == args["External id"]]
        if len(candidates) != 1:
            record.update(status="unlinked", reason="missing_or_ambiguous_launch")
        else:
            launch_index, launch = candidates[0]
            launch_end = launch["ts"] + launch.get("dur", 0)
            parents = [x for x in operators.get((launch.get("pid"), args["External id"]), [])
                       if x[1]["ts"] <= launch["ts"] and launch_end <= x[1]["ts"] + x[1].get("dur", 0) + 0.001]
            if len(parents) != 1:
                record.update(status="unlinked", reason="missing_or_ambiguous_host_operator")
            else:
                op_index, operator = parents[0]
                op_args = operator["args"]
                record.update(status="linked", launch_event_index=launch_index, operator_event_index=op_index,
                              operator=operator["name"], input_dims=op_args.get("Input Dims"),
                              input_strides=op_args.get("Input Strides"), input_types=op_args.get("Input type"))
        records.append(record)
    groups = {}
    for record in records:
        if record["status"] != "linked":
            continue
        fields = {k: record[k] for k in ("operator", "input_dims", "input_strides", "input_types", "kernel")}
        key = json.dumps(fields, sort_keys=True)
        group = groups.setdefault(key, {**fields, "launches": 0, "sum_kernel_us": 0.})
        group["launches"] += 1
        group["sum_kernel_us"] += record["duration_us"]
    return {"scope": "unique correlation/external-ID/host-PID/containment joins only; not end-to-end latency or speedup",
            "kernel_events": len(records), "linked": sum(r["status"] == "linked" for r in records),
            "unlinked_reasons": dict(Counter(r["reason"] for r in records if r["status"] == "unlinked")),
            "geometry_kernel_groups": sorted(groups.values(), key=lambda g: g["sum_kernel_us"], reverse=True),
            "records": records}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--trace", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    raw = args.trace.read_bytes()
    report = analyze_trace(json.loads(raw))
    report.update(trace=str(args.trace.resolve()), trace_sha256=hashlib.sha256(raw).hexdigest())
    # Refuse to replace prior evidence.
    with args.output.open("x", encoding="utf-8") as f:
        json.dump(report, f, indent=2, allow_nan=False)
    print(json.dumps({k: report[k] for k in ("kernel_events", "linked", "unlinked_reasons")}))


if __name__ == "__main__":
    main()
