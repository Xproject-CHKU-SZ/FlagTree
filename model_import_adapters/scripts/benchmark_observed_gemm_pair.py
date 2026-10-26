#!/usr/bin/env python3
"""Paired PPU benchmark for a trace-confirmed GEMM geometry.

Calibration compares BM16 against the exact same BM16 callable (A/A). Compare
then measures BM16 versus BM32 with identical tf32x3 arithmetic. This is a
local kernel experiment: no CPU forward, no complete-model claim, no model
graph rewrite, and no reuse of the stopped ten-model performance ledger.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import math
import os
from pathlib import Path
import sys
import time
import traceback

from benchmark_scene_pair import (freeze_gate, paired_rounds, performance_passed,
                                  sha256, summarize_rounds)
from memory_acceptance import MEMORY_POLICY, memory_observation


PROBES = {(1, 8), (2, 24), (4, 64), (2, 8), (1, 64)}


def read(path):
    return json.loads(Path(path).read_text(encoding="utf-8"))


def save(path, value):
    path.write_text(json.dumps(value, indent=2, allow_nan=False) + "\n", encoding="utf-8")


def check(actual, expected):
    import numpy as np
    if actual.shape != expected.shape or actual.dtype != expected.dtype:
        raise ValueError("Shape/dtype mismatch")
    if not np.isfinite(actual).all() or not np.isfinite(expected).all():
        return {"passed":False,"max_abs_error":None,"max_relative_error":None}
    delta = np.abs(actual.astype(np.float64) - expected.astype(np.float64))
    passed = bool(actual.shape == expected.shape and actual.dtype == expected.dtype
                  and np.isfinite(actual).all() and np.isfinite(expected).all()
                  and np.all(delta <= 3e-4 + 3e-4*np.abs(expected.astype(np.float64))))
    return {"passed": passed, "max_abs_error": float(delta.max()),
            "max_relative_error": float(np.max(delta/np.maximum(np.abs(expected.astype(np.float64)), 1e-12)))}


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--phase", choices=("calibrate", "compare"), required=True)
    p.add_argument("--source", type=Path, required=True)
    p.add_argument("--fixtures", type=Path, nargs="+", required=True)
    p.add_argument("--output", type=Path, required=True)
    p.add_argument("--calibration", type=Path)
    args = p.parse_args()
    if (args.phase == "compare") != (args.calibration is not None):
        p.error("compare requires --calibration and calibrate forbids it")
    if len(args.fixtures) not in (1, 2):
        p.error("Use one or two captured fixture reports")
    args.output.mkdir(parents=True, exist_ok=False)
    os.environ.update(FLAGTREE_BACKEND="ppu", TORCHINDUCTOR_WORKER_START="spawn",
        TORCHINDUCTOR_COMPILE_THREADS="1", OMP_NUM_THREADS="1", MKL_NUM_THREADS="1",
        TRITON_KERNEL_DUMP="0", TRITON_CACHE_DIR=str(args.output/"triton-cache"),
        TORCHINDUCTOR_CACHE_DIR=str(args.output/"inductor-cache"), HF_HUB_OFFLINE="1")
    sys.path.insert(0, str(args.source/"python/triton_kernels"))
    report = {"status":"failed", "phase":args.phase,
        "scope":"resident captured GEMM only; not complete-model latency or 301 acceptance",
        "cpu_model_forward":"not_run", "performance_acceptance":"not_attempted",
        "warmup":20,"rounds":5,"samples_per_group":50,"order":"ABBA/BAAB", "cases":[],
        "started_at":time.time(),"physical_device":os.environ.get("CUDA_VISIBLE_DEVICES"),
        "memory_policy":MEMORY_POLICY}
    save(args.output/"command.json", [sys.executable,*sys.argv])
    try:
        import numpy as np
        import torch
        import triton
        from torch._dynamo.utils import counters
        from triton_kernels.ppu_observed_gemm import observed_gemm
        if not torch.cuda.is_available() or torch.cuda.get_device_name(0) != "PPU-ZW810E":
            raise ValueError("PPU-ZW810E required")
        torch.set_num_threads(1); torch.set_float32_matmul_precision("highest")
        fixtures = [read(x) for x in args.fixtures]
        for fixture in fixtures:
            if fixture.get("status") != "passed" or set((x["batch"],x["sequence"]) for x in fixture["probes"]) != PROBES:
                raise ValueError("Five captured probes required")
        identity = {"reports":[sha256(x) for x in args.fixtures],
                    "models":[x["model_id"] for x in fixtures],
                    "memory_policy":MEMORY_POLICY,
                    "memory_policy_sha256":sha256(Path(__file__).with_name("memory_acceptance.py")),
                    "revisions":[x["revision"] for x in fixtures],
                    "source_sha256":sha256(args.source/"python/triton_kernels/triton_kernels/ppu_observed_gemm.py"),
                    "common_sha256":sha256(args.source/"python/triton_kernels/triton_kernels/matmul_ogs_details/_common.py"),
                    "measurement_sha256":sha256(args.source/"model_import_adapters/scripts/benchmark_scene_pair.py"),
                    "compiler_sha256":sha256(Path(triton.__file__).parent/"backends/ppu/compiler.py"),
                    "libtriton_sha256":sha256(Path(triton.__file__).parent/"_C/libtriton.so"),
                    "script_sha256":sha256(Path(__file__)),"torch":torch.__version__,"triton":triton.__version__,
                    "device":torch.cuda.get_device_name(0),"physical_device":os.environ.get("CUDA_VISIBLE_DEVICES"),
                    "cpu_affinity":sorted(os.sched_getaffinity(0)),"arithmetic":"tf32x3",
                    "candidates":[16,32],"scope":"K/N-specific captured GEMM"}
        report["identity"] = identity
        calibration = None
        if args.phase == "compare":
            calibration = read(args.calibration)
            if calibration.get("status") != "calibrated" or calibration.get("identity") != identity:
                raise ValueError("Calibration identity/status mismatch")
            report["calibration_sha256"] = sha256(args.calibration)
        compiled = {b: torch.compile(lambda x,w,b=b: observed_gemm(x,w,b), fullgraph=True, dynamic=True)
                    for b in (16,32)}
        frozen = {(x["model_id"], x["shape_mkn"][0]): x for x in calibration["cases"]} if calibration else {}
        with torch.inference_mode():
            for fixture in fixtures:
                weight_path = Path(fixture["weight"]["path"])
                if sha256(weight_path) != fixture["weight"]["sha256"]:
                    raise ValueError("Weight hash drift")
                with np.load(weight_path, allow_pickle=False) as data:
                    weight = torch.from_numpy(data["weight"].copy(order="K")).to("cuda:0")
                for probe in fixture["probes"]:
                    m = probe["shape_mkn"][0]
                    archive = Path(probe["fixture"])
                    if sha256(archive) != probe["fixture_sha256"]:
                        raise ValueError("Fixture hash drift")
                    with np.load(archive, allow_pickle=False) as data:
                        x = torch.from_numpy(data["x"].copy(order="K")).to("cuda:0")
                        reference = data["reference"].copy()
                    if m > 64:
                        report["cases"].append({"model_id":fixture["model_id"],"shape_mkn":probe["shape_mkn"],
                            "status":"not_hit","route":"original_compiled","reason":"M_above_64_domain"})
                        continue
                    a = compiled[16]
                    b = compiled[16] if args.phase == "calibrate" else compiled[32]
                    before = {k:dict(v) for k,v in counters.items() if k in {"stats","inductor","graph_break"}}
                    start=time.perf_counter(); av=a(x,weight);torch.cuda.synchronize();first_a=time.perf_counter()-start
                    start=time.perf_counter(); bv=b(x,weight);torch.cuda.synchronize();first_b=time.perf_counter()-start
                    aa, bb = av.detach().cpu().numpy(), bv.detach().cpu().numpy()
                    checks = {"A_reference":check(aa,reference),"B_reference":check(bb,reference),"A_B":check(bb,aa)}
                    if not all(v["passed"] for v in checks.values()):
                        raise ValueError(f"numerical mismatch at {fixture['model_id']} M={m}")
                    for _ in range(20): a(x,weight); b(x,weight)
                    torch.cuda.synchronize()
                    if calibration:
                        repeats = frozen[(fixture["model_id"],m)]["repeats_per_block"]
                    else:
                        begin=time.perf_counter()
                        for _ in range(20): a(x,weight)
                        torch.cuda.synchronize()
                        repeats=max(1,min(4096,math.ceil(.010/((time.perf_counter()-begin)/20))))
                    rounds=paired_rounds(lambda:a(x,weight),lambda:b(x,weight),repeats,torch.cuda.synchronize,
                        lambda value: print(json.dumps({"model_id":fixture["model_id"],"shape_m":m,**value}),flush=True))
                    summary=summarize_rounds(rounds)
                    item={"model_id":fixture["model_id"],"revision":fixture["revision"],"shape_mkn":probe["shape_mkn"],
                        "input_sha256":probe["fixture_sha256"],"weight_sha256":fixture["weight"]["sha256"],
                        "A":"bm16","B":"bm16" if args.phase=="calibrate" else "bm32","arithmetic":"tf32x3",
                        "checks":checks,"repeats_per_block":repeats,"rounds":rounds,"summary":summary,
                        "first_call_s":{"A":first_a,"B":first_b},
                        "counters_before":before,"counters_after":{k:dict(v) for k,v in counters.items() if k in {"stats","inductor","graph_break"}}}
                    if calibration:
                        gate=frozen[(fixture["model_id"],m)]["gate"]
                        peaks={}
                        for name,fn in (("A",a),("B",b)):
                            torch.cuda.synchronize();begin_memory=torch.cuda.memory_allocated();torch.cuda.reset_peak_memory_stats()
                            value=fn(x,weight);torch.cuda.synchronize();peaks[name]=torch.cuda.max_memory_allocated()-begin_memory;del value
                        first_ok=first_b<=first_a+gate["max_extra_first_call_seconds"]
                        item.update(gate=gate,performance_passed=performance_passed(summary,gate),
                            transient_torch_memory_bytes=peaks,first_call_cost_passed=first_ok,
                            **memory_observation(peaks,gate),
                            status="performance_passed" if performance_passed(summary,gate) and first_ok else "retain_baseline")
                    else:
                        item.update(gate=freeze_gate(summary),status="calibrated")
                    report["cases"].append(item);save(args.output/"progress.json",report)
        ready=[x for x in report["cases"] if x.get("status") not in {"not_hit"}]
        report["status"]=("calibrated" if ready and all(x["gate"]["ready"] for x in ready) else "unstable_baseline") if not calibration else ("passed" if ready and all(x["status"]=="performance_passed" for x in ready) else "retain_baseline")
        report.update(compiler=torch.__version__,triton=triton.__version__,device=torch.cuda.get_device_name(0),
                      performance_acceptance="local_only_not_model_acceptance" if calibration else "AA_only_no_gain_claim",
                      compile_counters={k:dict(v) for k,v in counters.items() if k in {"stats","inductor","graph_break"}})
    except Exception as exc:
        report.update(error=f"{type(exc).__name__}: {exc}",traceback=traceback.format_exc())
    evidence=[{"path":str(f.relative_to(args.output)),"sha256":sha256(f)} for d in ("triton-cache","inductor-cache")
              for f in (args.output/d).rglob("*") if f.is_file() and f.suffix in {".ttir",".ttgir",".llir",".hgbin",".py"}]
    save(args.output/"compiler-evidence.json",evidence);report.update(compiler_evidence_sha256=sha256(args.output/"compiler-evidence.json"),finished_at=time.time());save(args.output/"report.json",report)
    print(json.dumps({k:report.get(k) for k in ("status","error","performance_acceptance")}),flush=True)
    return 0 if report["status"] in {"calibrated","passed"} else 1


if __name__ == "__main__":
    raise SystemExit(main())
