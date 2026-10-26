#!/usr/bin/env python3
"""Real-PPU coherent bounds, novel odd-tail consistency and post-error recovery.

One explicit original13 model, unmodified PT2 and qualified original policy.
All new-shape references are fresh PPU outputs. No CPU forward, eager fallback
for compiled errors, timing qualification, or extra model-ID counting.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import sys
import time
import traceback

from boundary_probe_inputs import derive_coherent_inputs, violated_axis_constraints
from shape_boundary_errors import is_expected_pt2_bound_rejection


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("selection", "domain-report", "accepted", "source", "discovery-source", "control-source", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--model-id", required=True)
    parser.add_argument("--cpu-affinity", type=int, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    os.sched_setaffinity(0, {args.cpu_affinity})
    os.environ.update(FLAGTREE_BACKEND="ppu", TORCHINDUCTOR_WORKER_START="spawn", TORCHINDUCTOR_COMPILE_THREADS="1",
        OMP_NUM_THREADS="1", MKL_NUM_THREADS="1", OPENBLAS_NUM_THREADS="1", TRITON_KERNEL_DUMP="1",
        TORCHINDUCTOR_CACHE_DIR=str(args.output / "inductor-cache"), TRITON_CACHE_DIR=str(args.output / "triton-cache"),
        TRITON_DUMP_DIR=str(args.output / "triton-dump"))
    sys.path[:0] = [str(args.control_source / "model_import_adapters/scripts"), str(args.source / "model_import_adapters/src")]
    from verify_shape_release_case import (read, sha, save, require, validate_enrollment, validate_policy_binding)
    from release_qualification import validate_runtime_qualification
    state = {"status": "running", "failure_stage": "identity", "model_id": args.model_id, "checks": [],
        "scope": "one formal13 supplemental boundary case, not new performance/model count/final301",
        "started_at": time.time(), "cpu_model_forward": "not_run", "final_C1_accepted": False,
        "physical_device": os.environ.get("CUDA_VISIBLE_DEVICES"), "new_model_count": 0,
        "script_sha256": sha(__file__), "input_helper_sha256": sha(Path(__file__).with_name("boundary_probe_inputs.py")),
        "classifier_sha256": sha(Path(__file__).with_name("shape_boundary_errors.py"))}
    save(args.output / "command.json", [sys.executable, *sys.argv])
    pt2 = None; original_sha = None; outputs = {}
    try:
        import numpy as np
        import torch
        from torch._dynamo.utils import counters
        from model_import_adapters.compiled_execution import _retarget_factory_devices
        from model_import_adapters.capture_constants import prepare_capture_constants
        from model_import_adapters.prepared_policy import bind_preprocessing
        from model_import_adapters.graph_replay import tensor_metadata
        from model_import_adapters.replay_policy import PolicyReplayRouter, runtime_identity, metadata_key
        require(torch.cuda.is_available() and torch.cuda.get_device_name(0) == "PPU-ZW810E", "Real PPU-ZW810E required")
        torch.set_num_threads(1); torch.set_float32_matmul_precision("highest")
        selection = read(args.selection)
        require(selection["schema"] == "original13-coherent-boundary-pilot-selection-v1" and len(selection["models"]) == 13,
                "Exact formal13 selection required")
        chosen = [row for row in selection["models"] if row["model_id"] == args.model_id]
        require(len(chosen) == 1, "Unique original model selection required")
        selected = chosen[0]
        require(sha(args.domain_report) == selection["source_domain_report_sha256"], "Audited domain report changed")
        domain = next(row for row in read(args.domain_report)["models"] if row["model_id"] == args.model_id)
        require(domain["boundary_plan"] == selected["boundary_plan"], "Boundary plan drift")
        for source in (args.source, args.discovery_source):
            for relative, expected in read(source / "source-baseline.json")["files"].items():
                require(sha(source / relative) == expected, "Frozen source drift: " + relative)
        frozen = read(args.source / "source-baseline.json")
        case, release = Path(selected["original_baseline_case"]), Path(selected["policy_release_case"])
        saved, manifest, protocol = read(case / "report.json"), read(case / "artifacts/manifest.json"), read(case / "task-protocol.json")
        require(saved["status"] == "passed" and saved["model_id"] == args.model_id
                and saved["revision"] == selected["revision"] and protocol["task"] == selected["task"], "Original task drift")
        contract = manifest["shape_constraints"]
        require(hashlib.sha256(json.dumps(contract, sort_keys=True, ensure_ascii=False).encode()).hexdigest()
                == selected["constraint_sha256"], "Original constraint hash drift")
        pt2 = case / "artifacts/model.core_aten.pt2"; original_sha = sha(pt2)
        require(original_sha == selected["pt2_sha256"] == manifest["artifact"]["sha256"], "Original PT2 drift")
        entry = validate_enrollment(read(args.accepted), read(release / "enrollment.json"), args.model_id,
            sha(args.accepted), sha(args.discovery_source / "source-baseline.json"))
        require(entry["mode"] == "candidate_requires_release_validation", "Formal13 qualified candidate expected")
        state.update(revision=selected["revision"], task=selected["task"], pt2_sha256=original_sha,
            constraint_sha256=selected["constraint_sha256"], serialized_constraints=contract,
            selection_sha256=sha(args.selection), domain_report_sha256=sha(args.domain_report),
            source_manifest_sha256=sha(args.source / "source-baseline.json"), baseline_case=str(case), release_case=str(release),
            device=torch.cuda.get_device_name(0), visible_device_count=torch.cuda.device_count())
        state["failure_stage"] = "load_and_compile"
        exported = torch.export.load(pt2); module = exported.module().to("cuda:0")
        require(all(p.dtype == torch.float32 for p in module.parameters() if p.is_floating_point()), "FP32 weights required")
        expected_spec = str(exported.call_spec.out_spec)
        state["retargeted_factories"] = _retarget_factory_devices(module, "cuda:0")
        prepared = prepare_capture_constants(module, "cuda:0")
        compiled = torch.compile(module, fullgraph=True, dynamic=True, options=protocol.get("compile_options", {}))
        identity = bind_preprocessing(runtime_identity(model_id=args.model_id, revision=selected["revision"], task=selected["task"],
            pt2_sha256=original_sha, protocol_sha256=sha(case / "task-protocol.json"), compile_options=protocol.get("compile_options", {})), prepared)
        policy = release / "policy.json"
        router = PolicyReplayRouter(compiled, identity=identity, policy_path=policy,
            frozen_tensors=lambda: tuple(module.parameters()) + tuple(module.buffers()), enabled=True)
        validate_policy_binding(entry, router.document)
        require(router.policy_status == "loaded", router.policy_status)
        qa, qb, audit = release / "actual-policy-pair/calibrate/report.json", release / "actual-policy-pair/compare/report.json", release / "actual-policy-audit.json"
        qualification = validate_runtime_qualification(entry, read(qa), read(qb), read(audit), identity,
            sha(qa), sha(qb), sha(policy), frozen["files"])
        loaded = []
        for probe in saved["probes"]:
            path = case / Path(probe["archive"]).name; require(sha(path) == probe["sha256"], "Original probe bytes changed")
            with np.load(path, allow_pickle=False) as data:
                arrays = {key: data[key].copy() for key in probe["input_keys"]}
                reference = data["compiled_output"].copy()
            values = tuple(torch.from_numpy(arrays[key].copy()).to("cuda:0") for key in probe["input_keys"])
            loaded.append((probe, arrays, values, reference))
        base = next(item for item in loaded if (item[0]["batch"], item[0]["sequence"]) == (1, 8))
        keys = base[0]["input_keys"]
        specs = selected["boundary_plan"]["probes"]
        require(len(specs) == 4 and len({p["kind"] for p in specs}) == 4, "Four original boundary descriptions required")
        derived, saved_inputs = {}, {}
        for probe in specs:
            arrays = derive_coherent_inputs(base[1], keys, probe["batch"], probe["sequence"])
            for key, value in zip(keys, arrays): saved_inputs[probe["kind"] + "__" + key] = value
            derived[probe["kind"]] = tuple(torch.from_numpy(value).to("cuda:0") for value in arrays)
        np.savez_compressed(args.output / "derived-inputs.npz", **saved_inputs)
        state.update(identity=identity, runtime_qualification=qualification, preparation_records=prepared,
            output_spec=expected_spec, original_probe_sha256=base[0]["sha256"], input_keys=keys,
            derived_inputs_sha256=sha(args.output / "derived-inputs.npz"), policy_file_sha256=sha(policy))

        def array(value):
            leaves, spec = torch.utils._pytree.tree_flatten(value)
            require(str(spec) == expected_spec and len(leaves) == 1 and isinstance(leaves[0], torch.Tensor), "Original task output structure changed")
            return leaves[0].detach().cpu().numpy().copy()

        def checked(actual, reference):
            require(actual.shape == reference.shape and actual.dtype == reference.dtype, "Task output shape/dtype mismatch")
            require(np.isfinite(actual).all() and np.isfinite(reference).all(), "Nonfinite task output")
            delta = np.abs(actual.astype(np.float64) - reference.astype(np.float64))
            require(np.all(delta <= 3e-4 + 3e-4 * np.abs(reference.astype(np.float64))), "Joint output tolerance failed")
            return float(delta.max())

        def invoke(callback, path, kind, values, reference=None, violations=None):
            row = {"path": path, "kind": kind, "passed": False}
            try:
                value = array(callback(*values)); torch.cuda.synchronize()
                outputs[path + "__" + kind] = value
                row.update(observed="executed", output_shape=list(value.shape), dtype=str(value.dtype))
                if violations is None:
                    row.update(passed=True, max_abs_error=checked(value, reference))
                else:
                    row["reason"] = "out_of_contract_input_executed"
            except Exception as exc:
                matched = [v for v in violations or [] if is_expected_pt2_bound_rejection(type(exc).__name__, str(exc), **v)]
                row.update(observed="exception", passed=bool(matched), error_type=type(exc).__name__, error=str(exc),
                    traceback=traceback.format_exc(), matched_constraints=matched,
                    reason="expected_explicit_bound_rejection" if matched else "unexpected_error")
            if path == "policy":
                row["route"] = dict(router.last_route) if router.last_route else None
                if violations is not None or kind == "interior_odd_tail":
                    row["passed"] = row["passed"] and row["route"] is not None and row["route"]["route"] == "original_compiled"
            state["checks"].append(row); save(args.output / "progress.json", state)

        with torch.inference_mode():
            state["failure_stage"] = "prepare_original_policy"
            policy_keys = {metadata_key(x) for x in router.document["entries"]}
            preparations = []
            for i, (probe, _, values, reference) in enumerate(loaded):
                descriptors = json.loads(json.dumps([tensor_metadata(x) for x in values]))
                if metadata_key(descriptors) in policy_keys:
                    compiled(*values)
                    preparation = router.prepare(*values); require(preparation["prepared"], "Qualified exact entry capture failed")
                    value = array(router(*values)); error = checked(value, reference)
                    require(router.last_route["route"] == "graph_replay", "Qualified entry did not replay")
                    outputs["prepared_entry_" + str(i)] = value
                    preparations.append({"batch": probe["batch"], "sequence": probe["sequence"], "input_sha256": probe["sha256"],
                        "capture": preparation, "max_abs_error": error, "route": dict(router.last_route)})
            require(len(preparations) == len(router.document["entries"]), "Missing original qualified policy entry")
            state["preparations"] = preparations
            state["failure_stage"] = "fresh_same_shape_PPU_reference"
            before = counters["stats"]["unique_graphs"]
            odd_values = derived["interior_odd_tail"]
            odd_reference = array(module(*odd_values))
            odd_compiled = array(compiled(*odd_values)); odd_error = checked(odd_compiled, odd_reference)
            outputs.update(odd_reference_PPU_eager=odd_reference, odd_reference_PPU_compiled=odd_compiled)
            state["odd_reference"] = {"batch": 3, "sequence": 9, "reference_device": "PPU", "compiled_max_abs_error": odd_error,
                "unique_graphs_before_after": [before, counters["stats"]["unique_graphs"]], "input_recipe": "repeat/slice original(1,8), no retokenization"}
            state["failure_stage"] = "boundaries_and_recovery"
            for callback, path in [(module, "eager"), (compiled, "compiled"), (router, "policy")]:
                invoke(callback, path, "original_before", base[2], base[3])
                for probe in specs:
                    if probe["kind"] == "interior_odd_tail": continue
                    axis = 0 if probe["kind"] == "batch_upper_outside" else 1
                    relation = ">=" if probe["kind"] == "sequence_lower_outside" else "<="
                    violations = violated_axis_constraints(contract, probe["batch"], probe["sequence"], axis, relation)
                    invoke(callback, path, probe["kind"], derived[probe["kind"]], violations=violations)
                invoke(callback, path, "original_restored_after_rejection", base[2], base[3])
                invoke(callback, path, "interior_odd_tail", odd_values, odd_reference)
            require(len(state["checks"]) == 18, "All three paths and recovery must be exercised")
            require(router.snapshot()["cache"]["entries"] == len(preparations), "Novel shape implicitly captured a policy entry")
            np.savez_compressed(args.output / "outputs.npz", **outputs)
            state.update(status="passed" if all(row["passed"] for row in state["checks"]) else "failed_boundary_checks",
                failure_stage=None if all(row["passed"] for row in state["checks"]) else "boundaries_and_recovery",
                outputs_sha256=sha(args.output / "outputs.npz"), router=router.snapshot(),
                scenario_results=[{"kind": p["kind"], "passed": all(x["passed"] for x in state["checks"] if x["kind"] == p["kind"]),
                    "paths_checked": [x["path"] for x in state["checks"] if x["kind"] == p["kind"]]} for p in specs],
                memory={"memory_policy": "record_only_v1", "peak_allocated_bytes": torch.cuda.max_memory_allocated(),
                    "reserved_bytes": torch.cuda.memory_reserved(), "graph_pool_retained": True})
    except Exception as exc:
        state.update(status="failed_setup_or_execution", error_type=type(exc).__name__, error=str(exc), traceback=traceback.format_exc())
    if pt2 is not None and original_sha is not None:
        state["original_pt2_unchanged"] = sha(pt2) == original_sha
        if not state["original_pt2_unchanged"]: state.update(status="failed_original_pt2_changed", failure_stage="identity")
    evidence = [{"path": str(p.relative_to(args.output)), "sha256": sha(p), "bytes": p.stat().st_size}
                for folder in ("triton-cache", "inductor-cache") for p in (args.output / folder).rglob("*")
                if p.is_file() and p.suffix in {".ttir", ".ttgir", ".llir", ".hgbin", ".py"}]
    save(args.output / "compiler-evidence.json", evidence)
    state.update(finished_at=time.time(), compiler_evidence_sha256=sha(args.output / "compiler-evidence.json"))
    save(args.output / "report.json", state); save(args.output / "progress.json", state)
    print(json.dumps({key: state.get(key) for key in ("status", "model_id", "failure_stage", "error", "scenario_results")}), flush=True)
    return 0 if state["status"] == "passed" else 1


if __name__ == "__main__": raise SystemExit(main())
