#!/usr/bin/env python3
"""Wait for the full fresh B0 gate, then replay all 301 PT2s with guarded scene B2.

The watcher checks a live baseline process, not a stale lock file. It never
restarts or stops containers or a missing baseline job. Each B2 model runs in a
separate process, sequentially, with immutable attempt directories.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import signal
import subprocess
import sys
import time

from run_scene_optimization_campaign import checkpoint, model_slug, sha256, validate_scope


def runtime_source_hashes(source, kernels):
    if not (source / "model_import_adapters/src/model_import_adapters/scene_fusion.py").is_file() or not (kernels / "triton_kernels/ppu_mlp.py").is_file():
        raise ValueError("Required frozen scene source is missing")
    return {str(path): sha256(path) for base in (source / "model_import_adapters/src", kernels / "triton_kernels")
            for path in sorted(base.rglob("*.py")) if "__pycache__" not in path.parts}


def baseline_is_live(state, directory):
    pid = state.get("runner_pid")
    proc = Path(f"/proc/{pid}")
    try:
        stat = (proc / "stat").read_text().rsplit(")",1)[1].split()
        command = (proc / "cmdline").read_bytes().replace(b"\0", b" ").decode()
        return stat[0] != "Z" and "run_scene_optimization_campaign.py" in command and str(directory) in command
    except (FileNotFoundError, ProcessLookupError):
        return False


def audit_replay_case(case, row, b0):
    """Independent tensor/reference re-read; no trust in a status string alone."""
    import numpy as np

    report = json.loads((case / "report.json").read_text())
    assert report["status"] == "passed" and report["model_id"] == row["model_id"] and report["revision"] == row["revision"]
    assert report["device"] == "PPU-ZW810E" and report["parameter_dtype"] == "FP32"
    assert report["cpu_model_forward"] == "not_run" and report["original_artifact_unchanged"] is True
    assert report["task"] == row["task"] and report["baseline_case"] == str(b0)
    assert len(report["probes"]) == 5 and {(p["batch"],p["sequence"]) for p in report["probes"]} == {(1,8),(2,24),(4,64),(2,8),(1,64)}
    base = json.loads((b0 / "report.json").read_text())
    assert report["baseline_report_sha256"] == sha256(b0 / "report.json")
    assert report["baseline_protocol_sha256"] == sha256(b0 / "task-protocol.json")
    for probe in report["probes"]:
        old = next(p for p in base["probes"] if (p["batch"],p["sequence"]) == (probe["batch"],probe["sequence"]))
        path = b0 / Path(old["archive"]).name
        assert sha256(path) == probe["baseline_probe_sha256"] == old["sha256"]
        archive = case / Path(probe["archive"]).name
        assert sha256(archive) == probe["sha256"]
        with np.load(path, allow_pickle=False) as reference, np.load(archive, allow_pickle=False) as actual:
            for name in ("fresh_eager", "optimized"):
                left, right = actual[name], reference["original_output"]
                assert left.shape == right.shape and left.dtype == right.dtype and np.isfinite(left).all()
                assert np.allclose(left, right, atol=3e-4, rtol=3e-4)
        assert probe["route"] == ("scene_triton" if probe["hit"] else "original_compiled")
        if probe["hit"]:
            assert len(probe["regions"]) == len(report["matched_regions"]) and all(x["supported"] for x in probe["regions"])
    assert sha256(case / "compiler-evidence.json") == report["evidence_sha256"]
    for item in json.loads((case / "compiler-evidence.json").read_text()):
        relative = Path(item["path"])
        assert not relative.is_absolute() and ".." not in relative.parts
        assert sha256(case / relative) == item["sha256"]
    return {"accepted": True, "report_sha256": sha256(case / "report.json"),
            "hit_probes": report["hit_probes"], "retained_probes": report["retained_probes"],
            "needs_paired_regression_check": any(p["needs_paired_regression_check"] for p in report["probes"])}


def run(args):
    import fcntl
    rows = validate_scope(json.loads(args.accepted.read_text()))
    args.output.mkdir(parents=True, exist_ok=True)
    lock = (args.output / "campaign.lock").open("a")
    fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
    state_path = args.output / "checkpoint.json"
    identity = {"accepted_sha256": sha256(args.accepted), "baseline": str(args.baseline),
                "source_hashes": runtime_source_hashes(args.source, args.kernel_root),
                "case_script_sha256": sha256(args.case_script), "driver_sha256": sha256(__file__),
                "physical_device": args.physical_device}
    if state_path.exists():
        state = json.loads(state_path.read_text())
        if state["identity"] != identity:
            raise ValueError("Resume source identity changed; use a new campaign directory")
        pid = state.get("child_pid")
        stat = Path(f"/proc/{pid}/stat")
        if pid and stat.exists() and stat.read_text().rsplit(")",1)[1].split()[0] != "Z":
            raise RuntimeError(f"Previous case process {pid} still exists; observe it before resuming")
        current = state.get("current_case")
        if current and Path(current).exists() and not any(r["case"] == current for r in state["records"]):
            state["records"].append({"model_id":state["current_model"],"case":current,
                                     "status":"interrupted","error":"parent interrupted; original attempt retained"})
    else:
        state = {"status": "waiting_for_baseline", "identity": identity, "planned_models": 301,
                 "planned_shapes": 1505, "records": [], "started_at": time.time()}
    state.update(runner_pid=os.getpid(), child_pid=None)
    checkpoint(state_path, state)
    while True:
        base = json.loads((args.baseline / "checkpoint.json").read_text())
        if base["identity"]["accepted_sha256"] != identity["accepted_sha256"]:
            raise ValueError("Baseline inventory mismatch")
        if base["status"] == "completed":
            break
        if base["status"] != "running" or not baseline_is_live(base, args.baseline):
            state.update(status="baseline_needs_attention", baseline_status=base["status"])
            checkpoint(state_path, state)
            return 1
        state.update(status="waiting_for_baseline", baseline_passed=base.get("passed",0))
        checkpoint(state_path, state)
        time.sleep(30)
    latest = {r["model_id"]: r for r in base["records"]}
    assert set(latest) == {r["model_id"] for r in rows} and all(r["status"] == "passed" for r in latest.values())
    state.update(status="running", baseline_checkpoint_sha256=sha256(args.baseline / "checkpoint.json"))
    checkpoint(state_path, state)
    logs = args.output / "logs"; logs.mkdir(exist_ok=True)
    cases = args.output / "cases"; cases.mkdir(exist_ok=True)
    env = dict(os.environ, CUDA_VISIBLE_DEVICES=str(args.physical_device), FLAGTREE_BACKEND="ppu")
    for row in rows:
        old = [r for r in state["records"] if r["model_id"] == row["model_id"]]
        if old and old[-1]["status"] == "passed":
            continue
        if runtime_source_hashes(args.source,args.kernel_root) != identity["source_hashes"]:
            raise ValueError("Runtime source changed during campaign")
        if sha256(args.case_script) != identity["case_script_sha256"] or sha256(__file__) != identity["driver_sha256"]:
            raise ValueError("Campaign entry point changed; use a new campaign directory")
        slug = model_slug(row["model_id"])
        # Retain any orphaned/failed attempt; never overwrite its evidence.
        index = 1
        while (cases / f"{slug}-attempt{index}").exists():
            index += 1
        case = cases / f"{slug}-attempt{index}"
        b0 = Path(latest[row["model_id"]]["case"])
        cmd = [sys.executable, str(args.case_script), "--baseline-case", str(b0), "--model-id",row["model_id"],
               "--revision",row["revision"],"--source",str(args.source),"--kernel-root",str(args.kernel_root),
               "--output",str(case),"--triton-cache",str(args.output / "cache/triton")]
        checkpoint(logs / f"{case.name}.command.json", cmd)
        state.update(current_model=row["model_id"], current_case=str(case))
        checkpoint(state_path,state)
        print(json.dumps({"event":"start","model_id":row["model_id"]}),flush=True)
        with (logs / f"{case.name}.stdout.log").open("w") as stdout, (logs / f"{case.name}.stderr.log").open("w") as stderr:
            child = subprocess.Popen(cmd,stdout=stdout,stderr=stderr,env=env,start_new_session=True)
            state["child_pid"]=child.pid; checkpoint(state_path,state)
            try:
                code=child.wait(timeout=args.timeout)
            except subprocess.TimeoutExpired:
                os.killpg(child.pid,signal.SIGTERM)
                try:child.wait(timeout=30)
                except subprocess.TimeoutExpired:os.killpg(child.pid,signal.SIGKILL);child.wait()
                code=124
        (logs / f"{case.name}.exit-code.txt").write_text(str(code)+"\n")
        try:
            audit = audit_replay_case(case,row,b0) if code==0 else {"accepted":False,"error":f"case_exit:{code}"}
        except Exception as exc:
            audit={"accepted":False,"error":f"audit:{type(exc).__name__}:{exc}"}
        checkpoint(logs / f"{case.name}.audit.json",audit)
        record={"model_id":row["model_id"],"revision":row["revision"],"case":str(case),"exit_code":code,
                "status":"passed" if audit["accepted"] else "failed","audit":audit,"finished_at":time.time()}
        if (case / "report.json").is_file():
            detail=json.loads((case / "report.json").read_text())
            record.update(failure_stage=detail.get("failure_stage"),error=detail.get("error"))
        state["records"].append(record)
        current={r["model_id"]:r for r in state["records"]}
        state.update(passed=sum(r["status"]=="passed" for r in current.values()),child_pid=None)
        checkpoint(state_path,state)
        print(json.dumps({"event":"end",**record}),flush=True)
        if not audit["accepted"]:
            state.update(status="failed_gate",current_model=None)
            checkpoint(state_path,state)
            return 1
    assert state["passed"]==301
    state.update(status="completed",current_model=None,finished_at=time.time())
    checkpoint(state_path,state)
    return 0


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--accepted",type=Path,required=True)
    p.add_argument("--baseline",type=Path,required=True)
    p.add_argument("--source",type=Path,required=True)
    p.add_argument("--kernel-root",type=Path,required=True)
    p.add_argument("--case-script",type=Path,required=True)
    p.add_argument("--output",type=Path,required=True)
    p.add_argument("--physical-device",type=int,required=True)
    p.add_argument("--timeout",type=int,default=1800)
    args=p.parse_args()
    if args.timeout<=0 or args.physical_device<0:p.error("Positive timeout and nonnegative device required")
    return run(args)


if __name__=="__main__":
    raise SystemExit(main())
