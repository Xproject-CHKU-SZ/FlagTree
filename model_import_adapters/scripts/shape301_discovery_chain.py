"""Serial original301 discovery extensions using the frozen existing controller.

No model execution in this controller. A real terminal wait, full existing-wave
audit and the original performance stop ledger remain mandatory per extension.
"""
import json
import os
from pathlib import Path
import subprocess
import sys
import time
import traceback

from continue_shape301_wave import inspect_handle, read, save, sha, validate_wave_plan
from run_scene_optimization_campaign import validate_scope

ENDPOINTS = (150, 200, 250, 275, 301)


def planned_prefixes(accepted, models, plan, accepted_sha, previous_models):
    rows = {row["model_id"]: row for row in validate_scope(accepted)}
    ids = [row["model_id"] for row in models]
    validate_wave_plan(plan, ids, accepted_sha)
    if len(models) != 301 or any(any(row[key] != rows[row["model_id"]][key] for key in ("revision", "task")) for row in models):
        raise ValueError("Exact full301 ordered model/revision/task scope required")
    if len(previous_models) != 100 or models[:100] != previous_models:
        raise ValueError("Chain begins only after the explicit original100 prefix")
    result = [models[:end] for end in ENDPOINTS]
    sizes = [100] + [len(prefix) for prefix in result]
    if any(not 1 <= b - a <= 50 for a, b in zip(sizes, sizes[1:])) or sizes[-1] != 301:
        raise ValueError("Every extension must add1--50 models and end at301")
    return result


def validate_owner(command, args):
    for flag, expected in (("--accepted", args.accepted), ("--source", args.source),
                           ("--wave-plan", args.wave_plan), ("--controller-output", args.previous_controller.parent)):
        if command.count(flag) != 1 or Path(command[command.index(flag) + 1]) != expected:
            raise ValueError("Existing controller command/source/scope ownership drift")
    if (len(command) < 2 or Path(command[1]) != args.source / "model_import_adapters/scripts/continue_shape301_wave.py"
            or command.count("--models") != 1):
        raise ValueError("Expected the exact existing frozen100 discovery controller")
    return Path(command[command.index("--models") + 1])


def next_command(python, source, accepted, models, wave_plan, previous_controller, output, controller_output):
    return [python, str(source / "model_import_adapters/scripts/continue_shape301_wave.py"),
            "--accepted", str(accepted), "--models", str(models), "--source", str(source),
            "--wave-plan", str(wave_plan), "--previous-controller", str(previous_controller),
            "--output", str(output), "--controller-output", str(controller_output)]


def validate_terminal_controller(report, command):
    if (report.get("status") != "completed" or report.get("child_exit_code") != 0
            or not isinstance(report.get("child_pid"), int) or report["child_pid"] <= 0
            or not isinstance(report.get("command"), list)):
        raise ValueError("Existing discovery child wait() exit0 and completed controller required")
    for flag in ("--accepted", "--source", "--output"):
        if command.count(flag) != 1 or report["command"].count(flag) != 1:
            raise ValueError("Controller/child command provenance incomplete")
        if command[command.index(flag) + 1] != report["command"][report["command"].index(flag) + 1]:
            raise ValueError("Controller's child scope/output differs from requested extension")


def run_chain(args):
    args.controller_output.mkdir(parents=True, exist_ok=False)
    progress = {"status": "checking", "started_at": time.time(), "scope": "complete original301 discovery, not final release",
                "historical_scope": 301, "model_runtime_source": str(args.source), "records": [],
                "controller_sha256": sha(__file__), "final_C1_accepted": False, "cpu_model_forward": "not_run"}
    save(args.controller_output / "command.json", [sys.executable, *sys.argv])
    def persist():
        save(args.controller_output / "progress.json", progress)
    persist()
    try:
        owner = read(args.chain_after)
        old_models_path = validate_owner(owner["command"], args)
        prefixes = planned_prefixes(read(args.accepted), read(args.models), read(args.wave_plan), sha(args.accepted), read(old_models_path))
        pinned = {str(path): sha(path) for path in (args.accepted, args.models, args.wave_plan, args.chain_after,
                  old_models_path, args.source / "source-baseline.json")}
        progress.update(pinned_inputs=pinned, endpoints=list(ENDPOINTS), previous_controller_pid=owner["pid"]); persist()
        for relative, digest in read(args.source / "source-baseline.json")["files"].items():
            if sha(args.source / relative) != digest:
                raise ValueError("Frozen measured discovery source changed")
        birth = None
        while True:
            if any(sha(path) != digest for path, digest in pinned.items()):
                raise ValueError("Pinned chain input changed while observing prerequisite")
            handle = inspect_handle("/proc", owner["pid"], owner["command"], birth)
            if handle["state"] == "live":
                birth = handle["start_ticks"]; progress.update(status="verified_wait", previous_controller_start_ticks=birth,
                                                               previous_wait_handle=handle); persist(); time.sleep(30); continue
            if handle["state"] != "terminal" or birth is None or handle["exit_code"] != 0:
                raise ValueError("Existing100 controller terminal exit0 not observed; no inferred completion or restart")
            progress.update(previous_observed_exit_code=0, previous_controller_report_sha256=sha(args.previous_controller.parent / "report.json"))
            validate_terminal_controller(read(args.previous_controller.parent / "report.json"), owner["command"])
            break
        args.output.mkdir(parents=True, exist_ok=False)
        prior = args.previous_controller
        for prefix in prefixes:
            if any(sha(path) != digest for path, digest in pinned.items()):
                raise ValueError("Pinned chain inputs changed before next extension")
            if os.statvfs(args.output).f_bavail * os.statvfs(args.output).f_frsize < 20 * 1024**3:
                raise ValueError("Less than20GiB free; evidence untouched")
            count = len(prefix); models_path = args.output / f"models-{count}.json"
            with models_path.open("x", encoding="utf8") as file:
                json.dump(prefix, file, indent=2)
            command = next_command(sys.executable, args.source, args.accepted, models_path, args.wave_plan, prior,
                                   args.output / f"wave-{count}", args.controller_output / f"wave-{count}")
            row = {"cumulative_scope": count, "new_models": count - (100 if not progress["records"] else progress["records"][-1]["cumulative_scope"]),
                   "command": command, "models_sha256": sha(models_path), "started_at": time.time(),
                   "inherited_evidence_is_not_new_runs": True}
            progress["records"].append(row); progress.update(status="running", current_cumulative_scope=count); persist()
            with (args.controller_output / f"wave-{count}.stdout.log").open("xb") as stdout, \
                 (args.controller_output / f"wave-{count}.stderr.log").open("xb") as stderr:
                child = subprocess.Popen(command, stdout=stdout, stderr=stderr)
                row["pid"] = child.pid; persist(); row["exit_code"] = child.wait()
            row["finished_at"] = time.time(); persist()
            if row["exit_code"] != 0:
                raise ValueError(f"Discovery extension{count} stopped with exit{row['exit_code']}; no later prefix started")
            prior = args.controller_output / f"wave-{count}/progress.json"
            terminal_path = prior.parent / "report.json"
            validate_terminal_controller(read(terminal_path), command)
            row.update(status="completed", controller_report_sha256=sha(terminal_path)); persist()
        progress.update(status="completed_discovery_not_final_release", current_cumulative_scope=301)
    except Exception as exc:
        progress.update(status="needs_attention", error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    progress["finished_at"] = time.time(); persist(); save(args.controller_output / "report.json", progress)
    print(json.dumps(progress), flush=True)
    return 0 if progress["status"] == "completed_discovery_not_final_release" else 1
