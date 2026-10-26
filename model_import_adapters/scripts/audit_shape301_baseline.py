#!/usr/bin/env python3
"""Rehash frozen 301-model evidence without running a model or editing a case."""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import sys
import time
import traceback

from run_scene_optimization_campaign import PROBES, validate_scope, protocol_errors


def sha256(path):
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for block in iter(lambda: stream.read(8 * 1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def read(path):
    return json.loads(Path(path).read_text(encoding="utf-8"))


def save(path, value):
    temporary = path.with_suffix(path.suffix + ".tmp")
    temporary.write_text(json.dumps(value, indent=2, ensure_ascii=False, allow_nan=False) + "\n", encoding="utf-8")
    os.replace(temporary, path)


def check(value, message):
    if not value:
        raise ValueError(message)


def validate_ir_metadata(manifest, semantics, validation, hashes):
    """Bind saved validation to the exact exported bytes, without model work."""
    check(manifest["artifact"]["sha256"] == hashes["model.core_aten.pt2"], "PT2 hash drift")
    check(validation.get("status") == "passed" and validation.get("saved_and_loaded") is True,
          "IR serialization validation is not passed")
    check(validation.get("shape_constraints", {}).get("saved_and_loaded_equal") is True,
          "Serialized shape constraints differ")
    constraint_sha = hashlib.sha256(json.dumps(manifest["shape_constraints"],sort_keys=True,ensure_ascii=False).encode("utf8")).hexdigest()
    check(validation["shape_constraints"].get("sha256") == constraint_sha, "Shape constraint content binding drift")
    check(manifest.get("input_archive", {}).get("sha256") == hashes["example_inputs.npz"], "Example input archive binding drift")
    for field, file in (("exported_program_sha256", "model.core_aten.pt2"),
                        ("manifest_sha256", "manifest.json"), ("semantic_contract_sha256", "semantics.json")):
        check(validation.get(field) == hashes[file], f"validation metadata binding drift: {field}")
    semantic_index = manifest.get("semantics_artifact", {})
    check(semantic_index.get("sha256") == hashes["semantics.json"], "Manifest semantics binding drift")
    for name in ("schema_version", "registry_version", "registry_sha256", "coverage"):
        check(name in semantics and semantic_index.get(name) == semantics[name], f"Manifest semantic registry/coverage drift: {name}")
    check(semantic_index.get("validation_status") == "passed", "Manifest semantic status is not passed")
    for label, report in (("semantics", semantics.get("validation", {})),
                          ("validation", validation.get("semantic_contract", {}))):
        check(report.get("status") == "passed" and report.get("errors") == [] and report.get("error_count") == 0,
              f"{label} semantic validation failed or incomplete")
    rules = semantics.get("coverage", {}).get("rule_checks", {})
    fields = ("total", "executed", "passed", "failed", "not_implemented", "insufficient_metadata")
    check(all(type(rules.get(key)) is int and rules[key] >= 0 for key in fields),
          "Semantic executable-rule counters missing or invalid")
    check(rules["failed"] == 0 and rules["passed"] == rules["executed"]
          and rules["total"] == rules["executed"] + rules["not_implemented"] + rules["insufficient_metadata"],
          "Semantic executable-rule counters inconsistent or failed")
    return {"status": "passed", "saved_and_loaded": True, "shape_constraints_equal": True,
            "rule_checks": dict(rules), "semantic_warnings": semantics["validation"].get("warnings", []),
            "all_rules_executed": rules["executed"] == rules["total"],
            "scope": "serialized metadata and exact artifact bindings; incomplete executable coverage is recorded, not promoted to full coverage"}


def audit_model(row, case, hash_cache):
    import numpy as np

    result = {"model_id": row["model_id"], "revision": row["revision"], "task": row["task"],
              "baseline_case": str(case), "status": "failed", "hashes": {}, "model_files": 0,
              "input_probes": 0, "errors": []}
    try:
        report = read(case / "report.json")
        historical = Path(row["case"])
        old_report = read(historical / "report.json")
        protocol = read(case / "task-protocol.json")
        check(report["status"] == "passed" and report["model_id"] == row["model_id"] and report["revision"] == row["revision"], "case identity/status drift")
        check(protocol["task"] == row["task"], "task drift")
        check(not protocol_errors(read(historical / "task-protocol.json"), protocol), "historical task protocol drift")
        for name, expected in [("task-protocol.json", row["task_protocol_sha256"]), ("model-files.json", row["model_files_sha256"])]:
            check(sha256(historical / name) == expected, f"historical inventory drift: {name}")
        manifest = read(case / "artifacts/manifest.json")
        source = manifest["source"]
        check(source["model_id"] == row["model_id"] and source["revision"] == row["revision"], "manifest identity drift")
        for name in ("model.core_aten.pt2", "manifest.json", "semantics.json", "validation.json", "graph.readable.txt", "graph_module.py", "example_inputs.npz"):
            path = case / "artifacts" / name
            result["hashes"][name] = sha256(path)
        result["ir_metadata"] = validate_ir_metadata(manifest, read(case / "artifacts/semantics.json"),
                                                     read(case / "artifacts/validation.json"), result["hashes"])
        # An index hash alone does not prove weights still exist with those bytes.
        inventory = read(case / "model-files.json")
        check(inventory["model_id"] == row["model_id"] and inventory["revision"] == row["revision"], "weight inventory identity drift")
        snapshot = Path(inventory["snapshot"])
        for item in inventory["files"]:
            relative = Path(item["relative_path"])
            check(not relative.is_absolute() and ".." not in relative.parts, "invalid snapshot-relative path")
            file = snapshot / relative
            physical = str(file.resolve(strict=True))
            if physical not in hash_cache:
                hash_cache[physical] = (file.stat().st_size, sha256(file))
            size, digest = hash_cache[physical]
            check(size == item["size_bytes"] and digest == item["sha256"], f"model file drift: {file}")
            result["model_files"] += 1
        check(sorted((p["batch"], p["sequence"]) for p in report["probes"]) == sorted(map(tuple, PROBES)), "five probes missing/duplicated")
        old_probes = {(p["batch"], p["sequence"]): p for p in old_report["probes"]}
        for probe in report["probes"]:
            path = case / Path(probe["archive"]).name
            check(sha256(path) == probe["sha256"], "probe hash drift")
            old_probe = old_probes[probe["batch"], probe["sequence"]]
            old_path = historical / Path(old_probe["archive"]).name
            check(sha256(old_path) == old_probe["sha256"], "historical probe hash drift")
            with np.load(path, allow_pickle=False) as current, np.load(old_path, allow_pickle=False) as old:
                check(probe["input_keys"] == old_probe["input_keys"], "input key drift")
                for key in probe["input_keys"]:
                    a, b = current[key], old[key]
                    check(a.shape == b.shape and a.dtype == b.dtype and np.array_equal(a, b), "input tensor drift")
                for key in ("original_output", "eager_output", "restored_output", "compiled_output"):
                    a, b = current[key], old[key]
                    check(a.shape == b.shape and a.dtype == b.dtype, "output metadata drift")
                    delta = np.abs(a.astype(np.float64) - b.astype(np.float64))
                    check(np.isfinite(a).all() and np.isfinite(b).all() and np.all(delta <= 3e-4 + 3e-4 * np.abs(b.astype(np.float64))), "stored output comparison failed")
            result["hashes"][path.name] = probe["sha256"]
            result["input_probes"] += 1
        for name in ("report.json", "task-protocol.json", "model-files.json", "environment.json", "command.json"):
            result["hashes"][name] = sha256(case / name)
        result["status"] = "passed"
    except Exception:
        result["errors"].append(traceback.format_exc())
    return result


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--accepted", type=Path, required=True)
    p.add_argument("--checkpoint", type=Path, required=True)
    p.add_argument("--output", type=Path, required=True)
    args = p.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    report = {"status": "running", "started_at": time.time(), "models": [], "scope": "file rehash and stored-array audit; no model execution", "cpu_model_forward": "not_run"}
    save(args.output / "command.json", [sys.executable, *sys.argv])
    cache = {}
    try:
        rows = validate_scope(read(args.accepted))
        cp = read(args.checkpoint)
        records = {r["model_id"]: r for r in cp["records"]}
        check(len(records) == len(cp["records"]) == len(rows) == 301 and set(records) == {r["model_id"] for r in rows}, "baseline scope mismatch")
        report.update(accepted_sha256=sha256(args.accepted), checkpoint_sha256=sha256(args.checkpoint))
        for row in rows:
            record = records[row["model_id"]]
            check(record["status"] == "passed" and record["revision"] == row["revision"], "baseline record drift")
            result = audit_model(row, Path(record["case"]), cache)
            report["models"].append(result)
            save(args.output / "progress.json", report)
            print(json.dumps({"model_id": row["model_id"], "status": result["status"], "done": len(report["models"]), "errors": result["errors"]}), flush=True)
        report["status"] = "passed" if all(r["status"] == "passed" for r in report["models"]) else "failed"
    except Exception:
        report.update(status="failed", error=traceback.format_exc())
    report.update(finished_at=time.time(), unique_physical_files_rehashed=len(cache),
                  passed=sum(r["status"] == "passed" for r in report["models"]), failed=sum(r["status"] == "failed" for r in report["models"]))
    save(args.output / "report.json", report)
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
