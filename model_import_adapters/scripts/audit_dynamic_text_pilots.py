#!/usr/bin/env python3
"""Verify dynamic-pilot evidence before counting any unique model ID."""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

import numpy as np

EXPECTED_PROBES = {(1, 8), (2, 24), (4, 64), (2, 8), (1, 64)}


def sha256(path):
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def check_case(case, log_root):
    errors = []
    report_path = case / "report.json"
    if not report_path.is_file():
        return {"attempt": case.name, "accepted": False, "errors": ["terminal_report_missing"]}
    report = json.loads(report_path.read_text())
    record = {"attempt": case.name, "model_id": report.get("model_id"), "revision": report.get("revision"),
              "status": report.get("status"), "accepted": False, "failure_stage": report.get("failure_stage"), "errors": errors}
    if report.get("status") != "passed":
        errors.append("runner_not_passed")
        record["raw_error"] = report.get("error")
        return record
    if report.get("device") != "PPU-ZW810E" or report.get("fullgraph") is not True or report.get("dynamic_compile") is not True:
        errors.append("device_or_compile_contract_mismatch")
    if report.get("cpu_model_forward") != "not_run":
        errors.append("cpu_baseline_contract_mismatch")
    if not report.get("model_id") or not report.get("revision"):
        errors.append("model_identity_missing")
    required = ["model-files.json", "environment.json", "task-protocol.json", "command.json", "exit-code.txt", "shape-constraints.json",
                "compiler-file-index.json", "audit.stdout.log", "audit.stderr.log", "audit.exit_code.txt", "evidence-sha256.json",
                "artifacts/model.core_aten.pt2", "artifacts/manifest.json", "artifacts/semantics.json", "artifacts/validation.json",
                "artifacts/example_inputs.npz", "artifacts/graph.readable.txt", "artifacts/graph_module.py",
                "semantic-rule-audit/semantic_rule_audit.json", "semantic-rule-audit/semantic_rule_audit.md"]
    errors.extend(f"missing:{name}" for name in required if not (case / name).is_file())
    for suffix in ("stdout.log", "stderr.log", "exit-code.txt"):
        if not (log_root / f"{case.name}.{suffix}").is_file():
            errors.append(f"runner_log_missing:{suffix}")
    if errors:
        return record
    for path in (case / "exit-code.txt", case / "audit.exit_code.txt", log_root / f"{case.name}.exit-code.txt"):
        if path.read_text().strip() != "0":
            errors.append(f"nonzero_exit:{path.name}")
    manifest = json.loads((case / "artifacts/manifest.json").read_text())
    semantics = json.loads((case / "artifacts/semantics.json").read_text())
    validation = json.loads((case / "artifacts/validation.json").read_text())
    constraints = json.loads((case / "shape-constraints.json").read_text())
    semantic_audit = json.loads((case / "semantic-rule-audit/semantic_rule_audit.json").read_text())
    if semantic_audit.get("status") != "passed" or semantic_audit.get("validation", {}).get("status") != "passed":
        errors.append("semantic_audit_report_failed")
    if semantic_audit.get("entry") != report.get("model_id"):
        errors.append("semantic_audit_entry_mismatch")
    if semantic_audit.get("registry_version") != semantics.get("registry_version") or semantic_audit.get("registry_sha256") != semantics.get("registry_sha256"):
        errors.append("semantic_audit_registry_mismatch")
    if constraints != manifest.get("shape_constraints") or constraints != semantics.get("dynamic_dimensions", {}).get("input_axis_constraints"):
        errors.append("cross_artifact_shape_constraints_mismatch")
    if not manifest.get("export_mode", {}).get("dynamic_shapes_requested") or not constraints.get("symbols"):
        errors.append("dynamic_shapes_not_observed")
    if validation.get("saved_and_loaded") is not True or validation.get("shape_constraints", {}).get("saved_and_loaded_equal") is not True:
        errors.append("roundtrip_constraints_unproven")
    constraint_hash = hashlib.sha256(json.dumps(constraints, sort_keys=True, ensure_ascii=False).encode()).hexdigest()
    if constraint_hash != validation.get("shape_constraints", {}).get("sha256"):
        errors.append("constraint_hash_mismatch")
    for expected, path in ((manifest.get("artifact", {}).get("sha256"), case / "artifacts/model.core_aten.pt2"),
                           (manifest.get("input_archive", {}).get("sha256"), case / "artifacts/example_inputs.npz"),
                           (validation.get("semantic_contract_sha256"), case / "artifacts/semantics.json"),
                           (validation.get("manifest_sha256"), case / "artifacts/manifest.json")):
        if not expected or sha256(path) != expected:
            errors.append(f"artifact_hash_mismatch:{path.name}")
    if validation.get("status") != "passed" or semantics.get("validation", {}).get("status") != "passed":
        errors.append("semantic_or_validation_failed")
    files = json.loads((case / "model-files.json").read_text())
    source = manifest.get("source", {})
    if files.get("model_id") != report.get("model_id") or files.get("revision") != report["revision"]:
        errors.append("model_file_identity_mismatch")
    if source.get("model_id") != report.get("model_id") or source.get("revision") != report.get("revision"):
        errors.append("manifest_identity_mismatch")
    if not files.get("files") or any(len(item.get("sha256", "")) != 64 for item in files.get("files", [])):
        errors.append("model_file_provenance_missing")
    environment = json.loads((case / "environment.json").read_text())
    if environment.get("device_name") != "PPU-ZW810E" or not environment.get("source_baseline", {}).get("base_commit"):
        errors.append("environment_or_source_baseline_missing")
    evidence_index = json.loads((case / "evidence-sha256.json").read_text())
    if not evidence_index:
        errors.append("evidence_index_empty")
    for item in evidence_index:
        relative = Path(item["path"])
        path = case / relative
        if relative.is_absolute() or ".." in relative.parts or not path.is_file() or sha256(path) != item["sha256"]:
            errors.append(f"evidence_hash_mismatch:{item['path']}")
    probes = report.get("probes", [])
    if len(probes) != len(EXPECTED_PROBES) or {(p["batch"], p["sequence"]) for p in probes} != EXPECTED_PROBES:
        errors.append("probe_range_coverage_incomplete")
    example_inputs = case / "artifacts/example_inputs.npz"
    with np.load(example_inputs, allow_pickle=False) as example_archive:
        example_arrays = {key: example_archive[key].copy() for key in example_archive.files}
    input_schema = manifest.get("input_archive", {}).get("schema", {})
    for probe in probes:
        archive = case / Path(probe["archive"]).name
        if not archive.is_file() or sha256(archive) != probe["sha256"]:
            errors.append(f"probe_hash_mismatch:{archive.name}")
            continue
        with np.load(archive, allow_pickle=False) as data:
            for position, key in enumerate(probe["input_keys"]):
                if list(data[key].shape) != [probe["batch"], probe["sequence"]] or data[key].dtype != np.int64:
                    errors.append(f"probe_input_contract_mismatch:{archive.name}:{key}")
                archived_keys = input_schema.get("positional", [])
                archive_key = archived_keys[position] if position < len(archived_keys) else key
                if list(data[key].shape) == [2, 24] and archive_key in example_arrays and not np.array_equal(data[key], example_arrays[archive_key]):
                    errors.append(f"probe_input_example_mismatch:{archive.name}:{key}")
            reference = data["original_output"]
            for key in ("original_output", "eager_output", "restored_output", "compiled_output"):
                candidate = data[key]
                if not np.isfinite(candidate).all() or candidate.shape != reference.shape or candidate.dtype != reference.dtype or not np.allclose(candidate, reference, atol=3e-4, rtol=3e-4):
                    errors.append(f"probe_output_comparison_failed:{archive.name}:{key}")
        samples = probe.get("samples_ms", [])
        if len(samples) != 10 or any(not np.isfinite(value) or value <= 0 for value in samples):
            errors.append(f"timing_samples_invalid:{archive.name}")
        elif not np.isclose(float(probe.get("mean_ms", np.nan)), float(np.mean(samples)), rtol=1e-6, atol=1e-9):
            errors.append(f"timing_mean_mismatch:{archive.name}")
    compiler_index = json.loads((case / "compiler-file-index.json").read_text())
    stage_suffixes = set(report.get("triton_stage_suffixes", []))
    indexed_suffixes = {str(item.get("suffix", "")) for item in compiler_index}
    if stage_suffixes and not stage_suffixes.issubset(indexed_suffixes):
        errors.append("compiler_stage_summary_mismatch")
    for item in compiler_index:
        relative = Path(str(item.get("relative_path", "")))
        root = str(item.get("root", ""))
        path = case / root / relative
        if relative.is_absolute() or ".." in relative.parts or root not in {"triton-dump", "inductor-cache", "triton-cache"} or not path.is_file():
            errors.append(f"compiler_index_path_missing:{item.get('relative_path')}")
            continue
        if sha256(path) != item.get("sha256") or path.stat().st_size != item.get("size_bytes"):
            errors.append(f"compiler_index_hash_mismatch:{item.get('relative_path')}")
    record.update(accepted=not errors, report_sha256=sha256(report_path), manifest_sha256=sha256(case / "artifacts/manifest.json"))
    return record


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cases", type=Path, nargs="+", required=True)
    parser.add_argument("--log-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        raise SystemExit("Use a new audit output path")
    records = []
    for case in args.cases:
        try:
            records.append(check_case(case, args.log_root))
        except (OSError, ValueError, KeyError, TypeError) as exc:
            records.append({"attempt": case.name, "accepted": False, "errors": [f"evidence_parse_error:{type(exc).__name__}:{exc}"]})
    accepted_ids = [item["model_id"] for item in records if item["accepted"]]
    result = {"status": "passed" if all(item["accepted"] for item in records) else "failed",
              "attempts": len(records), "accepted_unique_ids": len(set(accepted_ids)),
              "duplicate_accepted_ids": len(accepted_ids) - len(set(accepted_ids)), "records": records,
              "scope": "Only this audited dynamic pilot; static and synthetic cases are not added"}
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2, allow_nan=False) + "\n", encoding="utf-8")
    print(json.dumps({key: value for key, value in result.items() if key != "records"}))
    return 0 if result["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
