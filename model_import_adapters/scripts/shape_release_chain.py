"""Serial release extensions to the original301, reusing frozen measured code.

The controller does not execute models. Actual children use the existing paired,
functional and independent-audit pipeline, never a synthetic acceptance status.
"""
import json
import os
from pathlib import Path
import subprocess
import sys
import time
import traceback

from audit_shape_release_wave import audit_wave
from continue_shape301_wave import inspect_handle
from release_terminal_proof import observe_release_predecessor
from run_shape_release_wave import read, save, sha, validate_wave
from run_scene_optimization_campaign import validate_scope

ENDPOINTS = (100, 150, 200, 250, 275, 301)


def validate_plan(plan, accepted, models, previous_models):
    rows = {row["model_id"]: row for row in validate_scope(accepted)}
    ids = [row["model_id"] for row in models]
    if (len(ids) != 301 or len(set(ids)) != 301 or set(ids) != set(rows)
            or len(previous_models) not in (50,*ENDPOINTS[:-1]) or models[:len(previous_models)] != previous_models
            or any(any(row[key] != rows[row["model_id"]][key] for key in ("revision", "task")) for row in models)):
        raise ValueError("Exact original301 and unchanged explicit first50 release rows required")
    if (plan.get("schema") != "shape301-release-chain-v1"
            or [row["scope"] for row in plan["stages"]] != [n for n in ENDPOINTS if n>len(previous_models)]):
        raise ValueError("Release scopes must be100/150/200/250/275/301")
    return [models[:end] for end in ENDPOINTS if end>len(previous_models)]


def observe_owned_launch(child, command, timeout=10.0):
    """Allow only the same just-created child's short fork/exec observation gap."""
    birth=int((Path('/proc')/str(child.pid)/'stat').read_text().split(') ',1)[1].split()[19])
    deadline=time.monotonic()+timeout
    while True:
        try:
            observed=inspect_handle('/proc',child.pid,command,birth)
            if observed['state']!='live':
                raise ValueError('Owned launch became terminal/missing before its expected command was observed')
            return observed
        except ValueError as exc:
            if str(exc)!='Previous command changed; do not restart or adopt it' or time.monotonic()>=deadline:
                raise
            time.sleep(0.02)


def discovery_job(checkpoint, owner, model_ids, source, output):
    if checkpoint["identity"]["model_ids"] != model_ids:
        raise ValueError("Discovery stage differs from the exact requested release prefix")
    command = owner.get("command")
    if not isinstance(owner.get("child_pid"), int) or not isinstance(command, list):
        return None
    for flag, expected in (("--source", source), ("--output", output)):
        if command.count(flag) != 1 or Path(command[command.index(flag) + 1]) != expected:
            raise ValueError("Discovery owner child command/source/output mismatch")
    if owner.get("status") not in {"running", "completed"} or owner.get("child_exit_code", 0) != 0:
        raise ValueError("Discovery controller stopped; no unverified next-stage adoption")
    return {"pid": owner["child_pid"], "command": command,
            "scope": "actual discovery child from its owning controller, not a new execution"}


def peek_owned_exit(child):
    # WNOWAIT is a real waitid terminal observation. Preserve the zombie until
    # the next frozen verifier observes its PID/birth/exit0 itself. Reap all
    # owned handles with wait() at the end, including error paths.
    info = os.waitid(os.P_PID, child.pid, os.WEXITED | os.WNOWAIT)
    return info.si_status if info.si_code == os.CLD_EXITED else -info.si_status


def require_closed_wave(audit, count):
    if (audit.get("status") != "passed" or audit.get("wave_closure_complete") is not True
            or audit.get("audited_records") != count or audit.get("validated_models") != count
            or audit.get("errors") or audit.get("pending_retention_models") or audit.get("pending_wave_models")):
        raise ValueError("Previous release wave is not independently closed; no next prefix launched")


def release_command(python, helper, args, models, checkpoint, discovery, previous_wave, previous_job, output):
    return [python, str(helper / "model_import_adapters/scripts/run_shape_release_wave.py"),
            "--accepted", str(args.accepted), "--models", str(models),
            "--discovery-source", str(args.discovery_source), "--source", str(args.source),
            "--discovery-checkpoint", str(checkpoint), "--discovery-job", str(discovery),
            "--runtime", str(args.runtime), "--previous-wave", str(previous_wave),
            "--previous-job", str(previous_job), "--output", str(output)]


def initial_resolution(plan, previous_count, initial_count):
    """Use explicitly selected B0 evidence only for this chain's initial prefix."""
    if previous_count != initial_count or not plan.get("previous_resolution"):
        return None
    return Path(plan["previous_resolution"])


def initial_terminal_receipt(plan, previous_count, initial_count):
    """A captured receipt belongs only to the explicit initial completed prefix."""
    if previous_count != initial_count or not plan.get("previous_terminal_receipt"):
        return None
    return Path(plan["previous_terminal_receipt"])


def run_chain(args):
    args.output.mkdir(parents=True, exist_ok=False)
    progress = {"status": "checking", "started_at": time.time(), "records": [], "scope": "remaining original301 release verification, not final301 certification",
                "cpu_model_forward": "not_run", "final_C1_accepted": False, "controller_sha256": sha(__file__),
                "physical_device": os.environ.get("CUDA_VISIBLE_DEVICES"), "cpu_affinity": sorted(os.sched_getaffinity(0))}
    save(args.output / "command.json", [sys.executable, *sys.argv])
    def persist():
        save(args.output / "progress.json", progress)
    persist(); owned = []
    try:
        plan = read(args.chain_plan); previous_wave = Path(plan["previous_wave"]); previous_job_path = Path(plan["previous_job"])
        helper = Path(plan["helper_source"])
        previous_command = read(previous_wave / "command.json")
        old_models = Path(previous_command[previous_command.index("--models") + 1])
        accepted, models = read(args.accepted), read(args.models)
        prefixes = validate_plan(plan, accepted, models, read(old_models))
        pinned = {str(path): sha(path) for path in (args.accepted, args.models, args.runtime, args.chain_plan, old_models,
                  args.source / "source-baseline.json", args.discovery_source / "source-baseline.json", helper / "source-baseline.json")}
        progress.update(pinned_inputs=pinned, endpoints=[len(prefix) for prefix in prefixes]); persist()
        for source in (args.source, args.discovery_source, helper):
            for name, digest in read(source / "source-baseline.json")["files"].items():
                if sha(source / name) != digest:
                    raise ValueError("Frozen source changed before release chain")
        previous_count = len(read(old_models)); initial_count = previous_count
        for prefix, stage in zip(prefixes, plan["stages"]):
            if any(sha(name) != digest for name, digest in pinned.items()):
                raise ValueError("Pinned release chain inputs changed")
            job = read(previous_job_path)
            receipt = initial_terminal_receipt(plan, previous_count, initial_count)
            receipt_sha = sha(receipt) if receipt else None
            job_sha = sha(previous_job_path)
            while True:
                if sha(previous_job_path) != job_sha or (receipt and sha(receipt) != receipt_sha):
                    raise ValueError("Selected release job/terminal proof changed")
                handle = observe_release_predecessor(job, previous_wave, receipt)
                if handle["state"] == "live":
                    progress.update(status="verified_wait_release", waiting_pid=job["pid"], wait_handle=handle, next_scope=len(prefix))
                    persist(); time.sleep(30); continue
                if handle["state"] != "terminal" or handle["exit_code"] != 0:
                    raise ValueError("Previous release real terminal exit0 not observed; no inferred success")
                break
            pinned.update(handle.get("terminal_proof_files", {}))
            pinned[str(previous_job_path)] = job_sha
            if receipt:
                progress["previous_terminal_proof"] = {"path": str(receipt), "sha256": receipt_sha,
                                                       "observation": handle}
                persist()
            old_command = read(previous_wave / "command.json")
            if old_command != job["command"]:
                raise ValueError("Observed terminal release is not the selected previous wave")
            old_models_path = Path(old_command[old_command.index("--models") + 1])
            audited = audit_wave(previous_wave, args.accepted, old_models_path)
            resolution=initial_resolution(plan,previous_count,initial_count)
            if resolution:
                from retention_resolution import resolve_previous
                _,audited=resolve_previous(previous_wave,args.accepted,old_models_path,resolution)
            audit_path = args.output / f"prerequisite-{previous_count}-audit.json"
            with audit_path.open("x", encoding="utf8") as file:
                json.dump(audited, file, indent=2)
            require_closed_wave(audited, previous_count)
            checkpoint = Path(stage["discovery_checkpoint"]); owner_path = Path(stage["discovery_owner"])
            guard_path = Path(stage["guard_job"]); guard_sha = sha(guard_path); guard = read(guard_path); guard_birth = None
            while True:
                ready = None
                if checkpoint.exists() and owner_path.exists():
                    validate_wave(accepted, prefix, read(checkpoint), sha(args.accepted), sha(args.discovery_source / "source-baseline.json"))
                    ready = discovery_job(read(checkpoint), read(owner_path), [row["model_id"] for row in prefix],
                                          args.discovery_source, checkpoint.parent)
                if ready is not None:
                    break
                if sha(guard_path) != guard_sha:
                    raise ValueError("Discovery prerequisite guard identity changed")
                handle = inspect_handle("/proc", guard["pid"], guard["command"], guard_birth)
                if handle["state"] != "live":
                    raise ValueError("Discovery stage unavailable and its specific controller is not live")
                guard_birth = handle["start_ticks"]
                progress.update(status="verified_wait_discovery", waiting_pid=guard["pid"], wait_handle=handle, next_scope=len(prefix))
                persist(); time.sleep(30)
            if os.statvfs(args.output).f_bavail * os.statvfs(args.output).f_frsize < 20 * 1024**3:
                raise ValueError("Less than20GiB free; existing evidence untouched")
            models_path = args.output / f"models-{len(prefix)}.json"; save(models_path, prefix)
            discovery_path = args.output / f"discovery-job-{len(prefix)}.json"; save(discovery_path, ready)
            output = args.output / f"wave-{len(prefix)}"
            command = release_command(sys.executable, helper, args, models_path, checkpoint, discovery_path, previous_wave, previous_job_path, output)
            if resolution:
                command += ["--previous-resolution",str(resolution)]
            if receipt:
                command += ["--previous-terminal-receipt", str(receipt)]
            row = {"cumulative_scope": len(prefix), "new_models": len(prefix)-previous_count, "inherited_models": previous_count,
                   "inherited_cases_are_not_new_runs": True, "command": command, "started_at": time.time(),
                   "prerequisite_audit_sha256": sha(audit_path)}
            progress["records"].append(row); progress.update(status="running", current_scope=len(prefix)); persist()
            with (args.output / f"wave-{len(prefix)}.stdout.log").open("xb") as stdout, \
                 (args.output / f"wave-{len(prefix)}.stderr.log").open("xb") as stderr:
                child = subprocess.Popen(command, stdout=stdout, stderr=stderr)
                owned.append(child)
                row.update(pid=child.pid,phase='observing_owned_launch');persist()
                observed = observe_owned_launch(child,command)
                if observed["state"] != "live":
                    raise ValueError("New owned release handle was not observed live; no adoption")
                row.update(pid=child.pid, start_ticks=observed["start_ticks"]); persist()
                code = peek_owned_exit(child)
            row.update(exit_code=code, terminal_observation="actual waitid WNOWAIT; not yet reaped", finished_at=time.time()); persist()
            if code != 0:
                raise ValueError(f"Release prefix{len(prefix)} stopped with exit{code}; no later prefix launched")
            next_job = args.output / f"observed-job-{len(prefix)}.json"
            save(next_job, {"pid":child.pid,"command":command,"start_ticks":observed["start_ticks"],
                            "scope":"actual owned child observed live then terminal0 using waitid WNOWAIT; retained for next verifier"})
            previous_wave, previous_job_path, previous_count = output, next_job, len(prefix)
        final_command = read(previous_wave / "command.json")
        final_models = Path(final_command[final_command.index("--models") + 1])
        final_audit = audit_wave(previous_wave, args.accepted, final_models)
        save(args.output / "final-wave-audit.json", final_audit); require_closed_wave(final_audit, 301)
        progress.update(status="completed_release_scope_pending_final_delivery", validated_models=301)
    except Exception as exc:
        progress.update(status="needs_attention", error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    finally:
        # Only children that already reached a real terminal state are reaped.
        # An observation error never terminates/restarts an active model.
        for child in owned:
            try:
                value = os.waitid(os.P_PID, child.pid, os.WEXITED | os.WNOWAIT | os.WNOHANG)
                if value is not None:
                    child.wait()
            except ChildProcessError:
                pass
    progress["finished_at"] = time.time(); persist(); save(args.output / "report.json", progress)
    print(json.dumps(progress), flush=True)
    return 0 if progress["status"] == "completed_release_scope_pending_final_delivery" else 1
