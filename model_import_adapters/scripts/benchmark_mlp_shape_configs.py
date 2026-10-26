#!/usr/bin/env python3
"""Calibrate/tune block_m against the SAME existing fused MLP on real fixtures.

No new fusion or precision change is introduced on the candidate side. Inputs
outside the qualified M domain are recorded and never sent to this kernel.
"""
from __future__ import annotations

import argparse
import json
import math
import os
from pathlib import Path
import statistics
import sys
import time
import traceback

from benchmark_scene_pair import sha256, paired_rounds, summarize_rounds, freeze_gate, performance_passed


def read(path):
    return json.loads(path.read_text(encoding="utf-8"))


def save(path, value):
    temporary = path.with_suffix(path.suffix + ".tmp")
    temporary.write_text(json.dumps(value, indent=2, allow_nan=False) + "\n", encoding="utf-8")
    os.replace(temporary, path)


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--phase", choices=("calibrate", "tune"), required=True)
    p.add_argument("--fixtures", type=Path, required=True)
    p.add_argument("--source", type=Path, required=True)
    p.add_argument("--output", type=Path, required=True)
    p.add_argument("--calibration", type=Path)
    args = p.parse_args()
    if (args.phase == "tune") != (args.calibration is not None):
        p.error("Only tune requires calibration")
    args.output.mkdir(parents=True, exist_ok=False)
    os.environ.update(FLAGTREE_BACKEND="ppu", TORCHINDUCTOR_WORKER_START="spawn",
                      TORCHINDUCTOR_COMPILE_THREADS="1", TRITON_KERNEL_DUMP="0",
                      TRITON_CACHE_DIR=str(args.output / "triton-cache"),
                      TORCHINDUCTOR_CACHE_DIR=str(args.output / "inductor-cache"),
                      OMP_NUM_THREADS="1", MKL_NUM_THREADS="1")
    for key in ("TRITON_ALWAYS_COMPILE", "TORCH_COMPILE_DEBUG", "TRITON_DUMP_DIR"):
        os.environ.pop(key, None)
    sys.path.insert(0, str(args.source / "python/triton_kernels"))
    report = {"status": "failed", "phase": args.phase, "cases": [], "cpu_model_forward": "not_run",
              "scope": "configuration-only local complete resident-input MLP; not model speedup",
              "warmup": 20, "rounds": 5, "samples_per_group": 50, "order": "ABBA/BAAB"}
    save(args.output / "command.json", [sys.executable, *sys.argv])
    emit = lambda value: print(json.dumps(value), flush=True)
    try:
        import numpy as np
        import torch
        import triton
        from triton_kernels.ppu_mlp import small_mlp_gelu
        from triton_kernels.ppu_mlp_shape import small_mlp_gelu_shape

        if torch.cuda.get_device_name(0) != "PPU-ZW810E":
            raise ValueError("PPU-ZW810E required")
        torch.set_num_threads(1)
        torch.set_float32_matmul_precision("highest")
        identity = {"fixtures_sha256": sha256(args.fixtures), "script_sha256": sha256(__file__),
                    "physical_device": os.environ.get("CUDA_VISIBLE_DEVICES"),
                    "cpu_affinity": sorted(os.sched_getaffinity(0)),
                    "torch": torch.__version__, "triton": triton.__version__,
                    "compiler_sha256": sha256(Path(triton.__file__).parent / "backends/ppu/compiler.py"),
                    "sources": {f: sha256(args.source / f) for f in (
                        "python/triton_kernels/triton_kernels/ppu_mlp.py",
                        "python/triton_kernels/triton_kernels/ppu_mlp_shape.py",
                        "python/triton_kernels/triton_kernels/matmul_ogs_details/_common.py")}}
        report["identity"] = identity
        calibration = read(args.calibration) if args.calibration else None
        if calibration and (calibration["status"] != "calibrated" or calibration["identity"] != identity):
            raise ValueError("Frozen calibration not ready or identity drift")
        if calibration:
            report["calibration_sha256"] = sha256(args.calibration)
        frozen = {tuple(c["shape_mkn"]): c for c in calibration["cases"]} if calibration else {}
        fixture = read(args.fixtures)
        baseline = torch.compile(small_mlp_gelu, fullgraph=True, dynamic=True)
        report["excluded_configs"] = [{"block_m": 8, "reason": "failed nine real-PPU boundary precision probes; see kernel-unit-v1.stderr.log"}]
        candidates = {bm: torch.compile(lambda x,w,b,block=bm: small_mlp_gelu_shape(x,w,b,block), fullgraph=True, dynamic=True) for bm in (16,32)}
        with torch.inference_mode():
            for record in fixture["fixtures"]:
                path = Path(record["file"])
                if sha256(path) != record["sha256"]:
                    raise ValueError("Fixture hash changed")
                with np.load(path, allow_pickle=False) as data:
                    x,w,b,ref = [torch.from_numpy(data[k].copy(order="K")).to("cuda:0") for k in ("x","weight","bias","reference")]
                m,k = x.shape; n = w.shape[1]
                eligible = 1 <= m <= 64 and k == 384 and n == 1536
                item = {"shape_mkn": [m,k,n], "fixture_sha256": record["sha256"], "eligible": eligible, "candidates": []}
                if not eligible:
                    item.update(status="original_compiled", reason="outside_qualified_kernel_domain")
                    report["cases"].append(item)
                    continue
                a = lambda: baseline(x,w,b)
                start = time.perf_counter(); value = a(); torch.cuda.synchronize()
                first_a = time.perf_counter()-start
                if not bool(torch.isfinite(value).all()) or not bool(((value-ref).abs() <= 3e-4+3e-4*ref.abs()).all()):
                    raise ValueError("Existing fused baseline failed precision")
                for _ in range(20): a()
                torch.cuda.synchronize()
                if not calibration:
                    start = time.perf_counter()
                    for _ in range(100): a()
                    torch.cuda.synchronize()
                    repeats = max(1,min(4096,math.ceil(0.010/((time.perf_counter()-start)/100))))
                    rounds = paired_rounds(a,a,repeats,torch.cuda.synchronize,
                                          lambda v: emit({"shape": [m,k,n], "phase": "calibrate", **v}))
                    summary = summarize_rounds(rounds)
                    item.update(rounds=rounds,summary=summary,gate=freeze_gate(summary),repeats_per_block=repeats,status="calibrated")
                else:
                    original = frozen[m,k,n]
                    if original["fixture_sha256"] != record["sha256"]:
                        raise ValueError("Calibration fixture drift")
                    repeats,gate = original["repeats_per_block"],original["gate"]
                    item.update(gate=gate,baseline_first_call_s=first_a,repeats_per_block=repeats)
                    for bm, compiled in candidates.items():
                        candidate = {"block_m": bm, "status": "failed"}
                        try:
                            c = lambda: compiled(x,w,b)
                            start = time.perf_counter(); value = c(); torch.cuda.synchronize()
                            first_c = time.perf_counter()-start
                            if not bool(torch.isfinite(value).all()) or not bool(((value-ref).abs() <= 3e-4+3e-4*ref.abs()).all()):
                                raise ValueError("Candidate precision failed")
                            for _ in range(20): a(); c()
                            rounds = paired_rounds(a,c,repeats,torch.cuda.synchronize,
                                                  lambda v: emit({"shape": [m,k,n],"block_m": bm,**v}))
                            summary = summarize_rounds(rounds)
                            peaks = {}
                            for label,fn in (("A",a),("B",c)):
                                torch.cuda.synchronize(); before = torch.cuda.memory_allocated()
                                torch.cuda.reset_peak_memory_stats(); value = fn(); torch.cuda.synchronize()
                                peaks[label] = torch.cuda.max_memory_allocated()-before
                                del value
                            candidate.update(rounds=rounds,summary=summary,first_call_s=first_c,precision_passed=True,
                                             performance_passed=performance_passed(summary,gate),transient_bytes=peaks,
                                             first_call_cost_passed=first_c <= first_a+gate["max_extra_first_call_seconds"],
                                             resource_passed=peaks["B"] <= peaks["A"]+gate["max_transient_memory_extra_bytes"])
                            candidate["status"] = "passed" if all(candidate[key] for key in ("performance_passed","first_call_cost_passed","resource_passed")) else "retain_baseline"
                        except Exception:
                            candidate["error"] = traceback.format_exc()
                        item["candidates"].append(candidate)
                        save(args.output / "progress.json", {**report,"current_case":item})
                    item["status"] = "measured"
                report["cases"].append(item)
                save(args.output / "progress.json", report)
                emit({"shape":[m,k,n],"status":item["status"]})
        eligible_cases = [c for c in report["cases"] if c["eligible"]]
        if not calibration:
            report["status"] = "calibrated" if eligible_cases and all(c["gate"]["ready"] for c in eligible_cases) else "unstable_baseline"
        else:
            # A configuration must pass every measured shape in its bucket.
            # There is no best-point selection or averaging away a failing tail.
            selected = []
            for lo,hi in ((1,16),(17,64)):
                cases = [c for c in eligible_cases if lo <= c["shape_mkn"][0] <= hi]
                valid = []
                for bm in (16,32):
                    values = [next(x for x in c["candidates"] if x["block_m"] == bm) for c in cases]
                    if values and all(v["status"] == "passed" for v in values):
                        speed = math.exp(statistics.mean(math.log(v["summary"]["geomean_speedup"]) for v in values))
                        valid.append((speed,bm))
                selected.append(max(valid)[1] if valid else 16)
            report.update(status="measured",selected_blocks=selected,selection_scope="local fixture bucket only; requires model paired validation before enablement")
    except Exception as exc:
        report.update(error=f"{type(exc).__name__}: {exc}",traceback=traceback.format_exc())
    report["finished_at"] = time.time()
    save(args.output / "report.json",report)
    emit({"status":report["status"],"selected_blocks":report.get("selected_blocks")})
    return 0 if report["status"] in {"calibrated","measured"} else 1


if __name__ == "__main__":
    raise SystemExit(main())
