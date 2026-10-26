#!/usr/bin/env python3
"""Verify one explicit release enrollment on PPU, not final301 acceptance.

Qualified replay and measured retention share the same real policy router.
Pending discovery is rejected. This correctness/rollback check never supplies
timing qualification, starts CPU inference, or changes the frozen PT2/runtime.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import sys
import time
import traceback

from memory_acceptance import MEMORY_POLICY
from run_scene_optimization_campaign import validate_scope
from release_qualification import validate_qualification_paths, validate_runtime_qualification

PROBES = {(1, 8), (2, 24), (4, 64), (2, 8), (1, 64)}
REFERENCES = ("original_output", "eager_output", "restored_output", "compiled_output")


def require(condition, message):
    if not condition:
        raise ValueError(message)


def sha(path):
    result = hashlib.sha256()
    with Path(path).open("rb") as file:
        for block in iter(lambda: file.read(1024 * 1024), b""):
            result.update(block)
    return result.hexdigest()


def read(path):
    return json.loads(Path(path).read_text(encoding="utf-8"))


def save(path, value):
    temporary = path.with_suffix(".tmp")
    temporary.write_text(json.dumps(value, indent=2, allow_nan=False) + "\n", encoding="utf-8")
    os.replace(temporary, path)


def validate_enrollment(accepted, manifest, model_id, accepted_sha, source_sha):
    rows = {row["model_id"]: row for row in validate_scope(accepted)}
    entries = manifest["models"]
    indexed = {row["model_id"]: row for row in entries}
    require(manifest.get("schema") == "shape301-release-enrollment-v1"
            and manifest.get("stage") == "enrollment_not_final_release"
            and manifest.get("final_C1_passed") == 0, "Discovery enrollment must remain distinct from final301")
    require(len(entries) == 301 and set(indexed) == set(rows), "Exact original301 scope required")
    require(manifest["accepted_sha256"] == accepted_sha
            and manifest["measured_source_baseline_sha256"] == source_sha, "Enrollment scope/source drift")
    require(all(all(row[key] == rows[row["model_id"]][key] for key in ("revision", "task"))
                and row["final_C1_status"] == "pending" for row in entries), "Enrollment revision/task/status drift")
    require(model_id in indexed, "Model is outside historical301")
    entry = indexed[model_id]
    expected = {"candidate_requires_release_validation": "passed", "retain_requires_runtime_validation": "not_met"}
    from unstable_retention import MODE, validate_entry
    unstable = entry.get("mode") == MODE
    if unstable:
        validate_entry(entry, manifest)
    else:
        require(entry.get("mode") in expected and entry.get("discovery_status") == expected.get(entry.get("mode")),
                "Unresolved discovery cannot silently become retained success")
    for name in (("pt2_sha256", "calibration_sha256") if unstable else ("pt2_sha256", "calibration_sha256", "comparison_sha256")):
        digest = entry.get(name)
        require(isinstance(digest, str) and len(digest) == 64
                and all(c in "0123456789abcdef" for c in digest), "Missing qualified model/evidence hash")
    return entry


def validate_probe_set(probes):
    require(len(probes) == 5 and {(x["batch"], x["sequence"]) for x in probes} == PROBES,
            "Five original distinct shape probes required")


def validate_policy_binding(entry, document):
    if entry["mode"] in {"retain_requires_runtime_validation", "retain_unstable_requires_runtime_validation"}:
        require(document is None, "Measured retention must not enable an unrelated policy")
        return
    require(document is not None, "A qualified candidate requires its explicit loaded policy")
    require(all(document["identity"][key] == entry[key] for key in ("model_id", "revision", "task", "pt2_sha256")),
            "Policy model/PT2 identity drift")
    require(all(document["evidence"][key] == entry[key] for key in ("calibration_sha256", "comparison_sha256")),
            "Policy is not bound to the selected discovery evidence")


def expected_route(entry, document, descriptors):
    if entry["mode"] in {"retain_requires_runtime_validation", "retain_unstable_requires_runtime_validation"}:
        return "original_compiled"
    require(document is not None, "Missing qualified policy")
    from model_import_adapters.replay_policy import metadata_key
    key = metadata_key(descriptors)
    return "graph_replay" if key in {metadata_key(x) for x in document["entries"]} else "original_compiled"


def compare_reference_arrays(actual, references):
    import numpy as np
    require(set(references) == set(REFERENCES), "Complete four-route stored references required")
    result = {}
    for name in REFERENCES:
        expected = references[name]
        require(actual.shape == expected.shape and actual.dtype == expected.dtype, "Task output metadata changed")
        require(np.isfinite(actual).all() and np.isfinite(expected).all(), "Nonfinite task output")
        delta = np.abs(actual.astype(np.float64) - expected.astype(np.float64))
        require(np.all(delta <= 3e-4 + 3e-4 * np.abs(expected.astype(np.float64))), "Task output tolerance failed")
        result[name] = float(delta.max())
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("accepted", "enrollment", "source", "case", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--model-id", required=True)
    parser.add_argument("--policy", type=Path)
    parser.add_argument("--discovery-source", type=Path, help="Explicit frozen discovery bundle; defaults to the runtime bundle")
    parser.add_argument("--prepare-capture-constants", action="store_true")
    for name in ("qualification-calibration", "qualification-comparison", "qualification-audit"):
        parser.add_argument("--" + name, type=Path)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    report = {"status": "running", "failure_stage": "preflight", "model_id": args.model_id,
              "started_at": time.time(), "cpu_model_forward": "not_run", "probes": [],
              "scope": "one explicit enrollment functional/rollback check, not final301 or timing acceptance",
              "performance_acceptance": "not_measured_here", "final_C1_accepted": False,
              "physical_device": os.environ.get("CUDA_VISIBLE_DEVICES"), "verifier_sha256": sha(__file__),
              "verifier_path": str(Path(__file__).resolve())}
    save(args.output / "command.json", [sys.executable, *sys.argv])
    save(args.output / "progress.json", report)
    def mark(stage):
        report["failure_stage"] = stage
        save(args.output / "progress.json", report)
    try:
        discovery_source = args.discovery_source or args.source
        entry = validate_enrollment(read(args.accepted), read(args.enrollment), args.model_id,
                                    sha(args.accepted), sha(discovery_source / "source-baseline.json"))
        candidate = entry["mode"] == "candidate_requires_release_validation"
        require(candidate == (args.policy is not None), "Only a qualified candidate accepts/requires --policy")
        cross_source = sha(discovery_source / "source-baseline.json") != sha(args.source / "source-baseline.json")
        qualification_paths = [args.qualification_calibration, args.qualification_comparison, args.qualification_audit]
        has_qualification = validate_qualification_paths(qualification_paths, required=cross_source or args.prepare_capture_constants)
        require(not has_qualification or candidate, "Retained entries require their own runtime path, not enabled-candidate qualification")
        discovery_frozen = read(discovery_source / "source-baseline.json")
        for relative, digest in discovery_frozen["files"].items():
            require(sha(discovery_source / relative) == digest, f"Frozen discovery source changed: {relative}")
        frozen = read(args.source / "source-baseline.json")
        for relative, digest in frozen["files"].items():
            require(sha(args.source / relative) == digest, f"Frozen runtime source changed: {relative}")
        saved, protocol = read(args.case / "report.json"), read(args.case / "task-protocol.json")
        require(saved["status"] == "passed" and saved["model_id"] == entry["model_id"]
                and saved["revision"] == entry["revision"] and protocol["task"] == entry["task"], "Original task identity drift")
        validate_probe_set(saved["probes"])
        pt2 = args.case / "artifacts/model.core_aten.pt2"
        require(sha(pt2) == entry["pt2_sha256"] == read(args.case / "artifacts/manifest.json")["artifact"]["sha256"],
                "Original PT2 hash drift")
        os.environ.update(FLAGTREE_BACKEND="ppu", TORCHINDUCTOR_WORKER_START="spawn", TORCHINDUCTOR_COMPILE_THREADS="1",
                          OMP_NUM_THREADS="1", MKL_NUM_THREADS="1", TRITON_KERNEL_DUMP="1",
                          TRITON_DUMP_DIR=str(args.output / "dump"), TRITON_CACHE_DIR=str(args.output / "triton-cache"),
                          TORCHINDUCTOR_CACHE_DIR=str(args.output / "inductor-cache"))
        sys.path.insert(0, str(args.source / "model_import_adapters/src"))
        import numpy as np
        import torch
        from torch._dynamo.utils import counters
        from model_import_adapters.compiled_execution import _retarget_factory_devices
        from model_import_adapters.graph_replay import tensor_metadata
        from model_import_adapters.replay_policy import PolicyReplayRouter, runtime_identity
        require(torch.cuda.is_available() and torch.cuda.get_device_name(0) == "PPU-ZW810E", "Real PPU-ZW810E required")
        torch.set_num_threads(1); torch.set_float32_matmul_precision("highest")
        mark("load_and_compile")
        module = torch.export.load(pt2).module().to("cuda:0")
        require(all(p.dtype == torch.float32 for p in module.parameters() if p.is_floating_point()), "FP32 weights required")
        retargeted = _retarget_factory_devices(module, "cuda:0")
        capture_records = None
        if args.prepare_capture_constants:
            from model_import_adapters.capture_constants import prepare_capture_constants
            started = time.perf_counter()
            capture_records = prepare_capture_constants(module,"cuda:0")
            torch.cuda.synchronize()
            report["capture_constant_preparation_seconds"] = time.perf_counter() - started
        compiled = torch.compile(module, fullgraph=True, dynamic=True, options=protocol.get("compile_options", {}))
        identity = runtime_identity(model_id=entry["model_id"], revision=entry["revision"], task=entry["task"],
            pt2_sha256=sha(pt2), protocol_sha256=sha(args.case / "task-protocol.json"), compile_options=protocol.get("compile_options", {}))
        if capture_records is not None:
            from model_import_adapters.prepared_policy import bind_preprocessing
            identity = bind_preprocessing(identity,capture_records)
        state = lambda: tuple(module.parameters()) + tuple(module.buffers())
        router = PolicyReplayRouter(compiled, identity=identity, policy_path=args.policy or args.output / "absent-retained-policy.json",
                                    frozen_tensors=state, enabled=candidate)
        validate_policy_binding(entry, router.document)
        qualification = None
        qualification_evidence = None
        if has_qualification:
            qa, qb, audit_path = qualification_paths
            qualification = validate_runtime_qualification(entry,read(qa),read(qb),read(audit_path),identity,
                sha(qa),sha(qb),sha(args.policy),frozen["files"])
            qualification_evidence = {name: {"path":str(path),"sha256":sha(path)} for name,path in
                zip(("calibration","comparison","audit"),qualification_paths)}
        loaded = []
        for probe in saved["probes"]:
            path = args.case / Path(probe["archive"]).name
            require(sha(path) == probe["sha256"], "Original probe bytes changed")
            with np.load(path, allow_pickle=False) as data:
                inputs = tuple(torch.from_numpy(data[key].copy()).to("cuda:0") for key in probe["input_keys"])
                refs = {key: data[key].copy() for key in REFERENCES}
            descriptors = [[list(m[0]), list(m[1]), m[2], m[3], m[4]] for m in map(tensor_metadata, inputs)]
            loaded.append((probe, inputs, refs, expected_route(entry, router.document, descriptors)))
        def array(value):
            leaves = torch.utils._pytree.tree_leaves(value)
            require(len(leaves) == 1 and isinstance(leaves[0], torch.Tensor), "Original one-tensor task container required")
            return leaves[0].detach().cpu().numpy().copy()
        def check(value, reference):
            actual = array(value)
            return actual, compare_reference_arrays(actual, reference)
        stored = [{} for _ in loaded]
        with torch.inference_mode():
            mark("fresh_ppu_baseline")
            for index, (_, inputs, refs, _) in enumerate(loaded):
                stored[index]["fresh_eager"], _ = check(module(*inputs), refs)
                stored[index]["original_compiled"], _ = check(compiled(*inputs), refs)
            torch.cuda.synchronize(); torch.cuda.reset_peak_memory_stats()
            for _, inputs, refs, _ in loaded:
                value = compiled(*inputs); check(value, refs); del value
            torch.cuda.synchronize(); baseline_peak = torch.cuda.max_memory_allocated()
            torch.cuda.reset_peak_memory_stats(); mark("prepare_exact_policy")
            preparations = [router.prepare(*inputs) for _, inputs, _, route in loaded if route == "graph_replay"]
            require(not candidate or (len(preparations) == len(router.document["entries"])
                    and all(x["prepared"] for x in preparations)), "Declared replay entries not prepared by original probes")
            for index, (probe, inputs, refs, route) in enumerate(loaded):
                stored[index]["released"], comparisons = check(router(*inputs), refs)
                require(router.last_route["route"] == route, "Release route does not match explicit policy")
                report["probes"].append({"batch": probe["batch"], "sequence": probe["sequence"],
                    "input_sha256": probe["sha256"], "route": dict(router.last_route), "comparisons": comparisons})
            before = counters["stats"]["unique_graphs"]; trace = []
            for index in [0, 1, 4, 3, 2, 1, 0, 2, 3, 4] * 2:
                _, inputs, refs, route = loaded[index]
                value, comparisons = check(router(*inputs), refs)
                require(router.last_route["route"] == route, "Mixed release route drift")
                trace.append({"index": index, "route": dict(router.last_route), "comparisons": comparisons}); del value
            after = counters["stats"]["unique_graphs"]
            require(before == after, "Warm mixed requests caused new Dynamo graphs")
            candidate_peak = torch.cuda.max_memory_allocated(); active_snapshot = router.snapshot()
            mark("counterexamples")
            selected = next((x for x in loaded if x[3] == "graph_replay" and x[0]["batch"] > 1),
                            next((x for x in loaded if x[3] == "graph_replay"), loaded[1]))
            selected_index = next(i for i, item in enumerate(loaded) if item is selected)
            _, inputs, refs, _ = selected
            previous = router(*inputs); prior = array(previous)
            counter_arrays = {"previous_before": prior}
            changed = tuple(x.flip(0) for x in inputs)
            changed_axis = 0
            if not any(not torch.equal(a, b) for a, b in zip(inputs, changed)):
                changed = tuple(x.flip(-1) for x in inputs)
                changed_axis = -1
            require(any(not torch.equal(a, b) for a, b in zip(inputs, changed)), "Changed-data probe did not change input values")
            changed_reference = array(compiled(*changed))
            actual, _ = check(router(*changed), {key: changed_reference for key in REFERENCES})
            counter_arrays.update(changed_compiled=changed_reference, changed_released=actual, previous_after=array(previous))
            counter_arrays.update({f"changed_input_{i}": x.detach().cpu().numpy().copy() for i, x in enumerate(changed)})
            compare_reference_arrays(counter_arrays["previous_after"], {key: prior for key in REFERENCES}); del previous, actual
            strided = []
            for x in inputs:
                wide = torch.empty((x.shape[0], x.shape[1] * 2), dtype=x.dtype, device=x.device)
                wide[:, ::2] = x; strided.append(wide[:, ::2])
            value, _ = check(router(*strided), refs); counter_arrays["stride_released"] = value; del value
            require(router.last_route["route"] == "original_compiled", "Stride miss must retain compiled")
            stride_miss = dict(router.last_route)
            invalid = PolicyReplayRouter(compiled, identity={**identity, "pt2_sha256": "0" * 64},
                policy_path=args.policy or args.output / "absent-retained-policy.json", frozen_tensors=state, enabled=True)
            value, _ = check(invalid(*inputs), refs); counter_arrays["identity_rejected"] = value; del value
            require(invalid.last_route["route"] == "original_compiled", "Identity mismatch must retain compiled")
            invalid_route = dict(invalid.last_route)
            stream_route = None; weight_route = None
            if candidate:
                stream = torch.cuda.Stream(); stream.wait_stream(torch.cuda.current_stream())
                with torch.cuda.stream(stream):
                    value = router(*inputs); stream_route = dict(router.last_route)
                torch.cuda.current_stream().wait_stream(stream)
                counter_arrays["alternate_stream_released"], _ = check(value, refs); del value
                require(stream_route.get("reason") == "different_owner_stream", "Owner stream check missing")
                weight = next(p for p in module.parameters() if p.is_floating_point())
                version = weight._version; weight.add_(0)
                require(weight._version > version, "Weight version did not change")
                value, _ = check(router(*inputs), refs); counter_arrays["weight_invalidated"] = value; del value
                weight_route = dict(router.last_route)
                require(weight_route.get("reason") == "model_state_changed", "Weight mutation did not invalidate replay")
            mark("disable_rollback")
            router.disable()
            for index, (_, inputs, refs, _) in enumerate(loaded):
                stored[index]["disabled"], _ = check(router(*inputs), refs)
                require(router.last_route["route"] == "original_compiled", "Disable did not restore original compiled")
            for index, arrays in enumerate(stored):
                archive = args.output / f"probe-{index}.npz"; np.savez_compressed(archive, **arrays)
                report["probes"][index].update(archive=archive.name, archive_sha256=sha(archive))
            np.savez_compressed(args.output / "counterexamples.npz", **counter_arrays)
            require(sha(pt2) == entry["pt2_sha256"], "Original PT2 changed")
            evidence = [{"path": str(p.relative_to(args.output)), "sha256": sha(p), "bytes": p.stat().st_size}
                        for folder in ("triton-cache", "inductor-cache") for p in (args.output / folder).rglob("*")
                        if p.is_file() and p.suffix in {".ttir", ".ttgir", ".llir", ".hgbin", ".py"}]
            save(args.output / "compiler-evidence.json", evidence)
            report.update(status="passed", failure_stage=None, identity=identity, mode=entry["mode"],
                revision=entry["revision"], task=entry["task"], baseline_case=str(args.case), source=str(args.source),
                baseline_report_sha256=sha(args.case / "report.json"), enrollment_sha256=sha(args.enrollment),
                discovery_source=str(discovery_source), discovery_source_manifest_sha256=sha(discovery_source / "source-baseline.json"),
                capture_constants=capture_records, runtime_qualification=qualification, qualification_evidence=qualification_evidence,
                source_manifest_sha256=sha(args.source / "source-baseline.json"), source_files_rehashed=len(frozen["files"]),
                preparations=preparations, router_active=active_snapshot, router_disabled=router.snapshot(),
                warm_mixed_trace=trace, mixed_unique_graphs=[before, after], stride_miss=stride_miss,
                identity_miss=invalid_route, alternate_stream=stream_route, weight_invalidation=weight_route,
                counterexample_probe_index=selected_index, changed_input_axis=changed_axis,
                counterexample_archive_sha256=sha(args.output / "counterexamples.npz"),
                original_pt2_unchanged=True, retargeted_factories=retargeted,
                policy_file_sha256=sha(args.policy) if args.policy else None,
                policy_path=str(args.policy) if args.policy else None,
                compiler_evidence_sha256=sha(args.output / "compiler-evidence.json"),
                memory={"memory_policy": MEMORY_POLICY, "B0_peak": baseline_peak, "C1_peak": candidate_peak,
                    "full_verification_peak": torch.cuda.max_memory_allocated(),
                    "extra_peak_bytes": candidate_peak - baseline_peak, "memory_gate_passed": True,
                    "disabled_graph_pools_remain_resident": True,
                    "scope": "B0 compiled warm probes; C1 prepare/probes/mixed before counterexamples; Torch allocator, not driver-wide allocation"})
    except Exception as exc:
        report.update(status="failed", error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    report["finished_at"] = time.time()
    save(args.output / "progress.json", report)
    save(args.output / "report.json", report)
    print(json.dumps({key: report.get(key) for key in ("status", "model_id", "failure_stage", "error")}), flush=True)
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
