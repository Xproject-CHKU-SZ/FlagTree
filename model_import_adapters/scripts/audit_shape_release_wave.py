#!/usr/bin/env python3
"""Reopen a release wave, independently of the live controller's saved counts.

No model forward. Recompute discovery and actual-router decisions, reopen
functional/counterexample archives, bind commands/logs/exit receipts and retain
the exact original301 denominator. A partial audit is never final acceptance.
"""
import argparse
import json
from pathlib import Path
import sys
import time
import traceback

from audit_shape_release_case import audit_case as audit_functional
from run_shape_release_wave import (audit_actual_pair, audit_case as audit_discovery,
                                    completed_record, functional_command, performance_streak,
                                    read, sha, validate_wave)


def validate_records(progress, models):
    records = progress["records"]
    ids = [row["model_id"] for row in records]
    expected = [row["model_id"] for row in models]
    if (ids != expected[:len(ids)] or len(ids) != len(set(ids)) or len(ids) > len(expected)
            or progress.get("target_models") != len(expected)
            or progress.get("final_C1_accepted") is not False or progress.get("cpu_model_forward") != "not_run"):
        raise ValueError("Exact original prefix, pending final301 and no CPU-forward evidence required")
    for row, model in zip(records, models):
        if (any(row.get(key) != model[key] for key in ("model_id", "revision", "task"))
                or row.get("final_C1_accepted") is not False):
            raise ValueError("Release record model/revision/task/final status drift")
    streak = performance_streak(records)
    if records and progress.get("consecutive_performance_nonacceptance") != streak:
        raise ValueError("Continuous distinct-model performance ledger drift")
    if progress.get("status") == "completed_wave_not_final301" and len(records) != len(expected):
        raise ValueError("A terminal wave cannot omit unresolved models")
    return records


def validate_command_receipt(commands, command, expected_code):
    found = [row for row in commands if row["command"] == command]
    if len(found) != 1 or found[0].get("exit_code") != expected_code:
        raise ValueError("Missing/ambiguous command or nonmatching real wait receipt")
    row = found[0]
    if row.get("finished_at", 0) < row.get("started_at", 0) or "finished_at" not in row:
        raise ValueError("Missing terminal child timestamp")
    return {name: {"path": row[name], "sha256": sha(row[name])} for name in ("stdout", "stderr")}


def parse_wave_command(command, accepted, models, wave):
    values = {}
    for flag in ("accepted", "models", "discovery-source", "source", "discovery-checkpoint", "discovery-job", "runtime", "output"):
        key = "--" + flag
        if command.count(key) != 1:
            raise ValueError("Wave command flag missing or duplicated")
        values[flag] = Path(command[command.index(key) + 1])
    if (values["accepted"].resolve() != accepted.resolve() or values["models"].resolve() != models.resolve()
            or values["output"].resolve() != wave.resolve()):
        raise ValueError("Audit must use the actual wave's explicit accepted/models/output")
    return values


def audit_wave(wave, accepted_path, models_path):
    progress_path = wave / ("report.json" if (wave / "report.json").exists() else "progress.json")
    raw = progress_path.read_bytes(); progress = json.loads(raw)
    import hashlib
    command = read(wave / "command.json")
    args = parse_wave_command(command, accepted_path, models_path, wave)
    if sha(command[1]) != progress["controller_sha256"]:
        raise ValueError("Actual controller source changed")
    source, discovery = args["source"], args["discovery-source"]
    sys.path.insert(0, str(source / "model_import_adapters/src"))
    accepted, models = read(accepted_path), read(models_path)
    rows = validate_wave(accepted, models, read(args["discovery-checkpoint"]), sha(accepted_path), sha(discovery / "source-baseline.json"))
    records = validate_records(progress, models)
    for name, digest in progress["pinned_inputs"].items():
        if sha(name) != digest:
            raise ValueError("Pinned wave input bytes changed")
    for folder in (source, discovery):
        for name, digest in read(folder / "source-baseline.json")["files"].items():
            if sha(folder / name) != digest:
                raise ValueError("Frozen wave source bytes changed")
    result = {"status": "passed", "historical_scope": 301, "wave_scope": len(models),
              "checkpoint_status_at_read": progress["status"], "progress_sha256_at_read": hashlib.sha256(raw).hexdigest(),
              "progress_raw_utf8_at_read": raw.decode("utf-8"),
              "progress_path": str(progress_path), "models": [], "errors": [], "cpu_model_forward": "not_run",
              "final_C1_accepted": False, "started_at": time.time(), "controller_sha256": progress["controller_sha256"],
              "source_manifest_sha256": sha(source / "source-baseline.json"),
              "discovery_manifest_sha256": sha(discovery / "source-baseline.json")}
    checkpoint = read(args["discovery-checkpoint"])
    inherited = {}
    if progress.get("continuation"):
        from release_wave_continuation import validate_extension
        continuation = progress["continuation"]
        previous_wave = Path(continuation["previous_wave"])
        previous_path = previous_wave / "report.json"
        if sha(previous_path) != continuation["previous_report_sha256"]:
            raise ValueError("Inherited terminal wave report changed")
        previous = read(previous_path)
        old_command = read(previous_wave / "command.json")
        old_models = Path(old_command[old_command.index("--models") + 1])
        checked_path = Path(continuation["prerequisite_audit_path"])
        if sha(checked_path) != continuation["prerequisite_audit_sha256"]:
            raise ValueError("Prerequisite complete-wave audit changed")
        checked = read(checked_path)
        job_path=Path(continuation["previous_job_path"])
        if sha(job_path)!=continuation["previous_job_sha256"]:
            raise ValueError("Previous observed process identity changed")
        previous_job=read(job_path)
        if (previous_job["command"]!=old_command or previous_job["pid"]!=continuation["previous_observed_pid"]
                or previous_job["start_ticks"]!=continuation["previous_observed_start_ticks"]
                or continuation["previous_observed_exit_code"]!=0):
            raise ValueError("Prior real terminal wait provenance incomplete")
        if "--previous-terminal-receipt" in command or continuation.get("previous_terminal_receipt_path"):
            from release_terminal_proof import validate_inherited_terminal
            validate_inherited_terminal(continuation,previous_job,previous_wave,command)
        stable = {str(path):sha(path) for path in (accepted_path,args["runtime"],discovery/"source-baseline.json",source/"source-baseline.json")}
        if continuation.get("retention_resolution_path"):
            from retention_resolution import resolve_previous
            resolution_path=Path(continuation["retention_resolution_path"])
            if sha(resolution_path)!=continuation["retention_resolution_sha256"]:
                raise ValueError("Explicit B0 resolution evidence changed")
            previous,resolved_check=resolve_previous(previous_wave,accepted_path,old_models,resolution_path)
            if any(checked.get(key)!=resolved_check.get(key) for key in ("models","validated_models","pending_retention_models","wave_closure_complete")):
                raise ValueError("Inherited B0 resolution independent results changed")
        count = validate_extension(previous,read(old_models),models,checked,stable)
        if (checked["progress_sha256_at_read"] != sha(previous_path)
                or continuation["inherited_models"] != count or continuation["inherited_cases_are_not_new_runs"] is not True
                or progress["records"][:count] != previous["records"]
                or progress["commands"][:len(previous["commands"])] != previous["commands"]):
            raise ValueError("Inherited records/commands/provenance were silently changed")
        inherited = {row["model_id"]:row for row in previous["records"]}
    if progress.get("recovery"):
        if progress.get("continuation"):
            raise ValueError("Recovery and closed extension are distinct provenance routes")
        from unstable_release_recovery import recover_wave
        recovery=progress["recovery"];previous_wave=Path(recovery["previous_wave"])
        job=Path(recovery["previous_job_path"])
        if (sha(previous_wave/"report.json")!=recovery["previous_report_sha256"]
                or sha(job)!=recovery["previous_job_sha256"]
                or sha(recovery["prerequisite_audit_path"])!=recovery["prerequisite_audit_sha256"]):
            raise ValueError("Stopped-wave recovery evidence changed")
        recovered,checked,provenance=recover_wave(previous_wave,accepted_path,models_path,job)
        if any(recovery.get(k)!=v for k,v in provenance.items()):
            raise ValueError("Recovery PID/command/terminal provenance changed")
        saved=read(recovery["prerequisite_audit_path"])
        if any(saved.get(k)!=checked.get(k) for k in ("models","validated_models","audited_records","progress_sha256_at_read","errors")):
            raise ValueError("Recovery prefix audit changed")
        count=len(recovered["records"])
        if (progress["records"][:count]!=recovered["records"]
                or progress["commands"][:len(recovered["commands"])]!=recovered["commands"]):
            raise ValueError("Recovery changed previously completed records/commands")
        inherited={x["model_id"]:x for x in recovered["records"]}
    result["inherited_records"] = len(inherited)
    for index, record in enumerate(records):
        try:
            model = record["model_id"]; directory = Path(record["directory"])
            if model in inherited:
                if record != inherited[model]:
                    raise ValueError("Inherited case record changed")
            else:
                directory.resolve().relative_to(wave.resolve())
            receipt = completed_record(checkpoint, model)
            if receipt is None:
                raise ValueError("Missing original completed discovery")
            discovery_result = audit_discovery(receipt, rows[model])
            if discovery_result["candidate_outcome"] != record["discovery_outcome"]:
                raise ValueError("Discovery raw outcome differs from saved release record")
            selected = read(directory / "discovery-audit.json")
            if any(selected.get(key) != value for key, value in discovery_result.items()):
                raise ValueError("Saved independent discovery evidence differs on reopening")
            if record.get("retention_resolution"):
                from retention_resolution import audit_selection
                resolved=audit_selection(record["negative_origin"],record["retention_resolution"],accepted_path,source)
                if resolved["functional_report_sha256"]!=record["functional_report_sha256"]:
                    raise ValueError("Resolved B0 functional report changed")
                resolved["discovery_array_checks"]=discovery_result["array_comparisons"]
                result["models"].append(resolved)
                continue
            comparison = read(Path(receipt["case"]) / "candidate-graph_replay/report.json")
            baseline = Path(comparison["case"])
            policy = directory / "policy.json" if record["status"] != "validated_retention" else None
            logs = []
            qualification = None
            if policy:
                build = [command[0], str(source / "model_import_adapters/scripts/build_replay_policy.py"),
                         "--calibration", str(Path(receipt["case"]) / "report.json"),
                         "--comparison", str(Path(receipt["case"]) / "candidate-graph_replay/report.json"),
                         "--artifact-audit", str(directory / "discovery-audit.json"), "--runtime", str(args["runtime"]), "--output", str(policy)]
                logs.append(validate_command_receipt(progress["commands"], build, 0))
                pair = directory / "actual-policy-pair"
                if record["status"] == "actual_policy_measurement_unstable":
                    from unstable_release_recovery import audit_unstable_pair
                    unstable=audit_unstable_pair(pair,baseline,source,policy)
                    pair_command=[command[0],str(source/"model_import_adapters/scripts/run_exact_replay_pair.py"),
                        "--source",str(source),"--case",str(baseline),"--policy",str(policy),
                        "--prepare-capture-constants","--output",str(pair)]
                    logs.append(validate_command_receipt(progress["commands"],pair_command,1))
                    if (record.get("actual_policy_outcome")!="measurement_unstable"
                            or record.get("actual_policy_calibration_sha256")!=unstable["calibration_sha256"]):
                        raise ValueError("Unstable measurement record differs from raw A/A")
                    saved_unstable=directory/"actual-policy-unstable-audit.json"
                    if saved_unstable.exists() and read(saved_unstable)!=unstable:
                        raise ValueError("Saved unstable calibration audit changed")
                    result["models"].append({"model_id":model,"status":"pending_retention_validation",
                        "actual_policy_outcome":"measurement_unstable","actual_policy_array_checks":unstable["array_comparisons"],
                        "max_aa_noise":unstable["max_aa_noise"],"scope":unstable["scope"],"logs":logs})
                    continue
                pair_result = audit_actual_pair(pair, baseline, source, policy)
                saved = read(directory / "actual-policy-audit.json")
                if saved != pair_result:
                    raise ValueError("Saved actual-policy audit differs from raw arrays/statistics")
                pair_command = [command[0], str(source / "model_import_adapters/scripts/run_exact_replay_pair.py"),
                                "--source", str(source), "--case", str(baseline), "--policy", str(policy),
                                "--prepare-capture-constants", "--output", str(pair)]
                expected_code = 2 if record["status"] == "actual_policy_timing_not_met" else 0
                logs.append(validate_command_receipt(progress["commands"], pair_command, expected_code))
                terminal = read(pair / "report.json")
                expected = "not_met" if expected_code == 2 else "passed"
                if (terminal["status"] != expected or pair_result["candidate_outcome"] != expected
                        or record.get("actual_policy_outcome") != expected
                        or record.get("actual_policy_mixed_speedup") != pair_result["mixed_speedup"]
                        or [x["phase"] for x in terminal["phases"]] != ["calibrate", "compare"]
                        or any(x.get("exit_code") != 0 for x in terminal["phases"])):
                    raise ValueError("Actual pair saved outcome/real child exits drift")
                if expected_code == 2:
                    result["models"].append({"model_id": model, "status": "pending_retention_validation",
                        "actual_policy_outcome": expected, "actual_policy_array_checks": pair_result["array_comparisons"],
                        "scope": "negative result retained, not a runtime closure", "logs": logs})
                    continue
                qualification = [pair / "calibrate/report.json", pair / "compare/report.json", directory / "actual-policy-audit.json"]
            functional = functional_command(command[0], source, discovery, accepted_path, directory / "enrollment.json", baseline,
                                            model, directory / "functional", policy, qualification)
            logs.append(validate_command_receipt(progress["commands"], functional, 0))
            audit_command = [command[0], str(source / "model_import_adapters/scripts/audit_shape_release_case.py"),
                            "--case", str(directory / "functional"), "--accepted", str(accepted_path),
                            "--enrollment", str(directory / "enrollment.json"), "--output", str(directory / "functional-audit.json")]
            logs.append(validate_command_receipt(progress["commands"], audit_command, 0))
            verified = audit_functional(directory / "functional", accepted_path, directory / "enrollment.json")
            saved = read(directory / "functional-audit.json")
            if (any(saved.get(key) != value for key, value in verified.items())
                    or record.get("array_comparisons") != verified["array_comparisons"]
                    or record.get("counterexample_array_checks") != verified["counterexample_array_checks"]
                    or record.get("functional_report_sha256") != verified["report_sha256"]):
                raise ValueError("Functional audit or release record changed")
            result["models"].append({"model_id": model, "revision": record["revision"], "task": record["task"],
                "status": record["status"], "directory": str(directory), "discovery_array_checks": discovery_result["array_comparisons"],
                "actual_policy_array_checks": pair_result["array_comparisons"] if policy else 0,
                "actual_policy_mixed_speedup": pair_result["mixed_speedup"] if policy else None,
                "functional_array_checks": verified["array_comparisons"], "counterexample_array_checks": verified["counterexample_array_checks"],
                "functional_report_sha256": verified["report_sha256"], "logs": logs})
        except Exception as exc:
            result["errors"].append({"model_id": record["model_id"], "error": f"{type(exc).__name__}: {exc}", "traceback": traceback.format_exc()})
    result.update(status="passed" if not result["errors"] else "failed", audited_records=len(result["models"]),
        validated_models=sum(row["status"] in {"validated_candidate", "validated_retention"} for row in result["models"]),
        pending_retention_models=[row["model_id"] for row in result["models"] if row["status"] == "pending_retention_validation"],
        pending_wave_models=[row["model_id"] for row in models[len(records):]],
        wave_closure_complete=not result["errors"] and len(records) == len(models)
            and all(row["status"] in {"validated_candidate", "validated_retention"} for row in result["models"])
            and progress["status"] == "completed_wave_not_final301", finished_at=time.time())
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("wave", "accepted", "models", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    args = parser.parse_args()
    try:
        result = audit_wave(args.wave, args.accepted, args.models)
    except Exception as exc:
        result = {"status": "failed", "error": f"{type(exc).__name__}: {exc}", "traceback": traceback.format_exc(), "final_C1_accepted": False}
    result["audit_script_sha256"] = sha(__file__)
    with args.output.open("x", encoding="utf8") as file:
        json.dump(result, file, indent=2, allow_nan=False)
    print(json.dumps({key: result.get(key) for key in ("status", "audited_records", "validated_models", "wave_closure_complete", "errors", "error")}))
    return 0 if result["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
