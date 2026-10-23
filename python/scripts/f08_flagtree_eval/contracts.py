"""Dependency-free contracts for the opt-in FlagTree model evaluation bridge."""
from __future__ import annotations

import hashlib
import json
import math
import os
from pathlib import Path
import re
import statistics
import subprocess

ARMS = ("torch", "flagtree-out", "flagtree-inplace")


def fingerprint(value):
    return hashlib.sha256(json.dumps(value, ensure_ascii=False, sort_keys=True).encode()).hexdigest()


def file_hash(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def save_json(path, value):
    # New runs use a fresh directory. Never overwrite old evidence.
    with Path(path).open("x", encoding="utf-8") as stream:
        json.dump(value, stream, ensure_ascii=False, indent=2, allow_nan=False)
        stream.write("\n")


def check_selection(card, env=None):
    env = os.environ if env is None else env
    if str(card) != "14":
        raise ValueError("this task authorizes physical PPU 14 only")
    if env.get("CUDA_VISIBLE_DEVICES") != "14" or env.get("FLAGTREE_BACKEND") != "ppu":
        raise ValueError("require CUDA_VISIBLE_DEVICES=14 and FLAGTREE_BACKEND=ppu")


def parse_smi(raw, card=14):
    lines = raw.splitlines()
    headers = [i for i, line in enumerate(lines) if re.match(rf"^\|\s*{card}\s+PPU-", line)]
    if len(headers) != 1 or "Processes:" not in raw:
        raise ValueError("unrecognized ppu-smi output; refuse to infer idleness")
    detail = " ".join(lines[headers[0] + 1:headers[0] + 3])
    memory = re.search(r"(\d+)\s*MiB\s*/\s*(\d+)\s*MiB", detail)
    utilization = re.search(r"\|\s*(\d+)%", detail)
    if not memory or not utilization:
        raise ValueError("missing memory/utilization in ppu-smi")
    processes = []
    process_text = raw.split("Processes:", 1)[1]
    for line in process_text.splitlines():
        if re.match(r"^\|\s*\d+\s", line):
            match = re.match(r"^\|\s*(\d+)\s+\S+\s+\S+\s+(\d+)\s+", line)
            if not match:
                raise ValueError("unrecognized process row")
            processes.append({"card": int(match[1]), "pid": int(match[2])})
    return {"card": card, "used_mib": int(memory[1]), "utilization_percent": int(utilization[1]),
            "processes": processes}


def read_smi():
    result = subprocess.run(["ppu-smi"], capture_output=True, text=True, check=True, timeout=15)
    return result.stdout, parse_smi(result.stdout)


# 2026-10-13 operator-confirmed idle baseline: every idle card on this host now
# reports 10 MiB used (was 2 MiB on 2026-09-29 with the same driver version).
# "Someone is using the card" is still proven by the live process table below.
IDLE_USED_MIB_MAX = 10


def require_idle(state):
    if state["used_mib"] > IDLE_USED_MIB_MAX or state["utilization_percent"] != 0 or any(
            p["card"] == 14 for p in state["processes"]):
        raise ValueError("PPU 14 is not idle; stop, do not switch cards or terminate tasks")


def percentile(values, percent):
    values = sorted(values)
    index = (len(values) - 1) * percent / 100
    low = int(index)
    high = min(low + 1, len(values) - 1)
    return values[low] * (high - index) + values[high] * (index - low) if high != low else values[low]


def latency(samples):
    if not samples or any(not math.isfinite(x) or x <= 0 for x in samples):
        raise ValueError("invalid latency samples")
    return {"p50_ms": percentile(samples, 50) * 1000, "p95_ms": percentile(samples, 95) * 1000,
            "sentences_per_s": 64 * len(samples) / sum(samples)}


def arm_order(repetition):
    # Latin rotation: each arm occurs first/middle/last once in three processes.
    i = repetition % len(ARMS)
    return ARMS[i:] + ARMS[:i]


def summarize(records):
    if any(r.get("arm") not in ARMS for r in records):
        raise ValueError("unknown experiment arm")
    grouped = {arm: [r for r in records if r["arm"] == arm] for arm in ARMS}
    if any(len(rows) < 3 for rows in grouped.values()) or len({len(rows) for rows in grouped.values()}) != 1:
        raise ValueError("incomplete three-arm experiment")
    identities = {(r["case_sha256"], r["graph_sha256"], r["plan_sha256"], r["input_sha256"],
                   r["environment_sha256"], r["compiler_set_sha256"]) for r in records}
    if len(identities) != 1:
        raise ValueError("cross-process identity/compiled-kernel mismatch")
    # ATen may differ numerically. Both FlagTree arms must be bitwise identical.
    compiled_checksums = {r["output_sha256"] for r in records if r["arm"] != "torch"}
    if len(compiled_checksums) != 1:
        raise ValueError("FlagTree out/inplace output mismatch")
    result = {}
    for arm, rows in grouped.items():
        result[arm] = {
            "processes": len(rows),
            **{key: statistics.median(latency(r["samples_s"])[key] for r in rows)
               for key in ("p50_ms", "p95_ms", "sentences_per_s")},
            **{key: statistics.median(r["memory"][key] for r in rows)
               for key in ("peak_allocated_bytes", "peak_reserved_bytes")},
        }
    # Isolate F08's buffer effect from changing ATen to a FlagTree kernel.
    before, after = result["flagtree-out"], result["flagtree-inplace"]
    result["buffer_effect"] = {
        "allocated_reduction_bytes": before["peak_allocated_bytes"] - after["peak_allocated_bytes"],
        "latency_ratio_after_over_before": after["p50_ms"] / before["p50_ms"],
        "acceptance": "not_automatically_accepted; short fixed-shape experiment only",
    }
    return result


def compiler_identity(evidence):
    # Artifact paths differ between processes; source/binary identity must not.
    return fingerprint({name: {"kernel_hash": item["kernel_hash"],
                               "compiler_source_sha256": item["compiler_source_sha256"],
                               "stages": {stage: value["sha256"] for stage, value in item["stages"].items()}}
                        for name, item in evidence.items()})
