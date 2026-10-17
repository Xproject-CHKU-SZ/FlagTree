#!/usr/bin/env python3
"""Sequential, immutable-attempt pilot batches; stop at the first failed gate."""
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


def checkpoint(path, state):
    temporary = path.with_suffix(".tmp")
    temporary.write_text(json.dumps(state, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    os.replace(temporary, path)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--inventory", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--repo-root", type=Path, required=True)
    parser.add_argument("--audit-script", type=Path, required=True)
    parser.add_argument("--timeout-seconds", type=int, default=1800)
    args = parser.parse_args()
    if args.timeout_seconds <= 0:
        parser.error("timeout must be positive")
    inventory = json.loads(args.inventory.read_text())
    models = inventory["models"]
    if len({item["model_id"] for item in models}) != len(models):
        parser.error("duplicate model IDs in this batch")
    output = args.output.resolve()
    output.mkdir(parents=True, exist_ok=False)
    logs = output / "logs"
    logs.mkdir()
    cases = output / "cases"
    cases.mkdir()
    state = {"status": "running", "planned_unique_models": len(models), "accepted_unique_models": 0,
             "attempted": 0, "records": [], "inventory_sha256": hashlib.sha256(args.inventory.read_bytes()).hexdigest(),
             "scope": "additional pilot only; not total 300 acceptance", "started_at_unix": time.time()}
    checkpoint(output / "checkpoint.json", state)
    for item in models:
        slug = re.sub(r"[^A-Za-z0-9_.-]+", "_", item["model_id"])
        case = cases / slug
        command = [sys.executable, str(args.repo_root / "model_import_adapters/scripts/run_dynamic_text_pilot.py"),
                   "--model-id", item["model_id"], "--revision", item["revision"], "--output", str(case),
                   "--repo-root", str(args.repo_root), "--dim-policy", inventory["dim_policy"]]
        if item.get("disable_inner_reference_compile") is True:
            command.append("--disable-inner-reference-compile")
        if item.get("disable_apex_fused_norm") is True:
            command.append("--disable-apex-fused-norm")
        if item.get("disable_unused_sentence_cache") is True:
            command.append("--disable-unused-sentence-cache")
        if item.get("task_protocol"):
            command.extend(("--task-protocol", item["task_protocol"]))
        if item.get("semantic_audit_contract"):
            command.append("--semantic-audit-contract")
        (logs / f"{slug}.command.json").write_text(json.dumps(command, indent=2))
        state["current_model"] = item["model_id"]
        checkpoint(output / "checkpoint.json", state)
        print(json.dumps({"event": "start", "model_id": item["model_id"]}), flush=True)
        timed_out = False
        with (logs / f"{slug}.stdout.log").open("w") as stdout, (logs / f"{slug}.stderr.log").open("w") as stderr:
            proc = subprocess.Popen(command, stdout=stdout, stderr=stderr, start_new_session=True)
            try:
                code = proc.wait(timeout=args.timeout_seconds)
            except subprocess.TimeoutExpired:
                timed_out = True
                # Only this attempt's process group, never an existing container.
                os.killpg(proc.pid, signal.SIGTERM)
                try:
                    proc.wait(timeout=30)
                except subprocess.TimeoutExpired:
                    os.killpg(proc.pid, signal.SIGKILL)
                    proc.wait()
                code = 124
        (logs / f"{slug}.exit-code.txt").write_text(str(code) + "\n")
        record = {"model_id": item["model_id"], "revision": item["revision"], "case": str(case),
                  "exit_code": code, "timed_out": timed_out, "accepted": False}
        if code == 0:
            audit_command = [sys.executable, str(args.audit_script), "--cases", str(case), "--log-root", str(logs),
                             "--output", str(output / f"{slug}.audit.json")]
            audit = subprocess.run(audit_command, capture_output=True, text=True)
            (logs / f"{slug}.audit.stdout.log").write_text(audit.stdout)
            (logs / f"{slug}.audit.stderr.log").write_text(audit.stderr)
            record["audit_exit_code"] = audit.returncode
            record["accepted"] = audit.returncode == 0
        if (case / "report.json").is_file():
            report = json.loads((case / "report.json").read_text())
            record.update(failure_stage=report.get("failure_stage"), error=report.get("error"))
        state["attempted"] += 1
        state["accepted_unique_models"] += int(record["accepted"])
        state["records"].append(record)
        checkpoint(output / "checkpoint.json", state)
        print(json.dumps({"event": "end", **record}, ensure_ascii=False), flush=True)
        if not record["accepted"]:
            state.update(status="failed_gate", stopped_before_next_model=True, finished_at_unix=time.time())
            checkpoint(output / "checkpoint.json", state)
            return 1
    state.update(status="completed", current_model=None, finished_at_unix=time.time())
    checkpoint(output / "checkpoint.json", state)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
