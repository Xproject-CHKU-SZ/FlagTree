#!/usr/bin/env python3
"""Consume an explicit discovery prefix and verify real policies sequentially.

No CPU model forward or implicit retries. Discovery, actual-router timing,
functional verification and independent array audit remain separate states.
Each model retains a full301 enrollment; this wave never claims final301.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import time
import traceback

from audit_dynamic_shape_pair import audit_reports
from audit_replay_campaign import audit_case, audit_output_archive
from build_shape_release_enrollment import apply_enrollments, enroll_model, pending_manifest
from continue_shape301_wave import inspect_handle
from run_scene_optimization_campaign import validate_scope


def read(path):
    return json.loads(Path(path).read_text(encoding="utf-8"))


def sha(path):
    h = hashlib.sha256()
    with Path(path).open("rb") as file:
        for block in iter(lambda: file.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def save(path, value):
    temporary = path.with_suffix(".tmp")
    temporary.write_text(json.dumps(value, indent=2, allow_nan=False) + "\n", encoding="utf-8")
    os.replace(temporary, path)


def validate_wave(accepted, models, checkpoint, accepted_sha, source_sha):
    rows = {row["model_id"]: row for row in validate_scope(accepted)}
    ids = [row["model_id"] for row in models]
    if not ids or len(ids) != len(set(ids)) or not set(ids) <= set(rows):
        raise ValueError("Unique explicit historical model IDs required")
    if any(any(row[key] != rows[row["model_id"]][key] for key in ("revision", "task")) for row in models):
        raise ValueError("Wave revision/task drift")
    identity = checkpoint["identity"]
    if (identity["accepted_sha256"] != accepted_sha or identity["source_baseline_sha256"] != source_sha
            or identity.get("strategy") != "graph_replay" or identity["model_ids"][:len(ids)] != ids):
        raise ValueError("Explicit measured discovery prefix/source required")
    return rows


def completed_record(checkpoint, model_id):
    rows = [row for row in checkpoint["records"] if row["model_id"] == model_id and row.get("candidate_exit_code") == 0]
    if len(rows) > 1:
        raise ValueError("Ambiguous completed discovery attempts")
    if not rows:
        return None
    row = rows[0]
    if any(row.get(key) != value for key, value in (("status", "calibrated"), ("exit_code", 0), ("profile_exit_code", 0))):
        raise ValueError("Discovery phases are not complete")
    case = Path(row["case"])
    if (sha(case / "report.json") != row["report_sha256"]
            or sha(case / "candidate-graph_replay/report.json") != row["candidate_report_sha256"]):
        raise ValueError("Completed discovery report hash drift")
    return row


def performance_streak(records):
    ids = [row["model_id"] for row in records]
    if len(ids) != len(set(ids)):
        raise ValueError("Retries cannot be counted as distinct models")
    streak = 0
    for row in records:
        if row["status"] == "validated_candidate":
            streak = 0
        elif row["status"] in {"actual_policy_timing_not_met", "actual_policy_measurement_unstable", "validated_retention"}:
            streak += 1
        else:
            raise ValueError("Incomplete execution cannot enter the performance ledger")
    return streak


def inherited_enrollments(manifest, records):
    """Preserve the separately audited unstable selection through prefix inheritance."""
    from unstable_retention import MODE
    entries, explicit = [], {}
    for record in records:
        selected = read(Path(record["retention_resolution"]["enrollment"]) if record.get("retention_resolution")
                        else Path(record["directory"]) / "enrollment.json")
        entry = next(row for row in selected["models"] if row["model_id"] == record["model_id"])
        entries.append(entry)
        if entry["mode"] == MODE:
            if not record.get("retention_resolution") or record.get("status") != "validated_retention":
                raise ValueError("Unstable inherited entry requires its separately audited explicit runtime resolution")
            explicit[record["model_id"]] = selected
    return apply_enrollments(manifest, entries, unstable_evidence=explicit)


def functional_command(python, runtime_source, discovery_source, accepted, enrollment, baseline, model_id, output,
                       policy=None, qualification=None):
    if (policy is None) != (qualification is None):
        raise ValueError("Enabled policy and complete actual-router qualification required together")
    # A measured retention runs the original unprepared B0, not an enabled
    # candidate and not an unqualified cross-version substitution.
    source = runtime_source if policy else discovery_source
    command = [python, str(runtime_source / "model_import_adapters/scripts/verify_shape_release_case.py"),
               "--accepted", str(accepted), "--enrollment", str(enrollment),
               "--source", str(source), "--discovery-source", str(discovery_source),
               "--case", str(baseline), "--model-id", model_id, "--output", str(output)]
    if policy:
        if len(qualification) != 3:
            raise ValueError("Calibration/comparison/independent audit required")
        command += ["--policy", str(policy), "--prepare-capture-constants"]
        for flag, path in zip(("--qualification-calibration", "--qualification-comparison", "--qualification-audit"), qualification):
            command += [flag, str(path)]
    return command


def audit_actual_pair(pair, baseline, runtime_source, policy):
    a, b = read(pair / "calibrate/report.json"), read(pair / "compare/report.json")
    result = audit_reports(a, b)
    if b["calibration_sha256"] != sha(pair / "calibrate/report.json"):
        raise ValueError("Actual-router calibration hash drift")
    from model_import_adapters.prepared_policy import bind_preprocessing
    from model_import_adapters.replay_policy import load_policy
    identity = b["policy_identity"]
    base = {key: value for key, value in identity.items() if key != "preprocessing"}
    if (bind_preprocessing(base, b["capture_constants"], b["identity"]["capture_constants_sha256"]) != identity
            or a["capture_constants"] != b["capture_constants"] or a["policy_identity"] != identity):
        raise ValueError("Actual preprocessing identity/records drift")
    document, status = load_policy(policy, identity)
    if status != "loaded" or sha(policy) != b["identity"]["replay_policy_sha256"]:
        raise ValueError("Actual policy identity/file drift")
    if (b["policy_router"]["policy_sha256"] != document["sha256"]
            or b["policy_router"]["counters"]["graph_replay"] <= 0
            or b["policy_router"]["counters"]["original_compiled"] <= 0):
        raise ValueError("Actual enabled and retained routes were not both exercised")
    frozen = read(runtime_source / "source-baseline.json")
    for name, digest in frozen["files"].items():
        if sha(runtime_source / name) != digest:
            raise ValueError("Frozen runtime source drift")
    for name, digest in b["identity"]["source_files"].items():
        if frozen["files"].get(name) != digest:
            raise ValueError("Measured dependency source drift")
    original = read(baseline / "report.json")
    for name, expected in (("artifacts/model.core_aten.pt2", b["identity"]["pt2_sha256"]),
                           ("report.json", b["identity"]["baseline_report_sha256"]),
                           ("task-protocol.json", b["identity"]["protocol_sha256"])):
        if sha(baseline / name) != expected:
            raise ValueError("Baseline task/PT2/protocol drift")
    checks = []
    for phase, report in (("calibrate", a), ("compare", b)):
        for probe in report["probes"]:
            ref = next(x for x in original["probes"] if (x["batch"], x["sequence"]) == (probe["batch"], probe["sequence"]))
            if probe["input_sha256"] != ref["sha256"]:
                raise ValueError("Actual-router input drift")
            checks.append(audit_output_archive(baseline / Path(ref["archive"]).name,
                          pair / phase / Path(probe["archive"]).name, ref["sha256"], probe["archive_sha256"]))
        index = pair / phase / "compiler-evidence.json"
        if sha(index) != report["compiler_evidence_sha256"]:
            raise ValueError("Compiler evidence index drift")
        for item in read(index):
            rel = Path(item["path"])
            if rel.is_absolute() or ".." in rel.parts or sha(pair / phase / rel) != item["sha256"]:
                raise ValueError("Compiler evidence path/hash drift")
    result.update(status="passed", array_comparisons=sum(x["array_comparisons"] for x in checks),
                  maximum_abs_error=max(x["maximum_abs_error"] for x in checks),
                  calibration_sha256=sha(pair / "calibrate/report.json"), comparison_sha256=sha(pair / "compare/report.json"),
                  pt2_sha256=b["identity"]["pt2_sha256"], source_files_rehashed=len(frozen["files"]),
                  scope="independent actual-router raw statistics, arrays and source audit, not final301")
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("accepted", "models", "discovery-source", "source", "discovery-checkpoint", "discovery-job", "runtime", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--audit-only", action="store_true", help="Reopen this existing wave without executing a model or changing its files")
    parser.add_argument("--previous-wave", type=Path, help="Extend a terminal independently closed prefix; never restart or retry an active wave")
    parser.add_argument("--previous-terminal-receipt", type=Path, help="Explicit captured original zombie plus owner waitid proof, only when the selected PID was reaped")
    parser.add_argument("--previous-job", type=Path, help="Explicit previously observed PID/command/start_ticks; terminal exit0 must be observed, never inferred from a report")
    parser.add_argument("--chain-plan", type=Path, help="Serial remaining original301 release waves; frozen measured runtime is unchanged")
    parser.add_argument("--previous-resolution", type=Path, help="Explicit new B0 evidence resolving negative actual-policy records; original wave remains unchanged")
    parser.add_argument("--recover-stopped-wave", type=Path, help="Explicit exact stopped wave; preserve unstable A/A and continue only unattempted IDs")
    parser.add_argument("--recovery-job", type=Path, help="Original stopped PID/command/start_ticks, real exit1 required")
    args = parser.parse_args()
    if args.chain_plan:
        from shape_release_chain import run_chain
        return run_chain(args)
    if args.audit_only:
        from audit_shape_release_wave import audit_wave
        result = audit_wave(args.output, args.accepted, args.models)
        print(json.dumps({key: result.get(key) for key in ("status", "audited_records", "validated_models", "wave_closure_complete", "errors")}))
        return 0 if result["status"] == "passed" else 1
    if (args.previous_wave is None) != (args.previous_job is None):
        parser.error("--previous-wave and --previous-job must be supplied together")
    if args.previous_terminal_receipt and not args.previous_wave:
        parser.error("--previous-terminal-receipt requires an explicit --previous-wave/--previous-job")
    if (args.recover_stopped_wave is None) != (args.recovery_job is None):
        parser.error("--recover-stopped-wave and --recovery-job are required together")
    if args.recover_stopped_wave and (args.previous_wave or args.chain_plan or args.previous_resolution):
        parser.error("Stopped-wave recovery is explicit and separate from closed-wave extension")
    args.output.mkdir(parents=True, exist_ok=False)
    progress = {"status": "running", "started_at": time.time(), "records": [], "commands": [],
                "cpu_model_forward": "not_run", "final_C1_accepted": False,
                "scope": "explicit wave qualification; complete original301 remains denominator",
                "physical_device": os.environ.get("CUDA_VISIBLE_DEVICES"), "cpu_affinity": sorted(os.sched_getaffinity(0)),
                "controller_sha256": sha(__file__)}
    save(args.output / "command.json", [sys.executable, *sys.argv])
    def persist():
        save(args.output / "progress.json", progress)
    def run(command, stem, allowed=(0,)):
        entry = {"command": command, "started_at": time.time(), "stdout": str(stem) + ".stdout.log", "stderr": str(stem) + ".stderr.log"}
        progress["commands"].append(entry)
        with Path(entry["stdout"]).open("xb") as stdout, Path(entry["stderr"]).open("xb") as stderr:
            child = subprocess.Popen(command, stdout=stdout, stderr=stderr)
            entry["pid"] = child.pid; persist()
            entry["exit_code"] = child.wait()
        entry["finished_at"] = time.time(); persist()
        if entry["exit_code"] not in allowed:
            raise ValueError(f"Child failed ({entry['exit_code']}): {stem}; raw logs preserved")
        return entry["exit_code"]
    persist()
    try:
        accepted, models = read(args.accepted), read(args.models)
        sys.path.insert(0, str(args.source / "model_import_adapters/src"))
        pinned = {str(path): sha(path) for path in (args.accepted, args.models, args.runtime,
                  args.discovery_source / "source-baseline.json", args.source / "source-baseline.json", args.discovery_job)}
        progress.update(pinned_inputs=pinned, target_models=len(models)); persist()
        rows = validate_wave(accepted, models, read(args.discovery_checkpoint), sha(args.accepted), sha(args.discovery_source / "source-baseline.json"))
        frozen = read(args.discovery_source / "source-baseline.json")
        for source in (args.discovery_source, args.source):
            for name, digest in read(source / "source-baseline.json")["files"].items():
                if sha(source / name) != digest:
                    raise ValueError("Frozen source changed before wave")
        manifest = pending_manifest(accepted, sha(args.accepted), sha(args.discovery_source / "source-baseline.json"))
        manifest.update(measured_source_baseline_sha256=sha(args.discovery_source / "source-baseline.json"), measured_source_head=frozen["head"])
        start = 0
        if args.previous_wave:
            from audit_shape_release_wave import audit_wave, parse_wave_command
            from release_wave_continuation import seed_release_progress, validate_extension
            from release_terminal_proof import observe_release_predecessor
            receipt_sha = sha(args.previous_terminal_receipt) if args.previous_terminal_receipt else None
            previous_job_sha = sha(args.previous_job)
            previous_job = read(args.previous_job)
            while True:
                if sha(args.previous_job) != previous_job_sha:
                    raise ValueError("Previously observed process identity changed")
                if args.previous_terminal_receipt and sha(args.previous_terminal_receipt) != receipt_sha:
                    raise ValueError("Selected original terminal proof changed")
                handle = observe_release_predecessor(previous_job,args.previous_wave,args.previous_terminal_receipt)
                if handle["state"] == "live":
                    progress.update(stage="verified_wait_previous",previous_wait_handle=dict(handle,pid=previous_job["pid"]))
                    persist(); time.sleep(30); continue
                if handle["state"] != "terminal" or handle["exit_code"] != 0:
                    raise ValueError("Previous release terminal exit0 not observed; no restart or inferred success")
                break
            progress["pinned_inputs"].update(handle.get("terminal_proof_files", {}))
            if args.previous_terminal_receipt:
                progress["previous_terminal_proof"] = {"path": str(args.previous_terminal_receipt),
                                                       "sha256": receipt_sha, "observation": handle}
            previous_path = args.previous_wave / "report.json"
            previous_sha = sha(previous_path)
            previous = read(previous_path)
            previous_command = read(args.previous_wave / "command.json")
            if previous_command != previous_job["command"]:
                raise ValueError("Previous terminal process was not the selected wave controller")
            if previous_command.count("--models") != 1:
                raise ValueError("Previous release scope command ambiguous")
            previous_models_path = Path(previous_command[previous_command.index("--models") + 1])
            previous_args = parse_wave_command(previous_command,args.accepted,previous_models_path,args.previous_wave)
            for key,path in (("source",args.source),("discovery-source",args.discovery_source),("runtime",args.runtime)):
                if previous_args[key].resolve()!=path.resolve():
                    raise ValueError("Continuation cannot change the measured runtime/discovery files")
            audited = audit_wave(args.previous_wave,args.accepted,previous_models_path)
            if args.previous_resolution:
                from retention_resolution import resolve_previous
                previous,audited=resolve_previous(args.previous_wave,args.accepted,previous_models_path,args.previous_resolution)
            if audited["progress_sha256_at_read"] != previous_sha or sha(previous_path) != previous_sha:
                raise ValueError("Prior terminal release changed during independent audit")
            audit_path = args.output / "prerequisite-audit.json"; save(audit_path,audited)
            stable = {str(path):sha(path) for path in (args.accepted,args.runtime,args.discovery_source / "source-baseline.json",args.source / "source-baseline.json")}
            start = validate_extension(previous,read(previous_models_path),models,audited,stable)
            if (previous["physical_device"] != progress["physical_device"] or previous["cpu_affinity"] != progress["cpu_affinity"]):
                raise ValueError("Explicit release continuation must preserve device/CPU affinity")
            provenance={"previous_wave":str(args.previous_wave),"previous_report_sha256":previous_sha,
                        "prerequisite_audit_path":str(audit_path),"prerequisite_audit_sha256":sha(audit_path),
                        "previous_job_path":str(args.previous_job),"previous_job_sha256":previous_job_sha,
                        "previous_observed_pid":previous_job["pid"],"previous_observed_start_ticks":previous_job["start_ticks"],
                        "previous_observed_exit_code":0,
                        "inherited_models":start,"inherited_cases_are_not_new_runs":True}
            if args.previous_terminal_receipt:
                provenance.update(previous_terminal_receipt_path=str(args.previous_terminal_receipt),
                                  previous_terminal_receipt_sha256=receipt_sha)
            if args.previous_resolution:
                provenance.update(retention_resolution_path=str(args.previous_resolution),retention_resolution_sha256=sha(args.previous_resolution))
            progress=seed_release_progress(progress,previous,provenance)
            progress["pinned_inputs"].update({str(previous_path):previous_sha,str(previous_models_path):sha(previous_models_path),str(audit_path):sha(audit_path),str(args.previous_job):previous_job_sha})
            pinned = progress["pinned_inputs"]
            if args.previous_resolution:
                pinned[str(args.previous_resolution)]=sha(args.previous_resolution)
            manifest=inherited_enrollments(manifest,previous["records"]); persist()
        if args.recover_stopped_wave:
            from unstable_release_recovery import recover_wave
            recovered, checked, recovery = recover_wave(args.recover_stopped_wave,args.accepted,args.models,args.recovery_job)
            if (recovered["physical_device"] != progress["physical_device"] or recovered["cpu_affinity"] != progress["cpu_affinity"]):
                raise ValueError("Recovery cannot change physical device/CPU affinity")
            for path in (args.accepted,args.runtime,args.source/"source-baseline.json",args.discovery_source/"source-baseline.json"):
                if recovered["pinned_inputs"].get(str(path)) != sha(path):
                    raise ValueError("Recovery cannot change accepted scope or measured runtime")
            receipt = args.output/"recovery-prefix-audit.json";save(receipt,checked)
            recovery.update(prerequisite_audit_path=str(receipt),prerequisite_audit_sha256=sha(receipt))
            progress.update(records=recovered["records"],commands=recovered["commands"],recovery=recovery,
                consecutive_performance_nonacceptance=performance_streak(recovered["records"]))
            for path in (args.recover_stopped_wave/"report.json",args.recovery_job,receipt):
                pinned[str(path)] = sha(path)
            manifest=inherited_enrollments(manifest,recovered["records"]);start=len(recovered["records"]);persist()
        job = read(args.discovery_job); birth = None
        for index, row in enumerate(models[start:],start=start):
            model = row["model_id"]; progress.update(current_model=model, stage="wait_discovery"); persist()
            while True:
                if any(sha(Path(path)) != digest for path, digest in pinned.items()):
                    raise ValueError("Pinned wave inputs changed")
                checkpoint = read(args.discovery_checkpoint)
                validate_wave(accepted, models, checkpoint, sha(args.accepted), sha(args.discovery_source / "source-baseline.json"))
                record = completed_record(checkpoint, model)
                if record is not None:
                    break
                handle = inspect_handle("/proc", job["pid"], job["command"], birth)
                if handle["state"] != "live" or checkpoint["status"] not in {"running", "initializing"}:
                    raise ValueError("Discovery stopped without this model's completed evidence; no inferred retention")
                birth = handle["start_ticks"]; progress["discovery_wait_handle"] = dict(handle, pid=job["pid"]); persist(); time.sleep(30)
            if os.statvfs(args.output).f_bavail * os.statvfs(args.output).f_frsize < 20 * 1024**3:
                raise ValueError("Less than20GiB free; no evidence cleanup performed")
            directory = args.output / f"case-{index:03d}-{hashlib.sha256(model.encode()).hexdigest()[:10]}"
            directory.mkdir(exist_ok=False)
            progress["stage"] = "audit_discovery"; persist()
            receipt = audit_case(record, rows[model])
            receipt["status"] = "passed"
            save(directory / "discovery-audit.json", receipt)
            discovery_case = Path(record["case"])
            a, b = read(discovery_case / "report.json"), read(discovery_case / "candidate-graph_replay/report.json")
            entry = enroll_model(row, receipt, a, b, frozen)
            manifest = apply_enrollments(manifest, [entry]); save(directory / "enrollment.json", manifest)
            baseline = Path(b["case"]); policy = None; qualification = None
            item = {"model_id": model, "revision": row["revision"], "task": row["task"], "directory": str(directory),
                    "discovery_outcome": receipt["candidate_outcome"], "final_C1_accepted": False}
            if entry["mode"] == "candidate_requires_release_validation":
                progress["stage"] = "build_policy"; persist()
                policy = directory / "policy.json"
                run([sys.executable, str(args.source / "model_import_adapters/scripts/build_replay_policy.py"),
                     "--calibration", str(discovery_case / "report.json"), "--comparison", str(discovery_case / "candidate-graph_replay/report.json"),
                     "--artifact-audit", str(directory / "discovery-audit.json"), "--runtime", str(args.runtime), "--output", str(policy)], directory / "build-policy")
                progress["stage"] = "actual_policy_pair"; persist()
                pair = directory / "actual-policy-pair"
                code = run([sys.executable, str(args.source / "model_import_adapters/scripts/run_exact_replay_pair.py"),
                            "--source", str(args.source), "--case", str(baseline), "--policy", str(policy),
                            "--prepare-capture-constants", "--output", str(pair)], directory / "actual-policy-pair", allowed=(0, 1, 2))
                if code == 1:
                    from unstable_release_recovery import STATUS, audit_unstable_pair
                    unstable = audit_unstable_pair(pair,baseline,args.source,policy)
                    save(directory / "actual-policy-unstable-audit.json",unstable)
                    item.update(status=STATUS,actual_policy_outcome="measurement_unstable",
                        actual_policy_calibration_sha256=unstable["calibration_sha256"])
                    progress["records"].append(item)
                    progress["consecutive_performance_nonacceptance"]=performance_streak(progress["records"]);persist()
                    if progress["consecutive_performance_nonacceptance"] >= 10:
                        raise ValueError("Ten distinct consecutive models failed performance acceptance")
                    continue
                qualified = audit_actual_pair(pair, baseline, args.source, policy)
                audit_path = directory / "actual-policy-audit.json"; save(audit_path, qualified)
                item.update(actual_policy_mixed_speedup=qualified["mixed_speedup"], actual_policy_outcome=qualified["candidate_outcome"])
                if code == 2 or qualified["candidate_outcome"] != "passed":
                    if code != 2 or qualified["candidate_outcome"] != "not_met":
                        raise ValueError("Actual-policy exit status and raw performance decision disagree")
                    item["status"] = "actual_policy_timing_not_met"
                    progress["records"].append(item); progress["consecutive_performance_nonacceptance"] = performance_streak(progress["records"]); persist()
                    if progress["consecutive_performance_nonacceptance"] >= 10:
                        raise ValueError("Ten distinct consecutive models failed performance acceptance")
                    continue
                qualification = [pair / "calibrate/report.json", pair / "compare/report.json", audit_path]
            progress["stage"] = "functional_verification"; persist()
            run(functional_command(sys.executable,args.source,args.discovery_source,args.accepted,directory / "enrollment.json",baseline,model,
                                   directory / "functional",policy,qualification), directory / "functional")
            progress["stage"] = "independent_functional_audit"; persist()
            run([sys.executable, str(args.source / "model_import_adapters/scripts/audit_shape_release_case.py"),
                 "--case", str(directory / "functional"), "--accepted", str(args.accepted),
                 "--enrollment", str(directory / "enrollment.json"), "--output", str(directory / "functional-audit.json")], directory / "functional-audit")
            verified = read(directory / "functional-audit.json")
            if verified["status"] != "passed" or verified["array_comparisons"] != 80:
                raise ValueError("Functional saved-array audit incomplete")
            item.update(status="validated_candidate" if policy else "validated_retention", array_comparisons=verified["array_comparisons"],
                        counterexample_array_checks=verified["counterexample_array_checks"], functional_report_sha256=verified["report_sha256"])
            progress["records"].append(item); progress["consecutive_performance_nonacceptance"] = performance_streak(progress["records"]); persist()
            if progress["consecutive_performance_nonacceptance"] >= 10:
                raise ValueError("Ten distinct consecutive models failed performance acceptance")
        progress.update(status="completed_wave_not_final301", stage=None)
    except Exception as exc:
        progress.update(status="stopped", error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    progress["finished_at"] = time.time(); persist(); save(args.output / "report.json", progress)
    print(json.dumps({key: progress.get(key) for key in ("status", "current_model", "stage", "error", "records")}), flush=True)
    return 0 if progress["status"] == "completed_wave_not_final301" else 1


if __name__ == "__main__":
    raise SystemExit(main())
