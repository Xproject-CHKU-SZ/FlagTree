#!/usr/bin/env python3
"""Gate actual FlagTree compilation first, then run isolated multi-model A/B.

No installed torch is needed by this driver: each model uses its existing venv.
Only physical PPU 14 is authorized. No downloads, installs, global patches or
automatic diary updates. A fresh output directory is mandatory.
"""
from __future__ import annotations

import argparse
import json
import math
import os
import signal
from pathlib import Path
import subprocess
import sys
import time

from contracts import (ARMS, arm_order, check_selection, file_hash, read_smi,
                       require_idle, save_json, summarize)

HERE = Path(__file__).resolve().parent


def validate_config(config):
    models = config.get("models")
    if not isinstance(models, list) or not models:
        raise ValueError("models must be a nonempty list")
    names = [m.get("model_id") for m in models]
    if any(not isinstance(name, str) or not name for name in names) or len(set(names)) != len(names):
        raise ValueError("model IDs must be unique strings")
    if names[0] != "sentence-transformers/all-MiniLM-L6-v2":
        raise ValueError("MiniLM must be first: prove integration before expanding models")
    for model in models:
        if not isinstance(model.get("python"), str) or not isinstance(model.get("snapshot"), str):
            raise ValueError("each model requires an explicit existing python and snapshot")
        if not Path(model["python"]).is_absolute() or not Path(model["snapshot"]).is_absolute():
            raise ValueError("use absolute existing venv/snapshot paths")
        revision = model.get("revision")
        if not isinstance(revision, str) or Path(model["snapshot"]).name != revision:
            raise ValueError("snapshot path/revision mismatch")
    texts = config.get("performance_texts")
    if not isinstance(texts, list) or len(texts) != 64 or any(not isinstance(t, str) or not t for t in texts):
        raise ValueError("performance_texts must contain exactly 64 nonempty strings")


def command_for(model, case_path, output, args, mode, gate=None):
    command = [model["python"], "-B", str(HERE / "worker.py"), "--case", str(case_path),
               "--output-dir", str(output), "--legality", str(args.legality.resolve()),
               "--physical-card", "14", "--mode", mode, "--atol", str(args.atol), "--rtol", str(args.rtol)]
    if gate:
        command.extend(("--gate", str(gate)))
    return command


def run_child(command, output_parent, label, timeout):
    raw, state = read_smi()
    save_json(output_parent / (label + "-preflight.json"), {"raw": raw, "parsed": state,
                                                           "checked_unix_s": time.time()})
    require_idle(state)
    env = dict(os.environ, PYTHONDONTWRITEBYTECODE="1", HF_HUB_OFFLINE="1", TRANSFORMERS_OFFLINE="1",
               HF_HOME="/workspace-cache/hf-home", TRITON_CACHE_DIR="/workspace-cache/f08-flagtree-eval-triton",
               PYTHONHASHSEED="0")
    save_json(output_parent / (label + "-command.json"), {"argv": command,
              "device_env": {key: env[key] for key in ("CUDA_VISIBLE_DEVICES", "FLAGTREE_BACKEND")}})
    with (output_parent / (label + ".log")).open("x") as log:
        process = subprocess.Popen(command, stdout=log, stderr=subprocess.STDOUT, env=env, start_new_session=True)
        try:
            return process.wait(timeout=timeout)
        except BaseException:
            # Signal only the child launched by this driver; never pgrep/kill others.
            try:
                os.killpg(process.pid, signal.SIGTERM)
            except ProcessLookupError:
                pass
            try:
                process.wait(timeout=10)
            except subprocess.TimeoutExpired:
                try:
                    os.killpg(process.pid, signal.SIGKILL)
                except ProcessLookupError:
                    pass
                process.wait()
            raise


def main():
    parser = argparse.ArgumentParser(description=__doc__, allow_abbrev=False)
    parser.add_argument("--config", type=Path, default=HERE / "models.json")
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--legality", type=Path, default=HERE.parents[1] / "flagtree/memory_planner/inplace_legality.py")
    parser.add_argument("--physical-card", choices=("14",))
    parser.add_argument("--confirm-allocation", action="store_true",
                        help="operator has rechecked team permission/reservation for physical 14")
    parser.add_argument("--atol", type=float)
    parser.add_argument("--rtol", type=float)
    parser.add_argument("--repetitions", type=int, default=3)
    parser.add_argument("--batch-size", type=int, default=32)
    parser.add_argument("--seq-len", type=int, default=24)
    parser.add_argument("--limit-models", type=int)
    parser.add_argument("--worker-timeout", type=int, default=900)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--gate-only", action="store_true")
    args = parser.parse_args()
    if args.batch_size not in (1, 2, 4, 8, 16, 32, 64) or args.seq_len < 2 or args.repetitions < 3:
        parser.error("require a batch divisor of 64, seq_len >= 2, repetitions >= 3")
    if args.limit_models is not None and args.limit_models < 1:
        parser.error("limit-models must be positive")
    if args.worker_timeout < 1:
        parser.error("worker-timeout must be positive")
    if not args.dry_run:
        if args.physical_card != "14" or not args.confirm_allocation:
            parser.error("explicit --physical-card 14 and --confirm-allocation required")
        if any(x is None or not math.isfinite(x) or x < 0 for x in (args.atol, args.rtol)):
            parser.error("explicit finite nonnegative atol/rtol required; never auto-relax")
        check_selection(args.physical_card)
    config = json.loads(args.config.read_text())
    validate_config(config)
    models = config["models"][:args.limit_models]
    root = args.output_dir.resolve()
    root.mkdir(parents=True, exist_ok=False)
    save_json(root / "configuration.json", {"config": config, "arguments": vars(args) | {
        "config": str(args.config), "output_dir": str(root), "legality": str(args.legality)},
        "script_hashes": {p.name: file_hash(p) for p in HERE.glob("*.py")}})
    rows, failed = [], False
    try:
        for index, model in enumerate(models):
            directory = root / f"model-{index + 1:02d}"
            directory.mkdir()
            case = {**model, "texts": config["performance_texts"], "batch_size": args.batch_size,
                    "seq_len": args.seq_len, "input_note": config["input_note"]}
            save_json(directory / "case.json", case)
            if args.dry_run:
                rows.append({"model_id": model["model_id"], "status": "planned_only",
                             "snapshot_exists_here": Path(model["snapshot"]).is_dir(),
                             "python_exists_here": Path(model["python"]).is_file()})
                continue
            if not Path(model["snapshot"]).is_dir() or not os.access(model["python"], os.X_OK):
                rows.append({"model_id": model["model_id"], "status": "blocked_missing_resource"})
                failed = True
                if index == 0:
                    break
                continue
            command = command_for(model, directory / "case.json", directory / "gate", args, "gate")
            rc = run_child(command, directory, "gate", args.worker_timeout)
            if rc != 0:
                rows.append({"model_id": model["model_id"], "status": "blocked_gate", "returncode": rc})
                failed = True
                if index == 0:
                    break  # Do not expand an unproven compiler bridge to more models.
                continue
            gate = directory / "gate/result.json"
            if args.gate_only:
                rows.append({"model_id": model["model_id"], "status": "gate_passed_no_performance"})
                continue
            records = []
            for repetition in range(args.repetitions):
                for arm in arm_order(repetition):
                    label = f"rep-{repetition + 1}-{arm}"
                    output = directory / label
                    command = command_for(model, directory / "case.json", output, args, arm, gate)
                    rc = run_child(command, directory, label, args.worker_timeout)
                    if rc != 0:
                        raise ValueError(f"{model['model_id']} {label} failed; incomplete experiment not summarized")
                    records.append(json.loads((output / "result.json").read_text()))
            result = summarize(records)
            save_json(directory / "summary.json", result)
            rows.append({"model_id": model["model_id"], "status": "measured", "summary": result})
            print(model["model_id"], result["buffer_effect"], flush=True)
    except (Exception, KeyboardInterrupt) as error:
        failed = True
        save_json(root / "failure.json", {"status": "blocked", "error": str(error), "type": type(error).__name__})
    finally:
        save_json(root / "suite-summary.json", {"models": rows, "failed": failed,
            "scope": "partial graph lowering backed by FlagTree PPU; not complete F08 or model-adaptation acceptance"})
        if not args.dry_run:
            try:
                raw, state = read_smi()
                save_json(root / "final-occupancy.json", {"raw": raw, "parsed": state})
            except Exception as error:
                save_json(root / "final-occupancy-unavailable.json", {"error": str(error)})
        targets = sorted(p for p in root.rglob("*") if p.is_file())
        with (root / "MANIFEST.sha256").open("x") as manifest:
            for p in targets:
                manifest.write(f"{file_hash(p)}  {p.relative_to(root)}\n")
    return 2 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
