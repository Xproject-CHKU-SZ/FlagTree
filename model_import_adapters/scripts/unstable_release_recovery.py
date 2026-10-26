"""Preserve an unstable A/A attempt and resume only unattempted model IDs.

This adds no timing retry, implicit retention, or performance pass. Original
wave bytes, child logs and the independently audited completed prefix remain
bound to their real terminal PID/command/start_ticks.
"""
import copy
from pathlib import Path

from audit_dynamic_shape_pair import indexed
from audit_observed_gemm_pair import same_statistics
from audit_replay_campaign import audit_output_archive
from benchmark_scene_pair import freeze_gate, summarize_rounds
from continue_shape301_wave import inspect_handle
from run_shape_release_wave import performance_streak, read, sha

STATUS = "actual_policy_measurement_unstable"


def audit_unstable_statistics(report):
    if report.get("status") != "unstable_baseline" or report.get("phase") != "calibrate":
        raise ValueError("Only an explicit unstable A/A terminal report is eligible")
    noise = []
    for probe in [*indexed(report).values(), report["mixed_measurement"]]:
        summary = summarize_rounds(probe["rounds"])
        gate = freeze_gate(summary)
        if not same_statistics(summary, probe["summary"]) or not same_statistics(gate, probe["gate"]):
            raise ValueError("Raw A/A samples, summary or noise gate changed")
        noise.append(gate["measured_aa_noise"])
    if max(noise) <= 0.05:
        raise ValueError("Stable A/A cannot be reclassified as unstable to skip qualification")
    for probe in indexed(report).values():
        if (probe.get("status") != "calibrated" or not probe.get("comparisons")
                or any(x.get("passed") is not True for x in probe["comparisons"].values())):
            raise ValueError("Unstable timing does not excuse incorrect or missing outputs")
    return max(noise)


def audit_unstable_pair(pair, baseline, source, policy):
    terminal, a = read(pair / "report.json"), read(pair / "calibrate/report.json")
    noise = audit_unstable_statistics(a)
    phases = terminal.get("phases", [])
    expected = ["--phase", "calibrate", "--strategy", "graph_replay", "--source", str(source),
                "--case", str(baseline), "--output", str(pair / "calibrate"),
                "--replay-policy", str(policy), "--prepare-capture-constants"]
    if (terminal.get("status") != "measurement_unstable" or terminal.get("failure_stage") != "calibrate"
            or terminal.get("source") != str(source) or terminal.get("case") != str(baseline)
            or len(phases) != 1 or phases[0].get("phase") != "calibrate"
            or phases[0].get("status") != "unstable_baseline" or phases[0].get("exit_code") != 1
            or phases[0].get("report_sha256") != sha(pair / "calibrate/report.json")
            or phases[0]["command"][1] != str(source / "model_import_adapters/scripts/benchmark_dynamic_shape_pair.py")
            or phases[0]["command"][2:] != expected or (pair / "compare").exists()):
        raise ValueError("Only a real failed calibration with no A/B attempt may be skipped")
    from model_import_adapters.prepared_policy import bind_preprocessing
    from model_import_adapters.replay_policy import load_policy
    identity = a["policy_identity"]
    base = {k: v for k, v in identity.items() if k != "preprocessing"}
    if bind_preprocessing(base, a["capture_constants"], a["identity"]["capture_constants_sha256"]) != identity:
        raise ValueError("Unstable actual policy preprocessing identity changed")
    _, state = load_policy(policy, identity)
    if state != "loaded" or sha(policy) != a["identity"]["replay_policy_sha256"]:
        raise ValueError("Unstable actual policy bytes/identity changed")
    frozen = read(source / "source-baseline.json")
    for name, digest in frozen["files"].items():
        if sha(source / name) != digest:
            raise ValueError("Frozen measured runtime changed")
    for name, digest in a["identity"]["source_files"].items():
        if frozen["files"].get(name) != digest:
            raise ValueError("Consumed runtime dependency changed")
    for name, field in [("artifacts/model.core_aten.pt2", "pt2_sha256"),
                        ("report.json", "baseline_report_sha256"), ("task-protocol.json", "protocol_sha256")]:
        if sha(baseline / name) != a["identity"][field]:
            raise ValueError("Original PT2/task/protocol changed")
    original = read(baseline / "report.json"); checks = []
    for probe in a["probes"]:
        ref = next(x for x in original["probes"] if (x["batch"], x["sequence"]) == (probe["batch"], probe["sequence"]))
        if probe["input_sha256"] != ref["sha256"]:
            raise ValueError("Unstable calibration input drift")
        checks.append(audit_output_archive(baseline / Path(ref["archive"]).name,
            pair / "calibrate" / Path(probe["archive"]).name, ref["sha256"], probe["archive_sha256"]))
    index = pair / "calibrate/compiler-evidence.json"
    if sha(index) != a["compiler_evidence_sha256"]:
        raise ValueError("Compiler evidence index changed")
    for item in read(index):
        rel = Path(item["path"])
        if rel.is_absolute() or ".." in rel.parts or sha(index.parent / rel) != item["sha256"]:
            raise ValueError("Compiler evidence path/hash drift")
    return {"status": "passed", "actual_policy_outcome": "measurement_unstable", "performance_passed": False,
        "max_aa_noise": noise, "array_comparisons": sum(x["array_comparisons"] for x in checks),
        "calibration_sha256": sha(pair / "calibrate/report.json"), "terminal_report_sha256": sha(pair / "report.json"),
        "pt2_sha256": a["identity"]["pt2_sha256"], "source_files_rehashed": len(frozen["files"]),
        "logs": {n: sha(pair / n) for n in ["calibrate.stdout.log", "calibrate.stderr.log"]},
        "scope": "unstable A/A evidence only; no A/B, no policy acceptance, no functional retention closure"}


def validate_recovery_prefix(previous, models, audit):
    records = previous["records"]; count = len(records)
    if (previous.get("status") != "stopped" or not 0 < count < len(models)
            or previous.get("target_models") != len(models)
            or previous.get("final_C1_accepted") is not False or previous.get("cpu_model_forward") != "not_run"
            or [x["model_id"] for x in records] != [x["model_id"] for x in models[:count]]
            or any(x["status"] not in {"validated_candidate", "validated_retention"} for x in records)
            or previous.get("current_model") != models[count]["model_id"]
            or previous.get("stage") != "actual_policy_pair"):
        raise ValueError("Recovery requires a complete original prefix and exactly the next failed actual pair")
    if (audit.get("status") != "passed" or audit.get("errors") or audit.get("audited_records") != count
            or audit.get("validated_models") != count or audit.get("inherited_records", 0) > count
            or audit.get("wave_closure_complete") is not False
            or audit.get("pending_retention_models")
            or audit.get("pending_wave_models") != [x["model_id"] for x in models[count:]]
            or [x["model_id"] for x in audit["models"]] != [x["model_id"] for x in records]):
        raise ValueError("Independent exact completed-prefix audit is required")
    for old, checked, model in zip(records, audit["models"], models):
        if (any(old.get(k) != model[k] for k in ("model_id", "revision", "task"))
                or any(checked.get(k) != old.get(k) for k in ("status", "directory", "functional_report_sha256"))):
            raise ValueError("Recovered model/functional evidence drift")
    if previous.get("consecutive_performance_nonacceptance") != performance_streak(records):
        raise ValueError("Original performance ledger changed")
    return count


def recover_wave(wave, accepted, models_path, job_path):
    from audit_shape_release_wave import audit_wave, parse_wave_command, validate_command_receipt
    previous = read(wave / "report.json"); command = read(wave / "command.json"); job = read(job_path)
    if command != job["command"]:
        raise ValueError("Recovery process command differs from original wave")
    handle = inspect_handle("/proc", job["pid"], job["command"], job["start_ticks"])
    if handle["state"] != "terminal" or handle["exit_code"] != 1:
        raise ValueError("Exact original stopped PID/start_ticks must have real terminal exit1")
    args = parse_wave_command(command, accepted, models_path, wave)
    models = read(models_path); checked = audit_wave(wave, accepted, models_path)
    count = validate_recovery_prefix(previous, models, checked)
    row = models[count]; attempt = previous["commands"][-1]; pair_command = attempt["command"]
    if pair_command.count("--output") != 1:
        raise ValueError("Original failed pair command is ambiguous")
    pair = Path(pair_command[pair_command.index("--output") + 1]); directory = pair.parent
    pair.resolve().relative_to(wave.resolve())
    calibration = read(pair / "calibrate/report.json"); baseline = Path(calibration["case"])
    expected = [command[0], str(args["source"] / "model_import_adapters/scripts/run_exact_replay_pair.py"),
        "--source", str(args["source"]), "--case", str(baseline), "--policy", str(directory / "policy.json"),
        "--prepare-capture-constants", "--output", str(pair)]
    validate_command_receipt(previous["commands"], expected, 1)
    negative = audit_unstable_pair(pair, baseline, args["source"], directory / "policy.json")
    if calibration["identity"]["model_id"] != row["model_id"]:
        raise ValueError("Recovery cannot skip a different model")
    item = {**row, "directory": str(directory), "discovery_outcome": "passed", "final_C1_accepted": False,
        "status": STATUS, "actual_policy_outcome": "measurement_unstable",
        "actual_policy_calibration_sha256": negative["calibration_sha256"]}
    result = copy.deepcopy(previous); result["records"].append(item)
    result["consecutive_performance_nonacceptance"] = performance_streak(result["records"])
    if result["consecutive_performance_nonacceptance"] >= 10:
        raise ValueError("Ten distinct nonacceptances still stop recovery; no reset")
    provenance = {"previous_wave": str(wave), "previous_report_sha256": sha(wave / "report.json"),
        "previous_job_path": str(job_path), "previous_job_sha256": sha(job_path),
        "previous_observed_pid": job["pid"], "previous_observed_start_ticks": job["start_ticks"],
        "previous_observed_exit_code": 1, "inherited_models": count + 1,
        "inherited_cases_are_not_new_runs": True, "unstable_attempt_retried": False}
    return result, checked, provenance
