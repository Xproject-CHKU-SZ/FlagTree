#!/usr/bin/env python3
"""Prepare a 301-row release enrollment without inventing missing evidence.

Discovery approval is a proposal, not final runtime/performance acceptance.
Unknown models stay pending and must never silently become retained successes.
The selected source manifest pins the measured implementation, not the latest
file names, and conflicting results require an explicit new evidence selection.
"""
import argparse
import hashlib
import json
from pathlib import Path, PurePosixPath

from audit_dynamic_shape_pair import audit_reports
from benchmark_scene_pair import sha256
from run_scene_optimization_campaign import validate_scope

SCHEMA = "shape301-release-enrollment-v1"
SCRIPT = "model_import_adapters/scripts/benchmark_dynamic_shape_pair.py"
MEMORY = "model_import_adapters/scripts/memory_acceptance.py"
GRAPH = "model_import_adapters/src/model_import_adapters/graph_replay.py"


def resolve_evidence_case(checkpoint, receipt, evidence_root, snapshot_root=None, remote_root=None):
    """Bind the audited case to its completed record before relocating bytes.

    An inherited case requires an explicit snapshot/remote-root mapping. Never
    search by basename or choose a similarly named case from the newer wave.
    """
    records = [row for row in checkpoint["records"] if row["model_id"] == receipt["model_id"]
               and row.get("candidate_exit_code") == 0 and row["case"] == receipt["case"]]
    if len(records) != 1:
        raise ValueError("Audited case is not one unique completed checkpoint record")
    record = records[0]
    if (record.get("status") != "calibrated" or record.get("exit_code") != 0
            or record.get("profile_exit_code") != 0
            or record.get("report_sha256") != receipt["calibration_sha256"]
            or record.get("candidate_report_sha256") != receipt["comparison_sha256"]):
        raise ValueError("Checkpoint case execution/hash drift")
    raw = receipt["case"]
    remote = PurePosixPath(raw)
    if (not remote.is_absolute() or ".." in remote.parts or "\\" in raw
            or remote.as_posix() != raw or remote.parent.name != "cases"):
        raise ValueError("Expected an absolute, canonical remote case path")
    if (snapshot_root is None) != (remote_root is None):
        raise ValueError("Snapshot root and remote root must be supplied together")
    if snapshot_root is None:
        if remote.parent.parent.name != evidence_root.name:
            raise ValueError("Inherited cases require explicit snapshot/remote-root mapping")
        root = evidence_root.resolve(strict=True)
        case = root / "cases" / remote.name
    else:
        root = snapshot_root.resolve(strict=True)
        evidence_root.resolve(strict=True).relative_to(root)
        origin = PurePosixPath(remote_root)
        if (not origin.is_absolute() or len(origin.parts) < 3 or ".." in origin.parts
                or "\\" in remote_root or origin.as_posix() != remote_root):
            raise ValueError("Expected an explicit canonical remote snapshot root")
        relative = remote.relative_to(origin)
        if len(relative.parts) != 3 or relative.parts[1] != "cases":
            raise ValueError("Expected wave/cases/model layout under the remote root")
        case = root.joinpath(*relative.parts)
    resolved = case.resolve(strict=True)
    resolved.relative_to(root)
    if not resolved.is_dir():
        raise ValueError("Case evidence is not a directory")
    return resolved


def read_snapshot_index(snapshot_root):
    rows = json.loads((snapshot_root / "snapshot-manifest.json").read_text(encoding="utf-8"))["entries"]
    indexed = {}
    for row in rows:
        name = row["path"]
        path = PurePosixPath(name)
        if (path.is_absolute() or ".." in path.parts or "\\" in name
                or not path.parts or str(path) != name or name in indexed):
            raise ValueError("Noncanonical or duplicate snapshot index path")
        indexed[name] = row["sha256"]
    return indexed


def validate_evidence_snapshot(checkpoint, accepted_sha256, source_manifest_bytes, accepted_ids):
    identity = checkpoint["identity"]
    if identity["accepted_sha256"] != accepted_sha256:
        raise ValueError("Evidence snapshot historical scope hash drift")
    # The Windows sidecar uses CRLF, while the immutable tar member uses LF.
    # Only JSON index transport line endings are normalized, never source files.
    allowed = {hashlib.sha256(source_manifest_bytes).hexdigest(),
               hashlib.sha256(source_manifest_bytes.replace(b"\r\n", b"\n")).hexdigest()}
    if identity["source_baseline_sha256"] not in allowed:
        raise ValueError("Evidence snapshot measured-source mismatch")
    ids = identity["model_ids"]
    if not ids or len(ids) != len(set(ids)) or not set(ids) <= set(accepted_ids):
        raise ValueError("Evidence snapshot cohort mismatch")
    return set(ids)


def pending_manifest(accepted, accepted_sha256, source_manifest_sha256):
    rows = validate_scope(accepted)
    return {"schema": SCHEMA, "stage": "enrollment_not_final_release",
            "historical_scope": 301, "accepted_sha256": accepted_sha256,
            "source_manifest_sha256": source_manifest_sha256,
            "final_C1_passed": 0,
            "models": [{"model_id": row["model_id"], "revision": row["revision"],
                        "task": row["task"], "mode": "pending_discovery",
                        "discovery_status": "pending", "final_C1_status": "pending"}
                       for row in rows]}


def enroll_model(row, receipt, calibration, comparison, frozen):
    identity = comparison["identity"]
    for key in ("model_id", "revision", "task"):
        if identity.get(key) != row[key] or receipt.get(key) != row[key]:
            raise ValueError(f"Enrollment identity drift: {key}")
    if receipt.get("audit_status") != "passed" or receipt.get("array_comparisons") != 120:
        raise ValueError("Complete independent array/source audit required")
    if receipt.get("source_files_rehashed") != len(frozen["files"]):
        raise ValueError("Different audited source manifest; select the exact measured version")
    files = frozen["files"]
    if (identity.get("script_sha256") != files[SCRIPT]
            or identity.get("memory_policy_sha256") != files[MEMORY]
            or GRAPH not in identity.get("source_files", {})):
        raise ValueError("Different measured source version; do not mix old cohorts")
    for relative, digest in identity["source_files"].items():
        if files.get(relative) != digest:
            raise ValueError(f"Measured source hash drift: {relative}")
    if receipt["pt2_sha256"] != identity["pt2_sha256"]:
        raise ValueError("Audited PT2 hash drift")
    decision = audit_reports(calibration, comparison)
    if decision["candidate_outcome"] != receipt["candidate_outcome"]:
        raise ValueError("Independent audit and raw paired decision disagree")
    outcome = decision["candidate_outcome"]
    if outcome not in {"passed", "not_met"}:
        raise ValueError("Incomplete discovery is not enrollment evidence")
    return {"model_id": row["model_id"], "revision": row["revision"], "task": row["task"],
            "mode": "candidate_requires_release_validation" if outcome == "passed"
                    else "retain_requires_runtime_validation",
            "discovery_status": outcome, "final_C1_status": "pending",
            "reason": decision["reason"], "pt2_sha256": identity["pt2_sha256"],
            "calibration_sha256": receipt["calibration_sha256"],
            "comparison_sha256": receipt["comparison_sha256"],
            "measurement_script_sha256": identity["script_sha256"],
            "mixed_speedup": decision["mixed_speedup"]}


def apply_enrollments(manifest, entries, *, unstable_evidence=None):
    if (manifest.get("schema") != SCHEMA or manifest.get("stage") != "enrollment_not_final_release"
            or manifest.get("final_C1_passed") != 0
            or any(row.get("final_C1_status") != "pending" for row in manifest["models"])):
        raise ValueError("Enrollment must not masquerade as final release acceptance")
    indexed = {row["model_id"]: row for row in manifest["models"]}
    if len(indexed) != 301 or len(manifest["models"]) != 301:
        raise ValueError("Original 301 unique-model denominator required")
    from unstable_retention import MODE, validate_entry
    unstable_evidence = unstable_evidence or {}
    unstable_ids = {row["model_id"] for row in entries if row.get("mode") == MODE}
    if set(unstable_evidence) != unstable_ids:
        raise ValueError("Exactly the selected unstable entries require their explicit original B0 enrollment documents")
    selected = {}
    for row in entries:
        model = row["model_id"]
        if model not in indexed:
            raise ValueError("Enrollment outside historical301")
        if any(row[key] != indexed[model][key] for key in ("revision", "task")):
            raise ValueError("Enrollment revision/task drift")
        expected = {"passed": "candidate_requires_release_validation", "not_met": "retain_requires_runtime_validation"}
        if row.get("mode") == MODE:
            document = unstable_evidence[model]
            validate_entry(row, document)
            original_scope = {x["model_id"]: x for x in document["models"]}
            if (document.get("schema") != manifest["schema"] or document.get("stage") != manifest["stage"]
                    or document.get("accepted_sha256") != manifest["accepted_sha256"]
                    or document.get("final_C1_passed") != 0 or len(document["models"]) != 301
                    or set(original_scope) != set(indexed) or original_scope.get(model) != row
                    or any(any(x.get(k) != indexed[name][k] for k in ("revision", "task"))
                           or x.get("final_C1_status") != "pending" for name, x in original_scope.items())):
                raise ValueError("Explicit unstable enrollment changed original301 scope, selected entry or pending-final status")
        elif (row.get("final_C1_status") != "pending"
                or row.get("mode") != expected.get(row.get("discovery_status"))):
            raise ValueError("Discovery outcome must remain separate from final acceptance")
        if indexed[model]["mode"] != "pending_discovery" and indexed[model] != row:
            raise ValueError("Existing enrollment cannot be overwritten implicitly")
        if model in selected and selected[model] != row:
            raise ValueError("Conflicting results for one ID; select evidence explicitly")
        selected[model] = row
    result = {**manifest, "models": [selected.get(row["model_id"], row) for row in manifest["models"]]}
    modes = [row["mode"] for row in result["models"]]
    result["counts"] = {name: modes.count(name) for name in (
        "pending_discovery", "candidate_requires_release_validation", "retain_requires_runtime_validation", MODE)}
    return result


def require_discovery_scope_ready(manifest, model_ids):
    if len(model_ids) != len(set(model_ids)):
        raise ValueError("Duplicate requested model IDs")
    rows = {row["model_id"]: row for row in manifest["models"]}
    if any(model not in rows or rows[model]["mode"] == "pending_discovery" for model in model_ids):
        raise ValueError("Missing discovery evidence; native fallback is not an implicit approval")
    return [rows[model] for model in model_ids]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("accepted", "source-manifest", "audit", "evidence-root", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--snapshot-root", type=Path, help="Explicit common local root including inherited waves")
    parser.add_argument("--remote-root", help="Original absolute POSIX root represented by this snapshot")
    args = parser.parse_args()
    if (args.snapshot_root is None) != (args.remote_root is None):
        parser.error("--snapshot-root and --remote-root must be supplied together")
    accepted = validate_scope(json.loads(args.accepted.read_text(encoding="utf-8")))
    frozen = json.loads(args.source_manifest.read_text(encoding="utf-8"))
    audit = json.loads(args.audit.read_text(encoding="utf-8"))
    if audit.get("status") != "passed" or audit.get("historical_scope") != 301 or audit.get("errors"):
        raise ValueError("A successful independent historical301 audit is required")
    if audit.get("audited_models") != len(audit["models"]):
        raise ValueError("Audit model count drift")
    indexed = {row["model_id"]: row for row in accepted}
    checkpoint_path = args.evidence_root / "checkpoint.json"
    checkpoint = json.loads(checkpoint_path.read_text())
    cohort = validate_evidence_snapshot(checkpoint, sha256(args.accepted), args.source_manifest.read_bytes(), indexed)
    snapshot_files = read_snapshot_index(args.snapshot_root) if args.snapshot_root else None
    entries = []
    lookups = []
    seen = set()
    for receipt in audit["models"]:
        model = receipt["model_id"]
        if model in seen or model not in indexed or model not in cohort:
            raise ValueError("Duplicate/out-of-scope model in audit")
        seen.add(model)
        case = resolve_evidence_case(checkpoint, receipt, args.evidence_root, args.snapshot_root, args.remote_root)
        calibration_path = case / "report.json"
        comparison_path = case / "candidate-graph_replay/report.json"
        if snapshot_files is not None:
            for path, key in ((calibration_path, "calibration_sha256"), (comparison_path, "comparison_sha256")):
                relative = path.relative_to(args.snapshot_root.resolve(strict=True)).as_posix()
                if snapshot_files.get(relative) != receipt[key]:
                    raise ValueError("Mapped report is absent or changed in the snapshot index")
        if (sha256(calibration_path) != receipt["calibration_sha256"]
                or sha256(comparison_path) != receipt["comparison_sha256"]):
            raise ValueError("Raw report hash drift")
        calibration = json.loads(calibration_path.read_text())
        comparison = json.loads(comparison_path.read_text())
        if comparison["calibration_sha256"] != sha256(calibration_path):
            raise ValueError("Comparison does not reference this calibration")
        entries.append(enroll_model(indexed[model], receipt, calibration, comparison, frozen))
        lookups.append({"model_id": model, "remote_case": receipt["case"],
                        "snapshot_case": case.relative_to((args.snapshot_root or args.evidence_root).resolve()).as_posix()})
    manifest = apply_enrollments(pending_manifest(accepted, sha256(args.accepted), sha256(args.source_manifest)), entries)
    manifest.update(audit_sha256=sha256(args.audit), enrollment_tool_sha256=sha256(__file__),
                    measured_source_head=frozen["head"],
                    measured_source_baseline_sha256=checkpoint["identity"]["source_baseline_sha256"],
                    evidence_snapshot_checkpoint_sha256=sha256(checkpoint_path), evidence_case_lookup=lookups)
    if args.snapshot_root:
        manifest["snapshot_mapping"] = {"remote_root": args.remote_root,
            "snapshot_manifest_sha256": sha256(args.snapshot_root / "snapshot-manifest.json")}
    with args.output.open("x", encoding="utf-8") as output:
        json.dump(manifest, output, ensure_ascii=False, indent=2, allow_nan=False)
    print(json.dumps({"status": "prepared_not_final_release", "counts": manifest["counts"], "final_C1_passed": 0}))


if __name__ == "__main__":
    main()
