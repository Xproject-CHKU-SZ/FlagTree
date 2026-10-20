#!/usr/bin/env python3
"""Replay one fresh B0 PT2 on PPU with an explicit, runtime-qualified scene B2.

The fresh B0 original/eager/roundtrip/compiled tensors remain the references.
This stage performs a fresh PT2 eager and compiled replay, not another model
download/export or a CPU model forward. Original PT2 and B0 caches are read-only.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import sys
import time
import traceback


PROBES = {(1,8), (2,24), (4,64), (2,8), (1,64)}


def sha256(path):
    h = hashlib.sha256()
    with Path(path).open("rb") as f:
        for chunk in iter(lambda: f.read(1024*1024), b""):
            h.update(chunk)
    return h.hexdigest()


def region_shape_supported(m, k, n, a_stride, weight_stride, bias_stride, same_device, fp32):
    return (1 <= m <= 64 and k == 384 and n == 1536 and a_stride == 1
            and weight_stride == 1 and bias_stride == 1 and same_device and fp32)


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--baseline-case", type=Path, required=True)
    p.add_argument("--model-id", required=True)
    p.add_argument("--revision", required=True)
    p.add_argument("--source", type=Path, required=True)
    p.add_argument("--kernel-root", type=Path, required=True)
    p.add_argument("--output", type=Path, required=True)
    p.add_argument("--triton-cache", type=Path)
    args = p.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    cache = args.triton_cache or args.output / "triton-cache"
    os.environ.update(FLAGTREE_BACKEND="ppu", TORCHINDUCTOR_WORKER_START="spawn",
                      TORCHINDUCTOR_COMPILE_THREADS="1", TRITON_KERNEL_DUMP="1",
                      TRITON_DUMP_DIR=str(args.output / "dump"), TRITON_CACHE_DIR=str(cache),
                      TORCHINDUCTOR_CACHE_DIR=str(args.output / "inductor-cache"), HF_HUB_OFFLINE="1")
    sys.path[:0] = [str(args.source / "model_import_adapters/src"), str(args.kernel_root)]
    report = {"model_id": args.model_id, "revision": args.revision, "status": "failed",
              "failure_stage": "preflight", "probes": [], "cpu_model_forward": "not_run",
              "baseline_case": str(args.baseline_case), "source": str(args.source),
              "kernel_root": str(args.kernel_root), "triton_cache": str(cache),
              "reference_scope": "fresh B0 four-route references plus fresh B2 PT2 eager/compiled replay",
              "performance_scope": "unpaired regression screen only; not speedup acceptance"}
    (args.output / "command.json").write_text(json.dumps([sys.executable, *sys.argv], indent=2)+"\n")
    try:
        import importlib.metadata as metadata
        import numpy as np
        import torch
        import triton
        from model_import_adapters.compiled_execution import _retarget_factory_devices
        from model_import_adapters.scene_fusion import rewrite_small_mlp_epilogues
        from triton_kernels.ppu_mlp import small_mlp_gelu

        assert torch.cuda.is_available() and torch.cuda.get_device_name(0) == "PPU-ZW810E"
        baseline_report = json.loads((args.baseline_case / "report.json").read_text())
        protocol = json.loads((args.baseline_case / "task-protocol.json").read_text())
        manifest = json.loads((args.baseline_case / "artifacts/manifest.json").read_text())
        assert baseline_report["status"] == "passed" and baseline_report["model_id"] == args.model_id
        assert baseline_report["revision"] == args.revision
        assert len(baseline_report["probes"]) == 5 and {(x["batch"],x["sequence"]) for x in baseline_report["probes"]} == PROBES
        pt2 = args.baseline_case / "artifacts/model.core_aten.pt2"
        pt2_hash = sha256(pt2)
        assert pt2_hash == manifest["artifact"]["sha256"]
        original = torch.export.load(pt2).module().to("cuda:0")
        assert all(t.dtype == torch.float32 for t in original.parameters() if t.is_floating_point())
        _retarget_factory_devices(original, "cuda:0")
        original_code = original.code
        optimized, matched = rewrite_small_mlp_epilogues(original, torch.ops.flagtree_scene.small_mlp_gelu.default)
        assert original.code == original_code
        report.update(task=protocol["task"], device=torch.cuda.get_device_name(0),
                      physical_device=os.environ.get("CUDA_VISIBLE_DEVICES"), parameter_dtype="FP32",
                      torch=torch.__version__, triton=triton.__version__, pt2_sha256=pt2_hash,
                      flagtree=metadata.version("flagtree"), python=sys.version,
                      target=str(triton.runtime.driver.active.get_current_target()),
                      case_script_sha256=sha256(__file__),
                      scene_source_sha256=sha256(args.source / "model_import_adapters/src/model_import_adapters/scene_fusion.py"),
                      kernel_source_sha256=sha256(args.kernel_root / "triton_kernels/ppu_mlp.py"),
                      dot_helper_sha256=sha256(args.kernel_root / "triton_kernels/matmul_ogs_details/_common.py"),
                      baseline_report_sha256=sha256(args.baseline_case / "report.json"),
                      baseline_protocol_sha256=sha256(args.baseline_case / "task-protocol.json"),
                      matched_regions=matched, compile_options=protocol.get("compile_options", {}))
        (args.output / "original_graph.py").write_text(original.code)
        if matched:
            (args.output / "scene_graph.py").write_text(optimized.code)
        native_compiled = torch.compile(original, fullgraph=True, dynamic=True, options=report["compile_options"])
        scene_compiled = (torch.compile(optimized, fullgraph=True, dynamic=True, options=report["compile_options"])
                          if matched else None)
        target_names = {item["addmm"] for item in matched}

        class RuntimeGuard(torch.fx.Interpreter):
            def __init__(self):
                super().__init__(original)
                self.regions = []

            def run_node(self, node):
                if node.name in target_names:
                    values, _ = self.fetch_args_kwargs_from_env(node)
                    b, a, w = values[:3]
                    same_device = a.device == w.device == b.device and a.device.type == "cuda"
                    fp32 = all(t.dtype == torch.float32 for t in (a,w,b))
                    m, k, n = a.shape[0], a.shape[1], w.shape[1]
                    self.regions.append({"node": node.name, "shape_mkn": [m,k,n],
                        "supported": region_shape_supported(m,k,n,a.stride(1),w.stride(0),b.stride(0),same_device,fp32)})
                return super().run_node(node)

        def one_tensor(value):
            leaves = torch.utils._pytree.tree_leaves(value)
            assert len(leaves) == 1 and isinstance(leaves[0], torch.Tensor)
            assert leaves[0].device.type == "cuda"
            return leaves[0].detach().cpu().numpy()

        def compare(actual, expected):
            assert actual.shape == expected.shape and actual.dtype == expected.dtype
            delta = np.abs(actual.astype(np.float64)-expected.astype(np.float64))
            return {"passed": bool(np.isfinite(actual).all() and np.isfinite(expected).all()
                    and np.all(delta <= 3e-4+3e-4*np.abs(expected.astype(np.float64)))),
                    "max_abs_error": float(delta.max()),
                    "max_relative_error": float(np.max(delta/np.maximum(np.abs(expected.astype(np.float64)),1e-12)))}

        for probe in baseline_report["probes"]:
            b, length = probe["batch"], probe["sequence"]
            report["failure_stage"] = f"probe_{b}x{length}"
            archive = args.baseline_case / Path(probe["archive"]).name
            assert sha256(archive) == probe["sha256"]
            with np.load(archive, allow_pickle=False) as data:
                inputs = tuple(torch.from_numpy(data[k].copy()).to("cuda:0") for k in probe["input_keys"])
                references = {name: data[name].copy() for name in ("original_output", "eager_output", "restored_output", "compiled_output")}
            with torch.inference_mode():
                restored = one_tensor(original(*inputs))
                regions = []
                if matched:
                    guard = RuntimeGuard()
                    guarded = one_tensor(guard.run(*inputs))
                    assert compare(guarded, restored)["passed"]
                    regions = guard.regions
                hit = bool(matched) and len(regions) == len(matched) and all(r["supported"] for r in regions)
                chosen = scene_compiled if hit else native_compiled
                start = time.perf_counter(); result = chosen(*inputs); torch.cuda.synchronize()
                first = time.perf_counter()-start
                array = one_tensor(result)
                comparisons = {name: compare(array, reference) for name, reference in references.items()}
                comparisons["fresh_pt2_eager"] = compare(array, restored)
                assert all(compare(restored, reference)["passed"] for reference in references.values())
                assert all(value["passed"] for value in comparisons.values()), comparisons
                for _ in range(3):
                    chosen(*inputs)
                torch.cuda.synchronize(); samples = []
                for _ in range(3):
                    start = time.perf_counter(); chosen(*inputs); torch.cuda.synchronize()
                    samples.append((time.perf_counter()-start)*1000)
            dest = args.output / f"probe-{b}x{length}.npz"
            np.savez_compressed(dest, fresh_eager=restored, optimized=array)
            p50 = float(np.median(samples)); b0_p50 = float(probe["p50_ms"])
            record = {"batch": b, "sequence": length, "hit": hit, "regions": regions,
                      "route": "scene_triton" if hit else "original_compiled",
                      "retained_reason": None if hit else "no_pattern" if not matched else "runtime_shape_or_layout_guard",
                      "comparisons": comparisons, "first_call_s": first, "screen_samples_ms": samples,
                      "screen_p50_ms": p50, "b0_unpaired_p50_ms": b0_p50,
                      "needs_paired_regression_check": hit and p50 > 1.1*b0_p50,
                      "archive": str(dest), "sha256": sha256(dest), "baseline_probe_sha256": probe["sha256"]}
            report["probes"].append(record)
            (args.output / "progress.json").write_text(json.dumps(report, indent=2, allow_nan=False)+"\n")
            print(json.dumps({"model_id": args.model_id, "shape": [b,length], "hit": hit, "status": "passed"}), flush=True)
        assert original.code == original_code and sha256(pt2) == pt2_hash
        evidence = []
        for folder in (args.output / "dump", args.output / "inductor-cache"):
            for path in folder.rglob("*"):
                if path.is_file() and path.suffix in {".ttir", ".ttgir", ".llir", ".hgbin", ".py"}:
                    evidence.append({"path": str(path.relative_to(args.output)), "sha256": sha256(path), "bytes": path.stat().st_size})
        (args.output / "compiler-evidence.json").write_text(json.dumps(evidence, indent=2)+"\n")
        report.update(status="passed", failure_stage=None, original_artifact_unchanged=True,
                      hit_probes=sum(x["hit"] for x in report["probes"]),
                      retained_probes=sum(not x["hit"] for x in report["probes"]),
                      evidence_sha256=sha256(args.output / "compiler-evidence.json"))
    except Exception as exc:
        report.update(error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    report["finished_at"] = time.time()
    (args.output / "report.json").write_text(json.dumps(report, indent=2, allow_nan=False)+"\n")
    print(json.dumps({key:value for key,value in report.items() if key in {"model_id", "status", "failure_stage", "error", "hit_probes", "retained_probes"}}), flush=True)
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
