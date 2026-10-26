#!/usr/bin/env python3
"""Join original301 serialized constraints, stored inputs and separate runtime evidence.

Read only: no Torch import, model forward, PT2 mutation, constraint relaxation
or inferred rectangular support. Boundary specifications are not executed.
"""
import argparse
import collections
import csv
import hashlib
import importlib.util
import json
from pathlib import Path
import sys
import traceback


def sha(path):
    result = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for data in iter(lambda: stream.read(1024 * 1024), b""):
            result.update(data)
    return result.hexdigest()


def read(path):
    return json.loads(Path(path).read_text(encoding="utf8"))


def require(value, message):
    if not value:
        raise ValueError(message)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("strict-root", "runtime-view", "torch-bound-source", "output-dir"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--source-root", type=Path, default=Path(__file__).parents[1])
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    module_path = args.source_root / "src/model_import_adapters/shape_constraint_audit.py"
    spec = importlib.util.spec_from_file_location("shape_constraint_audit", module_path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    import numpy as np

    accepted_path = args.strict_root / "accepted-models.json"
    accepted = read(accepted_path)
    strict_path = args.strict_root / "e5-original301-strict-ir-audit-v1/report.json"
    strict = read(strict_path)
    require(isinstance(accepted, list) and len(accepted) == len({x["model_id"] for x in accepted}) == 301,
            "Exact original301 unique scope required")
    require(sha(accepted_path) == strict["accepted_sha256"]
            and strict["status"] == "passed" and strict["passed"] == 301 and strict["failed"] == 0,
            "Strict original301 provenance required")
    original = {x["model_id"]: x for x in strict["models"]}
    require(set(original) == {x["model_id"] for x in accepted}, "Original model set differs")
    runtime = read(args.runtime_view)
    require(runtime["scope_models"] == 301 and runtime["main_probe_rows"] == 1505 and len(runtime["rows"]) == 1505,
            "Original301/1505 runtime view required")
    runtime_rows = {(x["model_id"], x["batch"], x["sequence"]): x for x in runtime["rows"]}
    require(len(runtime_rows) == 1505, "Duplicate runtime probe identity")
    torch_source = read(args.torch_bound_source)
    require(torch_source["torch"] == "2.10.0" and torch_source["function"] == "_check_symint"
            and "if min_val > 2:" in torch_source["source"] and "we allow dimensions to be 0/1 at runtime" in torch_source["source"],
            "Observed installed Torch small-extent validation source required; no guessed exception")
    models, specifications, issues, fingerprints = [], [], [], collections.Counter()
    for identity in accepted:
        name = identity["model_id"]
        item = {key: identity[key] for key in ("model_id", "revision", "task")}
        try:
            proof = original[name]
            require(all(proof[key] == item[key] for key in item), "Original revision/task differs")
            folder = args.strict_root / "models" / name.replace("/", "__")
            files = {key: folder / ("artifacts/" + key if key in {"manifest.json", "validation.json"} else key)
                     for key in ("manifest.json", "validation.json", "report.json")}
            for key, path in files.items():
                require(sha(path) == proof["hashes"][key], "Strict file hash changed: " + key)
            manifest, validation, saved = (read(files[key]) for key in ("manifest.json", "validation.json", "report.json"))
            require(saved["model_id"] == name and saved["revision"] == item["revision"] and saved["status"] == "passed"
                    and saved["cpu_model_forward"] == "not_run" and saved["device"] == "PPU-ZW810E"
                    and saved["fullgraph"] is True and saved["dynamic_compile"] is True, "Original PPU proof differs")
            contract = manifest["shape_constraints"]
            contract_sha = hashlib.sha256(json.dumps(contract, sort_keys=True, ensure_ascii=False).encode()).hexdigest()
            require(validation["shape_constraints"]["saved_and_loaded_equal"] is True
                    and validation["shape_constraints"]["sha256"] == contract_sha, "Serialized constraint roundtrip binding changed")
            reduced = [{"expression": row["symbol"], "lower": row["lower"], "upper": row["upper"]}
                       for row in manifest["range_constraints"]]
            require(sorted(reduced, key=lambda x: x["expression"]) == contract["range_constraints"], "Manifest range copies differ")
            schema = manifest["input_archive"]["schema"]
            bindings = ([{"archive_key": key, "source": "positional", "position": i} for i, key in enumerate(schema["positional"])]
                        + [{"archive_key": row["key"], "source": "keyword", "name": row["name"]} for row in schema["keyword"]])
            require([{key: row[key] for key in binding} for row, binding in zip(contract["inputs"], bindings)] == bindings
                    and len(contract["inputs"]) == len(bindings), "Archive input bindings differ")
            example_path = folder / "artifacts/example_inputs.npz"
            require(sha(example_path) == manifest["input_archive"]["sha256"] == proof["hashes"]["example_inputs.npz"], "Example input hash differs")
            with np.load(example_path, allow_pickle=False) as values:
                example = {key: {"shape": list(values[key].shape), "dtype": str(values[key].dtype)}
                           for key in [row["archive_key"] for row in contract["inputs"]]}
            example_audit = module.audit_observed_shapes(contract, example)
            require(example_audit["structurally_consistent"] and not example_audit["unresolved"], "Example input structural metadata differs")
            require(len(saved["probes"]) == 5 and {(p["batch"], p["sequence"]) for p in saved["probes"]}
                    == {(1, 8), (2, 24), (4, 64), (2, 8), (1, 64)}, "Five original probes required")
            probes = []
            for probe in saved["probes"]:
                path = folder / Path(probe["archive"]).name
                require(sha(path) == probe["sha256"], "Original probe hash differs")
                with np.load(path, allow_pickle=False) as values:
                    observed = {}
                    for binding in bindings:
                        source = probe["input_keys"][binding["position"]] if binding["source"] == "positional" else binding["name"]
                        value = values[source]
                        observed[binding["archive_key"]] = {"shape": list(value.shape), "dtype": str(value.dtype), "probe_key": source}
                checked = module.audit_observed_shapes(contract, observed)
                require(checked["structurally_consistent"] and not checked["unresolved"], "Probe structural metadata differs")
                require(all(x["classification"] == "small_extent_requires_runtime_evidence" and x["actual"] == 1
                            for x in checked["literal_range_deviations"]), "Unexplained literal bound violation in original probe")
                for key in ("source_comparison", "roundtrip_comparison", "compiled_comparison"):
                    require(probe[key] and all(x["passed"] is True and x["finite"] is True and x["device"] == "cuda:0"
                                              for x in probe[key]), "Stored original PPU comparison evidence differs")
                current = runtime_rows[(name, probe["batch"], probe["sequence"])]
                require(current["revision"] == item["revision"] and current["task"] == item["task"]
                        and current["saved_B0_probe_sha256"] == probe["sha256"], "Runtime probe identity differs")
                probes.append({"batch": probe["batch"], "sequence": probe["sequence"], "input_sha256": probe["sha256"],
                    "observed_inputs": observed, "metadata_audit": checked,
                    "prior_PPU_observation": "original_frozen_five_probe_evidence_not_new_forward",
                    "current_release_runtime_evidence": current["new_runtime_evidence"],
                    "current_release_output_sha256": current["new_output_archive_sha256"],
                    "small_extent_runtime_note": "size1 observed in original PPU probes; not size0 or rectangular support"
                        if checked["literal_range_deviations"] else None})
            planned = module.text_boundary_specs(contract)
            require(planned["status"] == "planned_not_executed", "Boundary probe planning needs explicit review")
            for probe in planned["probes"]:
                specifications.append({**item, "pt2_sha256": proof["hashes"]["model.core_aten.pt2"],
                                       "constraint_sha256": contract_sha, **probe})
            fingerprint = sorted((row["lower"], row["upper"]) for row in contract["range_constraints"])
            fingerprints[json.dumps(fingerprint)] += 1
            item.update(status="metadata_audited_not_runtime_domain_acceptance", original_hashes={key: proof["hashes"][key]
                for key in ("manifest.json", "validation.json", "report.json", "model.core_aten.pt2")},
                shape_constraints_sha256=contract_sha, serialized_shape_constraints=contract,
                example_metadata_audit=example_audit, probes=probes, boundary_plan=planned)
        except Exception as exc:
            item.update(status="failed_metadata_audit", error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
            issues.append({**identity, "error": item["error"]})
        models.append(item)
    deviations = sum(bool(p["metadata_audit"]["literal_range_deviations"]) for row in models for p in row.get("probes", []))
    summary = {"scope_models": 301, "probe_metadata_rows": sum(len(row.get("probes", [])) for row in models),
        "metadata_model_failures": len(issues), "models_with_size1_literal_deviations": sum(any(
            p["metadata_audit"]["literal_range_deviations"] for p in row.get("probes", [])) for row in models),
        "probes_with_size1_literal_deviations": deviations,
        "symbol_count_groups": dict(sorted(collections.Counter(str(len(row["serialized_shape_constraints"]["symbols"]))
            for row in models if "serialized_shape_constraints" in row).items())),
        "range_groups": [{"bounds": json.loads(key), "models": count} for key, count in sorted(fingerprints.items())],
        "planned_boundary_probes": len(specifications), "new_boundary_probes_executed": 0,
        "current_release_verified_probes": runtime["new_runtime_evidence_counts"]["wave_verified"],
        "new_model_forwards": 0, "new_CPU_model_forwards": 0, "new_PPU_runtime_models": 0}
    report = {"schema": "original301-shape-domain-metadata-audit-v1", "status": "passed" if not issues else "failed",
        "scope": "serialized domains plus archived observed metadata; no new runtime/domain acceptance",
        "summary": summary, "errors": issues, "models": models, "final_C1_accepted": False,
        "provenance": {"accepted_sha256": sha(accepted_path), "strict_audit_sha256": sha(strict_path),
            "runtime_view_sha256": sha(args.runtime_view), "torch_bound_source_snapshot_sha256": sha(args.torch_bound_source),
            "torch_bound_source_file_sha256": torch_source["source_sha256"],
            "auditor_sha256": sha(__file__), "metadata_module_sha256": sha(module_path)}}
    outputs = {"report.json": report, "boundary-probes.json": {"scope_models": 301, "executed": False, "probes": specifications}}
    if args.check:
        for filename, value in outputs.items(): require(read(args.output_dir / filename) == value, "Saved audit differs: " + filename)
    else:
        args.output_dir.mkdir(parents=True, exist_ok=False)
        for filename, value in outputs.items():
            with (args.output_dir / filename).open("x", encoding="utf8", newline="\n") as stream:
                json.dump(value, stream, ensure_ascii=False, indent=2)
        with (args.output_dir / "models.csv").open("x", encoding="utf8", newline="") as stream:
            fields = ["model_id", "revision", "task", "status", "symbol_groups", "size1_deviation_probes", "current_release_verified_shapes"]
            writer = csv.DictWriter(stream, fieldnames=fields); writer.writeheader()
            for row in models:
                writer.writerow({**{key: row[key] for key in fields[:4]},
                    "symbol_groups": len(row.get("serialized_shape_constraints", {}).get("symbols", [])),
                    "size1_deviation_probes": sum(bool(p["metadata_audit"]["literal_range_deviations"]) for p in row.get("probes", [])),
                    "current_release_verified_shapes": sum(p["current_release_runtime_evidence"] == "wave_verified" for p in row.get("probes", []))})
    require("torch" not in sys.modules, "This auditor must never import Torch or run a model")
    print(json.dumps({"status": report["status"], "summary": summary, "check_only": args.check, "final_C1_accepted": False}))
    return 0 if not issues else 1


if __name__ == "__main__":
    raise SystemExit(main())
