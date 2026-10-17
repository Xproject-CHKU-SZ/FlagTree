#!/usr/bin/env python3
"""Build an evidence-qualified A100/PPU comparison without running a model.

Legacy eager latency and PT2 compiled latency are diagnostic observations,
not interchangeable acceptance measurements. Missing pairing evidence remains
explicit; task scores never enter latency comparisons.
"""
from __future__ import annotations

import argparse
from collections import Counter
import csv
from decimal import Decimal
import hashlib
import json
import math
import re
from pathlib import Path
from statistics import mean
from typing import Any


def read_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8-sig"))


def file_sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for block in iter(lambda: source.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def positive(value: Any) -> bool:
    return isinstance(value, (int, float)) and not isinstance(value, bool) and math.isfinite(value) and value > 0


def percentile(values: list[float], percent: int) -> float | None:
    if not values or not all(positive(value) for value in values):
        return None
    ordered = sorted(values)
    position = (len(ordered) - 1) * percent / 100
    lower = int(position)
    upper = min(lower + 1, len(ordered) - 1)
    return ordered[lower] + (ordered[upper] - ordered[lower]) * (position - lower)


def normalize_a100(document: dict[str, Any], path: Path) -> dict[str, Any]:
    result = document.get("test_result", {})
    info = document.get("model_info", {})
    config = document.get("config", {})
    model_id = result.get("model_name") or info.get("model_name")
    if not model_id or (info.get("model_name") and info["model_name"] != model_id):
        raise ValueError("missing or conflicting model ID in A100 record")
    explicit = result.get("benchmark_metadata", {})
    raw = result.get("raw_latencies", [])
    usable_raw = raw if isinstance(raw, list) and raw and all(positive(v) for v in raw) else []
    reported_mean = result.get("latency_mean")
    invalid_samples = [i for i, v in enumerate(raw) if not positive(v)] if isinstance(raw, list) else ["invalid_array"]
    serializable_raw = [v if positive(v) else None for v in raw] if isinstance(raw, list) else []
    metadata = {
        "revision": explicit.get("revision") or result.get("revision") or info.get("revision"),
        "weights_sha256": explicit.get("weights_sha256"),
        "input_sha256": explicit.get("input_sha256"),
        "preprocessing_sha256": explicit.get("preprocessing_sha256"),
        "input_shapes": explicit.get("input_shapes"),
        "output_shapes": explicit.get("output_shapes"),
        "dtype": explicit.get("dtype"),
        "precision_policy": explicit.get("precision_policy"),
        "execution_path": explicit.get("execution_path", "eager"),
        "timing_scope": explicit.get("timing_scope"),
        "synchronization": explicit.get("synchronization"),
        "warmup_runs": result.get("warmup_runs", config.get("warmup_runs")),
        "measured_runs": result.get("measured_runs", config.get("measured_runs")),
    }
    return {
        "model_id": model_id,
        "status": "passed" if result.get("status") in {"Success", "passed"} else "failed",
        "device": result.get("environment", {}).get("gpu_device_name"),
        "environment": result.get("environment", {}),
        "metadata": metadata,
        "fp16_request": config.get("use_fp16"),
        "fp16_status": result.get("fp16"),
        "dtype_note": "fp16 request/status retained; no unrecorded tensor dtype is invented",
        "latency_mean_s": mean(usable_raw) if usable_raw else reported_mean if positive(reported_mean) else None,
        "reported_latency_mean_s": reported_mean if positive(reported_mean) else None,
        "latency_p50_s": percentile(usable_raw, 50) if usable_raw else result.get("latency_p50") if positive(result.get("latency_p50")) else None,
        "latency_p95_s": percentile(usable_raw, 95),
        "latency_p99_s": percentile(usable_raw, 99) if usable_raw else result.get("latency_p99") if positive(result.get("latency_p99")) else None,
        "raw_latencies_s": serializable_raw,
        "invalid_raw_sample_indices": invalid_samples,
        "peak_device_alloc_mb": result.get("peak_device_alloc_mb"),
        "peak_device_reserved_mb": result.get("peak_device_reserved_mb"),
        "compile_and_first_run_seconds": None,
        "source": {"path": str(path.resolve()), "sha256": file_sha256(path)},
        "error": result.get("error"),
        "reproduce_command": explicit.get("reproduce_command"),
    }


def normalize_ppu(record: dict[str, Any], frozen: dict[str, Any], inputs: dict[str, Any], root: Path) -> dict[str, Any]:
    report = record.get("report", {})
    timing = report.get("compiled", {})
    command_file = root / "results" / record["model_id"].replace("/", "__") / "command.txt"
    probe = inputs.get("probe") or {}
    # A preprocessing signature freezes the actual per-model configuration.
    preprocessing = {key: probe.get(key) for key in ("texts", "text_pairs", "tokenizer_class", "tokenizer_config", "max_length")}
    metadata = {
        "revision": record.get("revision"),
        "weights_sha256": None,  # A file-set signature is not a single weight-file hash.
        "input_sha256": frozen.get("artifacts", {}).get("historical_hashes", {}).get("example_inputs.npz"),
        "preprocessing_sha256": hashlib.sha256(json.dumps(preprocessing, sort_keys=True).encode()).hexdigest() if probe else None,
        "input_shapes": [v["shape"] for v in report.get("input_tensors", [])] or None,
        "output_shapes": [v.get("shape") for v in report.get("comparison", [])] or None,
        "dtype": (inputs.get("parameter_dtypes_from_graph") or [None])[0],
        "precision_policy": None,  # No TF32/autocast settings are inferred.
        "execution_path": "compiled",
        "timing_scope": "pt2_forward_excludes_tokenizer_and_loading",
        "synchronization": report.get("benchmark_source", {}).get("timing"),
        "warmup_runs": report.get("warmup_runs"),
        "measured_runs": report.get("measured_runs"),
    }
    return {
        "model_id": record["model_id"], "status": record["status"],
        "device": report.get("environment", {}).get("device_name"),
        "environment": report.get("environment", {}), "metadata": metadata,
        "input_tensors": report.get("input_tensors"), "output_comparison": report.get("comparison"),
        "artifact_hashes": frozen.get("artifacts", {}).get("historical_hashes", {}),
        "latency_mean_s": timing.get("latency_mean_s"), "latency_p50_s": timing.get("latency_p50_s"),
        "latency_p95_s": timing.get("latency_p95_s"), "latency_p99_s": timing.get("latency_p99_s"),
        "raw_latencies_s": timing.get("raw_latencies_s"),
        "peak_device_alloc_mb": timing.get("peak_device_alloc_mb"),
        "peak_device_reserved_mb": timing.get("peak_device_reserved_mb"),
        "memory_scope": report.get("memory_scope"),
        "compile_and_first_run_seconds": report.get("compile_and_first_run_seconds"),
        "error": record.get("error"), "failure_stage": report.get("failure_stage") or record.get("source_failure_stage"),
        "reproduce_command": command_file.read_text(encoding="utf-8").strip() if command_file.exists() else None,
    }


PAIR_FIELDS = (
    "revision", "weights_sha256", "input_sha256", "preprocessing_sha256",
    "input_shapes", "output_shapes", "dtype", "precision_policy", "execution_path",
    "timing_scope", "synchronization", "warmup_runs", "measured_runs",
)


def compare_pair(a100: dict[str, Any] | None, ppu: dict[str, Any]) -> dict[str, Any]:
    reasons: list[str] = []
    checks: dict[str, str] = {}
    if a100 is None:
        reasons.append("a100_record_missing")
    if ppu["status"] != "passed":
        reasons.append("ppu_performance_not_passed")
    if a100 is not None:
        if a100["model_id"] != ppu["model_id"]:
            reasons.append("model_id_mismatch")
        if a100["status"] != "passed":
            reasons.append("a100_performance_not_passed")
        if "A100" not in (a100.get("device") or ""):
            reasons.append("a100_device_not_proven")
        if ppu.get("device") != "PPU-ZW810E":
            reasons.append("ppu_device_not_proven")
        for name in PAIR_FIELDS:
            left = a100.get("metadata", {}).get(name)
            right = ppu.get("metadata", {}).get(name)
            missing = lambda v: v is None or v == "" or (isinstance(v, (list, dict)) and not v)
            if missing(left) or missing(right):
                checks[name] = "missing"
                reasons.append("missing_" + name)
            elif left != right:
                checks[name] = "mismatch"
                reasons.append("mismatch_" + name)
            else:
                checks[name] = "matched"
            if name.endswith("sha256") and any(v is not None and (not isinstance(v, str) or re.fullmatch(r"[a-f0-9]{64}", v) is None) for v in (left, right)):
                reasons.append("invalid_" + name)
        for side, value in (("a100", a100), ("ppu", ppu)):
            if not positive(value.get("latency_mean_s")):
                reasons.append(side + "_latency_invalid")
            raw = value.get("raw_latencies_s")
            measured = value.get("metadata", {}).get("measured_runs")
            if not isinstance(raw, list) or measured != len(raw) or not raw or not all(positive(v) for v in raw):
                reasons.append(side + "_raw_samples_incomplete")
    diagnostic_ratio = None
    if a100 is not None and a100["status"] == ppu["status"] == "passed" and positive(a100.get("latency_mean_s")) and positive(ppu.get("latency_mean_s")):
        # Use the recorded decimal values: binary 0.01/0.0125 can land just
        # below 0.8 and incorrectly reject an exact threshold observation.
        diagnostic_ratio = float(Decimal(str(a100["latency_mean_s"])) / Decimal(str(ppu["latency_mean_s"])))
        if not math.isfinite(diagnostic_ratio):
            diagnostic_ratio = None
            reasons.append("latency_ratio_overflow")
    qualified = not reasons
    return {
        "model_id": ppu["model_id"], "a100": a100, "ppu": ppu,
        "pairing_checks": checks, "not_comparable_reasons": reasons,
        "diagnostic_latency_ratio_a100_over_ppu": diagnostic_ratio,
        "diagnostic_note": "raw scalar latency ratio only; not normalized throughput or A100-80% certification",
        "acceptance": {
            "status": ("passed" if diagnostic_ratio is not None and diagnostic_ratio >= 0.8 else "failed") if qualified else "not_comparable",
            "ppu_performance_over_a100": diagnostic_ratio if qualified else None,
            "required_performance_ratio": 0.8,
            "max_accepted_ppu_latency_s": float(Decimal(str(a100["latency_mean_s"])) / Decimal("0.8")) if qualified and a100 else None,
        },
    }


def build_report(phase1: Path, freeze: Path, a100_dir: Path) -> dict[str, Any]:
    audit_path = phase1 / "audit_report.json"
    if not audit_path.exists() or read_json(audit_path).get("status") != "passed":
        raise ValueError("stage1 evidence audit must pass before stage2")
    audit = read_json(audit_path)
    if audit.get("batch_state_sha256") != file_sha256(phase1 / "batch_state.json") or audit.get("stage0_manifest_sha256") != file_sha256(freeze / "sha256-manifest.json"):
        raise ValueError("stage1 audit does not match current batch/frozen evidence")
    state = read_json(phase1 / "batch_state.json")
    inventory = read_json(freeze / "model_inventory.json")
    models = {m["model_id"]: m for m in inventory["models"]}
    records = {r["model_id"]: r for r in state["results"]}
    if not state.get("finished_at") or len(records) != len(state["results"]) or set(records) != set(models):
        raise ValueError("stage1 is not terminal or model identities are incomplete")
    inputs = {r["model_id"]: r for r in read_json(freeze / "input_inventory.json")["models"]}
    a100_records: dict[str, Any] = {}
    parse_errors: list[dict[str, str]] = []
    duplicates: set[str] = set()
    for path in sorted(a100_dir.glob("*.json")):
        try:
            normalized = normalize_a100(read_json(path), path)
            model_id = normalized["model_id"]
            if model_id in a100_records:
                duplicates.add(model_id)
            else:
                a100_records[model_id] = normalized
        except (ValueError, TypeError, KeyError, OSError) as exc:
            parse_errors.append({"path": str(path), "error": str(exc)})
    results = []
    for model_id, frozen in sorted(models.items()):
        pair = compare_pair(a100_records.get(model_id), normalize_ppu(records[model_id], frozen, inputs[model_id], phase1))
        if model_id in duplicates:
            pair["not_comparable_reasons"].append("ambiguous_duplicate_a100_records")
            pair["acceptance"].update(status="not_comparable", ppu_performance_over_a100=None, max_accepted_ppu_latency_s=None)
        results.append(pair)
    return {
        "schema_version": 1, "scope": "all frozen 176 model IDs, including unavailable PPU baselines",
        "a100_file_count": len(list(a100_dir.glob("*.json"))), "a100_parse_errors": parse_errors,
        "a100_duplicate_ids": sorted(duplicates), "model_count": len(results),
        "a100_found_count": sum(r["a100"] is not None for r in results),
        "ppu_status_counts": dict(Counter(r["ppu"]["status"] for r in results)),
        "acceptance_counts": dict(Counter(r["acceptance"]["status"] for r in results)),
        "reason_counts": dict(Counter(reason for r in results for reason in r["not_comparable_reasons"])),
        "phase1_audit": {"path": str(audit_path), "sha256": file_sha256(audit_path)},
        "stage0_manifest_sha256": file_sha256(freeze / "sha256-manifest.json"),
        "results": results,
    }


def save_report(report: dict[str, Any], out: Path) -> None:
    out.mkdir(parents=True, exist_ok=False)
    (out / "comparison.json").write_text(json.dumps(report, ensure_ascii=False, indent=2, allow_nan=False) + "\n", encoding="utf-8")
    with (out / "comparison.csv").open("w", encoding="utf-8-sig", newline="") as stream:
        fields = ["model_id", "ppu_status", "a100_status", "a100_mean_s", "ppu_mean_s", "diagnostic_ratio", "acceptance", "reasons"]
        writer = csv.DictWriter(stream, fieldnames=fields)
        writer.writeheader()
        for r in report["results"]:
            writer.writerow({"model_id": r["model_id"], "ppu_status": r["ppu"]["status"], "a100_status": (r["a100"] or {}).get("status"), "a100_mean_s": (r["a100"] or {}).get("latency_mean_s"), "ppu_mean_s": r["ppu"].get("latency_mean_s"), "diagnostic_ratio": r["diagnostic_latency_ratio_a100_over_ppu"], "acceptance": r["acceptance"]["status"], "reasons": ";".join(r["not_comparable_reasons"])})
    lines = ["# A100 eager / PPU compiled 对比报告", "", f"模型范围：{report['model_count']} 个；A100 找到记录：{report['a100_found_count']} 个。", f"PPU 状态：{report['ppu_status_counts']}；验收状态：{report['acceptance_counts']}。", "", "原始延迟比仅用于诊断；执行路径、revision、权重、输入、预处理、Shape、dtype、精度策略和计时证据不匹配时保持 not_comparable，不能标记 A100 80% 达标。", "", "## 缺口分布", "", "| 原因 | 模型数 |", "|---|---:|"]
    lines += [f"| {name} | {count} |" for name, count in sorted(report["reason_counts"].items())]
    lines += ["", "逐模型完整数值、原始记录路径、哈希、环境、错误和复现字段见 comparison.json/csv。该报告不覆盖 PPU 原始记录，也不使用任务分数或评测耗时代替推理延迟。"]
    (out / "comparison.md").write_text("\n".join(lines) + "\n", encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--phase1-root", type=Path, required=True)
    parser.add_argument("--freeze-root", type=Path, required=True)
    parser.add_argument("--a100-dir", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    report = build_report(args.phase1_root, args.freeze_root, args.a100_dir)
    save_report(report, args.output_dir)
    print(json.dumps({k: report[k] for k in ("model_count", "a100_found_count", "ppu_status_counts", "acceptance_counts")}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
