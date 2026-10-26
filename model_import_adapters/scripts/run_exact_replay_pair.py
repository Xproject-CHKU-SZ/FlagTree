#!/usr/bin/env python3
"""Run one immutable replay A/A then A/B pair, never retry or restart jobs."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys
import time
import traceback

from benchmark_dynamic_shape_pair import save
from benchmark_scene_pair import sha256
from run_shape301_calibration import candidate_outcome


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("source", "case", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--policy",type=Path,help="Same qualified document must be supplied to both phases")
    parser.add_argument("--prepare-capture-constants",action="store_true")
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    report = {"status":"running", "started_at":time.time(), "phases":[],
              "scope":"one accepted full-model task; five frozen probes and mixed trace; not 301 completion",
              "source":str(args.source), "case":str(args.case),
              "physical_device":os.environ.get("CUDA_VISIBLE_DEVICES"),
              "cpu_affinity":sorted(os.sched_getaffinity(0))}
    save(args.output / "command.json", [sys.executable, *sys.argv])
    save(args.output / "progress.json", report)
    try:
        for phase in ("calibrate", "compare"):
            destination = args.output / phase
            command = [sys.executable, str(args.source / "model_import_adapters/scripts/benchmark_dynamic_shape_pair.py"),
                       "--phase", phase, "--strategy", "graph_replay", "--source", str(args.source),
                       "--case", str(args.case), "--output", str(destination)]
            if phase == "compare":
                command += ["--calibration", str(args.output / "calibrate/report.json")]
            if args.policy:
                command += ["--replay-policy",str(args.policy)]
            if args.prepare_capture_constants:
                command += ["--prepare-capture-constants"]
            entry = {"phase":phase, "command":command, "started_at":time.time()}
            with (args.output / (phase + ".stdout.log")).open("xb") as stdout, \
                 (args.output / (phase + ".stderr.log")).open("xb") as stderr:
                child = subprocess.Popen(command, stdout=stdout, stderr=stderr)
                entry["pid"] = child.pid
                report["phases"].append(entry)
                save(args.output / "progress.json", report)
                entry["exit_code"] = child.wait()
            entry["finished_at"] = time.time()
            result_path = destination / "report.json"
            if result_path.exists():
                result = json.loads(result_path.read_text())
                entry.update(status=result["status"], report_sha256=sha256(result_path))
            else:
                raise ValueError("Child exited without terminal evidence")
            save(args.output / "progress.json", report)
            if entry["exit_code"] != 0:
                report.update(status="measurement_unstable" if result["status"] == "unstable_baseline" else "failed",
                              failure_stage=phase, raw_error=result.get("error"))
                break
            if phase == "compare":
                outcome, reason = candidate_outcome(result)
                report.update(status=outcome, reason=reason, failure_stage=None)
    except Exception as exc:
        report.update(status="failed", raw_error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    report["finished_at"] = time.time()
    save(args.output / "report.json", report)
    print(json.dumps(report), flush=True)
    return 0 if report["status"] == "passed" else 2 if report["status"] == "not_met" else 1


if __name__ == "__main__":
    raise SystemExit(main())
