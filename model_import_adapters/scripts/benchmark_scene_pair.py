#!/usr/bin/env python3
"""Freeze an A/A timing policy, then measure paired default-Inductor vs scene B2.

This measures the complete resident-input local MLP call, including allocation
and host dispatch, not an entire model or service. Output/reference fixtures are
captured from an accepted model. Debug IR collection belongs to another process.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import math
import os
from pathlib import Path
import statistics
import sys
import time
import traceback


def sha256(path):
    h = hashlib.sha256()
    with Path(path).open("rb") as f:
        for block in iter(lambda: f.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def summarize_rounds(rounds):
    if len(rounds) != 5:
        raise ValueError("Exactly five paired rounds required")
    ratios = []
    for r in rounds:
        for name in ("A", "B"):
            if len(r[name]) != 100 or any(not math.isfinite(x) or x <= 0 for x in r[name]):
                raise ValueError("Each label requires 100 finite positive block samples per round")
        ratios.append(statistics.median(r["A"]) / statistics.median(r["B"]))
    logs = [math.log(x) for x in ratios]
    mean = statistics.mean(logs)
    # Descriptive Student-t interval for five paired log-round summaries.
    # Serial correlation is not estimated; this is not an independence claim
    # about launch samples or a stand-alone statistical proof of speedup.
    radius = 2.776445105 * statistics.stdev(logs) / math.sqrt(5)
    return {"round_speedups": ratios, "geomean_speedup": math.exp(mean),
            "log_round_t95_lower": math.exp(mean-radius),
            "log_round_t95_upper": math.exp(mean+radius),
            "max_round_deviation_from_one": max(abs(x-1) for x in ratios)}


def freeze_gate(aa):
    noise = aa["max_round_deviation_from_one"]
    return {"ready": noise <= 0.05, "measured_aa_noise": noise,
            "min_geomean_speedup": 1 + max(0.05, 3*noise),
            "min_t95_lower": 1.0,
            "max_worst_round_regression": min(0.05, max(0.02, 3*noise)),
            "max_transient_memory_extra_bytes": 1024*1024,
            "max_extra_first_call_seconds": 10.0,
            "rationale": "case-specific engineering floor 5%, raised by 3x observed A/A drift; not an industry standard"}


def performance_passed(summary, gate):
    return (gate["ready"] and summary["geomean_speedup"] >= gate["min_geomean_speedup"]
            and summary["log_round_t95_lower"] > gate["min_t95_lower"]
            and min(summary["round_speedups"]) >= 1-gate["max_worst_round_regression"])


def sample_blocks(forward, repeats, synchronize):
    samples = []
    for _ in range(50):
        synchronize()
        start = time.perf_counter()
        for _ in range(repeats):
            forward()
        synchronize()
        samples.append((time.perf_counter()-start)*1e6/repeats)
    return samples


def paired_rounds(a, b, repeats, synchronize, emit):
    rounds = []
    for index in range(5):
        order = "ABBA" if index % 2 == 0 else "BAAB"
        item = {"index": index, "order": order, "A": [], "B": []}
        for label in order:
            item[label].extend(sample_blocks(a if label == "A" else b, repeats, synchronize))
        rounds.append(item)
        emit({"round": index, "order": order, "a_median_us": statistics.median(item["A"]),
              "b_median_us": statistics.median(item["B"])})
    return rounds


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--phase", choices=("calibrate", "compare"), required=True)
    p.add_argument("--fixtures", type=Path, required=True)
    p.add_argument("--kernel-root", type=Path, required=True)
    p.add_argument("--output", type=Path, required=True)
    p.add_argument("--calibration", type=Path)
    args = p.parse_args()
    if (args.phase == "compare") != (args.calibration is not None):
        p.error("Only compare requires --calibration")
    args.output.mkdir(parents=True, exist_ok=False)
    os.environ.update(FLAGTREE_BACKEND="ppu", TORCHINDUCTOR_WORKER_START="spawn",
                      TORCHINDUCTOR_COMPILE_THREADS="1", TRITON_KERNEL_DUMP="0",
                      TRITON_CACHE_DIR=str(args.output / "triton-cache"),
                      TORCHINDUCTOR_CACHE_DIR=str(args.output / "inductor-cache"),
                      OMP_NUM_THREADS="1", MKL_NUM_THREADS="1")
    os.environ.pop("TRITON_ALWAYS_COMPILE", None)
    sys.path.insert(0, str(args.kernel_root))
    report = {"status": "failed", "phase": args.phase, "cases": [],
              "scope": "complete resident-input local MLP; allocation and host dispatch included; not model/service speedup",
              "timing": "synchronized perf_counter; normalized block means, not individual-call tail latency",
              "warmup": 20, "rounds": 5, "samples_per_group": 50, "order": "ABBA/BAAB alternating"}
    emit = lambda value: print(json.dumps(value), flush=True)
    try:
        import numpy as np
        import torch
        import triton

        assert torch.cuda.get_device_name(0) == "PPU-ZW810E"
        torch.set_num_threads(1)
        torch.set_float32_matmul_precision("highest")
        fixture = json.loads(args.fixtures.read_text())
        identity = {"fixtures_manifest_sha256": sha256(args.fixtures), "script_sha256": sha256(__file__),
                    "model_id": fixture["model_id"], "revision": fixture["revision"],
                    "torch": torch.__version__, "triton": triton.__version__,
                    "physical_device": os.environ.get("CUDA_VISIBLE_DEVICES"),
                    "kernel_sources": {name: sha256(args.kernel_root / "triton_kernels" / name)
                                       for name in ("ppu_mlp.py", "matmul_ogs_details/_common.py")},
                    "runtime_compiler_sha256": sha256(Path(triton.__file__).parent / "backends/ppu/compiler.py"),
                    "runtime_libtriton_sha256": sha256(Path(triton.__file__).parent / "_C/libtriton.so")}
        report["identity"] = identity
        calibration = None
        if args.phase == "compare":
            calibration = json.loads(args.calibration.read_text())
            if calibration["status"] != "calibrated" or calibration["identity"] != identity:
                raise ValueError("Frozen A/A policy not ready or measurement identity changed")
            report["frozen_calibration_sha256"] = sha256(args.calibration)
            from triton_kernels.ppu_mlp import small_mlp_gelu

        def native(x, weight, bias):
            return torch.nn.functional.gelu(torch.addmm(bias, x, weight), approximate="none")

        baseline = torch.compile(native, fullgraph=True, dynamic=False)
        candidate = (torch.compile(lambda x, w, b: small_mlp_gelu(x, w, b), fullgraph=True, dynamic=False)
                     if args.phase == "compare" else None)
        synchronize = torch.cuda.synchronize
        frozen = {tuple(c["shape_mkn"]): c for c in calibration["cases"]} if calibration else {}
        with torch.inference_mode():
            for record in fixture["fixtures"]:
                path = Path(record["file"])
                if sha256(path) != record["sha256"]:
                    raise ValueError("Fixture tensor bytes changed")
                with np.load(path, allow_pickle=False) as arrays:
                    x, w, bias, reference = [torch.from_numpy(arrays[k].copy(order="K")).to("cuda:0")
                                              for k in ("x", "weight", "bias", "reference")]
                m, k = x.shape; n = w.shape[1]
                eligible = k == 384 and n == 1536 and 1 <= m <= 64
                item = {"shape_mkn": [m, k, n], "fixture_sha256": record["sha256"],
                        "eligible": eligible, "x_stride": list(x.stride()), "weight_stride": list(w.stride())}
                a = lambda: baseline(x, w, bias)
                start = time.perf_counter(); a_output = a(); synchronize()
                item["baseline_first_call_s"] = time.perf_counter()-start
                assert torch.isfinite(a_output).all() and torch.allclose(a_output, reference, atol=3e-4, rtol=3e-4)
                if args.phase == "compare" and not eligible:
                    item.update(status="not_hit", reason="large_M_guard_original_path_retained")
                    report["cases"].append(item)
                    continue
                b = a
                if args.phase == "compare":
                    b = lambda: candidate(x, w, bias)
                    start = time.perf_counter(); b_output = b(); synchronize()
                    item["candidate_first_call_s"] = time.perf_counter()-start
                    diff = (b_output-reference).abs()
                    item["max_abs_error"] = float(diff.max())
                    item["precision_passed"] = bool(torch.isfinite(b_output).all()) and bool((diff <= 3e-4+3e-4*reference.abs()).all())
                    assert item["precision_passed"] and torch.allclose(b_output, a_output, atol=3e-4, rtol=3e-4)
                for _ in range(20):
                    a(); b()
                synchronize()
                if args.phase == "calibrate":
                    start = time.perf_counter()
                    for _ in range(100):
                        a()
                    synchronize()
                    estimate = (time.perf_counter()-start)/100
                    repeats = max(1, min(4096, math.ceil(0.010/estimate)))
                else:
                    repeats = frozen[m, k, n]["repeats_per_block"]
                item["repeats_per_block"] = repeats
                rounds = paired_rounds(a, b, repeats, synchronize,
                                      lambda value: emit({"shape": [m,k,n], "phase": args.phase, **value}))
                item.update(rounds=rounds, summary=summarize_rounds(rounds))
                if args.phase == "calibrate":
                    item.update(gate=freeze_gate(item["summary"]), status="calibrated")
                else:
                    gate = frozen[m, k, n]["gate"]
                    item["gate"] = gate
                    item["performance_passed"] = performance_passed(item["summary"], gate)
                    item["first_call_cost_passed"] = (item["candidate_first_call_s"] <=
                                                      item["baseline_first_call_s"] + gate["max_extra_first_call_seconds"])
                    peaks = {}
                    for label, forward in (("A", a), ("B", b)):
                        synchronize(); before = torch.cuda.memory_allocated()
                        torch.cuda.reset_peak_memory_stats()
                        forward(); synchronize()
                        peaks[label] = torch.cuda.max_memory_allocated()-before
                    item["torch_allocator_transient_bytes"] = peaks
                    item["memory_scope"] = "both outputs resident; Torch allocation transient only, not registers or non-Torch driver allocations"
                    item["resource_passed"] = peaks["B"] <= peaks["A"] + gate["max_transient_memory_extra_bytes"]
                    item["status"] = "passed" if all(item[key] for key in ("precision_passed", "performance_passed", "first_call_cost_passed", "resource_passed")) else "failed"
                report["cases"].append(item)
                (args.output / "progress.json").write_text(json.dumps(report, indent=2, allow_nan=False)+"\n")
                emit({"shape": [m,k,n], "status": item["status"], "summary": item["summary"]})
        qualified = [item for item in report["cases"] if item["eligible"]]
        if args.phase == "calibrate":
            report["status"] = "calibrated" if qualified and all(item["gate"]["ready"] for item in qualified) else "unstable_baseline"
        else:
            report["status"] = "passed" if qualified and all(item["status"] == "passed" for item in qualified) else "failed"
            report["qualified_geomean_speedup"] = math.exp(statistics.mean(math.log(item["summary"]["geomean_speedup"]) for item in qualified))
        report["qualified_cases"] = len(qualified)
        report["unmatched_cases"] = len(report["cases"])-len(qualified)
    except Exception as exc:
        report.update(error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    (args.output / "report.json").write_text(json.dumps(report, indent=2, allow_nan=False)+"\n")
    emit({key:value for key,value in report.items() if key not in {"cases", "identity", "traceback"}})
    return 0 if report["status"] in {"calibrated", "passed"} else 1


if __name__ == "__main__":
    raise SystemExit(main())
