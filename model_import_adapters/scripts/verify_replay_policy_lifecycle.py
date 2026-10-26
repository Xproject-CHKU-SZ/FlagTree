#!/usr/bin/env python3
"""Exercise one qualified model's policy reload/disable/version isolation on PPU.

This is an independent correctness/reproduction diagnostic, not qualification of
a new policy or a replacement for original301 model/performance verification.
Frozen model/runtime/policy files are read only. All variants and caches belong
to the new output directory. No CPU forward, eager fallback or cache deletion.
"""
import argparse
import copy
import json
import os
from pathlib import Path
import sys
import time
import traceback


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("source", "discovery-source", "case", "release-case", "baseline", "output", "accepted"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--cpu-affinity", type=int, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    os.sched_setaffinity(0, {args.cpu_affinity})
    os.environ.update(FLAGTREE_BACKEND="ppu", TORCHINDUCTOR_WORKER_START="spawn",
        TORCHINDUCTOR_COMPILE_THREADS="1", OMP_NUM_THREADS="1", MKL_NUM_THREADS="1",
        TORCHINDUCTOR_CACHE_DIR=str(args.output / "inductor-cache"),
        TRITON_CACHE_DIR=str(args.output / "triton-cache"), TRITON_KERNEL_DUMP="1",
        TRITON_DUMP_DIR=str(args.output / "triton-dump"))
    sys.path[:0] = [str(args.source / "model_import_adapters/scripts"),
                    str(args.source / "model_import_adapters/src")]
    from verify_shape_release_case import (sha, read, save, require, validate_enrollment,
        validate_probe_set, validate_policy_binding, compare_reference_arrays, REFERENCES)
    from release_qualification import validate_runtime_qualification
    report = {"status": "running", "started_at": time.time(), "phases": [],
        "scope": "one qualified original model policy lifecycle; not new performance or final301 acceptance",
        "cpu_model_forward": "not_run", "performance_acceptance": "not_measured_here",
        "final_C1_accepted": False, "physical_device": os.environ.get("CUDA_VISIBLE_DEVICES"),
        "script_sha256": sha(__file__), "cpu_affinity": sorted(os.sched_getaffinity(0))}
    save(args.output / "command.json", [sys.executable, *sys.argv])
    outputs = {}
    try:
        import numpy as np
        import torch
        from torch._dynamo.utils import counters
        from model_import_adapters.compiled_execution import _retarget_factory_devices
        from model_import_adapters.capture_constants import prepare_capture_constants
        from model_import_adapters.prepared_policy import bind_preprocessing
        from model_import_adapters.replay_policy import PolicyReplayRouter, runtime_identity, policy_document, metadata_key
        from model_import_adapters.graph_replay import tensor_metadata

        require(torch.cuda.is_available() and torch.cuda.get_device_name(0) == "PPU-ZW810E", "Real PPU required")
        torch.set_num_threads(1)
        torch.set_float32_matmul_precision("highest")
        frozen = read(args.source / "source-baseline.json")
        for relative, digest in frozen["files"].items():
            require(sha(args.source / relative) == digest, "Frozen source changed: " + relative)
        for relative, digest in read(args.discovery_source / "source-baseline.json")["files"].items():
            require(sha(args.discovery_source / relative) == digest, "Discovery source changed: " + relative)
        saved = read(args.case / "report.json")
        protocol = read(args.case / "task-protocol.json")
        pt2 = args.case / "artifacts/model.core_aten.pt2"
        policy = args.release_case / "policy.json"
        entry = validate_enrollment(read(args.accepted), read(args.release_case / "enrollment.json"),
            saved["model_id"], sha(args.accepted), sha(args.discovery_source / "source-baseline.json"))
        require(entry["mode"] == "candidate_requires_release_validation", "Qualified enabled candidate required")
        require(saved["status"] == "passed" and saved["revision"] == entry["revision"]
                and protocol["task"] == entry["task"], "Original model/task drift")
        validate_probe_set(saved["probes"])
        original_sha = sha(pt2)
        original_policy_sha = sha(policy)
        require(original_sha == entry["pt2_sha256"] == read(args.case / "artifacts/manifest.json")["artifact"]["sha256"], "PT2 drift")
        baseline = read(args.baseline / "report.json")
        require(baseline["status"] == "passed" and baseline["model_id"] == entry["model_id"]
                and baseline["revision"] == entry["revision"] and baseline["original_pt2_unchanged"], "Fresh baseline evidence required")
        validate_probe_set(baseline["probes"])
        require(baseline["policy_file_sha256"] == original_policy_sha, "Fresh baseline policy differs")
        module = torch.export.load(pt2).module().to("cuda:0")
        require(all(p.dtype == torch.float32 for p in module.parameters() if p.is_floating_point()), "FP32 required")
        retargeted = _retarget_factory_devices(module, "cuda:0")
        records = prepare_capture_constants(module, "cuda:0")
        compiled = torch.compile(module, fullgraph=True, dynamic=True, options=protocol.get("compile_options", {}))
        identity = bind_preprocessing(runtime_identity(model_id=entry["model_id"], revision=entry["revision"], task=entry["task"],
            pt2_sha256=original_sha, protocol_sha256=sha(args.case / "task-protocol.json"),
            compile_options=protocol.get("compile_options", {})), records)
        qa = args.release_case / "actual-policy-pair/calibrate/report.json"
        qb = args.release_case / "actual-policy-pair/compare/report.json"
        audit = args.release_case / "actual-policy-audit.json"
        qualification = validate_runtime_qualification(entry, read(qa), read(qb), read(audit), identity,
            sha(qa), sha(qb), original_policy_sha, frozen["files"])
        require(identity == baseline["identity"], "Fresh reproduce identity differs")
        state = lambda: tuple(module.parameters()) + tuple(module.buffers())
        def router(path=policy, enabled=True, actual_identity=identity):
            return PolicyReplayRouter(compiled, identity=actual_identity, policy_path=path, frozen_tensors=state, enabled=enabled)
        original = router()
        require(original.policy_status == "loaded", original.policy_status)
        validate_policy_binding(entry, original.document)
        loaded = []
        for probe in saved["probes"]:
            path = args.case / Path(probe["archive"]).name
            require(sha(path) == probe["sha256"], "Original inputs changed")
            with np.load(path, allow_pickle=False) as archive:
                inputs = tuple(torch.from_numpy(archive[key].copy()).to("cuda:0") for key in probe["input_keys"])
                references = {key: archive[key].copy() for key in REFERENCES}
            loaded.append((probe, inputs, references))
        def descriptors(inputs):
            return json.loads(json.dumps([tensor_metadata(x) for x in inputs]))
        def route_for(current, inputs):
            keys = {metadata_key(value) for value in current.document["entries"]} if current.document else set()
            return "graph_replay" if metadata_key(descriptors(inputs)) in keys else "original_compiled"
        def array(value):
            leaves = torch.utils._pytree.tree_leaves(value)
            require(len(leaves) == 1 and isinstance(leaves[0], torch.Tensor), "Original task output container changed")
            return leaves[0].detach().cpu().numpy().copy()
        def phase(name, current, enabled=False, reason=None):
            rows = []
            for index, (probe, inputs, references) in enumerate(loaded):
                value = array(current(*inputs))
                comparisons = compare_reference_arrays(value, references)
                expected = route_for(current, inputs) if enabled else "original_compiled"
                require(current.last_route["route"] == expected, name + ": route mismatch")
                if reason is not None:
                    require(reason in current.last_route["reason"], name + ": reason mismatch")
                outputs[name + "_" + str(index)] = value
                rows.append({"batch": probe["batch"], "sequence": probe["sequence"],
                    "input_sha256": probe["sha256"], "route": dict(current.last_route), "comparisons": comparisons})
            report["phases"].append({"name": name, "status": "passed", "probes": rows, "snapshot": current.snapshot()})
            save(args.output / "progress.json", report)
        def prepare(current):
            selected = [inputs for _, inputs, _ in loaded if route_for(current, inputs) == "graph_replay"]
            require(len(selected) == len(current.document["entries"]), "Exact policy entries not in original probes")
            require(current.cache.snapshot()["entries"] == 0, "Reload inherited graph entries")
            results = [current.prepare(*inputs) for inputs in selected]
            require(all(x["prepared"] for x in results), "Explicit graph preparation failed")
            return results

        with torch.inference_mode():
            phase("baseline_disabled", router(enabled=False), reason="policy_disabled")
            original_preparations = prepare(original)
            phase("original_enabled", original, enabled=True)
            retained_entries = original.cache.snapshot()["entries"]
            original.disable()
            phase("disabled_rollback", original, reason="policy_disabled")
            require(original.cache.snapshot()["entries"] == retained_entries, "Disable must not conceal graph pools")
            recreated = router()
            require(recreated.namespace == original.namespace and recreated.cache is not original.cache,
                    "Same policy identity with independent cache object required")
            phase("same_document_cold_no_implicit_capture", recreated)
            require(recreated.cache.snapshot()["entries"] == 0, "Request implicitly captured a graph")
            recreated_preparations = prepare(recreated)
            phase("same_document_reprepared", recreated, enabled=True)
            original_document = read(policy)
            wrong_schema = copy.deepcopy(original_document)
            wrong_schema["schema"] = "ppu-exact-replay-policy-v999"
            wrong_path = args.output / "wrong-schema-policy.json"
            save(wrong_path, wrong_schema)
            rejected = router(wrong_path)
            require(rejected.document is None and rejected.cache is None, "Unknown policy version accepted")
            phase("wrong_schema_compiled", rejected, reason="policy_rejected")
            wrong_identity = {**identity, "router_sha256": "0" * 64}
            stale = router(actual_identity=wrong_identity)
            require(stale.cache is None, "Mismatched code identity accepted")
            phase("changed_code_identity_compiled", stale, reason="policy_rejected")
            bad_checksum = copy.deepcopy(original_document)
            bad_checksum["sha256"] = "0" * 64
            corrupt_path = args.output / "checksum-mismatch-policy.json"
            save(corrupt_path, bad_checksum)
            corrupt = router(corrupt_path)
            require(corrupt.cache is None, "Corrupt policy accepted")
            phase("bad_checksum_compiled", corrupt, reason="policy_rejected")
            require(len(original_document["entries"]) == 2, "This diagnostic needs the original two qualified entries")
            subset_document = policy_document(identity, original_document["entries"][:1], original_document["evidence"])
            subset_path = args.output / "subset-functional-only-policy.json"
            save(subset_path, subset_document)
            subset = router(subset_path)
            require(subset.policy_status == "loaded" and subset.namespace != recreated.namespace
                    and subset.cache.namespace != recreated.cache.namespace, "Policy generation namespaces collided")
            phase("subset_generation_cold_no_implicit_capture", subset)
            subset_preparations = prepare(subset)
            phase("subset_generation_prepared", subset, enabled=True)
            require(recreated.cache.snapshot()["entries"] == 2 and subset.cache.snapshot()["entries"] == 1,
                    "Independent generation entries leaked")
            before = counters["stats"]["unique_graphs"]
            phase("old_generation_still_disabled", original, reason="policy_disabled")
            phase("original_generation_still_replays", recreated, enabled=True)
            phase("subset_generation_still_isolated", subset, enabled=True)
            after = counters["stats"]["unique_graphs"]
            require(before == after, "Warm generation switching recompiled")
            torch.cuda.synchronize()
            require(sha(pt2) == original_sha and sha(policy) == original_policy_sha, "Original files changed")
            np.savez_compressed(args.output / "outputs.npz", **outputs)
            report.update(status="passed", model_id=entry["model_id"], revision=entry["revision"], task=entry["task"],
                identity=identity, runtime_qualification=qualification, original_pt2_unchanged=True,
                original_policy_unchanged=True, original_pt2_sha256=original_sha, original_policy_sha256=original_policy_sha,
                baseline_report_sha256=sha(args.baseline / "report.json"), source_manifest_sha256=sha(args.source / "source-baseline.json"),
                source_files_rehashed=len(frozen["files"]), preparation_records=records, retargeted_factories=retargeted,
                preparations={"original": original_preparations, "recreated": recreated_preparations, "subset": subset_preparations},
                source=str(args.source), baseline=str(args.baseline), baseline_case=str(args.case), release_case=str(args.release_case),
                output_sha256=sha(args.output / "outputs.npz"), warm_switch_unique_graphs=[before, after],
                generation_namespaces={"original": recreated.namespace, "subset": subset.namespace},
                subset_policy_scope="functional diagnostic only; qualified input subset, no new timing approval or production enablement",
                memory={"memory_policy": "record_only_v1", "peak_allocated_bytes": torch.cuda.max_memory_allocated(),
                    "resident_allocated_bytes": torch.cuda.memory_allocated(), "reserved_bytes": torch.cuda.memory_reserved(),
                    "disable_releases_graph_pool": False, "scope": "Torch allocator observations, not a performance gate"})
    except Exception as exc:
        report.update(status="failed", error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    report["finished_at"] = time.time()
    save(args.output / "report.json", report)
    print(json.dumps({key: report.get(key) for key in ("status", "model_id", "error", "output_sha256")}), flush=True)
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
