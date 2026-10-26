"""Offline F08 feasibility audit; no torch, graph execution, or kernel changes.

Reuse the pinned G1 analyzer rather than inventing another lifetime planner.
Counterfactual plans are analysis copies, NOT authorized runtime plans. In
particular, the original rotary input must survive until the indexed Mul.
"""
from __future__ import annotations

import argparse
import ast
import copy
import hashlib
import importlib.util
import json
from pathlib import Path
import sys
import types


BUNDLE_SHA256 = "8f1e48e8c3d7d9f30ef1a3ca73302540f9876b16cf8ec5ed91e988587ebd994d"
G1_PINS = {
    "schema.py": "23dbbd5d52879492b349aa0ce8a4431c3961ca46457515111c8a3c90a9ac5546",
    "liveness.py": "528c4d869f01bc8d2e1c883acf46d86f3137e5d4f5da268d30a18d6bed8e86b0",
}
REVISION = "97b0c614be4d77ee51c0cef4e5f07c00f9eb65b3"


def require(ok, message):
    if not ok:
        raise ValueError(message)


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def read(path):
    return json.loads(Path(path).read_text())


def write(path, value):
    Path(path).write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n")


def verify_bundle(root):
    """Only read the pinned completed v4 package; reject path traversal/duplicates."""
    root = Path(root).resolve()
    manifest = root / "MANIFEST.sha256"
    require(sha(manifest) == BUNDLE_SHA256, "unexpected prior bundle manifest")
    seen = set()
    for line in manifest.read_text().splitlines():
        digest, rel = line.split(maxsplit=1)
        rel = rel.lstrip("*")
        path = (root / rel).resolve()
        require(path.is_relative_to(root) and path != manifest and path not in seen,
                "unsafe/duplicate/self manifest entry")
        require(sha(path) == digest, "changed prior evidence: " + rel)
        seen.add(path)
    require(len(seen) == 939, "unexpected prior bundle coverage")
    return {"manifest_sha256": BUNDLE_SHA256, "verified_entries": len(seen)}


def load_g1(directory):
    """Load only the two pinned pure-Python modules, without importing torch."""
    directory = Path(directory)
    for name, digest in G1_PINS.items():
        require(sha(directory / name) == digest, "G1 source mismatch: " + name)
    package = "_f08_rotary_pinned_g1"
    mod = types.ModuleType(package)
    mod.__path__ = [str(directory)]
    sys.modules[package] = mod
    for filename in G1_PINS:
        name = package + "." + Path(filename).stem
        spec = importlib.util.spec_from_file_location(name, directory / filename)
        module = importlib.util.module_from_spec(spec)
        sys.modules[name] = module
        spec.loader.exec_module(module)
    return sys.modules[package + ".liveness"].analyze_model_lifetimes


def literal_args(node):
    """Parse exported FX repr, never eval it; allow only names/lists/integers here."""
    def convert(value):
        if isinstance(value, ast.Name):
            return value.id
        if isinstance(value, (ast.Tuple, ast.List)):
            return [convert(x) for x in value.elts]
        if isinstance(value, ast.Constant) and type(value.value) is int:
            return value.value
        if isinstance(value, ast.UnaryOp) and isinstance(value.op, ast.USub):
            item = convert(value.operand)
            require(type(item) is int, "noninteger unary argument")
            return -item
        raise ValueError("unsupported argument syntax")
    require(node["kwargs"] == "{}", "unexpected kwargs")
    args = convert(ast.parse(node["args"], mode="eval").body)
    require(isinstance(args, list), "arguments are not a tuple")
    return args


def observed_layout(batch, name):
    """Addresses are not lifetime IDs. Require stable layout, not stable pointers."""
    layouts = {}
    for group in batch["storage_catalog"].values():
        for member in group["members"]:
            if member["source_value"] == name:
                layout = {k: member[k] for k in ("dtype", "shape", "stride", "byte_offset")}
                layout.update(device=group["device"], storage_nbytes=group["storage_nbytes"])
                layouts[json.dumps(layout, sort_keys=True)] = layout
    require(len(layouts) == 1, "missing/ambiguous observed layout: " + name)
    return next(iter(layouts.values()))


def candidates(graph, plan, batch):
    """Recognize rotate-half -> Mul, not arbitrary cat or a generic fusion pass."""
    nodes = {n["name"]: n for n in graph}
    tensors = {t["source_value"]: t for t in plan["tensors"]}
    storages = {s["storage_id"]: s for s in plan["storages"]}
    tasks = {t["task_id"]: t for t in plan["tasks"]}
    accepted, rejected = [], []
    for cat in graph:
        if cat["target"] != "aten.cat.default":
            continue
        try:
            pair, dim = literal_args(cat)
            require(type(dim) is int and dim in (-1, 3) and isinstance(pair, list)
                    and len(pair) == 2 and all(isinstance(x, str) for x in pair), "not rotate-half cat")
            neg, low = pair
            require(nodes[neg]["target"] == "aten.neg.default", "not neg/low pair")
            high, = literal_args(nodes[neg])
            require(nodes[low]["target"] == nodes[high]["target"] == "aten.slice.Tensor",
                    "not two slices")
            a, b = literal_args(nodes[low]), literal_args(nodes[high])
            require(len(a) in (4, 5) and len(b) in (4, 5), "slice signature")
            source = a[0]
            require(source == b[0] and a[1] == b[1] == 3 and a[2] == 0,
                    "different source/axis")
            layout = observed_layout(batch, source)
            shape = layout["shape"]
            require(layout["dtype"] == "float32" and layout["device"] == "cuda:0"
                    and len(shape) == 4 and all(type(d) is int and d > 0 for d in shape)
                    and shape[-1] % 2 == 0, "unsupported source layout")
            half = shape[-1] // 2
            require(a[3] == b[2] == half and b[3] >= shape[-1]
                    and (len(a) == 4 or a[4] == 1) and (len(b) == 4 or b[4] == 1),
                    "not exhaustive unit-step halves")
            cat_tensor = tensors[cat["name"]]
            require(len(cat_tensor["consumers"]) == 1, "cat has other consumers")
            target = tasks[cat_tensor["consumers"][0]]["source_node"]
            require(nodes[target]["target"] == "aten.mul.Tensor", "cat consumer is not Tensor Mul")
            args = literal_args(nodes[target])
            require(len(args) == 2 and args.count(cat["name"]) == 1, "Mul signature")
            scale = args[1 - args.index(cat["name"])]
            expected = {low: ["task." + cat["name"]], high: ["task." + neg],
                        neg: ["task." + cat["name"]], cat["name"]: ["task." + target]}
            removed = list(expected)
            positions = {t["source_node"]: i for i, t in enumerate(plan["tasks"])}
            begin, end = min(positions[n] for n in removed), positions[target]
            require(end >= begin and {t["source_node"] for t in plan["tasks"][begin:end + 1]}
                    == set(removed + [target]), "intervening task requires separate side-effect analysis")
            require(tensors[low]["storage_id"] == tensors[high]["storage_id"]
                    == tensors[source]["storage_id"], "slice/source alias mismatch")
            for name, users in expected.items():
                t = tensors[name]
                require(t["consumers"] == users, "intermediate has extra consumer: " + name)
                require(not any(t[k] for k in ("is_persistent", "is_graph_output", "is_mutated")),
                        "protected/modified intermediate: " + name)
            for name in (neg, cat["name"]):
                sid = tensors[name]["storage_id"]
                require(storages[sid]["allocation_kind"] == "temporary"
                        and [t["source_value"] for t in plan["tensors"] if t["storage_id"] == sid] == [name],
                        "removable allocation has additional aliases: " + name)
            layouts = {name: observed_layout(batch, name)
                       for name in (source, scale, low, high, neg, cat["name"], target)}
            for name, fact in layouts.items():
                require(fact["dtype"] == "float32" and fact["device"] == "cuda:0"
                        and len(fact["stride"]) == 4 and all(type(s) is int and s >= 0 for s in fact["stride"]),
                        "unsupported member layout: " + name)
            require(layouts[cat["name"]]["shape"] == layouts[target]["shape"] == shape,
                    "cat/output shape mismatch")
            require(len(layouts[scale]["shape"]) == 4 and all(
                type(d) is int and d in (1, size) for d, size in zip(layouts[scale]["shape"], shape)),
                "scale broadcast mismatch")
            require(layouts[low]["shape"] == layouts[high]["shape"]
                    == layouts[neg]["shape"] == shape[:-1] + [half], "half shape mismatch")
            require(layouts[cat["name"]]["storage_nbytes"] == layouts[target]["storage_nbytes"]
                    == shape[0] * shape[1] * shape[2] * shape[3] * 4, "output allocation size mismatch")
            schedule = [tasks["task." + name] for name in removed + [source, target]]
            require({t["device"] for t in schedule} == {"cuda:0"}
                    and {t["stream"] for t in schedule} == {"stream:0"}, "unknown/cross stream")
            source_members = [t for t in plan["tensors"] if t["storage_id"] == tensors[source]["storage_id"]]
            require(not any(t["is_mutated"] for t in source_members), "source alias group is mutated")
            accepted.append({
                "cat": cat["name"], "neg": neg, "source": source, "scale": scale,
                "target_mul": target, "removed_analysis_nodes": removed, "layouts": layouts,
                "cat_bytes": storages[cat_tensor["storage_id"]]["size_bytes"],
                "neg_bytes": storages[tensors[neg]["storage_id"]]["size_bytes"],
                "original_source_alias_members": [t["source_value"] for t in source_members],
                "source_lifetime_must_extend_to": "task." + target,
                "proposed_expression": "y[i] = (i.last < H/2 ? -x[i.last+H/2] : x[i.last-H/2]) * scale[i]",
                "eligibility": "structural_only_not_numerical_or_runtime_authorization",
            })
        except (ValueError, KeyError, TypeError, SyntaxError) as exc:
            rejected.append({"cat": cat["name"], "reason": str(exc)})
    return accepted, rejected


def analysis_plan(plan, batch, selected):
    """Make an isolated counterfactual. NEVER write this over a runtime plan."""
    out = copy.deepcopy(plan)
    tensors = {t["source_value"]: t for t in out["tensors"]}
    storages = {s["storage_id"]: s for s in out["storages"]}
    # Reflect only the 28 already observed MLP Mul aliases, not hypothetical rotary in-place.
    aliases = []
    for row in batch["nodes"]:
        binding = row.get("selected_binding")
        if binding is None:
            continue
        require(binding["observed_same_address"] is True, "expected observed inplace baseline")
        left, right = [tensors[binding[k]] for k in ("source_value", "output_value")]
        a, b = left["storage_id"], right["storage_id"]
        require(a != b and storages[a]["size_bytes"] == storages[b]["size_bytes"]
                and left["shape"] == right["shape"] and left["dtype"] == right["dtype"],
                "incompatible observed baseline alias")
        require(not any(t[k] for t in (left, right)
                        for k in ("is_persistent", "is_graph_output", "is_mutated")), "protected baseline alias")
        for t in out["tensors"]:
            if t["storage_id"] == b:
                t["storage_id"] = a
        aliases.append({"source": left["source_value"], "output": right["source_value"]})
    removed = {n for c in selected for n in c["removed_analysis_nodes"]}
    require(sum(len(c["removed_analysis_nodes"]) for c in selected) == len(removed),
            "overlapping candidate removal")
    for c in selected:
        task = next(t for t in out["tasks"] if t["source_node"] == c["target_mul"])
        old, new = tensors[c["cat"]]["tensor_id"], tensors[c["source"]]["tensor_id"]
        require(task["inputs"].count(old) == 1, "missing original cat input")
        task["inputs"] = [new if name == old else name for name in task["inputs"]]
        task["kernel_id"] = "proposal.rotary_indexed_mul.not_implemented"
    out["tasks"] = [t for t in out["tasks"] if t["source_node"] not in removed]
    out["tensors"] = [t for t in out["tensors"] if t["source_value"] not in removed]
    active_ids = {t["tensor_id"] for t in out["tensors"]}
    for t in out["tensors"]:
        t["consumers"] = []
        # The validated executor retains every placeholder; G1 copies reflect that policy.
        if t["producer"] is None:
            t["is_persistent"] = True
    by_id = {t["tensor_id"]: t for t in out["tensors"]}
    for i, task in enumerate(out["tasks"]):
        require(set(task["inputs"]).issubset(active_ids), "dangling input after removal")
        for name in task["inputs"]:
            if task["task_id"] not in by_id[name]["consumers"]:
                by_id[name]["consumers"].append(task["task_id"])
        # The recorded sequential execution is an ANALYSIS assumption, not a new device proof.
        task["predecessors"] = [] if i == 0 else [out["tasks"][i - 1]["task_id"]]
    used = {t["storage_id"] for t in out["tensors"]}
    out["storages"] = [s for s in out["storages"] if s["storage_id"] in used]
    out["plan_id"] += ".offline_rotary_counterfactual"
    return out, aliases


def compact(report):
    peak = report.peak_summary
    return {"graph_storage_peak_bytes": peak.accounted_peak_bytes,
            "peak_events": list(peak.peak_event_ids),
            "event_semantics": report.event_semantics,
            "unknown_size_storage_ids": list(peak.unknown_size_storage_ids),
            "task_count": len(report.task_order)}


def run_g1(g1, plan):
    """The pinned schema's DFS is recursive; a serial Qwen graph has ~2000 tasks.

    Give this CPU-only call enough stack, then restore it. Cycle checking and
    every schema validation still run unchanged; no shared source is patched.
    """
    previous = sys.getrecursionlimit()
    require(len(plan["tasks"]) <= 10000, "outside bounded offline audit size")
    sys.setrecursionlimit(max(previous, 4 * len(plan["tasks"]) + 100))
    try:
        return g1(plan)
    finally:
        sys.setrecursionlimit(previous)


def analyze(graph, plan, batches, g1):
    require(len(batches) == 4, "need two repeats x two batches")
    graph_order = [n["name"] for n in graph if n["op"] == "call_function"]
    require(graph_order == [t["source_node"] for t in plan["tasks"]], "graph/plan order mismatch")
    # Validate the entire untouched plan before deriving anything.
    run_g1(g1, plan)
    for batch in batches:
        require([r["node"] for r in batch["nodes"]] == graph_order, "diagnostic order mismatch")
    found, rejected = candidates(graph, plan, batches[0])
    require(len(found) == 56, "expected 56 rotary paths, not the 28 peak-only cats")
    rows = batches[0]["nodes"]
    baseline_peak = max(r["node_peak_allocated_bytes"] for r in rows)
    peak_names = {r["node"] for r in rows if r["node_peak_allocated_bytes"] == baseline_peak}
    peak_candidates = [c for c in found if c["cat"] in peak_names]
    require(len(peak_candidates) == 28 and {c["cat"] for c in peak_candidates} == peak_names,
            "unexpected inplace peak ownership")
    for batch in batches[1:]:
        other, rejects = candidates(graph, plan, batch)
        require(other == found and rejects == rejected, "candidate/layout disagreement across repeats")
        require({r["node"] for r in batch["nodes"] if r["node_peak_allocated_bytes"] ==
                 max(r["node_peak_allocated_bytes"] for r in batch["nodes"])} == peak_names,
                "peak ownership differs across repeats")
    base_plan, aliases = analysis_plan(plan, batches[0], [])
    require(len(aliases) == 28, "expected 28 already validated MLP aliases")
    baseline = run_g1(g1, base_plan)
    summaries = []
    for label, selection in (("peak_28_only", peak_candidates), ("all_56_rotary_paths", found)):
        derived, _ = analysis_plan(plan, batches[0], selection)
        candidate = run_g1(g1, derived)
        summary = {"candidate": label, "path_count": len(selection), **compact(candidate),
                   "static_graph_storage_reduction_bytes": baseline.peak_summary.accounted_peak_bytes
                                                             - candidate.peak_summary.accounted_peak_bytes}
        # List source storage extension from the actual G1 union lifetime, not tensor last-use alone.
        old_storage = {s.storage_id: s for s in baseline.storages}
        new_storage = {s.storage_id: s for s in candidate.storages}
        old_event = {e.event_index: e.event_id for e in baseline.events}
        new_event = {e.event_index: e.event_id for e in candidate.events}
        source_sid = {t["source_value"]: t["storage_id"] for t in derived["tensors"]}
        summary["source_storage_lifetimes"] = [{
            "source": c["source"], "storage_id": source_sid[c["source"]],
            "old_last_event": old_event[old_storage[source_sid[c["source"]]].lifetime_end],
            "new_last_event": new_event[new_storage[source_sid[c["source"]]].lifetime_end],
        } for c in selection]
        touched = {n for c in selection for n in c["removed_analysis_nodes"] + [c["target_mul"]]}
        unaffected_peak = max(r["node_peak_allocated_bytes"] for r in rows if r["node"] not in touched)
        summary["existing_unmodified_node_high_water_bytes"] = unaffected_peak
        summary["existing_unmodified_high_water_nodes"] = [r["node"] for r in rows
            if r["node"] not in touched and r["node_peak_allocated_bytes"] == unaffected_peak]
        summary["conditional_max_reduction_if_other_node_high_water_unchanged_bytes"] = baseline_peak - unaffected_peak
        summary["conditional_ceiling_is_not_a_runtime_prediction"] = True
        summaries.append(summary)
    return {"status": "offline_feasibility_only", "runtime_applied": False,
            "ppu_executed_this_run": False, "new_kernel_implemented": False,
            "baseline": compact(baseline), "observed_synchronous_inplace_peak_bytes": baseline_peak,
            "candidates": found, "rejected_cats": rejected, "comparisons": summaries,
            "existing_mlp_inplace_aliases": aliases,
            "assumptions": ["single recorded sequential order; all placeholders retained",
                "existing MLP inplace aliases as observed; no additional rotary inplace",
                "indexed Mul retains original output storage size; source lives until target Mul",
                "no extra copy, temporary, workspace, or precision change in hypothetical kernel"],
            "unproven": ["new kernel numerical equality and FP32 rounding on PPU",
                "backend temporary storage and actual allocator behavior",
                "normal unsynchronized peak, latency, task accuracy and stability"],
            "decision": "worth_a_bounded_indexed_mul_feasibility_review_not_runtime_authorized"}


def markdown(report):
    lines = ["# Qwen rotary 缓冲消除可行性（仅离线）", "",
        "复用既有 G1；不改真实图、执行器或 kernel；不是新设备结果。", "",
        f"识别 {len(report['candidates'])} 条 rotary 路径，其中 28 条 cat 为同步诊断并列峰值。",
        "候选仅把 slice/neg/cat 的索引读取移入后续 Mul；保留 Mul 输出及后面的 add。",
        "不是 cat 原地写入，不重算 sin/cos，不融合 SiLU 或 attention。", "",
        "| 分析条件 | 图 storage 峰值 B | 静态减少 B |", "|---|---:|---:|",
        f"| 已观测 MLP inplace 基线 | {report['baseline']['graph_storage_peak_bytes']} | — |"]
    for c in report["comparisons"]:
        lines.append(f"| {c['candidate']} | {c['graph_storage_peak_bytes']} | {c['static_graph_storage_reduction_bytes']} |")
    lines += ["", "## 解释与限制", "",
        "删除 cat 会延长原输入底层 storage 到 indexed Mul；不能简单从整图峰值减掉 cat 容量。",
        "所有值属于 G1 可见图 storage，不是 allocated/reserved，也不是设备收益预测。",
        "未修改节点的已有高水位只能给出其保持不变时的条件性收益上限；不能当设备结果。",
        "未知 allocated 差额保持未归因；不命名为 GEMM/attention 工作区。",
        "完整峰值事件、实际 stride/offset、源 storage 延续终点见 feasibility.json。", "",
        "## 下一门槛", "",
        "先与图优化侧确认 rotary 是否已有实现以及改写/别名/缓冲接口。",
        "再另行授权实现真实 FlagTree indexed Mul：处理非连续源 stride 和 scale 广播，",
        "保持 neg 后乘法的 FP32 顺序；输出独立分配，不覆盖输入；不隐式 contiguous/copy。",
        "通过严格 0/0、G1/G03、真实 PPU 编译启动和正常路径 A/B 后才能报告收益。"]
    return "\n".join(lines) + "\n"


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--bundle", type=Path, required=True)
    parser.add_argument("--planner-dir", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    require(not args.output_dir.exists(), "output already exists; choose a new directory")
    identity = verify_bundle(args.bundle)
    g1 = load_g1(args.planner_dir)
    raw = args.bundle / "raw"
    case = read(raw / "case.json")
    require(case["model_id"] == "Qwen/Qwen3-Embedding-0.6B" and case["revision"] == REVISION
            and case["batch_size"] == 32 and case["seq_len"] == 24, "wrong model/protocol")
    batches = [b for rep in (1, 2) for b in
               read(raw / f"diag-{rep}-diagnose-inplace/diagnostic.json")["batches"]]
    report = analyze(read(raw / "gate/graph-structure.json"), read(raw / "gate/model-plan.json"), batches, g1)
    report["provenance"] = {"bundle": identity, "g1_sources": G1_PINS,
        "graph_sha256": sha(raw / "gate/graph-structure.json"),
        "plan_sha256": sha(raw / "gate/model-plan.json"), "revision": REVISION}
    # No changes to the bundle: all output goes into a new directory after successful analysis.
    args.output_dir.mkdir(parents=True)
    write(args.output_dir / "feasibility.json", report)
    (args.output_dir / "FEASIBILITY.md").write_text(markdown(report))
    print(json.dumps({"status": report["status"], "candidate_paths": len(report["candidates"]),
        "baseline_graph_storage_peak_bytes": report["baseline"]["graph_storage_peak_bytes"],
        "comparisons": [{k: c[k] for k in ("candidate", "path_count", "graph_storage_peak_bytes",
            "static_graph_storage_reduction_bytes",
            "conditional_max_reduction_if_other_node_high_water_unchanged_bytes")}
            for c in report["comparisons"]]}, ensure_ascii=False))


if __name__ == "__main__":
    main()
