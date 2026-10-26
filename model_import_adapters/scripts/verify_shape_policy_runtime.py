#!/usr/bin/env python3
"""Real-PPU MLP routing/cache/rollback checks, not model performance acceptance."""
from __future__ import annotations
import argparse
import hashlib
import json
import os
from pathlib import Path
import sys
import time
import traceback


def sha256(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def save(path, value):
    path.write_text(json.dumps(value, indent=2, allow_nan=False) + "\n", encoding="utf-8")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--fixtures", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    os.environ.update(FLAGTREE_BACKEND="ppu", TORCHINDUCTOR_WORKER_START="spawn",
        TORCHINDUCTOR_COMPILE_THREADS="1", OMP_NUM_THREADS="1", MKL_NUM_THREADS="1",
        TRITON_CACHE_DIR=str(args.output/"triton-cache"),
        TORCHINDUCTOR_CACHE_DIR=str(args.output/"inductor-cache"), TRITON_KERNEL_DUMP="0")
    sys.path[:0] = [str(args.source/"model_import_adapters/src"), str(args.source/"python/triton_kernels")]
    result = {"status": "failed", "scope": "real_MiniLM_first_MLP_only_not_full_model_acceptance",
        "cpu_model_forward": "not_run", "performance_acceptance": "not_attempted",
        "physical_device": os.environ.get("CUDA_VISIBLE_DEVICES"), "phases": {}, "started_at": time.time()}
    save(args.output/"command.json", [sys.executable, *sys.argv])
    try:
        import numpy as np
        import torch
        import triton
        from torch._dynamo.utils import counters
        from model_import_adapters.shape_policy import policy_identity
        from model_import_adapters.shape_policy_runtime import (MlpPolicyRouter, compile_mlp_router, policy_document)
        assert torch.cuda.is_available() and torch.cuda.get_device_name(0) == "PPU-ZW810E"
        torch.set_num_threads(1)
        torch.set_float32_matmul_precision("highest")
        manifest = json.loads(args.fixtures.read_text())
        source_files = {name: sha256(args.source/name) for name in (
            "model_import_adapters/src/model_import_adapters/shape_policy.py",
            "model_import_adapters/src/model_import_adapters/shape_policy_runtime.py",
            "python/triton_kernels/triton_kernels/ppu_mlp.py",
            "python/triton_kernels/triton_kernels/ppu_mlp_shape.py")}
        source_hash = hashlib.sha256(json.dumps(source_files, sort_keys=True).encode()).hexdigest()
        ident = policy_identity(model_id=manifest["model_id"], revision=manifest["revision"], task=manifest["task"],
            dtype="float32", strides=[[384,1],[1,384],[1]], precision="tf32x3", target="PPU-ZW810E",
            compiler_sha256=sha256(Path(triton.__file__).parent/"backends/ppu/compiler.py"),
            source_sha256=source_hash, blocks=(16,32))
        policy_path = args.output/"policy.json"
        save(policy_path, policy_document(ident))
        stale_path = args.output/"stale-policy.json"
        fields = dict(ident["fields"]); fields.pop("policy_version")
        stale = policy_document(policy_identity(**{**fields, "revision": "0"*40}))
        save(stale_path, stale)
        router = compile_mlp_router(identity=ident, policy_path=policy_path, enabled=True)
        def sibling(path, enabled, identity=ident):
            return MlpPolicyRouter(identity=identity, policy_path=path, enabled=enabled,
                native_compiled=router.native_compiled, scene_compiled=router.scene_compiled,
                candidates=router._candidates)
        baseline = sibling(policy_path, False)
        restored = sibling(policy_path, False)
        rejected = sibling(stale_path, True)
        single_identity = policy_identity(**{**fields, "blocks": (16,16)})
        single_path = args.output/"single-config-policy.json"
        save(single_path, policy_document(single_identity))
        single = sibling(single_path, True, single_identity)
        assert single.namespace != router.namespace
        result.update(identity=ident, source_files=source_files, fixture_manifest_sha256=sha256(args.fixtures),
            torch=torch.__version__, triton=triton.__version__, device=torch.cuda.get_device_name(0),
            cpu_affinity=sorted(os.sched_getaffinity(0)))
        fixtures = []
        for entry in manifest["fixtures"]:
            path = Path(entry["file"])
            assert sha256(path) == entry["sha256"]
            with np.load(path, allow_pickle=False) as archive:
                # Keep the saved transposed linear layout instead of .copy() to C order.
                tensors = tuple(torch.from_numpy(np.array(archive[key], copy=True, order="K")).to("cuda:0")
                                for key in ("x", "weight", "bias"))
                reference = archive["reference"].copy()
            fixtures.append((entry, tensors, reference))
        arrays = {}
        def checked(value, reference):
            actual = value.detach().cpu().numpy()
            delta = np.abs(actual.astype(np.float64)-reference.astype(np.float64))
            assert actual.shape == reference.shape and actual.dtype == reference.dtype
            assert np.isfinite(actual).all() and np.isfinite(reference).all()
            assert np.all(delta <= 3e-4+3e-4*np.abs(reference.astype(np.float64)))
            return actual, float(delta.max())
        with torch.inference_mode():
            for name, current in (("baseline_disabled",baseline),("modified_enabled",router),
                                  ("rollback_disabled",restored),("stale_policy_b0",rejected),("single_config_b0",single)):
                records = []
                for index, (entry, tensors, reference) in enumerate(fixtures):
                    value = current(*tensors); torch.cuda.synchronize()
                    actual, error = checked(value, reference)
                    arrays[f"{name}_{index}"] = actual
                    expected = "native_b0" if entry["shape_mkn"][0] > 64 else (
                        "shape_bm32" if name == "modified_enabled" and entry["shape_mkn"][0] > 16 else "scene_b0")
                    assert current.last_decision["compiled_route"] == expected
                    records.append({"shape_mkn":entry["shape_mkn"],"input_sha256":entry["sha256"],
                        "max_abs_error":error,"decision":current.last_decision})
                result["phases"][name] = {"status":"passed","probes":records,"routing":current.snapshot()}
            # Actual per-request routing including dispatch/cache lookup, no padding.
            trace = [0,1,0,4,3,2,1,4,0,2]*3
            before = counters["stats"]["unique_graphs"]
            routes = []
            mixed_values = []
            start = time.perf_counter()
            for index in trace:
                _, tensors, reference = fixtures[index]
                value = router(*tensors)
                routes.append(router.last_decision["compiled_route"])
                mixed_values.append(value)
            torch.cuda.synchronize()
            duration = time.perf_counter()-start
            after = counters["stats"]["unique_graphs"]
            assert before == after, "Unexpected graph compilation in warmed mixed requests"
            mixed_errors = [checked(value,fixtures[index][2])[1] for index,value in zip(trace,mixed_values)]
            result["mixed_requests"] = {"synthetic_trace":trace,"routes":routes,"requests":len(trace),"all_outputs_checked":True,
                "max_abs_error":max(mixed_errors),
                "diagnostic_wall_s":duration,"timing_scope":"dispatch+forward+terminal_sync; no noise/performance acceptance",
                "unique_graphs_before":before,"unique_graphs_after":after,"routing":router.snapshot()}
            # A valid strided request must retain native compiled, never new template.
            _, (x,w,b), reference = fixtures[0]
            padded = torch.empty((x.shape[0],x.shape[1]*2),device=x.device,dtype=x.dtype)
            padded[:,::2] = x
            value = router(padded[:,::2],w,b); torch.cuda.synchronize()
            _, error = checked(value, reference)
            assert router.last_decision["compiled_route"] == "native_b0"
            result["strided_miss"] = {"status":"passed","max_abs_error":error,"decision":router.last_decision}
            # Same shape/stride, different values: metadata hits must still execute.
            _, (x,w,b), _ = fixtures[1]
            changed_x = x * 0.5
            fresh = torch.nn.functional.gelu(torch.addmm(b,changed_x,w),approximate="none")
            value = router(changed_x,w,b); torch.cuda.synchronize()
            _, error = checked(value, fresh.detach().cpu().numpy())
            result["changed_values_same_metadata"] = {"status":"passed","max_abs_error":error,
                "decision":router.last_decision,"reference_device":"PPU","cpu_model_forward":"not_run"}
        np.savez_compressed(args.output/"outputs.npz", **arrays)
        result.update(status="passed", output_sha256=sha256(args.output/"outputs.npz"),
            policy_sha256=sha256(policy_path),stale_policy_sha256=sha256(stale_path),
            restored_behavior="policy disabled: qualified scene B0; unsupported native fullgraph B0; no eager fallback")
    except Exception as exc:
        result.update(error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    evidence = [{"path":str(p.relative_to(args.output)),"bytes":p.stat().st_size,"sha256":sha256(p)}
                for directory in ("triton-cache","inductor-cache") for p in (args.output/directory).rglob("*")
                if p.is_file() and p.suffix in {".ttir",".ttgir",".llir",".hgbin",".py",".json",".so"}]
    save(args.output/"compiler-evidence.json", evidence)
    result["compiler_evidence_sha256"] = sha256(args.output/"compiler-evidence.json")
    result["observed_stages"] = sorted({Path(item["path"]).suffix for item in evidence})
    result["finished_at"] = time.time()
    save(args.output/"report.json",result)
    print(json.dumps({k:result.get(k) for k in ("status","scope","error","restored_behavior")}),flush=True)
    return 0 if result["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
