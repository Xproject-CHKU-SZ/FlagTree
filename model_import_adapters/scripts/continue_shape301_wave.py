#!/usr/bin/env python3
"""Continue an audited discovery wave without restarting it or resetting its ledger.

The measured runtime remains frozen. Only the controller and enrollment scope
change; inherited cases keep their original paths, hashes and measurement IDs.
This is candidate discovery, never final PolicyReplayRouter acceptance.
"""
import argparse
import copy
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import time
import traceback

from run_scene_optimization_campaign import validate_scope


def read(path):
    return json.loads(Path(path).read_text(encoding="utf-8"))


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def save(path, value):
    temporary = path.with_suffix(".tmp")
    temporary.write_text(json.dumps(value, indent=2, allow_nan=False) + "\n", encoding="utf-8")
    os.replace(temporary, path)


def validate_transition(accepted, previous, next_rows, accepted_sha, source_sha):
    indexed = {x["model_id"]: x for x in validate_scope(accepted)}
    old_ids = previous["identity"]["model_ids"]
    ids = [x["model_id"] for x in next_rows]
    if (len(old_ids) != len(set(old_ids)) or len(ids) != len(set(ids))
            or ids[:len(old_ids)] != old_ids or not set(ids) <= set(indexed)
            or not 1 <= len(ids) - len(old_ids) <= 50):
        raise ValueError("Continuation requires an unchanged prefix and 1--50 new historical IDs")
    for row in next_rows:
        if any(row[k] != indexed[row["model_id"]][k] for k in ("revision", "task")):
            raise ValueError("Continuation revision/task drift")
    identity = previous["identity"]
    if (identity["accepted_sha256"] != accepted_sha
            or identity["source_baseline_sha256"] != source_sha
            or identity.get("strategy") != "graph_replay"
            or identity.get("evaluate_candidate") is not True
            or identity.get("performance_failure_limit") != 10):
        raise ValueError("Measured implementation or historical scope drift")
    if previous["status"] != "completed":
        raise ValueError("Previous wave is not completed; do not bypass its stop condition")
    outcomes = previous.get("model_outcomes", [])
    if ([x["model_id"] for x in outcomes] != old_ids
            or any(x["outcome"] not in {"passed", "not_met"} for x in outcomes)):
        raise ValueError("Complete audited discovery required; unstable/unknown models remain unresolved")
    records = {x["model_id"]: x for x in previous["records"] if x.get("candidate_exit_code") == 0}
    if set(records) != set(old_ids) or any(
            x.get("status") != "calibrated" or x.get("exit_code") != 0 or x.get("profile_exit_code") != 0
            for x in records.values()):
        raise ValueError("Missing successful calibration, profile or candidate execution")
    streak = 0
    for row in reversed(outcomes):
        if row["outcome"] == "passed":
            break
        streak += 1
    if streak >= 10 or previous.get("consecutive_performance_nonacceptance") != streak:
        raise ValueError("Continuous distinct-model performance stop ledger mismatch")
    return ids


def seed_checkpoint(previous, ids, provenance):
    result = copy.deepcopy(previous)
    result["identity"]["model_ids"] = list(ids)
    for key in ("runner_pid", "finished_at", "failure_model", "failure_stage"):
        result.pop(key, None)
    result.update(status="running", current_model=None, started_at=time.time(),
                  continuation=copy.deepcopy(provenance))
    # Never reset outcomes/streak or relabel inherited measurements as new runs.
    return result


def validate_wave_plan(plan, ids, accepted_sha):
    ordered = [model for wave in plan["waves"] for model in wave["new_model_ids"]]
    if (plan.get("scope_sha256") != accepted_sha or len(ordered) != 301
            or len(set(ordered)) != 301 or ids != ordered[:len(ids)]):
        raise ValueError("Continuation deviates from the original frozen historical301 wave order")


def inspect_handle(proc_root, pid, command, start_ticks=None):
    proc = Path(proc_root) / str(pid)
    try:
        fields = (proc / "stat").read_text().split(") ", 1)[1].split()
        birth = int(fields[19])
        if start_ticks is not None and birth != start_ticks:
            raise ValueError("Previous PID reused; do not infer completion")
        if fields[0] == "Z":
            return {"state": "terminal", "start_ticks": birth,
                    "exit_code": os.waitstatus_to_exitcode(int(fields[49]))}
        actual = (proc / "cmdline").read_bytes().split(b"\0")[:-1]
        if actual != [str(x).encode() for x in command]:
            raise ValueError("Previous command changed; do not restart or adopt it")
        again = (proc / "stat").read_text().split(") ", 1)[1].split()
        if int(again[19]) != birth:
            raise ValueError("Previous process changed during observation")
        return {"state": "live", "start_ticks": birth, "exit_code": None}
    except FileNotFoundError:
        return {"state": "missing", "start_ticks": start_ticks, "exit_code": None}


def continuation_command(previous_command, source, models, output):
    command = list(previous_command)
    expected = str(source / "model_import_adapters/scripts/run_shape301_calibration.py")
    if len(command) < 2 or command[1] != expected or command[0] != sys.executable:
        raise ValueError("Unexpected frozen discovery runner")
    if command[command.index("--source") + 1] != str(source):
        raise ValueError("Continuation source argument drift")
    for flag, value in (("--pilots", models), ("--output", output)):
        if command.count(flag) != 1:
            raise ValueError("Missing/duplicate continuation argument")
        command[command.index(flag) + 1] = str(value)
    return command


def main():
    p = argparse.ArgumentParser(description=__doc__)
    for name in ("accepted", "models", "source", "wave-plan", "previous-controller", "output", "controller-output"):
        p.add_argument("--" + name, type=Path, required=True)
    p.add_argument("--chain-after", type=Path, help="Observe this existing controller job then execute every remaining original301 prefix sequentially")
    args = p.parse_args()
    if args.chain_after:
        from shape301_discovery_chain import run_chain
        return run_chain(args)
    args.controller_output.mkdir(parents=True, exist_ok=False)
    progress_path = args.controller_output / "progress.json"
    progress = {"status": "checking", "started_at": time.time(), "child_pid": None,
                "scope": "cumulative historical301 discovery, not final release",
                "controller_sha256": sha(__file__)}
    save(args.controller_output / "command.json", [sys.executable, *sys.argv])
    save(progress_path, progress)
    try:
        pinned = {str(path): sha(path) for path in (
            args.accepted, args.models, args.wave_plan, args.source / "source-baseline.json")}
        progress["pinned_inputs"] = pinned
        prior_control = read(args.previous_controller)
        pid, command = prior_control["child_pid"], prior_control["command"]
        previous_output = Path(command[command.index("--output") + 1])
        birth = None
        while True:
            handle = inspect_handle("/proc", pid, command, birth)
            if handle["state"] == "live":
                birth = handle["start_ticks"]
                progress.update(status="verified_wait", prerequisite_pid=pid, prerequisite_start_ticks=birth)
                save(progress_path, progress)
                time.sleep(30)
                continue
            if handle["state"] == "terminal" and birth is not None:
                exit_code = handle["exit_code"]
            else:
                # Missing /proc is not success: require the owning controller's
                # persisted wait() result for the identical child and command.
                owner = read(args.previous_controller)
                if owner.get("child_pid") != pid or owner.get("command") != command:
                    raise ValueError("Previous owner identity changed")
                exit_code = owner.get("child_exit_code")
            if exit_code != 0:
                raise ValueError(f"Previous terminal exit is not proven successful: {exit_code}")
            break
        if any(sha(path) != digest for path, digest in pinned.items()):
            raise ValueError("Frozen continuation input changed while waiting")
        previous_path = previous_output / "checkpoint.json"
        previous_hash = sha(previous_path)
        previous = read(previous_path)
        source_manifest = args.source / "source-baseline.json"
        ids = validate_transition(read(args.accepted), previous, read(args.models),
                                  sha(args.accepted), sha(source_manifest))
        validate_wave_plan(read(args.wave_plan), ids, sha(args.accepted))
        for relative, digest in read(source_manifest)["files"].items():
            if sha(args.source / relative) != digest:
                raise ValueError(f"Frozen source drift: {relative}")
        audit_path = args.controller_output / "prerequisite-audit.json"
        audit_cmd = [sys.executable, str(args.source / "model_import_adapters/scripts/audit_replay_campaign.py"),
                     "--accepted", str(args.accepted), "--checkpoint", str(previous_path), "--output", str(audit_path)]
        with (args.controller_output / "audit.stdout.log").open("xb") as out, \
                (args.controller_output / "audit.stderr.log").open("xb") as err:
            audit_code = subprocess.run(audit_cmd, stdout=out, stderr=err).returncode
        audit = read(audit_path)
        expected_outcomes = {x["model_id"]: x["outcome"] for x in previous["model_outcomes"]}
        if (audit_code != 0 or audit["status"] != "passed" or audit["errors"]
                or audit["audited_models"] != len(previous["identity"]["model_ids"])
                or audit["checkpoint_sha256_at_read"] != previous_hash
                or sha(previous_path) != previous_hash
                or {x["model_id"]: x["candidate_outcome"] for x in audit["models"]} != expected_outcomes
                or any(x["source"] != str(args.source) for x in audit["models"])):
            raise ValueError("Independent whole previous-wave audit failed or changed")
        physical = previous["identity"]["physical_device"]
        lines = subprocess.check_output(["nvidia-smi", "--query-gpu=index,memory.used,utilization.gpu",
                                         "--format=csv,noheader,nounits"], text=True).splitlines()
        selected = next(x.split(",") for x in lines if x.split(",")[0].strip() == physical)
        if int(selected[1]) >= 1000 or int(selected[2]) != 0:
            raise ValueError("Selected PPU still occupied; no existing process is stopped")
        new_command = continuation_command(command, args.source, args.models, args.output)
        args.output.mkdir(parents=True, exist_ok=False)
        provenance = {"previous_checkpoint": str(previous_path), "previous_checkpoint_sha256": previous_hash,
                      "prerequisite_audit_sha256": sha(audit_path), "controller_sha256": sha(__file__),
                      "inherited_models": len(previous["identity"]["model_ids"]),
                      "inherited_cases_are_not_new_runs": True, "models_sha256": sha(args.models)}
        save(args.output / "checkpoint.json", seed_checkpoint(previous, ids, provenance))
        progress.update(status="starting", command=new_command, continuation=provenance)
        save(progress_path, progress)
        with (args.controller_output / "campaign.stdout.log").open("xb") as out, \
                (args.controller_output / "campaign.stderr.log").open("xb") as err:
            child = subprocess.Popen(new_command, stdout=out, stderr=err,
                                     env=dict(os.environ, CUDA_VISIBLE_DEVICES=physical))
            progress.update(status="running", child_pid=child.pid)
            save(progress_path, progress)
            code = child.wait()
        progress.update(status="completed" if code == 0 else "needs_attention", child_exit_code=code)
    except Exception as exc:
        progress.update(status="needs_attention", error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    progress["finished_at"] = time.time()
    save(progress_path, progress)
    save(args.controller_output / "report.json", progress)
    print(json.dumps(progress), flush=True)
    return 0 if progress["status"] == "completed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
