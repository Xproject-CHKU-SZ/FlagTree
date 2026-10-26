"""Explicit captured terminal evidence for an already-reaped release child.

Missing PID alone is never success. This route preserves the original child
identity and requires both its captured zombie and its owner's real waitid.
It does not replace independent numerical/scope audits or authorize a retry.
"""
import hashlib
import json
import math
from pathlib import Path

from continue_shape301_wave import inspect_handle

ROLES = {"capture", "owner_job", "owner_report", "owner_command", "observer_job",
         "observer_report", "observer_command", "observer_script"}


def _sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def _read(path):
    return json.loads(Path(path).read_text(encoding="utf8"))


def _identity(job):
    identity = {key: job[key] for key in ("pid", "start_ticks", "command")}
    if (any(type(identity[key]) is not int or identity[key] <= 0 for key in ("pid", "start_ticks"))
            or not isinstance(identity["command"], list) or len(identity["command"]) < 2
            or any(not isinstance(arg, str) or not arg for arg in identity["command"])):
        raise ValueError("Invalid original process identity")
    return identity


def _output(command):
    if command.count("--output") != 1:
        raise ValueError("Ambiguous original controller output")
    return Path(command[command.index("--output") + 1])


def validate_terminal_proof(path, job, wave):
    """Reopen every bound file; this is evidence validation, not process inference."""
    path, wave = Path(path), Path(wave)
    proof_sha = _sha(path)
    proof = _read(path)
    if proof.get("schema") != "shape301-reaped-terminal-proof-v1" or set(proof.get("files", {})) != ROLES:
        raise ValueError("Explicit complete reaped-terminal proof required")
    paths, pinned = {}, {str(path): proof_sha}
    for role, item in proof["files"].items():
        source = Path(item["path"])
        if _sha(source) != item["sha256"]:
            raise ValueError("Terminal proof file hash drift: " + role)
        paths[role] = source
        pinned[str(source)] = item["sha256"]
    capture, owner, observer = (_read(paths[key]) for key in ("capture", "owner_job", "observer_job"))
    identity = _identity(job)
    if _identity(capture["job"]) != identity or _read(wave / "command.json") != identity["command"]:
        raise ValueError("Captured terminal belongs to another original release")
    if _output(identity["command"]) != wave or _sha(wave / "report.json") != capture["report_sha256"]:
        raise ValueError("Captured terminal release/report drift")
    pinned[str(wave / "report.json")] = capture["report_sha256"]
    pinned[str(wave / "command.json")] = _sha(wave / "command.json")
    raw_pid, raw_fields = capture["raw_stat"].split(" (", 1)
    fields = raw_fields.rsplit(") ", 1)[1].split()
    if (len(fields) < 50 or int(raw_pid) != identity["pid"] or fields[0] != "Z"
            or int(fields[19]) != identity["start_ticks"] or int(fields[49]) != 0
            or capture.get("terminal_state") != "Z" or type(capture.get("exit_code")) is not int
            or capture["exit_code"] != 0 or int(fields[1]) != _identity(owner)["pid"]):
        raise ValueError("Captured original zombie is not real matching exit0")
    if _sha(paths["owner_job"]) != capture["parent_job_sha256"]:
        raise ValueError("Original owner identity drift")
    owner_command = _read(paths["owner_command"])
    owner_output = _output(owner_command)
    if (_identity(owner)["command"] != owner_command
            or paths["owner_command"] != owner_output / "command.json"
            or paths["owner_report"] != owner_output / "report.json" or wave.parent != owner_output):
        raise ValueError("Original owning controller output/command drift")
    owner_report = _read(paths["owner_report"])
    rows = [row for row in owner_report["records"] if row.get("pid") == identity["pid"]]
    report = _read(wave / "report.json")
    if (len(rows) != 1 or _identity(rows[0]) != identity or rows[0].get("exit_code") != 0
            or rows[0].get("terminal_observation") != "actual waitid WNOWAIT; not yet reaped"
            or rows[0].get("cumulative_scope") != report.get("target_models")
            or report.get("status") != "completed_wave_not_final301"
            or len(report.get("records", [])) != report.get("target_models")
            or owner_report.get("status") not in {"needs_attention", "completed_release_scope_pending_final_delivery"}):
        raise ValueError("Real matching owner waitid exit0 record required")
    observer_report = _read(paths["observer_report"])
    observer_command = _read(paths["observer_command"])
    script_sha = _sha(paths["observer_script"])
    if (_identity(observer)["command"] != observer_command or observer_command[1] != str(paths["observer_script"])
            or paths["observer_command"] != paths["observer_report"].parent / "command.json"
            or capture["observer_script"] != str(paths["observer_script"])
            or capture["observer_script_sha256"] != script_sha or observer.get("script_sha256") != script_sha
            or observer_report.get("script_sha256") != script_sha
            or observer_report.get("status") != "captured_real_terminal0"
            or observer_report.get("terminal_receipt_sha256") != _sha(paths["capture"])
            or _identity(observer_report["child_job"]) != identity
            or observer_report["parent_job"] != owner):
        raise ValueError("Original observer capture identity/report drift")
    start, observed, end = (observer_report["started_at"], capture["observed_at"], observer_report["finished_at"])
    if any(type(value) not in (int, float) or not math.isfinite(value) for value in (start, observed, end)) or not start <= observed <= end:
        raise ValueError("Invalid actual terminal observation interval")
    for role in ("stdout", "stderr"):
        item = capture[role]
        source = Path(item["path"])
        if source != wave.parent / (wave.name + "." + role + ".log") or _sha(source) != item["sha256"]:
            raise ValueError("Captured release raw log drift")
        pinned[str(source)] = item["sha256"]
    if any(_sha(name) != digest for name, digest in pinned.items()):
        raise ValueError("Terminal proof changed during validation")
    return {"state": "terminal", "start_ticks": identity["start_ticks"], "exit_code": 0,
            "terminal_observation": "explicit captured zombie0 plus original owner waitid0; already reaped",
            "terminal_proof_files": pinned}


def observe_release_predecessor(job, wave, receipt=None, proc_root="/proc"):
    """Use /proc first; only an absent original handle may use explicit proof."""
    identity = _identity(job)
    if _read(Path(wave) / "command.json") != identity["command"]:
        raise ValueError("Selected original release command changed")
    handle = inspect_handle(proc_root, identity["pid"], identity["command"], identity["start_ticks"])
    if handle["state"] != "missing" or receipt is None:
        return handle
    result = validate_terminal_proof(receipt, job, wave)
    if inspect_handle(proc_root, identity["pid"], identity["command"], identity["start_ticks"])["state"] != "missing":
        raise ValueError("Original PID appeared during explicit terminal validation")
    return result


def validate_inherited_terminal(provenance, job, wave, command):
    """An independent audit revalidates the proof, not just a saved success bit."""
    selected = provenance.get("previous_terminal_receipt_path")
    if (not selected or command.count("--previous-terminal-receipt") != 1
            or command[command.index("--previous-terminal-receipt") + 1] != selected
            or _sha(selected) != provenance.get("previous_terminal_receipt_sha256")):
        raise ValueError("Inherited explicit terminal proof selection/hash drift")
    return validate_terminal_proof(selected, job, wave)
