"""Read-only G2 admission audit; reuses the existing offset planner, never torch.

Historical PPU evidence is checked, not reproduced. This program cannot apply a
layout, import an accelerator runtime, or authorize a performance experiment.
"""
from __future__ import annotations

import argparse
import ast
import copy
import hashlib
import importlib
import json
import math
from pathlib import Path
import sys
import types


class AuditError(ValueError):
    pass


def require(condition, reason):
    if not condition:
        raise AuditError(reason)


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def fingerprint(value):
    # Same canonical convention as the frozen G03/bridge plan identity.
    return hashlib.sha256(json.dumps(value, ensure_ascii=False, sort_keys=True).encode()).hexdigest()


def load_json(path):
    def reject_constant(value):
        raise AuditError(f"nonfinite_json:{value}")
    return json.loads(Path(path).read_text(encoding="utf-8"), parse_constant=reject_constant)


def check_manifest(root, scope=None):
    """Check listed files in scope; reject escape, duplicate entries and bad hashes.

    A checksum list is integrity evidence, not an authenticity signature.
    Every subsequently consumed evidence file must also be listed in it.
    """
    root = root.resolve()
    manifest = root / "MANIFEST.sha256"
    entries = {}
    for line in manifest.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        digest, separator, name = line.partition("  ")
        require(separator and len(digest) == 64 and all(c in "0123456789abcdef" for c in digest),
                "manifest_format")
        target = (root / name).resolve()
        require(target.is_relative_to(root) and target != root, "manifest_path_escape")
        require(target not in entries, "manifest_duplicate")
        if scope is None or target.is_relative_to(scope.resolve()):
            require(target.is_file() and sha(target) == digest, f"manifest_mismatch:{name}")
        entries[target] = digest
    require(bool(entries), "empty_manifest")
    return entries


def load_planner(directory):
    """Load ONE caller-selected existing planner package, without installing it."""
    directory = directory.resolve()
    files = {name: directory / f"{name}.py" for name in ("schema", "liveness", "offset_planner")}
    identity = {name: sha(path) for name, path in files.items()}
    package_name = "f08_g2_audit_dependency_" + fingerprint(identity)[:16]
    package = types.ModuleType(package_name)
    package.__path__ = [str(directory)]
    sys.modules[package_name] = package
    planner = importlib.import_module(package_name + ".offset_planner")
    require(hasattr(planner, "plan_arena_with_report") and hasattr(planner, "verify_matches"),
            "planner_api_too_old")
    return planner, identity


def require_exact(check):
    require(isinstance(check, dict) and check.get("passed") is True
            and type(check.get("max_abs_diff")) in (int, float)
            and check["max_abs_diff"] == 0
            and check.get("atol") == 0 and check.get("rtol") == 0,
            "historical_exact_gate_missing")


def validate_gate(plan, lowering, gate, probes, comparison):
    plan_sha = fingerprint(plan)
    require(gate.get("status") == "passed" and gate.get("atol") == 0 and gate.get("rtol") == 0,
            "historical_gate_not_exact_pass")
    require(plan_sha == gate.get("plan_sha256") == lowering.get("plan_sha256"), "plan_identity")
    require(gate.get("case", {}).get("model_id") == plan.get("model_id")
            and fingerprint(gate["case"]) == gate.get("case_sha256"), "case_identity")
    require(bool(gate.get("graph_sha256")) and gate["graph_sha256"] == lowering.get("graph_sha256"),
            "graph_identity")
    selected = lowering.get("selected")
    require(bool(selected) and selected == gate.get("selected"), "selection_identity")
    require(set(probes) == set(selected) == set(gate.get("compiler", {})), "probe_coverage")
    for probe in probes.values():
        for name in ("torch_vs_flagtree", "same_kernel_out_vs_inplace"):
            require_exact(probe.get(name))
    require(comparison.get("inputs_and_parameters_unchanged") is True, "protected_values_changed")
    require(bool(comparison.get("batches")), "comparison_missing")
    for batch in comparison["batches"]:
        for name in ("torch_graph_vs_native_forward", "torch_vs_flagtree", "same_kernel_full_graph"):
            require_exact(batch.get(name))
        require(batch.get("all_node_digests_match_between_flagtree_arms") is True, "node_compare_missing")


def bridge_contract(gate, directory):
    expected = gate.get("environment", {}).get("bridge_source_hashes", {})
    identity = {name: sha(directory / name) for name in ("kernel.py", "graph.py")}
    require(all(expected.get(name) == digest for name, digest in identity.items()),
            "bridge_interface_identity_changed")
    tree = ast.parse((directory / "kernel.py").read_text(encoding="utf-8"))
    has_offset_guard = any(
        isinstance(node, ast.Compare) and isinstance(node.left, ast.Call)
        and isinstance(node.left.func, ast.Attribute) and node.left.func.attr == "storage_offset"
        and len(node.ops) == 1 and isinstance(node.ops[0], ast.NotEq)
        and len(node.comparators) == 1 and isinstance(node.comparators[0], ast.Constant)
        and node.comparators[0].value == 0 for node in ast.walk(tree))
    require(has_offset_guard, "bridge_zero_offset_contract_not_found")
    return identity


def select_outputs(plan, lowering, bindings):
    """Select only exact dense, single-member GELU outputs with historical proof.

    Never merge input/output storage: that would be G03, not distinct-lifetime
    cross-kernel G02 reuse. Evidence-derived offsets go into a COPY of the plan.
    """
    derived = copy.deepcopy(plan)
    tensors = {t["tensor_id"]: t for t in derived["tensors"]}
    tasks = {t["task_id"]: t for t in derived["tasks"]}
    storages = {s["storage_id"]: s for s in derived["storages"]}
    require(len(tensors) == len(derived["tensors"]) and len(tasks) == len(derived["tasks"])
            and len(storages) == len(derived["storages"]), "duplicate_plan_id")
    selected, rows = set(), []
    for name, lowered in lowering["selected"].items():
        tensor = tensors.get("tensor." + name)
        task = tasks.get("task." + name)
        require(tensor is not None and task is not None, "selected_node_missing")
        sid = tensor["storage_id"]
        storage = storages[sid]
        require(task["kernel_id"] == "aten.gelu.default" and task["outputs"] == [tensor["tensor_id"]]
                and tensor["producer"] == task["task_id"], "selected_producer_mismatch")
        input_id = "tensor." + lowered["input_node"]
        require(task["inputs"] == [input_id] and input_id in tensors, "selected_input_mismatch")
        require(tensors[input_id]["storage_id"] != sid, "not_distinct_output_storage")
        members = [t for t in tensors.values() if t["storage_id"] == sid]
        require(len(members) == 1, "alias_adapter_required")
        require(storage["allocation_kind"] == "temporary" and not any(
            tensor[field] for field in ("is_graph_output", "is_persistent", "is_mutated")),
            "protected_or_mutated_output")
        fact = bindings.get(tensor["tensor_id"], {})
        identity = {"plan_id": plan["plan_id"], "plan_sha256": fingerprint(plan),
                    "graph_fingerprint": lowering["graph_sha256"],
                    "tensor_id": tensor["tensor_id"], "storage_id": sid,
                    "scope": "ppu_runtime", "device": "cuda:0", "physical_card": 14}
        require(all(fact.get(key) == value for key, value in identity.items()), "binding_identity")
        shape = tensor["shape"]
        require(bool(shape) and all(type(dim) is int and dim > 0 for dim in shape), "unsupported_shape")
        elements = math.prod(shape)
        require(tensor["dtype"] == fact.get("dtype") == "float32"
                and shape == fact.get("shape") == lowered["shape"]
                and lowered["approximate"] == "none", "unsupported_layout")
        stride, expected_stride = fact.get("stride"), []
        product = 1
        for dim in reversed(shape):
            expected_stride.insert(0, product)
            product *= dim
        require(fact.get("contiguous") is True and stride == expected_stride
                and type(fact.get("byte_offset")) is int and fact["byte_offset"] == 0
                and fact.get("numel") == elements
                and fact.get("nbytes") == storage["size_bytes"] == elements * 4
                and storage["device"] == task["device"] == "cuda:0", "binding_layout")
        require(tensor["storage_offset_bytes"] in (None, 0), "plan_binding_offset_mismatch")
        require(sid not in selected, "duplicate_selected_storage")
        tensor["storage_offset_bytes"] = 0
        selected.add(sid)
        rows.append({"node": name, "tensor_id": tensor["tensor_id"], "storage_id": sid,
                     "size_bytes": storage["size_bytes"], "binding_source": "historical PPU trace",
                     "scope": "offline_admission_only"})
    return derived, selected, rows


def resident_accounting(lifetime, arena):
    """Graph storage arithmetic, NOT allocator or kernel-workspace prediction."""
    selected = set(arena.selected_storage_ids)
    sizes = {s.storage_id: s.size_bytes for s in lifetime.storages}
    require(all(type(n) is int and n >= 0 for n in sizes.values()), "unknown_graph_storage_size")
    events = []
    for event in lifetime.memory_events:
        live = set(event.live_storage_ids)
        reference = sum(sizes[s] for s in live)
        resident = arena.arena_size_bytes + sum(sizes[s] for s in live - selected)
        require(resident >= reference, "invalid_arena_live_capacity")
        events.append({"event_id": event.event_id, "reference_bytes": reference,
                       "resident_arena_bytes": resident, "delta_bytes": resident - reference})
    return {"reference_graph_storage_peak_bytes": max(e["reference_bytes"] for e in events),
            "resident_arena_graph_storage_peak_bytes": max(e["resident_arena_bytes"] for e in events),
            "pointwise_resident_not_below_reference": True,
            "boundary": "static graph storage only; no allocator rounding, workspace, fragmentation or timing",
            "events": events}


def audit(root, model, planner):
    root = root.resolve()
    directory = (root / model / "gate").resolve()
    require(directory.is_relative_to(root), "model_path_escape")
    entries = check_manifest(root, directory)
    def read(name):
        path = directory / name
        require(path.resolve() in entries, f"unmanifested_input:{name}")
        return load_json(path)
    plan, lowering, gate = read("model-plan.json"), read("lowering.json"), read("result.json")
    probes, comparison, bindings = read("kernel-probes.json"), read("compare.json"), read("bindings.json")
    validate_gate(plan, lowering, gate, probes, comparison)
    bridge_identity = bridge_contract(gate, Path(__file__).resolve().parent.parent / "f08_flagtree_eval")
    require(not planner.analyze_model_lifetimes(plan).peak_summary.unknown_size_storage_ids,
            "incomplete_graph_size")
    for name, compiler in gate["compiler"].items():
        require(compiler.get("compiler_class", "").endswith(".ppu.compiler.PPUBackend")
                and compiler.get("binary_ext") == "hgbin"
                and compiler.get("actual_launch_synchronized") is True, "compiler_launch_identity")
        require(compiler.get("numel") == math.prod(lowering["selected"][name]["shape"])
                and compiler.get("approximate") == lowering["selected"][name]["approximate"],
                "compiler_shape_identity")
        for stage in ("ttir", "ttgir", "llir", "hgbin"):
            record = compiler.get("stages", {}).get(stage, {})
            # Recorded paths are on the server; resolve by known archived layout.
            path = directory / "compiler" / name / ("gelu." + stage)
            require(path.resolve() in entries and sha(path) == record.get("sha256")
                    and path.stat().st_size == record.get("bytes") and path.stat().st_size > 0,
                    f"compiler_artifact_mismatch:{name}:{stage}")
    derived, chosen, candidates = select_outputs(plan, lowering, bindings)
    arena, lifetime = planner.plan_arena_with_report(
        derived, task_order=lowering["order"], pool_storage_ids=chosen)
    require(set(arena.selected_storage_ids) == chosen, "planner_excluded_selected_storage")
    require(not planner.verify_matches(arena, derived), "planner_verification_failed")
    require(not arena.unresolved_tensor_storage_offsets, "selected_offset_unresolved")
    accounting = resident_accounting(lifetime, arena)
    nonzero = [a.storage_id for a in arena.assignments if a.offset_bytes != 0]
    return {"report_version": "f08-flagtree-g2-admission/0.1",
            "model_id": plan["model_id"], "batch_size": gate["case"]["batch_size"],
            "seq_len": gate["case"]["seq_len"], "status": "offline_audit_complete_not_runtime_authorized",
            "runtime_applied": False, "ppu_executed_this_run": False,
            "source_run": str(root), "source_manifest_sha256": sha(root / "MANIFEST.sha256"),
            "manifest_validation_scope": str(directory.relative_to(root)),
            "input_files": {str(p.relative_to(root)): digest for p, digest in entries.items()
                            if p.is_relative_to(directory)},
            "original_plan_sha256": fingerprint(plan), "derived_plan_sha256": fingerprint(derived),
            "derived_change": "copy only: selected output offsets resolved from historical binding evidence",
            "candidates": candidates, "arena_plan": arena.to_dict(), "derived_plan": derived,
            "graph_storage_accounting": accounting,
            "bridge_boundary": {"explicit_destination_exists": True,
                                "source_sha256": bridge_identity,
                                "current_bridge_requires_zero_tensor_storage_offset": True,
                                "nonzero_planned_slot_storage_ids": nonzero,
                                "new_runtime_required": True},
            "decision": "do_not_start_resident_gelu_only_AB_for_unproven_memory_gain",
            "reason": "a persistent arena can reuse addresses but cannot reduce ideal live graph-storage peak",
            "next_interface_needed": ["model-level allocation/binding owner and execution-order contract",
                                      "wider FlagTree producer coverage or changed memory schedule with safety proof",
                                      "runtime view/base alignment, bounds, alias and stream-completion checks",
                                      "new correctness gate before any performance run"],
            "evidence_boundary": "Historical FlagTree evidence + current CPU/static analysis only. "
                                 "No prediction of measured allocated/reserved or latency."}


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--run-root", type=Path, required=True)
    parser.add_argument("--model", choices=("model-01", "model-02"), required=True)
    parser.add_argument("--planner-dir", type=Path, required=True,
                        help="trusted existing schema/liveness/offset_planner package directory")
    parser.add_argument("--output", type=Path, required=True, help="new JSON file, never overwritten")
    args = parser.parse_args(argv)
    try:
        require(not args.output.exists(), "output_exists")
        planner, identity = load_planner(args.planner_dir)
        report = audit(args.run_root, args.model, planner)
        report["planner_source_sha256"] = identity
        report["audit_source_sha256"] = sha(__file__)
        args.output.parent.mkdir(parents=True, exist_ok=True)
        with args.output.open("x", encoding="utf-8") as stream:
            json.dump(report, stream, ensure_ascii=False, indent=2, allow_nan=False)
            stream.write("\n")
        print(f"{report['model_id']}: {len(report['candidates'])} outputs; "
              f"arena={report['arena_plan']['arena_size_bytes']} B; STATIC ONLY")
        return 0
    except (AuditError, ValueError, OSError, KeyError, TypeError) as error:
        print(f"REJECTED: {error}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
