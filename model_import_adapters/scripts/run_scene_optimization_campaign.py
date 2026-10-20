#!/usr/bin/env python3
"""Replay an accepted model set without changing its task or compatibility flags.

Each invocation holds an OS lock, writes immutable attempts, and audits the
four-route pilot plus exact historical input/protocol identity. Failed attempts
remain evidence; a script/environment failure stops the batch, not 301 models.
This is compatibility evidence. Pilot timings are not paired speedup claims.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import signal
import subprocess
import sys
import time

PROBES = [[1, 8], [2, 24], [4, 64], [2, 8], [1, 64]]
TASKS = {"sentence_embedding_full_pipeline", "sequence_classification_logits",
         "token_encoder_last_hidden_state", "colbert_document_masked_multivectors",
         "splade_full_vocabulary_max_scores", "noinstruct_document_cls_and_query_mean"}


def sha256(path):
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def checkpoint(path, value):
    temporary = path.with_suffix(".tmp")
    temporary.write_text(json.dumps(value, ensure_ascii=False, indent=2, allow_nan=False) + "\n", encoding="utf-8")
    os.replace(temporary, path)


def validate_scope(rows, expected_count=301):
    if not isinstance(rows, list) or len(rows) != expected_count:
        raise ValueError("Accepted scope count mismatch")
    ids = [row["model_id"] for row in rows]
    if len(set(ids)) != len(ids):
        raise ValueError("Duplicate model IDs")
    for row in rows:
        if (row.get("status") != "passed" or row.get("parameter_dtype") != "FP32"
                or row.get("device") != "PPU-ZW810E" or row.get("shape_count") != 5
                or row.get("task") not in TASKS
                or not re.fullmatch(r"[0-9a-f]{40}", row.get("revision", ""))):
            raise ValueError(f"Invalid accepted contract: {row['model_id']}")
    return rows


def model_slug(model_id):
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", model_id) + "-" + hashlib.sha256(model_id.encode()).hexdigest()[:10]


def replay_command(row, source, output, python):
    historical = row["command"]["reproduce"]
    if len(historical) < 2 or Path(historical[1]).name != "run_dynamic_text_pilot.py":
        raise ValueError("Unexpected historical entry point")
    cmd = [python, str(source / "model_import_adapters/scripts/run_dynamic_text_pilot.py"), *historical[2:]]
    for flag, value in (("--model-id", row["model_id"]), ("--revision", row["revision"])):
        if cmd.count(flag) > 1:
            raise ValueError(f"Duplicate {flag}")
        if flag in cmd and cmd[cmd.index(flag) + 1] != value:
            raise ValueError(f"Historical identity drift: {flag}")
        if flag not in cmd:
            cmd.extend((flag, value))
    for flag, value in (("--output", str(output)), ("--repo-root", str(source))):
        if cmd.count(flag) != 1:
            raise ValueError(f"Required unique replay option: {flag}")
        cmd[cmd.index(flag) + 1] = value
    return cmd


def protocol_errors(old, new):
    keys = {"task", "pipeline", "texts", "text_pairs", "prompt", "prompt_length", "truncate_dim",
            "probes", "dtype", "output_semantics", "task_protocol", "sparse_route", "compile_options",
            "output_axes", "dim_policy", "inner_reference_compile_policy", "apex_fused_norm_policy",
            "sentence_cache_policy", "sentence_source_padding_policy", "attention_implementation"}
    return [f"protocol:{key}" for key in sorted(keys & old.keys()) if old[key] != new.get(key)]


def audit_replay(row, case, logs):
    import numpy as np
    from audit_dynamic_text_pilots import check_case

    audit = check_case(case, logs)
    errors = audit["errors"]
    if not audit["accepted"]:
        return audit
    if audit.get("model_id") != row["model_id"] or audit.get("revision") != row["revision"]:
        errors.append("accepted_identity_drift")
    historical = Path(row["case"])
    old_protocol = historical / "task-protocol.json"
    if sha256(old_protocol) != row["task_protocol_sha256"]:
        errors.append("historical_protocol_hash_drift")
    errors.extend(protocol_errors(json.loads(old_protocol.read_text()), json.loads((case / "task-protocol.json").read_text())))
    if json.loads((case / "task-protocol.json").read_text()).get("task") != row["task"]:
        errors.append("accepted_task_drift")
    old_report = json.loads((historical / "report.json").read_text())
    historical_probes = {(p["batch"], p["sequence"]): p for p in old_report["probes"]}
    for batch, sequence in PROBES:
        name = f"probe-{batch}x{sequence}.npz"
        old_path = historical / name
        if sha256(old_path) != historical_probes[batch, sequence]["sha256"]:
            errors.append(f"historical_probe_hash_drift:{name}")
            continue
        with np.load(old_path, allow_pickle=False) as old, np.load(case / name, allow_pickle=False) as new:
            if set(old.files) != set(new.files):
                errors.append(f"archive_keys_drift:{name}")
                continue
            for key in old.files:
                left, right = old[key], new[key]
                equal = (left.shape == right.shape and left.dtype == right.dtype and
                         (np.allclose(left, right, atol=3e-4, rtol=3e-4) if key.endswith("_output")
                          else np.array_equal(left, right)))
                if not equal:
                    errors.append(f"historical_data_drift:{name}:{key}")
    audit.update(accepted=not errors, historical_case=str(historical), comparison_scope="four fresh routes plus frozen historical inputs/outputs")
    return audit


def run(args):
    import fcntl
    # The orchestration script may be deployed outside the immutable source
    # bundle. Resolve its auditor from that bundle, never from ambient paths.
    sys.path.insert(0, str(args.source / "model_import_adapters/scripts"))
    rows = validate_scope(json.loads(args.accepted.read_text(encoding="utf-8")))
    if args.model_ids:
        wanted = set(args.model_ids)
        if wanted - {row["model_id"] for row in rows}:
            raise ValueError("Requested model outside accepted scope")
        rows = [row for name in args.model_ids for row in rows if row["model_id"] == name]
        if len({row["model_id"] for row in rows}) != len(rows):
            raise ValueError("Duplicate requested model")
    args.output.mkdir(parents=True, exist_ok=True)
    lock = (args.output / "campaign.lock").open("a")
    fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
    fingerprint = {"accepted_sha256": sha256(args.accepted), "models": [row["model_id"] for row in rows],
                   "source_baseline_sha256": sha256(args.source / "source-baseline.json"),
                   "physical_device": args.physical_device, "script_sha256": sha256(__file__)}
    state_path = args.output / "checkpoint.json"
    if state_path.exists():
        state = json.loads(state_path.read_text())
        if state["identity"] != fingerprint:
            raise ValueError("Resume identity changed; use a new output directory")
        child_pid = state.get("child_pid")
        if child_pid:
            proc_stat = Path(f"/proc/{child_pid}/stat")
            if proc_stat.exists():
                fields = proc_stat.read_text().rsplit(")", 1)[1].split()
                if fields[0] != "Z" and fields[19] == state.get("child_start_ticks"):
                    raise RuntimeError(f"Previous child {child_pid} is still active; observe it instead of restarting")
        current = state.get("current_case")
        if current and Path(current).exists() and not any(r["case"] == current for r in state["records"]):
            state["records"].append({"model_id": state["current_model"], "case": current,
                                     "status": "interrupted", "errors": ["parent_interrupted; original attempt retained"]})
    else:
        state = {"identity": fingerprint, "records": [], "planned": len(rows), "started_at": time.time()}
    env = dict(os.environ, CUDA_VISIBLE_DEVICES=str(args.physical_device), FLAGTREE_BACKEND="ppu",
               PYTHONPATH=str(args.source / "model_import_adapters/src") + ":" + str(args.source / "semantic-view"),
               HF_HUB_OFFLINE="1", TOKENIZERS_PARALLELISM="false")
    logs = args.output / "logs"; logs.mkdir(exist_ok=True)
    cases = args.output / "cases"; cases.mkdir(exist_ok=True)
    state.update(status="running", runner_pid=os.getpid())
    checkpoint(state_path, state)
    for row in rows:
        previous = [r for r in state["records"] if r["model_id"] == row["model_id"]]
        if previous and previous[-1]["status"] in {"passed", "failed"}:
            continue
        case = cases / f"{model_slug(row['model_id'])}-attempt{len(previous) + 1}"
        if case.exists():
            raise ValueError(f"Unindexed attempt exists; inspect before resuming: {case}")
        cmd = replay_command(row, args.source, case, sys.executable)
        checkpoint(logs / f"{case.name}.command.json", cmd)
        state.update(current_model=row["model_id"], current_case=str(case))
        checkpoint(state_path, state)
        print(json.dumps({"event": "start", "model": row["model_id"], "case": str(case)}), flush=True)
        with (logs / f"{case.name}.stdout.log").open("w") as stdout, (logs / f"{case.name}.stderr.log").open("w") as stderr:
            proc = subprocess.Popen(cmd, env=env, stdout=stdout, stderr=stderr, start_new_session=True)
            state["child_pid"] = proc.pid
            state["child_start_ticks"] = Path(f"/proc/{proc.pid}/stat").read_text().rsplit(")", 1)[1].split()[19]
            checkpoint(state_path, state)
            try:
                code = proc.wait(timeout=args.timeout)
            except subprocess.TimeoutExpired:
                os.killpg(proc.pid, signal.SIGTERM)
                try:
                    proc.wait(timeout=30)
                except subprocess.TimeoutExpired:
                    os.killpg(proc.pid, signal.SIGKILL); proc.wait()
                code = 124
        (logs / f"{case.name}.exit-code.txt").write_text(str(code) + "\n")
        try:
            audit = audit_replay(row, case, logs) if code == 0 else {"accepted": False, "errors": [f"pilot_exit:{code}"]}
        except Exception as exc:
            audit = {"accepted": False, "errors": [f"audit_exception:{type(exc).__name__}:{exc}"]}
        checkpoint(logs / f"{case.name}.audit.json", audit)
        record = {"model_id": row["model_id"], "revision": row["revision"], "case": str(case),
                  "exit_code": code, "status": "passed" if audit["accepted"] else "failed",
                  "errors": audit["errors"], "finished_at": time.time()}
        state["records"].append(record)
        state.update(child_pid=None, passed=sum(r["status"] == "passed" for r in state["records"]))
        checkpoint(state_path, state)
        print(json.dumps({"event": "end", **record}), flush=True)
        if record["status"] != "passed":
            state.update(status="failed_gate", current_model=None)
            checkpoint(state_path, state)
            return 1
    latest = {r["model_id"]: r for r in state["records"]}
    passed = sum(r["status"] == "passed" for r in latest.values())
    state.update(status="completed" if passed == len(rows) else "completed_with_failures",
                 passed=passed, current_model=None, finished_at=time.time())
    checkpoint(state_path, state)
    return 0 if passed == len(rows) else 1


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--accepted", type=Path, required=True)
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--model-ids", nargs="+")
    parser.add_argument("--physical-device", type=int, required=True)
    parser.add_argument("--timeout", type=int, default=1800)
    args = parser.parse_args()
    if args.timeout <= 0 or args.physical_device < 0:
        parser.error("positive timeout and nonnegative device required")
    return run(args)


if __name__ == "__main__":
    raise SystemExit(main())
