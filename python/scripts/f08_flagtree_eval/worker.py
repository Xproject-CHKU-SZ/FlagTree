"""One isolated device process: correctness gate OR one measurement arm.

This is a minimal graph-to-FlagTree bridge, not a production graph frontend or
an MLIR Pass. No torch import or device initialization occurs before preflight.
"""
from __future__ import annotations

import argparse
import importlib.metadata
import json
import math
import os
from pathlib import Path
import sys
import time
import traceback

from contracts import (ARMS, check_selection, compiler_identity, file_hash, fingerprint,
                       read_smi, require_idle, save_json)
from graph import (digest, graph_identity, load_legality, make_plan, run_graph,
                   single_tensor, trace)


def build(case):
    import torch
    from sentence_transformers import SentenceTransformer
    model = SentenceTransformer(case["snapshot"], device="cpu", trust_remote_code=False,
                                local_files_only=True).eval()
    modules = [{"name": name, "class": type(module).__module__ + "." + type(module).__name__}
               for name, module in model._modules.items()]
    chunks = [case["texts"][i:i + case["batch_size"]] for i in range(0, 64, case["batch_size"])]
    encoded = [model.tokenizer(texts, padding="max_length", truncation=True,
                               max_length=case["seq_len"], return_tensors="pt") for texts in chunks]
    if any(set(batch) - {"input_ids", "attention_mask", "token_type_ids"} for batch in encoded):
        raise ValueError("tokenizer feature needs an explicit adapter")
    use_types = "token_type_ids" in encoded[0]

    class Wrapper(torch.nn.Module):
        def __init__(self):
            super().__init__()
            self.model = model
        def forward(self, input_ids, attention_mask, token_type_ids):
            features = {"input_ids": input_ids, "attention_mask": attention_mask}
            if use_types:
                features["token_type_ids"] = token_type_ids
            # Preserve the complete native module sequence: no fixed [0]/[1]/[2],
            # no forced mean pooling/normalization/prompt changes.
            return self.model(features)["sentence_embedding"]

    batches = [{"input_ids": x["input_ids"], "attention_mask": x["attention_mask"],
                "token_type_ids": x.get("token_type_ids", torch.zeros_like(x["input_ids"]))}
               for x in encoded]
    wrapper = Wrapper().eval()
    exported = torch.export.export(wrapper, tuple(batches[0].values()), strict=False)
    module = exported.graph_module
    original = graph_identity(module.graph)
    stripped = []
    for node in list(module.graph.nodes):
        if node.op == "call_function" and str(node.target).startswith("aten._assert_tensor_metadata"):
            if node.users:
                raise ValueError("export-time metadata assertion has users")
            stripped.append(node.name)
            module.graph.erase_node(node)
    module.graph.lint()
    module.recompile()
    wrapper.to("cuda:0")
    state = dict(wrapper.named_parameters(remove_duplicate=False))
    state.update(wrapper.named_buffers(remove_duplicate=False))
    placeholders = [node for node in module.graph.nodes if node.op == "placeholder"]
    specs = {spec.arg.name: spec for spec in exported.graph_signature.input_specs}
    kinds = {name: spec.kind.name for name, spec in specs.items()}
    constants = {name: value.to("cuda:0") for name, value in exported.constants.items()
                 if isinstance(value, torch.Tensor)}
    bindings, user_batches = [], []
    for batch in batches:
        batch = {name: value.to("cuda:0") for name, value in batch.items()}
        user_batches.append(batch)
        values = []
        for node in placeholders:
            spec = specs[node.name]
            if spec.kind.name == "USER_INPUT":
                values.append(batch[spec.arg.name])
            elif spec.target in state:
                values.append(state[spec.target])
            elif spec.target in constants:
                values.append(constants[spec.target])
            else:
                raise ValueError(f"unresolved placeholder {node.name}: {spec.kind}")
        bindings.append(values)
    return wrapper, module, bindings, user_batches, kinds, {
        "native_modules": modules, "original_graph_sha256": original,
        "stripped_export_metadata_assertions": stripped,
        "pipeline": "SentenceTransformer.forward; not encode, no added normalization/prompts",
        "token_shapes": [list(batch["input_ids"].shape) for batch in user_batches],
        "nonpadding_tokens": [batch["attention_mask"].sum(dim=1).cpu().tolist() for batch in user_batches],
    }


def environment():
    import torch
    import triton
    result = {"python": sys.version, "torch": torch.__version__, "triton": triton.__version__,
              "device": torch.cuda.get_device_name(0), "visible": os.environ["CUDA_VISIBLE_DEVICES"]}
    for name in ("sentence-transformers", "transformers", "flagtree"):
        result[name] = importlib.metadata.version(name)
    result["bridge_source_hashes"] = {path.name: file_hash(path) for path in Path(__file__).parent.glob("*.py")}
    return result


def protected_digest(values):
    # Values are placeholders only; no mutable intermediate is protected here.
    return fingerprint([[digest(value) for value in batch] for batch in values])


def compile_selected(selected, samples, directory):
    from kernel import compile_call
    calls, evidence = {}, {}
    for name, info in selected.items():
        calls[name], evidence[name] = compile_call(samples[name], info["approximate"], directory / name)
    return calls, evidence


def same_output(a, b, atol, rtol):
    import torch
    ok = a.shape == b.shape and a.dtype == b.dtype and bool(torch.isfinite(a).all() and torch.isfinite(b).all())
    maximum = float((a - b).abs().max().item()) if a.shape == b.shape else None
    if maximum is not None and not math.isfinite(maximum):
        maximum = None
    return {"passed": ok and bool(torch.allclose(a, b, atol=atol, rtol=rtol)),
            "max_abs_diff": maximum, "atol": atol, "rtol": rtol}


def correctness_gate(case, directory, legality_path, atol, rtol):
    import torch
    wrapper, module, values, inputs, kinds, pipeline = build(case)
    graph_sha = graph_identity(module.graph)
    protected_before = protected_digest(values)
    records, samples = trace(module, values[0])
    stream = f"stream:{torch.cuda.current_stream().cuda_stream}"
    plan = make_plan(module.graph, records, kinds, case["model_id"], stream)
    legality = load_legality(legality_path)
    plan_sha = legality.plan_fingerprint(plan)
    tensor_map = {tensor["source_value"]: tensor for tensor in plan["tensors"]}
    evidence = {"tensor." + name: {**fact, "tensor_id": "tensor." + name,
                                  "storage_id": tensor_map[name]["storage_id"],
                                  "plan_id": plan["plan_id"], "plan_sha256": plan_sha,
                                  "graph_fingerprint": graph_sha, "scope": "ppu_runtime",
                                  "physical_card": 14, "source": "current PPU keep-alive trace"}
                for name, fact in records.items()}
    order = [task["task_id"] for task in plan["tasks"]]
    analysis = legality.analyze_op_candidates(plan, order, binding_evidence=evidence,
                 expected_graph_fingerprint=graph_sha, expected_physical_card=14,
                 plan_identity={"derived_plan_canonical_sha256": plan_sha})
    save_json(directory / "model-plan.json", plan)
    save_json(directory / "bindings.json", evidence)
    save_json(directory / "legality.json", analysis)
    validation = analysis["plan_validation"]
    if validation["plan_issue_codes"] or validation["order_problems"]:
        raise ValueError("existing G1/G03 validator rejected graph plan/order")
    allowed = {item["task_id"] for item in analysis["candidates"]
               if item["decision"] == "allowed" and item["ppu_runtime_evidence"] == "provided"}
    selected, excluded = {}, {}
    for node in module.graph.nodes:
        if str(node.target) != "aten.gelu.default":
            continue
        sample = samples[node.name]
        approximate = node.kwargs.get("approximate", "none")
        if "task." + node.name not in allowed:
            excluded[node.name] = "G03 rejected"
        elif approximate != "none" or not sample.is_contiguous() or sample.storage_offset() != 0 or sample.dtype != torch.float32:
            excluded[node.name] = "bridge supports exact dense offset-zero fp32 GELU only"
        else:
            selected[node.name] = {"approximate": approximate, "shape": list(sample.shape),
                                   "input_node": node.args[0].name}
    save_json(directory / "lowering.json", {"selected": selected, "excluded": excluded,
              "before": "aten.gelu.default", "after": "FlagTree PPU _gelu kernel with explicit destination",
              "order": order, "graph_sha256": graph_sha, "plan_sha256": plan_sha})
    if not selected:
        raise ValueError("no legal FlagTree-backed in-place candidate; no performance table")
    calls, compiler = compile_selected(selected, samples, directory / "compiler")
    probes = {}
    for name in selected:
        x = samples[name]
        default = torch.ops.aten.gelu.default(x, approximate="none")
        separate = calls[name](x, torch.empty_like(x))
        alias = x.clone()
        calls[name](alias, alias)
        torch.cuda.synchronize()
        probes[name] = {"torch_vs_flagtree": same_output(default, separate, atol, rtol),
                        "same_kernel_out_vs_inplace": same_output(separate, alias, 0, 0)}
    save_json(directory / "kernel-probes.json", probes)
    if any(not value["passed"] for entry in probes.values() for value in entry.values()):
        raise ValueError("compiled-kernel numerical gate failed; never auto-relax tolerance")
    comparison = []
    for batch_values, batch_inputs in zip(values, inputs):
        reference = run_graph(module, batch_values, {})
        eager = wrapper(*batch_inputs.values())
        out_nodes, inplace_nodes = {}, {}
        separate = run_graph(module, batch_values, calls, records=out_nodes)
        alias = run_graph(module, batch_values, calls, inplace=True, records=inplace_nodes)
        checks = {"torch_graph_vs_native_forward": same_output(reference, eager, 0, 0),
                  "torch_vs_flagtree": same_output(reference, separate, atol, rtol),
                  "same_kernel_full_graph": same_output(separate, alias, 0, 0),
                  "all_node_digests_match_between_flagtree_arms": out_nodes == inplace_nodes}
        comparison.append(checks)
    protected_after = protected_digest(values)
    save_json(directory / "compare.json", {"batches": comparison,
              "inputs_and_parameters_unchanged": protected_before == protected_after})
    if protected_before != protected_after or any(
            not (value["passed"] if isinstance(value, dict) else value)
            for row in comparison for value in row.values()):
        raise ValueError("full-model binding/numerical gate failed")
    return {"status": "passed", "case_sha256": fingerprint(case), "case": case,
            "graph_sha256": graph_sha, "plan_sha256": plan_sha, "selected": selected,
            "compiler": compiler, "compiler_set_sha256": compiler_identity(compiler),
            "environment_sha256": fingerprint(environment()), "environment": environment(),
            "input_sha256": protected_before, "pipeline": pipeline,
            "legality_source_sha256": file_hash(legality_path), "atol": atol, "rtol": rtol,
            "validator_sources": analysis["plan_validation"]["validator_files"],
            "boundary": "opt-in graph lowering into real FlagTree kernels; not a new MLIR Pass or complete adaptation acceptance"}


def measure(case, directory, gate, arm, legality_path):
    import torch
    wrapper, module, values, inputs, _kinds, pipeline = build(case)
    if gate["status"] != "passed" or gate["case_sha256"] != fingerprint(case):
        raise ValueError("case/gate identity mismatch")
    if gate["graph_sha256"] != graph_identity(module.graph) or gate["environment_sha256"] != fingerprint(environment()):
        raise ValueError("graph/environment changed after gate")
    if gate["input_sha256"] != protected_digest(values) or gate["legality_source_sha256"] != file_hash(legality_path):
        raise ValueError("input/weights/legality changed after gate")
    for name in ("schema", "offset_planner"):
        validators = gate["validator_sources"]
        if file_hash(validators[name]) != validators[name + "_sha256"]:
            raise ValueError(f"{name} dependency changed after correctness gate")
    # Measurement processes do NOT replay the keep-all trace/full compare.
    # Compile setup is symmetric in all three arms, even the ATen control.
    def setup_calls():
        samples = {name: torch.zeros(info["shape"], dtype=torch.float32, device="cuda:0")
                   for name, info in gate["selected"].items()}
        return compile_selected(gate["selected"], samples, directory / "compiler")
    calls, compiler = setup_calls()
    compiler_sha = compiler_identity(compiler)
    if compiler_sha != gate["compiler_set_sha256"]:
        raise ValueError("compiled kernel/stages changed since correctness gate")
    chosen_calls = {} if arm == "torch" else calls
    inplace = arm == "flagtree-inplace"
    def one_batch(batch_values, collect=False):
        checks = {} if collect else None
        output = run_graph(module, batch_values, chosen_calls, inplace=inplace, records=checks)
        if collect:
            return digest(output)  # only metadata escapes; output dies at function return
        return None
    def round_once(collect=False):
        return [one_batch(batch, collect) for batch in values]
    start = time.perf_counter()
    round_once()
    torch.cuda.synchronize()
    cold = time.perf_counter() - start
    checksum = fingerprint(round_once(collect=True))
    for _ in range(5):
        round_once()
        torch.cuda.synchronize()
    post_warmup = {"allocated_bytes": torch.cuda.memory_allocated(), "reserved_bytes": torch.cuda.memory_reserved()}
    torch.cuda.reset_peak_memory_stats()
    samples_s = []
    for _ in range(30):
        torch.cuda.synchronize()
        start = time.perf_counter()
        round_once()
        torch.cuda.synchronize()
        samples_s.append(time.perf_counter() - start)
    peak = {"peak_allocated_bytes": torch.cuda.max_memory_allocated(),
            "peak_reserved_bytes": torch.cuda.max_memory_reserved()}
    peak.update(peak_minus_warmup_allocated_bytes=peak["peak_allocated_bytes"] - post_warmup["allocated_bytes"])
    if checksum != fingerprint(round_once(collect=True)) or protected_digest(values) != gate["input_sha256"]:
        raise ValueError("output changed or inputs/parameters overwritten during measurement")
    return {"status": "passed", "arm": arm, "case_sha256": gate["case_sha256"],
            "graph_sha256": gate["graph_sha256"], "plan_sha256": gate["plan_sha256"],
            "input_sha256": gate["input_sha256"], "environment_sha256": gate["environment_sha256"],
            "compiler_set_sha256": compiler_sha, "compiler": compiler, "cold_forward_s": cold,
            "post_warmup": post_warmup, "memory": peak, "samples_s": samples_s,
            "output_sha256": checksum, "pipeline": pipeline,
            "protocol": {"sentences": 64, "warmup": 5, "measured": 30,
                         "output_retention": "none across batches/rounds; diagnostic output returns metadata only",
                         "cold_compile_and_diagnostics_excluded": True}}


def main():
    parser = argparse.ArgumentParser(allow_abbrev=False)
    parser.add_argument("--case", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--legality", type=Path, required=True)
    parser.add_argument("--physical-card", required=True, choices=("14",))
    parser.add_argument("--mode", required=True, choices=("gate", *ARMS))
    parser.add_argument("--gate", type=Path)
    parser.add_argument("--atol", type=float, required=True)
    parser.add_argument("--rtol", type=float, required=True)
    args = parser.parse_args()
    if any(not math.isfinite(value) or value < 0 for value in (args.atol, args.rtol)):
        parser.error("atol/rtol must be finite and nonnegative")
    if args.mode != "gate" and args.gate is None:
        parser.error("measurement requires --gate")
    args.output_dir.mkdir(parents=True, exist_ok=False)
    try:
        check_selection(args.physical_card)
        raw, state = read_smi()
        save_json(args.output_dir / "preflight.json", {"raw": raw, "parsed": state})
        require_idle(state)
        import torch
        torch.manual_seed(0)
        torch.set_grad_enabled(False)
        if not torch.cuda.is_available() or torch.cuda.device_count() != 1 or "PPU" not in torch.cuda.get_device_name(0):
            raise ValueError("expected one masked PPU as logical cuda:0")
        # Allocate briefly to prove the physical mapping from the live process table.
        probe = torch.zeros(1024, device="cuda:0")
        torch.cuda.synchronize()
        raw, state = read_smi()
        save_json(args.output_dir / "mapping.json", {"raw": raw, "parsed": state, "pid": os.getpid(), "logical": 0})
        if not any(p["card"] == 14 and p["pid"] == os.getpid() for p in state["processes"]):
            raise ValueError("process table does not prove PID -> physical 14; do not guess namespace mapping")
        del probe
        case = json.loads(args.case.read_text())
        with torch.no_grad():
            result = (correctness_gate(case, args.output_dir, args.legality, args.atol, args.rtol)
                      if args.mode == "gate" else measure(case, args.output_dir,
                          json.loads(args.gate.read_text()), args.mode, args.legality))
        save_json(args.output_dir / "result.json", result)
        return 0
    except Exception as error:
        save_json(args.output_dir / "failure.json", {"status": "blocked", "error": str(error),
                  "type": type(error).__name__, "traceback": traceback.format_exc()})
        print(f"blocked: {error}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
