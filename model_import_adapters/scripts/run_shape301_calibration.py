#!/usr/bin/env python3
"""Sequential, restartable A/A calibration of a frozen historical-301 subset."""
from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
import subprocess
import sys
import time

from run_scene_optimization_campaign import checkpoint, model_slug, validate_scope
from benchmark_scene_pair import sha256
from memory_acceptance import memory_gate_passed


def read(path):
    return json.loads(path.read_text(encoding="utf-8"))


def validate_baseline_scope(rows, baseline, audit, accepted_hash, checkpoint_hash):
    if (audit.get("status") != "passed" or audit.get("passed") != len(rows)
            or audit.get("accepted_sha256") != accepted_hash
            or audit.get("checkpoint_sha256") != checkpoint_hash):
        raise ValueError("A complete current E0 audit with the same checkpoint is required")
    records = baseline.get("records", [])
    indexed = {r["model_id"]: r for r in records}
    audited = {r["model_id"]: r for r in audit.get("models", [])}
    if (len(indexed) != len(records) or len(audit.get("models", [])) != len(rows)
            or set(indexed) != set(rows) or set(audited) != set(rows)):
        raise ValueError("Baseline/audit model scope mismatch")
    for model, row in rows.items():
        record, checked = indexed[model], audited[model]
        if (record.get("status") != "passed" or record.get("revision") != row["revision"]
                or checked.get("status") != "passed" or checked.get("revision") != row["revision"]
                or checked.get("task") != row["task"] or checked.get("baseline_case") != record["case"]):
            raise ValueError(f"Audited baseline identity drift: {model}")
    return indexed


def validate_calibrated_child(row, result, require_ready=True):
    identity = result.get("identity", {})
    if any(identity.get(k) != row[k] for k in ("model_id", "revision", "task")):
        raise ValueError("Calibrated child model/revision/task drift")
    probes = result.get("probes", [])
    if len(probes) != 5 or {(p["batch"], p["sequence"]) for p in probes} != {(1,8),(2,24),(4,64),(2,8),(1,64)}:
        raise ValueError("Calibrated child missing or duplicate probes")
    if any(not p.get("comparisons") or not all(v.get("passed") is True for v in p["comparisons"].values())
           or (require_ready and not p.get("gate", {}).get("ready")) for p in probes):
        raise ValueError("Calibrated child is not ready/correct")


def record_performance_outcome(state, model_id, outcome, reason, limit):
    """Count distinct completed models, never the attempts for the same model."""
    ledger = state.setdefault("model_outcomes", [])
    if any(item["model_id"] == model_id for item in ledger):
        raise ValueError("A model cannot advance the performance streak twice")
    if outcome not in {"passed", "calibration_ready", "measurement_unstable", "not_met"}:
        raise ValueError("Unexpected performance outcome")
    ledger.append(dict(model_id=model_id, outcome=outcome, reason=reason))
    streak = 0
    for item in reversed(ledger):
        if item["outcome"] in {"passed", "calibration_ready"}:
            break
        streak += 1
    state["consecutive_performance_nonacceptance"] = streak
    if streak >= limit:
        state.update(status="method_implementation_blocked", failure_stage="performance_acceptance",
                     failure_model=model_id, current_model=None,
                     blocking_models=[x["model_id"] for x in ledger[-limit:]],
                     blocking_note="User-defined workflow classification, not proof of an IR or algorithm defect; reasons remain separate")
        return True
    return False


def candidate_outcome(result):
    probes = result["probes"]
    changed = [p for p in probes if p["hit"] and (p.get("candidate_route") in {"static_shape_compiled", "exact_shape_replay"}
               or any(r["decision"]["block_m"] != 16 for r in p["regions"]))]
    if not changed:
        return "not_met", "no_changed_configuration_hit; original compiled path retained, not an IR failure"
    if not result.get("mixed_measurement", {}).get("performance_passed"):
        return "not_met", "mixed_request_gain_gate_not_met_or_missing"
    if not all(p.get("status") == "performance_passed" for p in changed):
        return "not_met", "changed_domain_gain_or_resource_gate_not_met"
    for probe in probes:
        gate = probe["gate"]
        if (min(probe["summary"]["round_speedups"]) < 1-gate["max_worst_round_regression"]
                or not probe.get("first_call_cost_passed") or not memory_gate_passed(probe)):
            return "not_met", "full_model_retained_domain_regression_or_resource_gate"
    return "passed", "changed_domains_passed_and_remaining_domains_within_budget; experimental_not_default_enablement"


def phase_command(source, baseline_case, output, *, phase, strategy, calibration=None, prepare_capture_constants=False):
    if strategy not in {"mlp_config", "static_shapes", "graph_replay"}:
        raise ValueError("Unknown paired strategy")
    if phase not in {"calibrate", "compare"} or (phase == "compare") != (calibration is not None):
        raise ValueError("Only compare requires a calibration report")
    command = [sys.executable, str(source / "model_import_adapters/scripts/benchmark_dynamic_shape_pair.py"),
               "--phase",phase,"--strategy",strategy,"--case",str(baseline_case),
               "--source",str(source),"--output",str(output)]
    if calibration is not None:
        command += ["--calibration",str(calibration)]
        if strategy == "mlp_config":
            command += ["--blocks","16","32"]
    if prepare_capture_constants:
        command += ["--prepare-capture-constants"]
    return command


def run_logged(cmd, stdout, stderr, env, timeout):
    if stdout.exists() or stderr.exists():
        raise FileExistsError("Immutable log path already exists")
    with stdout.open("wb") as out, stderr.open("wb") as err:
        child = subprocess.Popen(cmd, stdout=out, stderr=err, env=env)
        try:
            return child.wait(timeout=timeout)
        except subprocess.TimeoutExpired:
            child.terminate()
            try:
                child.wait(timeout=30)
            except subprocess.TimeoutExpired:
                child.kill(); child.wait()
            return 124


def main():
    import fcntl
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--accepted", type=Path, required=True)
    p.add_argument("--baseline-checkpoint", type=Path, required=True)
    p.add_argument("--baseline-audit", type=Path, required=True)
    p.add_argument("--wait-for-audit-job", type=Path,
                   help="Wait only while this exact audit command has a live /proc handle")
    p.add_argument("--pilots", type=Path, required=True)
    p.add_argument("--source", type=Path, required=True)
    p.add_argument("--output", type=Path, required=True)
    p.add_argument("--timeout", type=int, default=1800)
    p.add_argument("--max-attempts", type=int, default=3)
    p.add_argument("--cpu-affinity", type=int, nargs="+", help="Optional process-local affinity; never changes host settings")
    p.add_argument("--profile-shape", type=int, nargs=2, default=(1, 8))
    p.add_argument("--evaluate-candidate", action="store_true", help="Measure experimental blocks 16/32 after a ready model A/A")
    p.add_argument("--strategy", choices=("mlp_config","static_shapes","graph_replay"), default="mlp_config")
    p.add_argument("--prepare-capture-constants",action="store_true",help="Explicit preprocessing, fingerprinted in fresh A/A and A/B")
    p.add_argument("--max-consecutive-performance-failures", type=int, default=10)
    p.add_argument("--bootstrap-job", type=Path, help="Wait for this exact previous runner; adopt immutable terminal attempts, never restart it")
    p.add_argument("--prior-performance-results", type=Path, help="Negative-only observations for distinct-model streak; never reusable calibration or successes")
    p.add_argument("--min-free-gib", type=int, default=24)
    args = p.parse_args()
    if not 1 <= args.max_attempts <= 3 or args.timeout <= 0:
        p.error("Use at most three attempts and a positive timeout")
    if args.max_consecutive_performance_failures != 10:
        p.error("The user-defined nonacceptance threshold is ten distinct models")
    if not 1 <= args.min_free_gib <= 96:
        p.error("Use a positive free-memory threshold within the PPU capacity")
    if list(args.profile_shape) not in [[1,8],[2,24],[4,64],[2,8],[1,64]]:
        p.error("Profile only a frozen input shape")
    if args.cpu_affinity:
        if not set(args.cpu_affinity) <= os.sched_getaffinity(0):
            p.error("Requested CPU affinity is not permitted")
        os.sched_setaffinity(0, set(args.cpu_affinity))
    rows = {r["model_id"]: r for r in validate_scope(read(args.accepted))}
    pilots = read(args.pilots)
    ids = [r["model_id"] for r in pilots]
    if len(ids) != len(set(ids)) or not set(ids) <= set(rows):
        raise ValueError("Pilot scope not a unique subset of historical301")
    for row in pilots:
        if any(row[k] != rows[row["model_id"]][k] for k in ("revision", "task")):
            raise ValueError("Pilot revision/task drift")
    if args.wait_for_audit_job and not args.baseline_audit.exists():
        job = read(args.wait_for_audit_job)
        pid = job["pid"]
        command = job["command"]
        expected = [str(v).encode() for v in command]
        while True:
            if args.baseline_audit.exists():
                try:
                    read(args.baseline_audit)
                    break
                except json.JSONDecodeError:
                    pass  # Older prerequisite writers did not use atomic rename.
            proc = Path(f"/proc/{pid}")
            if (not proc.exists() or proc.joinpath("stat").read_text().split(") ", 1)[1].split()[0] == "Z"
                    or proc.joinpath("cmdline").read_bytes().split(b"\0")[:-1] != expected):
                raise RuntimeError("Exact prerequisite audit handle ended without a report; do not restart it implicitly")
            print(json.dumps({"status": "verified_wait", "audit_pid": pid}), flush=True)
            time.sleep(30)
    audit = read(args.baseline_audit)
    baseline = validate_baseline_scope(rows, read(args.baseline_checkpoint), audit,
                                       sha256(args.accepted), sha256(args.baseline_checkpoint))
    args.output.mkdir(parents=True, exist_ok=True)
    lock = (args.output / "campaign.lock").open("a")
    fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
    cp_path = args.output / "checkpoint.json"
    identity = {"accepted_sha256": sha256(args.accepted), "baseline_audit_sha256": sha256(args.baseline_audit),
                "baseline_checkpoint_sha256": sha256(args.baseline_checkpoint),
                "source_baseline_sha256": sha256(args.source / "source-baseline.json"), "model_ids": ids,
                "physical_device": os.environ.get("CUDA_VISIBLE_DEVICES"), "timeout": args.timeout, "max_attempts": args.max_attempts,
                "cpu_affinity": sorted(os.sched_getaffinity(0)), "profile_shape": list(args.profile_shape),
                "evaluate_candidate": args.evaluate_candidate, "strategy":args.strategy, "performance_failure_limit": 10,
                "prepare_capture_constants":args.prepare_capture_constants,
                "prior_performance_sha256": sha256(args.prior_performance_results) if args.prior_performance_results else None,
                "min_free_gib": args.min_free_gib}
    if cp_path.exists():
        state = read(cp_path)
        if state["identity"] != identity:
            raise ValueError("Campaign identity changed; use a new output directory")
    else:
        state = {"identity": identity, "status": "running", "records": [], "started_at": time.time()}
        if args.bootstrap_job:
            previous = read(args.bootstrap_job)
            command = previous["command"]
            previous_root = Path(command[command.index("--output") + 1])
            proc = Path(f"/proc/{previous['pid']}")
            while proc.exists() and proc.joinpath("stat").read_text().split(") ", 1)[1].split()[0] != "Z":
                if proc.joinpath("cmdline").read_bytes().split(b"\0")[:-1] != [str(x).encode() for x in command]:
                    raise RuntimeError("Bootstrap PID identity changed; inspect instead of restart")
                print(json.dumps({"status":"verified_wait", "bootstrap_pid":previous["pid"]}), flush=True)
                time.sleep(30)
            old = read(previous_root / "checkpoint.json")
            if old["status"] not in {"completed", "unstable_baseline"}:
                raise ValueError("Bootstrap runner is not a clean terminal calibration result")
            if (old["identity"]["accepted_sha256"] != identity["accepted_sha256"]
                    or old["identity"]["baseline_audit_sha256"] != identity["baseline_audit_sha256"]
                    or old["identity"]["physical_device"] != identity["physical_device"]
                    or old["identity"]["cpu_affinity"] != identity["cpu_affinity"]):
                raise ValueError("Bootstrap measurement identity drift")
            for item in old["records"]:
                if item["model_id"] not in rows or item["status"] not in {"calibrated","unstable_baseline"}:
                    raise ValueError("Bootstrap contains an invalid/incomplete attempt")
                path = Path(item["case"]) / "report.json"
                if sha256(path) != item["report_sha256"]:
                    raise ValueError("Bootstrap report hash drift")
                result = read(path)
                validate_calibrated_child(rows[item["model_id"]], result, require_ready=item["status"]=="calibrated")
                if result["identity"]["script_sha256"] != sha256(args.source / "model_import_adapters/scripts/benchmark_dynamic_shape_pair.py"):
                    raise ValueError("Bootstrap model driver changed; use fresh calibration")
                if any(sha256(args.source / name) != digest for name,digest in result["identity"]["source_files"].items()):
                    raise ValueError("Bootstrap runtime source identity changed")
            state.update(records=old["records"], bootstrap_checkpoint=str(previous_root / "checkpoint.json"),
                         bootstrap_checkpoint_sha256=sha256(previous_root / "checkpoint.json"))
        if args.prior_performance_results:
            for entry in read(args.prior_performance_results):
                model=entry["model_id"]
                if model not in ids:
                    raise ValueError("Prior negative model outside the requested set")
                path=Path(entry["report"])
                if sha256(path)!=entry["sha256"]:
                    raise ValueError("Prior negative observation hash drift")
                result=read(path)
                validate_calibrated_child(rows[model],result,require_ready=False)
                if (result["status"]!="unstable_baseline" or all(p["gate"]["ready"] for p in result["probes"])
                        or result["identity"]["baseline_report_sha256"]!=sha256(Path(baseline[model]["case"])/"report.json")
                        or result["identity"]["script_sha256"]!=sha256(args.source/"model_import_adapters/scripts/benchmark_dynamic_shape_pair.py")
                        or any(sha256(args.source/name)!=digest for name,digest in result["identity"]["source_files"].items())):
                    raise ValueError("Only compatible, genuinely failed A/A observations may seed the negative ledger")
                state.setdefault("prior_negative_observations",[]).append(entry)
                record_performance_outcome(state,model,"measurement_unstable",
                                           "prior saved failed A/A; distinct-model counter only, never comparable calibration",10)
    if state.get("status") == "method_implementation_blocked":
        return 2
    state.update(runner_pid=os.getpid(), status="running")
    checkpoint(cp_path, state)
    for model in ids:
        if any(x["model_id"] == model for x in state.get("model_outcomes", [])):
            continue
        resource_cmd=[sys.executable,"-c","import torch,json;print(json.dumps({'device':torch.cuda.get_device_name(0),'free_bytes':torch.cuda.mem_get_info(0)[0],'total_bytes':torch.cuda.mem_get_info(0)[1]}))"]
        resource=subprocess.run(resource_cmd,capture_output=True,text=True,timeout=120)
        resource_path=args.output/(model_slug(model)+".resource-preflight.json")
        resource_path.write_text(json.dumps({"command":resource_cmd,"exit_code":resource.returncode,
                                            "stdout":resource.stdout,"stderr":resource.stderr},indent=2)+"\n")
        free=json.loads(resource.stdout)["free_bytes"] if resource.returncode==0 else 0
        if free < args.min_free_gib*1024**3:
            state.update(status="resource_blocked",failure_model=model,failure_stage="device_resources",
                         resource_preflight=str(resource_path),current_model=None)
            checkpoint(cp_path,state)
            return 75
        prior = [r for r in state["records"] if r["model_id"] == model]
        calibrated = [r for r in prior if r["status"] == "calibrated"]
        if prior and prior[-1]["status"] == "running":
            pid = prior[-1].get("pid")
            stat = Path(f"/proc/{pid}/stat")
            if pid and stat.exists() and stat.read_text().split(") ", 1)[1].split()[0] != "Z":
                raise RuntimeError(f"Previous child {pid} still exists; observe it rather than restart")
            prior[-1]["status"] = "interrupted_child_missing"
            checkpoint(cp_path, state)
        if prior and prior[-1]["status"] not in {"unstable_baseline", "running", "calibrated"}:
            state.update(status="needs_attention", failure_model=model)
            checkpoint(cp_path, state)
            return 1
        record = calibrated[-1] if calibrated else None
        for attempt in (() if calibrated else range(len(prior) + 1, args.max_attempts + 1)):
            case = args.output / "cases" / f"{model_slug(model)}-attempt{attempt}"
            case.parent.mkdir(exist_ok=True)
            cmd = phase_command(args.source,baseline[model]["case"],case,
                                phase="calibrate",strategy=args.strategy,prepare_capture_constants=args.prepare_capture_constants)
            stdout = case.parent / (case.name + ".stdout.log")
            stderr = case.parent / (case.name + ".stderr.log")
            if stdout.exists() or stderr.exists() or case.exists():
                raise ValueError("Immutable attempt path already exists")
            record = {"model_id": model, "case": str(case), "attempt": attempt, "status": "running", "command": cmd,
                      "stdout": str(stdout), "stderr": str(stderr), "started_at": time.time()}
            state["records"].append(record)
            state["current_model"] = model
            checkpoint(cp_path, state)
            env = dict(os.environ, TORCH_LOGS="recompiles,graph_breaks")
            with stdout.open("wb") as out, stderr.open("wb") as err:
                child = subprocess.Popen(cmd, stdout=out, stderr=err, env=env)
                record["pid"] = child.pid
                checkpoint(cp_path, state)
                try:
                    exit_code = child.wait(timeout=args.timeout)
                except subprocess.TimeoutExpired:
                    # Only this newly-created attempt is terminated, never an
                    # existing container or unrelated process.
                    child.terminate()
                    try:
                        child.wait(timeout=30)
                    except subprocess.TimeoutExpired:
                        child.kill(); child.wait()
                    exit_code = 124
            report_path = case / "report.json"
            result = read(report_path) if report_path.exists() else {}
            status = result.get("status", "failed")
            if exit_code == 124:
                status = "timeout"
            if exit_code != 0 and status == "calibrated":
                status = "failed"
            if status == "calibrated":
                try:
                    validate_calibrated_child(rows[model], result)
                except ValueError as exc:
                    status = "failed"
                    result["error"] = str(exc)
            record.update(status=status, exit_code=exit_code, finished_at=time.time(), error=result.get("error"),
                          report_sha256=sha256(report_path) if report_path.exists() else None)
            (case.parent / (case.name + ".exit-code.txt")).write_text(str(exit_code) + "\n")
            checkpoint(cp_path, state)
            print(json.dumps({"model_id": model, "status": status, "attempt": attempt}), flush=True)
            if status == "calibrated":
                break
            if status != "unstable_baseline":
                resource_error="CUDA out of memory" in (str(result.get("error",""))+stderr.read_text(errors="replace"))
                state.update(status="resource_blocked" if resource_error else "needs_attention", current_model=None, failure_model=model,
                             failure_stage="device_resources" if resource_error else "compile_or_correctness")
                checkpoint(cp_path, state)
                return 1
        if record is None or record["status"] != "calibrated":
            blocked = record_performance_outcome(state, model, "measurement_unstable", "A/A noise gate failed after at most three immutable attempts", 10)
            checkpoint(cp_path, state)
            if blocked:
                return 2
            continue
        case = Path(record["case"])
        env = dict(os.environ, TORCH_LOGS="recompiles,graph_breaks")
        if record.get("profile_exit_code") is None:
            profile_cmd = [sys.executable, str(args.source / "model_import_adapters/scripts/profile_accepted_text_case.py"),
                           "--case", baseline[model]["case"], "--source", str(args.source),
                           "--output", str(case / "profile"), "--batch", str(args.profile_shape[0]),
                           "--sequence", str(args.profile_shape[1])]
            record["profile_command"] = profile_cmd
            record["profile_exit_code"] = run_logged(profile_cmd, case/"profile.stdout.log",case/"profile.stderr.log",env,args.timeout)
            if record["profile_exit_code"] == 0:
                record["profile_report_sha256"] = sha256(case / "profile/report.json")
            checkpoint(cp_path, state)
        if record["profile_exit_code"] != 0:
            state.update(status="needs_attention", failure_model=model, failure_stage="diagnostic_profile")
            checkpoint(cp_path, state)
            return 1
        outcome, reason = "calibration_ready", "A/A ready; no candidate test requested, not a performance success"
        if args.evaluate_candidate:
            output = case / ("candidate-16-32" if args.strategy=="mlp_config" else "candidate-"+args.strategy)
            cmd = phase_command(args.source,baseline[model]["case"],output,
                                phase="compare",strategy=args.strategy,calibration=case/"report.json",prepare_capture_constants=args.prepare_capture_constants)
            if record.get("candidate_exit_code") is None:
                record["candidate_command"] = cmd
                record["candidate_exit_code"] = run_logged(cmd,case/"candidate.stdout.log",case/"candidate.stderr.log",env,args.timeout)
                if (output/"report.json").exists():
                    record["candidate_report_sha256"] = sha256(output/"report.json")
                checkpoint(cp_path,state)
            if record["candidate_exit_code"] != 0:
                state.update(status="needs_attention",failure_model=model,failure_stage="candidate_compile_or_correctness")
                checkpoint(cp_path,state)
                return 1
            result = read(output/"report.json")
            validate_calibrated_child(rows[model],result)
            outcome, reason = candidate_outcome(result)
        blocked = record_performance_outcome(state,model,outcome,reason,10)
        checkpoint(cp_path,state)
        print(json.dumps({"model_id":model,"performance_outcome":outcome,"reason":reason,
                          "consecutive_nonacceptance":state["consecutive_performance_nonacceptance"]}),flush=True)
        if blocked:
            return 2
    state.update(status="completed", current_model=None, finished_at=time.time(),
                 calibrated_models=len({r["model_id"] for r in state["records"] if r["status"] == "calibrated"}))
    checkpoint(cp_path, state)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
