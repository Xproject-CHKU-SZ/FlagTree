#!/usr/bin/env python3
"""Prepare original301 runtime delivery only after real complete-wave closure.

Reuses the frozen independent auditor; never executes a model. The resulting
bundle is still pending independent Windows synchronization/final approval.
An active chain produces only a not_ready report, never release files or counts.
"""
import argparse
import csv
import hashlib
import io
import json
from pathlib import Path, PurePosixPath
import sys
import tarfile
import time
import traceback

from release_delivery_contract import validate_final_scope
import release_delivery_contract as contract_module
from release_delivery_rows import CSV_FIELDS, build_status_fields
import release_delivery_rows as rows_module
from release_runtime_components import runtime_component_contract, validate_runtime_component, release_identity
import release_runtime_components as components_module


def sha(path):
    digest = hashlib.sha256()
    with Path(path).open("rb") as file:
        for block in iter(lambda: file.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def read(path):
    return json.loads(Path(path).read_text(encoding="utf8"))


def write(path, value):
    with Path(path).open("x", encoding="utf8", newline="\n") as file:
        json.dump(value, file, indent=2, allow_nan=False, ensure_ascii=False)
        file.write("\n")


def require(condition, message):
    if not condition:
        raise ValueError(message)


def flag(command, name):
    key = "--" + name
    require(command.count(key) == 1, "Unique explicit command flag required: " + key)
    return Path(command[command.index(key) + 1])


def validate_delivery_source_index(root, actual_script, actual_contract, actual_rows, actual_components):
    """Bind the exact index bytes and all mandatory actual source/test entries."""
    raw = (root / "source-index.json").read_bytes()
    value = json.loads(raw); entries = value.get("entries")
    require(isinstance(entries,list) and entries, "Nonempty delivery source index required")
    mandatory = {"scripts/prepare_shape_release_delivery.py":actual_script,
        "scripts/release_delivery_contract.py":actual_contract, "scripts/release_delivery_rows.py":actual_rows,
        "scripts/release_runtime_components.py":actual_components}
    required_tests = {"tests/test_release_delivery_contract.py", "tests/test_prepare_shape_release_delivery.py", "tests/test_delivery_export_contract.py", "tests/test_release_runtime_components.py"}
    names = set()
    for entry in entries:
        name = entry.get("path"); require(isinstance(name,str) and name and "\\" not in name, "Canonical relative source path required")
        relative = PurePosixPath(name)
        require(not relative.is_absolute() and ".." not in relative.parts and str(relative) == name
            and name != "source-index.json" and name not in names, "Duplicate/unsafe/self-referential delivery source entry")
        path = root.joinpath(*relative.parts)
        require(path.resolve().is_relative_to(root.resolve()), "Delivery source escaped its root")
        require(type(entry.get("bytes")) is int and entry["bytes"] >= 0 and path.stat().st_size == entry["bytes"]
            and sha(path) == entry.get("sha256"), "Delivery source file hash/size drift")
        names.add(name)
    require(set(mandatory) | required_tests <= names, "Actual delivery code and test entries are mandatory")
    for name, actual in mandatory.items():
        require((root / name).resolve() == Path(actual).resolve(), "Index did not bind the actually loaded delivery code")
    return {"raw_utf8":raw.decode("utf8"), "sha256":hashlib.sha256(raw).hexdigest(), "entries":entries}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("chain", "accepted", "control-source", "delivery-source", "ir-audit", "terminal-proof", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    state = {"status": "checking", "phase": "preflight", "started_at": time.time(),
        "final_C1_accepted": False, "cpu_model_forward": "not_run", "new_model_execution": 0,
        "scope": "prepare final301 evidence only; independent Windows synchronization/approval still required",
        "script_sha256": sha(__file__), "contract_sha256": sha(contract_module.__file__), "rows_sha256":sha(rows_module.__file__),
        "runtime_components_sha256":sha(components_module.__file__)}
    write(args.output / "command.json", [sys.executable, *sys.argv])
    try:
        chain_path = args.chain / ("report.json" if (args.chain / "report.json").exists() else "progress.json")
        chain_raw = chain_path.read_bytes()
        chain = json.loads(chain_raw)
        state.update(chain_status=chain.get("status"), observed_chain_records=len(chain.get("records", [])),
            chain_checkpoint_sha256=hashlib.sha256(chain_raw).hexdigest(),
            chain_checkpoint_raw_utf8_at_read=chain_raw.decode("utf8"), chain_checkpoint_path=str(chain_path))
        require(chain.get("status") == "completed_release_scope_pending_final_delivery", "Chain is not terminal301; keep existing processes running")
        state["phase"] = "scope"
        command = read(args.chain / "command.json")
        require(flag(command, "accepted").resolve() == args.accepted.resolve(), "Accepted path differs from actual chain")
        source, discovery, runtime_path = (flag(command, x) for x in ("source", "discovery-source", "runtime"))
        plan = read(flag(command, "chain-plan"))
        require(Path(plan["helper_source"]).resolve() == args.control_source.resolve(), "Actual control source differs")
        wave_path = args.chain / "wave-301"
        wave = read(wave_path / "report.json"); saved_audit = read(args.chain / "final-wave-audit.json")
        ir = read(args.ir_audit)
        scope = validate_final_scope(read(args.accepted), chain, wave, saved_audit, ir, sha(args.accepted))
        for path, digest in chain["pinned_inputs"].items():
            require(sha(path) == digest, "Pinned chain file changed: " + path)
        frozen_sources = {"runtime": source, "discovery": discovery, "control": args.control_source}
        for folder in frozen_sources.values():
            for relative, digest in read(folder / "source-baseline.json")["files"].items():
                require(sha(folder / relative) == digest, "Frozen source drift: " + relative)
        sys.path[:0] = [str(args.control_source / "model_import_adapters/scripts"), str(source / "model_import_adapters/src")]
        from audit_shape_release_wave import audit_wave
        from release_terminal_proof import validate_terminal_proof
        from run_scene_optimization_campaign import validate_scope
        validate_scope(read(args.accepted))
        state["phase"] = "terminal_proof"
        job = read(args.chain / "observed-job-301.json")
        terminal = validate_terminal_proof(args.terminal_proof, job, wave_path)
        state["phase"] = "raw_wave_audit"
        actual_audit = audit_wave(wave_path, args.accepted, flag(read(wave_path / "command.json"), "models"))
        scope = validate_final_scope(read(args.accepted), chain, wave, actual_audit, ir, sha(args.accepted))
        for key in ("models", "progress_sha256_at_read", "source_manifest_sha256", "discovery_manifest_sha256"):
            require(actual_audit[key] == saved_audit[key], "Independent final wave evidence drift: " + key)
        write(args.output / "fresh-independent-wave-audit.json", actual_audit)
        state["phase"] = "runtime_and_IR_bindings"
        runtime = read(runtime_path)
        require(runtime["device"] == "PPU-ZW810E", "Real target runtime required")
        for item in runtime["runtime_files"]:
            require(sha(item["path"]) == item["sha256"], "Installed runtime file drift: " + item["path"])
        component_contract = runtime_component_contract(
            {role:read(folder/"source-baseline.json") for role,folder in frozen_sources.items()},
            {role:sha(folder/"source-baseline.json") for role,folder in frozen_sources.items()},
            {role:str(folder) for role,folder in frozen_sources.items()}, runtime)
        write(args.output / "runtime-component-contract.json", component_contract)
        provenance = {row["model_id"]: row for row in ir["models"]}
        accepted_rows = {row["model_id"]:row for row in read(args.accepted)}
        delivery_snapshot = validate_delivery_source_index(args.delivery_source, Path(__file__), Path(contract_module.__file__), Path(rows_module.__file__), Path(components_module.__file__))
        index = []; components = {}
        for record in wave["records"]:
            model_id = record["model_id"]; original = provenance[model_id]
            functional = (Path(record["retention_resolution"]["functional_case"]) if record.get("retention_resolution")
                else Path(record["directory"]) / "functional")
            report_path = functional / "report.json"; report = read(report_path)
            require(sha(report_path) == record["functional_report_sha256"], "Functional report drift")
            component = validate_runtime_component(record, report, component_contract)
            require(component["component_id"] not in components or components[component["component_id"]] == component["descriptor"], "Component ID collision")
            components[component["component_id"]] = component["descriptor"]
            require(report["identity"]["target"] == runtime["device"] and report["identity"]["precision"] == "FP32/highest",
                    "Runtime target/precision drift")
            expected_runtime = "torch={torch};triton={triton};flagtree={flagtree}".format(**runtime)
            require(report["identity"]["runtime"] == expected_runtime, "Loaded runtime differs from frozen environment")
            baseline = Path(original["baseline_case"])
            require(Path(report["baseline_case"]).resolve() == baseline.resolve(), "Original IR/runtime baseline differs")
            require(report["identity"]["pt2_sha256"] == original["hashes"]["model.core_aten.pt2"], "Original IR/runtime PT2 differs")
            # The just-run raw wave auditor rehashed the PT2. Reopen the other
            # original metadata/input files here rather than rehashing it twice.
            for name, digest in original["hashes"].items():
                if name == "model.core_aten.pt2":
                    continue
                candidate = baseline / "artifacts" / name
                if not candidate.is_file(): candidate = baseline / name
                require(sha(candidate) == digest, "Original IR metadata/input drift: " + name)
            policy = None
            if record["status"] == "validated_candidate":
                path = Path(report["policy_path"])
                require(sha(path) == report["policy_file_sha256"], "Qualified policy bytes changed")
                target = args.output / "policies" / (hashlib.sha256(model_id.encode()).hexdigest() + ".json")
                target.parent.mkdir(exist_ok=True)
                with target.open("xb") as file: file.write(path.read_bytes())
                policy = {"path": str(target.relative_to(args.output)), "sha256": sha(target)}
            index.append({**build_status_fields(accepted_rows[model_id], record, report), "enabled_policy": policy,
                "runtime_component_id":component["component_id"], "runtime_source_role":component["descriptor"]["source_role"],
                "runtime_source_manifest_sha256":report["source_manifest_sha256"],
                "functional_report": str(report_path), "functional_report_sha256": sha(report_path),
                "baseline_case": str(baseline), "IR_artifact_hashes": original["hashes"], "IR_metadata": original["ir_metadata"]})
        state["phase"] = "source_bundle"
        source_entries = []
        with (args.output / "sources.tar.gz").open("xb") as file:
            with tarfile.open(fileobj=file, mode="w:gz") as archive:
                def add(path, name, expected):
                    parts = PurePosixPath(name)
                    require(not parts.is_absolute() and ".." not in parts.parts, "Source path escaped bundle")
                    body = Path(path).read_bytes()
                    require(hashlib.sha256(body).hexdigest() == expected, "Source changed during snapshot")
                    item = tarfile.TarInfo(name); item.size = len(body); item.mode = Path(path).stat().st_mode & 0o777
                    archive.addfile(item, io.BytesIO(body)); source_entries.append({"path": name, "sha256": expected, "bytes": len(body)})
                for role, folder in frozen_sources.items():
                    add(folder / "source-baseline.json", role + "/source-baseline.json", sha(folder / "source-baseline.json"))
                    for relative, digest in read(folder / "source-baseline.json")["files"].items():
                        add(folder / relative, role + "/" + relative, digest)
                body = delivery_snapshot["raw_utf8"].encode("utf8")
                item = tarfile.TarInfo("delivery/source-index.json"); item.size=len(body); item.mode=0o644
                archive.addfile(item, io.BytesIO(body))
                source_entries.append({"path":item.name,"sha256":delivery_snapshot["sha256"],"bytes":len(body)})
                for item in delivery_snapshot["entries"]:
                    add(args.delivery_source / item["path"], "delivery/" + item["path"], item["sha256"])
        write(args.output / "source-index.json", source_entries)
        write(args.output / "models.json", index)
        write(args.output / "runtime-components.json", components)
        publication = release_identity(index, components, sha(args.accepted), delivery_snapshot["sha256"])
        write(args.output / "release-identity.json", {"schema":"shape301-component-release-identity-v1", "release_identity":publication,
            "models":301, "stage":"runtime301_verified_pending_windows_sync", "final_C1_accepted":False})
        with (args.output / "models.csv").open("x", encoding="utf8", newline="") as file:
            keys = CSV_FIELDS
            writer = csv.DictWriter(file, fieldnames=keys); writer.writeheader()
            writer.writerows({key: row[key] for key in keys} for row in index)
        write(args.output / "environment.json", runtime)
        write(args.output / "runtime-validation.json", {"scope": scope, "terminal_proof": terminal,
            "accepted_sha256": sha(args.accepted), "IR_audit_sha256": sha(args.ir_audit),
            "chain_report_sha256": sha(args.chain / "report.json"), "wave_report_sha256": sha(wave_path / "report.json"),
            "saved_final_audit_sha256": sha(args.chain / "final-wave-audit.json"),
            "fresh_final_audit_sha256": sha(args.output / "fresh-independent-wave-audit.json")})
        write(args.output / "artifact-index.json", [{"path": str(p.relative_to(args.output)), "sha256": sha(p), "bytes": p.stat().st_size}
            for p in sorted(args.output.rglob("*")) if p.is_file()])
        state.update(status="runtime301_verified_pending_windows_sync", phase=None, scope_counts=scope,
            final_C1_accepted=False, release_identity=publication, windows_synchronization="pending_independent_artifact_and_raw_array_verification")
    except Exception as exc:
        state.update(status="not_ready" if state["phase"] == "preflight" else "failed_evidence_validation",
            error_type=type(exc).__name__, error=str(exc), traceback=traceback.format_exc())
    state["finished_at"] = time.time(); write(args.output / "report.json", state)
    print(json.dumps({k: state.get(k) for k in ("status", "phase", "chain_status", "observed_chain_records", "error", "final_C1_accepted")}))
    return 0 if state["status"] == "runtime301_verified_pending_windows_sync" else 2 if state["status"] == "not_ready" else 1


if __name__ == "__main__":
    raise SystemExit(main())
