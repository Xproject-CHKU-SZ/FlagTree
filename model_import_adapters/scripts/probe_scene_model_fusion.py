#!/usr/bin/env python3
"""Development model smoke for an explicit PPU scene-only epilogue rewrite.

The saved PT2 is read-only. Large probes use the original compiled module;
unmatched graphs are not reported as optimized. Timings are diagnostic only.
"""
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
    parser.add_argument("--kernel-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    os.environ.update(FLAGTREE_BACKEND="ppu", TORCHINDUCTOR_WORKER_START="spawn",
                      TORCHINDUCTOR_COMPILE_THREADS="1", TRITON_KERNEL_DUMP="1",
                      TRITON_DUMP_DIR=str(args.output / "dump"),
                      TRITON_CACHE_DIR=str(args.output / "triton-cache"),
                      TORCHINDUCTOR_CACHE_DIR=str(args.output / "inductor-cache"))
    sys.path[:0] = [str(args.source / "model_import_adapters/src"), str(args.kernel_root)]
    report = {"status": "failed", "scope": "scene_only_model_development_smoke_not_performance_acceptance", "probes": []}
    try:
        import numpy as np
        import torch
        from model_import_adapters.compiled_execution import _retarget_factory_devices
        from model_import_adapters.scene_fusion import eligible_mlp_probe, rewrite_small_mlp_epilogues
        from triton_kernels.ppu_mlp import small_mlp_gelu

        assert torch.cuda.get_device_name(0) == "PPU-ZW810E"
        original_report = json.loads((args.case / "report.json").read_text())
        protocol = json.loads((args.case / "task-protocol.json").read_text())
        assert original_report["status"] == "passed"
        pt2 = args.case / "artifacts/model.core_aten.pt2"
        pt2_before = hashlib.sha256(pt2.read_bytes()).hexdigest()
        original = torch.export.load(pt2).module().to("cuda:0")
        _retarget_factory_devices(original, "cuda:0")
        original_code = original.code
        optimized, matched = rewrite_small_mlp_epilogues(original, torch.ops.flagtree_scene.small_mlp_gelu.default)
        assert original.code == original_code
        assert matched, "No qualified epilogues; do not count this as a positive smoke"
        report.update(model_id=original_report["model_id"], revision=original_report["revision"],
                      pt2_sha256=pt2_before, matched=matched, compile_options=protocol.get("compile_options", {}),
                      parameter_dtype="float32", internal_dot_precision="tf32x3",
                      device=torch.cuda.get_device_name(0), physical_device=os.environ.get("CUDA_VISIBLE_DEVICES"))
        (args.output / "original_graph.py").write_text(original_code)
        (args.output / "optimized_graph.py").write_text(optimized.code)
        baseline = torch.compile(original, fullgraph=True, dynamic=True, options=report["compile_options"])
        candidate = torch.compile(optimized, fullgraph=True, dynamic=True, options=report["compile_options"])
        for probe in original_report["probes"]:
            path = args.case / Path(probe["archive"]).name
            assert hashlib.sha256(path.read_bytes()).hexdigest() == probe["sha256"]
            with np.load(path, allow_pickle=False) as data:
                inputs = tuple(torch.from_numpy(data[k].copy()).to("cuda:0") for k in probe["input_keys"])
                reference = data["original_output"].copy()
            b, length = probe["batch"], probe["sequence"]
            hit = eligible_mlp_probe(b, length)
            chosen = candidate if hit else baseline
            with torch.inference_mode():
                start = time.perf_counter(); base = baseline(*inputs); torch.cuda.synchronize()
                base_first = time.perf_counter()-start
                start = time.perf_counter(); output = chosen(*inputs); torch.cuda.synchronize()
                first = time.perf_counter()-start
                base_array = torch.utils._pytree.tree_leaves(base)[0].detach().cpu().numpy()
                array = torch.utils._pytree.tree_leaves(output)[0].detach().cpu().numpy()
                assert array.shape == reference.shape and array.dtype == reference.dtype
                checks = {"baseline_vs_original": bool(np.allclose(base_array, reference, atol=3e-4, rtol=3e-4)),
                          "optimized_vs_original": bool(np.allclose(array, reference, atol=3e-4, rtol=3e-4)),
                          "optimized_vs_baseline": bool(np.allclose(array, base_array, atol=3e-4, rtol=3e-4)),
                          "finite": bool(np.isfinite(array).all())}
                assert all(checks.values()), checks
                samples = []
                for _ in range(20):
                    chosen(*inputs)
                torch.cuda.synchronize()
                for _ in range(15):
                    start = time.perf_counter(); chosen(*inputs); torch.cuda.synchronize()
                    samples.append((time.perf_counter()-start)*1000)
            np.savez_compressed(args.output / f"probe-{b}x{length}.npz", baseline=base_array, optimized=array)
            item = dict(batch=b, sequence=length, hit=hit, untouched_path_reason=None if hit else "large_M_guard",
                        max_abs_error=float(np.max(np.abs(array-reference))), checks=checks,
                        baseline_first_call_s=base_first, candidate_first_call_s=first, diagnostic_samples_ms=samples)
            report["probes"].append(item)
            print(json.dumps(item), flush=True)
        assert original.code == original_code and hashlib.sha256(pt2.read_bytes()).hexdigest() == pt2_before
        report.update(status="passed", original_artifact_unchanged=True,
                      hit_probes=sum(p["hit"] for p in report["probes"]),
                      untouched_probes=sum(not p["hit"] for p in report["probes"]))
    except Exception as exc:
        report.update(error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    (args.output / "report.json").write_text(json.dumps(report, indent=2, allow_nan=False)+"\n")
    print(json.dumps({k:v for k,v in report.items() if k not in {"probes", "traceback"}}), flush=True)
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
