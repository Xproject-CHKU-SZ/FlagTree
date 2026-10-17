#!/usr/bin/env python3
"""Audit stage1 evidence without CPU/PPU inference or mutating source results."""
from __future__ import annotations

import argparse
from collections import Counter
import hashlib
import json
import math
from pathlib import Path


def load(path: Path):
    return json.loads(path.read_text(encoding="utf-8-sig"))


def sha(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def audit(root: Path, freeze: Path) -> dict:
    errors: list[str] = []
    state = load(root / "batch_state.json")
    inventory = load(freeze / "model_inventory.json")
    models = {m["model_id"]: m for m in inventory["models"]}
    results = state["results"]
    records = {r["model_id"]: r for r in results}
    if not state.get("finished_at"):
        errors.append("batch_not_terminal")
    if len(records) != len(results) or set(records) != set(models):
        errors.append("model_identity_or_count_mismatch")
    count = Counter()
    for model_id, expected in models.items():
        if model_id not in records:
            continue
        rec = records[model_id]
        directory = root / "results" / model_id.replace("/", "__")
        if rec.get("revision") != expected["revision"]:
            errors.append(model_id + ":revision_mismatch")
        record_path = directory / "model_record.json"
        if not record_path.is_file() or load(record_path) != rec:
            errors.append(model_id + ":record_mismatch")
        if rec["status"] == "no_pt2":
            count["not_run_no_accepted_pt2"] += 1
            if expected["category"] == "usable_pt2" or not rec.get("reason"):
                errors.append(model_id + ":invalid_not_run_reason")
            continue
        required = ["performance_report.json", "command.txt", "stdout.log", "stderr.log", "exit_code.txt"]
        missing = [f for f in required if not (directory / f).is_file()]
        if missing:
            errors.append(model_id + ":missing=" + ",".join(missing))
            continue
        report = load(directory / "performance_report.json")
        if report != rec.get("report"):
            errors.append(model_id + ":report_mismatch")
        if int((directory / "exit_code.txt").read_text().strip()) != rec.get("exit_code"):
            errors.append(model_id + ":exit_code_mismatch")
        count[rec["status"]] += 1
        if rec["status"] == "failed":
            if not rec.get("error") or rec.get("exit_code") == 0:
                errors.append(model_id + ":failure_evidence_incomplete")
            continue
        if rec["status"] != "passed" or rec.get("exit_code") != 0 or report.get("status") != "passed":
            errors.append(model_id + ":invalid_success")
            continue
        if report.get("fullgraph") is not True or report.get("cpu_baseline") != "not_run":
            errors.append(model_id + ":execution_protocol_mismatch")
        if report.get("environment", {}).get("device_name") != "PPU-ZW810E":
            errors.append(model_id + ":device_mismatch")
        if not report.get("input_tensors") or not report.get("comparison"):
            errors.append(model_id + ":input_or_comparison_missing")
        for row in report.get("comparison", []):
            if row.get("kind") == "tensor" and not math.isfinite(row.get("max_abs_error", float("nan"))):
                # NaN/Inf in either array would propagate through absolute
                # differences/max; the original comparison cannot certify it.
                errors.append(model_id + ":nonfinite_output_difference")
        duration = report.get("compile_and_first_run_seconds")
        if not isinstance(duration, (int, float)) or not math.isfinite(duration) or duration <= 0:
            errors.append(model_id + ":compile_time_invalid")
        timing = report.get("compiled", {})
        measured = report.get("measured_runs")
        samples = timing.get("raw_latencies_s", [])
        if not samples or measured != len(samples) or any(not math.isfinite(t) or t <= 0 for t in samples):
            errors.append(model_id + ":raw_samples_invalid")
        for field in ["latency_mean_s", "latency_p50_s", "latency_p95_s", "latency_p99_s"]:
            value = timing.get(field)
            if not isinstance(value, (int, float)) or not math.isfinite(value) or value <= 0:
                errors.append(model_id + ":missing_or_invalid_" + field)
        if not report.get("memory_scope"):
            errors.append(model_id + ":memory_scope_missing")
    if state.get("counts") and state["counts"] != dict(Counter(r["status"] for r in results)):
        errors.append("batch_status_counts_mismatch")
    compiler = root / "compiler-evidence-index.json"
    environment = root / "environment.json"
    if not compiler.is_file() or not environment.is_file():
        errors.append("compiler_index_or_environment_missing")
    else:
        env = load(environment)
        if env.get("device") != "PPU-ZW810E" or not env.get("torch") or not env.get("triton"):
            errors.append("environment_incomplete")
        stages = {r["model_directory"]: r for r in load(compiler)}
        for model_id in models:
            if model_id.replace("/", "__") not in stages:
                errors.append(model_id + ":compiler_index_record_missing")
    manifest_path = root / "evidence-manifest.json"
    if not manifest_path.exists():
        errors.append("evidence_hash_manifest_missing")
    else:
        seen = set()
        for row in load(manifest_path)["files"]:
            rel = Path(row["path"])
            if rel.is_absolute() or ".." in rel.parts or row["path"] in seen:
                errors.append("invalid_hash_manifest_path")
                continue
            seen.add(row["path"])
            path = root / rel
            if not path.is_file() or path.stat().st_size != row["size_bytes"] or sha(path) != row["sha256"]:
                errors.append("hash_mismatch:" + row["path"])
        for model_id, rec in records.items():
            prefix = "results/" + model_id.replace("/", "__") + "/"
            names = ["model_record.json"] + ([] if rec["status"] == "no_pt2" else ["performance_report.json", "command.txt", "stdout.log", "stderr.log", "exit_code.txt"])
            for name in names:
                if prefix + name not in seen:
                    errors.append("unhashed_required_artifact:" + prefix + name)
    return {"schema_version": 1, "status": "passed" if not errors else "failed", "verification_scope": "stage1_evidence_not_300_models_or_a100_acceptance", "model_count": len(models), "performance_counts": dict(count), "errors": errors, "batch_state_sha256": sha(root / "batch_state.json"), "stage0_manifest_sha256": sha(freeze / "sha256-manifest.json")}


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, required=True)
    parser.add_argument("--freeze", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    report = audit(args.root, args.freeze)
    if args.output.exists():
        raise SystemExit("audit output already exists; preserve it and use a new path")
    args.output.write_text(json.dumps(report, ensure_ascii=False, indent=2, allow_nan=False) + "\n", encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False))
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
