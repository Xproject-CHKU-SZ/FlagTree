#!/usr/bin/env python3
"""Verify dtype/offset, model-layout and synchronized-caller replay guards on PPU.

Uses small saved-input fixtures, not historical model IDs or timing evidence.
The frozen replay/runtime implementation is read only. References run on PPU;
NumPy only archives/compares device results. No CPU model forward or eager retry.
"""
import argparse
from concurrent.futures import ThreadPoolExecutor
import hashlib
import json
import os
from pathlib import Path
import sys
import threading
import time
import traceback


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--cpu-affinity", type=int, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    os.sched_setaffinity(0, {args.cpu_affinity})
    os.environ.update(FLAGTREE_BACKEND="ppu", TORCHINDUCTOR_WORKER_START="spawn", TORCHINDUCTOR_COMPILE_THREADS="1",
        OMP_NUM_THREADS="1", MKL_NUM_THREADS="1", OPENBLAS_NUM_THREADS="1", TRITON_KERNEL_DUMP="1",
        TORCHINDUCTOR_CACHE_DIR=str(args.output / "inductor-cache"), TRITON_CACHE_DIR=str(args.output / "triton-cache"),
        TRITON_DUMP_DIR=str(args.output / "triton-dump"))
    sys.path[:0] = [str(args.source / "model_import_adapters/scripts"), str(args.source / "model_import_adapters/src")]
    from verify_shape_release_case import read, save, sha, require
    state = {"status": "running", "failure_stage": "identity", "checks": [], "started_at": time.time(),
        "scope": "small replay guard fixtures only; not historical IDs, performance qualification or final301",
        "cpu_model_forward": "not_run", "new_model_count": 0, "final_C1_accepted": False,
        "physical_device": os.environ.get("CUDA_VISIBLE_DEVICES"), "script_sha256": sha(__file__),
        "fixture_policy_evidence": "synthetic functional-fixture identifiers; never performance/publication evidence"}
    save(args.output / "command.json", [sys.executable, *sys.argv])
    arrays = {}; fixtures = []
    try:
        import numpy as np
        import torch
        from torch._dynamo.utils import counters
        from model_import_adapters.graph_replay import state_signature, tensor_metadata
        from model_import_adapters.replay_policy import PolicyReplayRouter, policy_document, runtime_identity
        require(torch.cuda.is_available() and torch.cuda.get_device_name(0) == "PPU-ZW810E", "Real PPU-ZW810E required")
        require(torch.cuda.device_count() == 1, "One isolated visible device required")
        torch.set_num_threads(1); torch.set_float32_matmul_precision("highest")
        frozen = read(args.source / "source-baseline.json")
        for relative, expected in frozen["files"].items():
            require(sha(args.source / relative) == expected, "Frozen source drift: " + relative)
        state.update(device=torch.cuda.get_device_name(0), source_manifest_sha256=sha(args.source / "source-baseline.json"),
            source_files_rehashed=len(frozen["files"]), cpu_affinity=sorted(os.sched_getaffinity(0)))

        class Matrix(torch.nn.Module):
            def __init__(self, shift):
                super().__init__()
                self.register_buffer("weight", torch.arange(64, dtype=torch.float32, device="cuda:0").reshape(8, 8) / 64 + shift)

            def forward(self, x):
                return x.to(torch.float32) @ self.weight

        def array(value):
            require(isinstance(value, torch.Tensor) and value.device.type == "cuda", "Expected real device tensor")
            return value.detach().cpu().numpy().copy()

        def compare(actual, reference):
            a, b = array(actual), array(reference)
            require(a.shape == b.shape and a.dtype == b.dtype, "Output shape/dtype mismatch")
            require(np.isfinite(a).all() and np.isfinite(b).all(), "Nonfinite output")
            delta = np.abs(a.astype(np.float64) - b.astype(np.float64))
            require(np.all(delta <= 3e-4 + 3e-4 * np.abs(b.astype(np.float64))), "Joint tolerance failed")
            return float(delta.max())

        def fixture(label, shift=0.0):
            module = Matrix(shift).eval()
            compiled = torch.compile(module, fullgraph=True, dynamic=True)
            x = torch.arange(16, dtype=torch.int64, device="cuda:0").reshape(2, 8)
            identity = runtime_identity(model_id="fixture/" + label, revision="saved-functional-fixture-v1", task="int_to_fp32_matmul",
                pt2_sha256=hashlib.sha256((label + ":no-PT2-fixture").encode()).hexdigest(),
                protocol_sha256=hashlib.sha256(b"fixture int64[2,8] -> FP32[2,8]; no model-ID count").hexdigest(), compile_options={})
            entries = json.loads(json.dumps([[tensor_metadata(x)]]))
            document = policy_document(identity, entries, {"calibration_sha256": "e" * 64,
                "comparison_sha256": "f" * 64, "artifact_audit_sha256": "0" * 64})
            path = args.output / (label + ".policy.json"); save(path, document)
            router = PolicyReplayRouter(compiled, identity=identity, policy_path=path,
                frozen_tensors=lambda: tuple(module.buffers()), enabled=True)
            require(router.policy_status == "loaded", router.policy_status)
            with torch.inference_mode():
                require(router.prepare(x)["prepared"], "Initial exact capture failed")
                error = compare(router(x), module(x))
                require(router.last_route["route"] == "graph_replay", "Initial capture did not replay")
            record = {"label": label, "identity": identity, "policy_sha256": sha(path), "initial_route": dict(router.last_route),
                "initial_error": error, "initial_snapshot": router.snapshot()}
            fixtures.append(record)
            arrays[label + "__weight"] = array(module.weight)
            return module, compiled, router, x, record

        state["failure_stage"] = "dtype_and_storage_offset"
        module, compiled, router, x, record = fixture("dtype-offset")
        with torch.inference_mode():
            dtype_input = x.to(torch.int32)
            offset_input = torch.arange(24, dtype=torch.int64, device="cuda:0").reshape(3, 8)[1:]
            observations = []
            for label, value in [("int32", dtype_input), ("nonzero_offset", offset_input)]:
                require(value.dtype != x.dtype if label == "int32" else value.storage_offset() > 0, "Negative metadata did not change")
                eager = module(value); reference = compiled(value); result = router(value)
                errors = [compare(reference, eager), compare(result, eager)]
                route = dict(router.last_route)
                require(route == {"route": "original_compiled", "reason": "metadata_not_in_policy"}, "Metadata mismatch replayed stale graph")
                for key, tensor in [("input", value), ("eager", eager), ("compiled", reference), ("released", result)]:
                    arrays[label + "__" + key] = array(tensor)
                observations.append({"kind": label, "metadata": tensor_metadata(value), "route": route, "max_abs_errors": errors})
            restored = router(x)
            compare(restored, module(x)); require(router.last_route["route"] == "graph_replay", "Metadata misses poisoned the original entry")
            arrays["metadata_restored"] = array(restored)
        state["checks"].append({"kind": "dtype_and_storage_offset", "passed": True, "observations": observations,
            "restored_route": dict(router.last_route), "snapshot": router.snapshot()})
        save(args.output / "progress.json", state)

        state["failure_stage"] = "weight_layout_invalidation"
        module, compiled, router, x, record = fixture("weight-layout")
        old_signature = state_signature(tuple(module.buffers()))
        original_weight = module.weight
        # Versioned model state, not an inference tensor that would conflate two guards.
        wide = torch.empty((8, 16), dtype=torch.float32, device="cuda:0")
        strided = wide[:, ::2]
        strided.copy_(original_weight)
        module.weight = strided
        new_signature = state_signature(tuple(module.buffers()))
        require(new_signature != old_signature and not strided.is_contiguous(), "Model layout did not change")
        require(torch.equal(strided, original_weight), "Layout fixture unexpectedly changed weight values")
        with torch.inference_mode():
            eager = module(x); reference = compiled(x); result = router(x)
            errors = [compare(reference, eager), compare(result, eager)]
            require(router.last_route == {"route": "original_compiled", "reason": "model_state_changed"}, "Weight layout change reused captured old state")
            first_route = dict(router.last_route)
            module.weight = original_weight
            restored = router(x); compare(restored, module(x))
            require(router.last_route["reason"] == "model_state_invalidated", "Restored object silently re-enabled invalidated graph")
            for key, tensor in [("input", x), ("strided_weight", strided), ("eager", eager), ("compiled", reference), ("released", result), ("restored", restored)]:
                arrays["weight_layout__" + key] = array(tensor)
        state["checks"].append({"kind": "weight_layout_invalidation", "passed": True, "before_signature": old_signature,
            "after_signature": new_signature, "first_route": first_route, "restored_route": dict(router.last_route),
            "max_abs_errors": errors, "snapshot": router.snapshot()})
        save(args.output / "progress.json", state)

        state["failure_stage"] = "synchronized_callers_cross_model_isolation"
        models = [fixture("caller-model-a", 0.0), fixture("caller-model-b", 0.25)]
        require(models[0][2].namespace != models[1][2].namespace
            and models[0][2].cache.namespace != models[1][2].cache.namespace, "Two model cache namespaces collided")
        owner_stream = torch.cuda.current_stream(0)
        requests = {}; references = {}
        with torch.inference_mode():
            for user in range(2):
                for step in range(4):
                    model_index = step % 2
                    value = models[model_index][3] + 1 + user * 4 + step
                    key = "user%d_step%d" % (user, step)
                    eager = models[model_index][0](value)
                    compiled_value = models[model_index][1](value)
                    compare(compiled_value, eager)
                    requests[(user, step)] = value; references[key] = eager
                    arrays[key + "__input"] = array(value); arrays[key + "__eager"] = array(eager)
                    arrays[key + "__compiled"] = array(compiled_value)
        barrier = threading.Barrier(2)
        before = counters["stats"]["unique_graphs"]
        def caller(user):
            # The production cache supports synchronized host ownership on one
            # stream. This deliberately does not assert arbitrary-stream replay.
            with torch.inference_mode(), torch.cuda.device(0), torch.cuda.stream(owner_stream):
                results = []
                for step in range(4):
                    barrier.wait(timeout=30)
                    index = step % 2; route = models[index][2]
                    result = route(requests[(user, step)])
                    results.append((user, step, index, result, dict(route.last_route)))
                return results
        with ThreadPoolExecutor(max_workers=2) as executor:
            futures = [executor.submit(caller, user) for user in range(2)]
            results = [row for future in futures for row in future.result()]
        torch.cuda.synchronize()
        after = counters["stats"]["unique_graphs"]
        require(before == after, "Warm synchronized callers compiled new Dynamo graphs")
        calls = []
        for user, step, index, result, route in results:
            key = "user%d_step%d" % (user, step)
            require(route["route"] == "graph_replay", "Qualified synchronized caller did not replay")
            error = compare(result, references[key]); arrays[key + "__released"] = array(result)
            calls.append({"user": user, "step": step, "model_index": index, "route": route, "max_abs_error": error})
        for model, compiled, route, value, record in models:
            require(route.snapshot()["cache"]["entries"] == 1, "Cross-caller entry count changed")
        state["checks"].append({"kind": "synchronized_callers_cross_model_isolation", "passed": True,
            "calls": calls, "model_namespaces": [m[2].namespace for m in models],
            "cache_namespaces": [m[2].cache.namespace for m in models],
            "model_snapshots": [m[2].snapshot() for m in models], "unique_graphs_before_after": [before, after],
            "scope": "two synchronized host callers share the prepared owner stream; no concurrent model mutation or arbitrary-stream replay"})
        require(len(state["checks"]) == 3 and all(c["passed"] for c in state["checks"]), "All three guard scenarios required")
        state.update(status="passed", failure_stage=None, fixtures=fixtures,
            memory={"memory_policy": "record_only_v1", "peak_allocated_bytes": torch.cuda.max_memory_allocated(),
                "reserved_bytes": torch.cuda.memory_reserved(), "graph_pools_retained": True})
    except Exception as exc:
        state.update(status="failed", error_type=type(exc).__name__, error=str(exc), traceback=traceback.format_exc(), fixtures=fixtures)
    if arrays:
        np.savez_compressed(args.output / "outputs-and-inputs.npz", **arrays)
        state["arrays_sha256"] = sha(args.output / "outputs-and-inputs.npz")
    evidence = [{"path": str(p.relative_to(args.output)), "sha256": sha(p), "bytes": p.stat().st_size}
        for folder in ("triton-cache", "inductor-cache") for p in (args.output / folder).rglob("*")
        if p.is_file() and p.suffix in {".ttir", ".ttgir", ".llir", ".hgbin", ".py"}]
    save(args.output / "compiler-evidence.json", evidence)
    state.update(finished_at=time.time(), compiler_evidence_sha256=sha(args.output / "compiler-evidence.json"))
    save(args.output / "report.json", state); save(args.output / "progress.json", state)
    print(json.dumps({"status": state["status"], "checks": len(state["checks"]), "failure_stage": state["failure_stage"], "error": state.get("error")}), flush=True)
    return 0 if state["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
