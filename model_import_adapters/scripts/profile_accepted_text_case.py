#!/usr/bin/env python3
"""Profile a frozen PT2 case in fresh caches, without editing accepted evidence.

This diagnostic trace selects optimization candidates. It is deliberately not
the paired performance acceptance protocol and must not be used as a speedup.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import sys
import time
import traceback


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--case", type=Path, required=True)
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--batch", type=int, default=4)
    parser.add_argument("--sequence", type=int, default=64)
    parser.add_argument("--iterations", type=int, default=10)
    args = parser.parse_args()
    if (args.batch, args.sequence) not in {(1, 8), (2, 24), (4, 64), (2, 8), (1, 64)} or args.iterations <= 0:
        parser.error("Use a frozen shape and positive iterations")
    args.output.mkdir(parents=True, exist_ok=False)
    os.environ.update(FLAGTREE_BACKEND="ppu", TORCHINDUCTOR_WORKER_START="spawn",
                      TORCHINDUCTOR_COMPILE_THREADS="1",
                      TRITON_CACHE_DIR=str(args.output / "triton-cache"),
                      TORCHINDUCTOR_CACHE_DIR=str(args.output / "inductor-cache"),
                      TRITON_KERNEL_DUMP="1", TRITON_DUMP_DIR=str(args.output / "triton-dump"))
    sys.path.insert(0, str(args.source / "model_import_adapters/src"))
    result = {"status": "failed", "case": str(args.case), "scope": "diagnostic_only_not_paired_acceptance",
              "shape": [args.batch, args.sequence], "iterations": args.iterations,
              "physical_devices": os.environ.get("CUDA_VISIBLE_DEVICES")}
    try:
        import numpy as np
        import torch
        from model_import_adapters.compiled_execution import _retarget_factory_devices
        report = json.loads((args.case / "report.json").read_text())
        protocol = json.loads((args.case / "task-protocol.json").read_text())
        assert report["status"] == "passed"
        assert torch.cuda.get_device_name(0) == "PPU-ZW810E"
        probe = next(p for p in report["probes"] if (p["batch"], p["sequence"]) == (args.batch, args.sequence))
        archive = args.case / Path(probe["archive"]).name
        assert hashlib.sha256(archive.read_bytes()).hexdigest() == probe["sha256"]
        with np.load(archive, allow_pickle=False) as data:
            inputs = tuple(torch.from_numpy(data[k].copy()).to("cuda:0") for k in probe["input_keys"])
            reference = data["original_output"].copy()
        module = torch.export.load(args.case / "artifacts/model.core_aten.pt2").module().to("cuda:0")
        result["retargeted_factories"] = _retarget_factory_devices(module, "cuda:0")
        result["compile_options"] = protocol.get("compile_options", {})
        compiled = torch.compile(module, fullgraph=True, dynamic=True, options=result["compile_options"])
        with torch.inference_mode():
            start = time.perf_counter(); output = compiled(*inputs); torch.cuda.synchronize()
            result["first_call_s"] = time.perf_counter() - start
            leaves = torch.utils._pytree.tree_leaves(output)
            assert len(leaves) == 1 and isinstance(leaves[0], torch.Tensor)
            candidate = leaves[0].detach().cpu().numpy()
            assert candidate.shape == reference.shape and candidate.dtype == reference.dtype
            assert np.isfinite(candidate).all() and np.allclose(candidate, reference, atol=3e-4, rtol=3e-4)
            result["max_abs_error"] = float(np.max(np.abs(candidate-reference)))
            for _ in range(20):
                compiled(*inputs)
            torch.cuda.synchronize()
            activities = [torch.profiler.ProfilerActivity.CPU]
            if torch.profiler.ProfilerActivity.CUDA in torch.profiler.supported_activities():
                activities.append(torch.profiler.ProfilerActivity.CUDA)
            result["activities"] = [str(a) for a in activities]
            with torch.profiler.profile(activities=activities, record_shapes=True) as profile:
                for _ in range(args.iterations):
                    compiled(*inputs)
                torch.cuda.synchronize()
        profile.export_chrome_trace(str(args.output / "trace.json"))
        events = [{"name": e.key, "count": e.count,
                   "self_cpu_us": e.self_cpu_time_total,
                   "self_device_us": e.self_device_time_total,
                   "device_us": e.device_time_total} for e in profile.key_averages()]
        result.update(status="passed", device=torch.cuda.get_device_name(0),
                      model_id=report["model_id"], revision=report["revision"],
                      events=sorted(events, key=lambda e: e["self_device_us"], reverse=True))
    except Exception as exc:
        result.update(error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    (args.output / "report.json").write_text(json.dumps(result, indent=2, allow_nan=False) + "\n")
    print(json.dumps({k: v for k, v in result.items() if k not in {"events", "traceback"}}), flush=True)
    return 0 if result["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
