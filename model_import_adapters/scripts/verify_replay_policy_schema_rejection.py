#!/usr/bin/env python3
"""Separate unknown-schema rejection from checksum rejection on a real model.

The negative document has a correctly recomputed content digest. Only schema
and its digest change; original model/runtime/policy files remain untouched.
This is a correctness diagnostic, not model or performance qualification.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import sys
import time
import traceback


def digest(value):
    return hashlib.sha256(json.dumps(value, sort_keys=True, separators=(",", ":"), allow_nan=False).encode()).hexdigest()


def unknown_schema_document(original):
    """Construct a schema-only negative case, never a stale-checksum case."""
    if not isinstance(original, dict) or original.get("schema") != "ppu-exact-replay-policy-v1":
        raise ValueError("Original supported policy schema required")
    body = {key: value for key, value in original.items() if key != "sha256"}
    if original.get("sha256") != digest(body):
        raise ValueError("Original policy content checksum must be valid")
    negative = json.loads(json.dumps(original))
    negative["schema"] = "ppu-exact-replay-policy-v999"
    negative["sha256"] = digest({key: value for key, value in negative.items() if key != "sha256"})
    return negative


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("source", "case", "policy", "baseline", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--cpu-affinity", type=int, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    os.sched_setaffinity(0, {args.cpu_affinity})
    os.environ.update(FLAGTREE_BACKEND="ppu", TORCHINDUCTOR_WORKER_START="spawn", TORCHINDUCTOR_COMPILE_THREADS="1",
        OMP_NUM_THREADS="1", MKL_NUM_THREADS="1", TRITON_KERNEL_DUMP="1",
        TRITON_DUMP_DIR=str(args.output / "triton-dump"), TRITON_CACHE_DIR=str(args.output / "triton-cache"),
        TORCHINDUCTOR_CACHE_DIR=str(args.output / "inductor-cache"))
    sys.path[:0] = [str(args.source / "model_import_adapters/scripts"), str(args.source / "model_import_adapters/src")]
    from verify_shape_release_case import sha, read, save, require, validate_probe_set, compare_reference_arrays, REFERENCES
    report = {"status": "running", "failure_stage": "preflight", "started_at": time.time(),
        "scope": "one original model schema-only negative; no new performance or final301 acceptance",
        "cpu_model_forward": "not_run", "final_C1_accepted": False, "probes": [],
        "script_sha256": sha(__file__), "physical_device": os.environ.get("CUDA_VISIBLE_DEVICES")}
    save(args.output / "command.json", [sys.executable, *sys.argv])
    try:
        import numpy as np
        import torch
        from model_import_adapters.compiled_execution import _retarget_factory_devices
        from model_import_adapters.capture_constants import prepare_capture_constants
        from model_import_adapters.prepared_policy import bind_preprocessing
        from model_import_adapters.replay_policy import PolicyReplayRouter, runtime_identity
        require(torch.cuda.is_available() and torch.cuda.get_device_name(0) == "PPU-ZW810E", "Real PPU required")
        torch.set_num_threads(1)
        torch.set_float32_matmul_precision("highest")
        frozen = read(args.source / "source-baseline.json")
        for name, expected in frozen["files"].items():
            require(sha(args.source / name) == expected, "Frozen runtime source changed: " + name)
        baseline = read(args.baseline / "report.json")
        receipt = read(args.baseline.parent / "baseline.terminal-receipt.json")
        require(baseline["status"] == "passed" and receipt["report_sha256"] == sha(args.baseline / "report.json")
                and receipt["exit_status"] == receipt["owner_waitid"]["si_status"] == 0, "Actual successful baseline receipt required")
        original = read(args.case / "report.json")
        protocol = read(args.case / "task-protocol.json")
        validate_probe_set(original["probes"])
        pt2 = args.case / "artifacts/model.core_aten.pt2"
        original_sha, policy_sha = sha(pt2), sha(args.policy)
        require(original_sha == baseline["identity"]["pt2_sha256"] and policy_sha == baseline["policy_file_sha256"], "Baseline model/policy drift")
        report["failure_stage"] = "load_and_compile"
        module = torch.export.load(pt2).module().to("cuda:0")
        require(all(p.dtype == torch.float32 for p in module.parameters() if p.is_floating_point()), "FP32 required")
        retargeted = _retarget_factory_devices(module, "cuda:0")
        records = prepare_capture_constants(module, "cuda:0")
        compiled = torch.compile(module, fullgraph=True, dynamic=True, options=protocol.get("compile_options", {}))
        identity = bind_preprocessing(runtime_identity(model_id=original["model_id"], revision=original["revision"],
            task=protocol["task"], pt2_sha256=original_sha, protocol_sha256=sha(args.case / "task-protocol.json"),
            compile_options=protocol.get("compile_options", {})), records)
        require(identity == baseline["identity"], "Actual runtime differs from qualified baseline")
        valid_document = read(args.policy)
        negative_document = unknown_schema_document(valid_document)
        negative_path = args.output / "unknown-schema-valid-checksum-policy.json"
        save(negative_path, negative_document)
        state = lambda: tuple(module.parameters()) + tuple(module.buffers())
        good = PolicyReplayRouter(compiled, identity=identity, policy_path=args.policy, frozen_tensors=state, enabled=False)
        bad = PolicyReplayRouter(compiled, identity=identity, policy_path=negative_path, frozen_tensors=state, enabled=True)
        require(good.policy_status == "loaded" and bad.document is None and bad.cache is None,
                "Unknown schema with a valid digest was accepted")
        outputs = {}
        report["failure_stage"] = "schema_only_rejection_and_compiled_inference"
        with torch.inference_mode():
            for index, probe in enumerate(original["probes"]):
                path = args.case / Path(probe["archive"]).name
                require(sha(path) == probe["sha256"], "Original input bytes changed")
                with np.load(path, allow_pickle=False) as archive:
                    inputs = tuple(torch.from_numpy(archive[key].copy()).to("cuda:0") for key in probe["input_keys"])
                    refs = {key: archive[key].copy() for key in REFERENCES}
                phases = []
                for label, router in [("baseline_disabled", good), ("schema_rejected", bad)]:
                    leaves = torch.utils._pytree.tree_leaves(router(*inputs))
                    require(len(leaves) == 1 and isinstance(leaves[0], torch.Tensor), "Original output container changed")
                    value = leaves[0].detach().cpu().numpy().copy()
                    comparisons = compare_reference_arrays(value, refs)
                    require(router.last_route["route"] == "original_compiled", "Schema rejection did not retain fullgraph compiled")
                    expected = "policy_disabled" if label == "baseline_disabled" else "policy_rejected"
                    require(expected in router.last_route["reason"], "Unexpected rejection reason")
                    outputs[label + "_" + str(index)] = value
                    phases.append({"phase": label, "route": dict(router.last_route), "comparisons": comparisons})
                report["probes"].append({"batch": probe["batch"], "sequence": probe["sequence"],
                    "input_sha256": probe["sha256"], "phases": phases})
            torch.cuda.synchronize()
        require(sha(pt2) == original_sha and sha(args.policy) == policy_sha, "Original files changed")
        np.savez_compressed(args.output / "outputs.npz", **outputs)
        report.update(status="passed", failure_stage=None, model_id=original["model_id"], revision=original["revision"],
            task=protocol["task"], identity=identity, baseline_report_sha256=sha(args.baseline / "report.json"),
            source_manifest_sha256=sha(args.source / "source-baseline.json"), original_pt2_unchanged=True,
            original_policy_unchanged=True, policy_sha256=policy_sha, output_sha256=sha(args.output / "outputs.npz"),
            negative_document_sha256=sha(negative_path), valid_negative_content_digest=True,
            only_changed_document_fields=[key for key in valid_document if valid_document[key] != negative_document[key]],
            good_router=good.snapshot(), rejected_router=bad.snapshot(), retargeted_factories=retargeted,
            memory={"memory_policy": "record_only_v1", "peak_bytes": torch.cuda.max_memory_allocated()})
    except Exception as exc:
        report.update(status="failed", error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    report["finished_at"] = time.time()
    save(args.output / "report.json", report)
    print(json.dumps({key: report.get(key) for key in ("status", "error", "only_changed_document_fields", "valid_negative_content_digest")}), flush=True)
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
