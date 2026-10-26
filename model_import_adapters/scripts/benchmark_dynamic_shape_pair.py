#!/usr/bin/env python3
"""Paired dynamic PT2 benchmark on PPU, keeping accepted task/input semantics.

Calibration times the same frozen full compiled baseline twice. Candidates
select an MLP configuration, two static compiled shapes, or two exact replay
entries. Arithmetic stays unchanged within each pair. No CPU model forward.
"""
from __future__ import annotations

import argparse
import json
import math
import os
from pathlib import Path
import sys
import time
import traceback

from benchmark_scene_pair import sha256, summarize_rounds, freeze_gate, performance_passed, paired_rounds
from replay_scene_model_case import region_shape_supported, PROBES
from frozen_probe_dispatch import FrozenProbeDispatcher
from memory_acceptance import MEMORY_POLICY, memory_observation


def read(path):
    return json.loads(Path(path).read_text(encoding="utf-8"))


def save(path, value):
    temporary = path.with_suffix(path.suffix + ".tmp")
    temporary.write_text(json.dumps(value, indent=2, allow_nan=False) + "\n", encoding="utf-8")
    os.replace(temporary, path)


def require(value, message):
    if not value:
        raise ValueError(message)


def select_replay_forward(replay, baseline, qualified):
    # The resident-probe dispatcher already proves this exact request's route.
    # A declared miss must not pay for a second cache lookup/state guard.
    # New or mutated inputs still take the dispatcher's original compiled path.
    return replay if qualified and replay is not None else baseline


def policy_probe_qualified(inputs, policy_keys, tensor_metadata):
    return tuple(tensor_metadata(x) for x in inputs) in policy_keys


def compare_arrays(actual, expected):
    import numpy as np
    require(actual.shape == expected.shape and actual.dtype == expected.dtype, "output shape/dtype drift")
    delta = np.abs(actual.astype(np.float64) - expected.astype(np.float64))
    return {"passed": bool(np.isfinite(actual).all() and np.isfinite(expected).all()
                            and np.all(delta <= 3e-4 + 3e-4 * np.abs(expected.astype(np.float64)))),
            "max_abs_error": float(delta.max()),
            "max_relative_error": float(np.max(delta / np.maximum(np.abs(expected.astype(np.float64)), 1e-12)))}


def counters():
    from torch._dynamo.utils import counters as current
    return {group: dict(values) for group, values in current.items() if group in {"stats", "frames", "inductor", "graph_break"}}


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--phase", choices=("calibrate", "compare", "verify"), required=True)
    p.add_argument("--case", type=Path, required=True)
    p.add_argument("--source", type=Path, required=True)
    p.add_argument("--output", type=Path, required=True)
    p.add_argument("--calibration", type=Path)
    p.add_argument("--blocks", type=int, nargs=2, default=(16, 16))
    p.add_argument("--strategy", choices=("mlp_config","static_shapes","graph_replay"), default="mlp_config")
    p.add_argument("--replay-policy",type=Path,help="Measure the actual opt-in policy router, including misses")
    p.add_argument("--prepare-capture-constants",action="store_true",help="Opt-in explicit CPU scalar copy-edge preparation before BOTH comparison arms")
    args = p.parse_args()
    if (args.phase == "compare") != (args.calibration is not None):
        p.error("Only compare requires a frozen calibration")
    if any(b not in (16, 32) for b in args.blocks):
        p.error("Qualified blocks are 16,32; block 8 failed real-PPU precision")
    if args.replay_policy and args.strategy!='graph_replay':
        p.error("A replay policy requires graph_replay strategy")
    args.output.mkdir(parents=True, exist_ok=False)
    os.environ.update(FLAGTREE_BACKEND="ppu", TORCHINDUCTOR_WORKER_START="spawn",
                      TORCHINDUCTOR_COMPILE_THREADS="1", TRITON_KERNEL_DUMP="0",
                      TRITON_CACHE_DIR=str(args.output / "triton-cache"),
                      TORCHINDUCTOR_CACHE_DIR=str(args.output / "inductor-cache"),
                      OMP_NUM_THREADS="1", MKL_NUM_THREADS="1", HF_HUB_OFFLINE="1")
    for key in ("TRITON_ALWAYS_COMPILE", "TORCH_COMPILE_DEBUG", "TRITON_DUMP_DIR"):
        os.environ.pop(key, None)
    sys.path[:0] = [str(args.source / "model_import_adapters/src"), str(args.source / "python/triton_kernels")]
    report = {"status": "failed", "phase": args.phase, "failure_stage": "preflight", "probes": [],
              "cpu_model_forward": "not_run", "case": str(args.case), "source": str(args.source),
              "warmup": 20, "rounds": 5, "samples_per_group": 50, "order": "ABBA/BAAB",
              "timing_scope": "complete model PT2 forward with resident inputs; allocation/dispatch included; export/tokenizer/H2D excluded",
              "baseline_mode": "qualified existing scene-v3 compiled; otherwise original compiled",
              "candidate_difference": "block_m only; same tf32x3 arithmetic and fusion on both sides",
              "started_at": time.time(), "memory_policy": MEMORY_POLICY}
    save(args.output / "command.json", [sys.executable, *sys.argv])
    emit = lambda item: print(json.dumps(item), flush=True)
    try:
        import importlib.metadata as metadata
        import numpy as np
        import torch
        import triton
        from model_import_adapters.compiled_execution import _retarget_factory_devices
        from model_import_adapters.scene_fusion import rewrite_small_mlp_epilogues
        from model_import_adapters.shape_policy import select_mlp_config, decision_record
        from triton_kernels.ppu_mlp import small_mlp_gelu
        from triton_kernels.ppu_mlp_shape import small_mlp_gelu_shape

        require(torch.cuda.is_available() and torch.cuda.get_device_name(0) == "PPU-ZW810E", "PPU-ZW810E required")
        torch.set_num_threads(1)
        torch.set_float32_matmul_precision("highest")
        saved = read(args.case / "report.json")
        protocol = read(args.case / "task-protocol.json")
        manifest = read(args.case / "artifacts/manifest.json")
        require(saved["status"] == "passed" and {(x["batch"], x["sequence"]) for x in saved["probes"]} == PROBES and len(saved["probes"]) == 5, "five accepted probes required")
        pt2 = args.case / "artifacts/model.core_aten.pt2"
        require(sha256(pt2) == manifest["artifact"]["sha256"], "baseline PT2 hash drift")
        identity = {"model_id": saved["model_id"], "revision": saved["revision"], "task": protocol["task"],
                    "prepare_capture_constants":args.prepare_capture_constants,
                    "capture_constants_sha256":sha256(args.source/'model_import_adapters/src/model_import_adapters/capture_constants.py') if args.prepare_capture_constants else None,
                    "strategy":args.strategy,"static_shapes":[[2,24],[1,64]] if args.strategy=="static_shapes" else [],
                    "replay_shapes":[[1,8],[2,24]] if args.strategy=="graph_replay" else [],
                    "replay_policy_sha256":sha256(args.replay_policy) if args.replay_policy else None,
                    "policy_router_source_sha256":sha256(args.source/'model_import_adapters/src/model_import_adapters/replay_policy.py') if args.replay_policy else None,
                    "memory_policy": MEMORY_POLICY,
                    "memory_policy_sha256": sha256(Path(__file__).with_name("memory_acceptance.py")),
                    "pt2_sha256": sha256(pt2), "protocol_sha256": sha256(args.case / "task-protocol.json"),
                    "baseline_report_sha256": sha256(args.case / "report.json"), "script_sha256": sha256(__file__),
                    "physical_device": os.environ.get("CUDA_VISIBLE_DEVICES"), "device": torch.cuda.get_device_name(0),
                    "cpu_affinity": sorted(os.sched_getaffinity(0)),
                    "torch": torch.__version__, "triton": triton.__version__, "flagtree": metadata.version("flagtree"),
                    "compiler_sha256": sha256(Path(triton.__file__).parent / "backends/ppu/compiler.py"),
                    "source_files": {name: sha256(args.source / name) for name in (
                        "python/triton_kernels/triton_kernels/ppu_mlp.py",
                        "python/triton_kernels/triton_kernels/ppu_mlp_shape.py",
                        "python/triton_kernels/triton_kernels/matmul_ogs_details/_common.py",
                        "model_import_adapters/src/model_import_adapters/scene_fusion.py",
                        "model_import_adapters/src/model_import_adapters/shape_policy.py",
                        "model_import_adapters/scripts/frozen_probe_dispatch.py",
                        "model_import_adapters/src/model_import_adapters/graph_replay.py")}}
        if args.prepare_capture_constants:
            identity["source_files"]["model_import_adapters/src/model_import_adapters/capture_constants.py"] = identity["capture_constants_sha256"]
            if args.replay_policy:
                identity["source_files"]["model_import_adapters/src/model_import_adapters/prepared_policy.py"] = sha256(args.source/'model_import_adapters/src/model_import_adapters/prepared_policy.py')
        report.update(identity=identity, compile_options=protocol.get("compile_options", {}), candidate_blocks=list(args.blocks))
        calibration = None
        if args.phase == "compare":
            calibration = read(args.calibration)
            require(calibration["status"] == "calibrated" and calibration["identity"] == identity, "calibration not ready or identity drift")
            report["calibration_sha256"] = sha256(args.calibration)
        original = torch.export.load(pt2).module().to("cuda:0")
        require(all(x.dtype == torch.float32 for x in original.parameters() if x.is_floating_point()), "FP32 required")
        report["retargeted_factories"] = _retarget_factory_devices(original, "cuda:0")
        if args.prepare_capture_constants:
            from model_import_adapters.capture_constants import prepare_capture_constants
            start = time.perf_counter(); before = torch.cuda.memory_allocated()
            report["capture_constants"] = prepare_capture_constants(original,"cuda:0")
            torch.cuda.synchronize()
            report["capture_constant_preparation"] = {"seconds":time.perf_counter()-start,
                "persistent_bytes":torch.cuda.memory_allocated()-before,
                "scope":"one-time explicit preparation shared by BOTH timing arms; outside forward and replay-specific first_call_s"}
        original_code = original.code
        scene, matched = rewrite_small_mlp_epilogues(original, torch.ops.flagtree_scene.small_mlp_gelu.default)
        if args.strategy in {"static_shapes", "graph_replay"}:
            # S1 must compare the same original arithmetic on both sides, not
            # introduce/remove tf32x3 scene fusion in only one arm.
            matched=[]
            report.update(baseline_mode="original fullgraph dynamic=True",
                candidate_difference=("two exact shapes use same original graph with dynamic=False; no fusion/arithmetic change"
                    if args.strategy == "static_shapes" else
                    "two exact shapes replay original fullgraph compiled; includes input copy/output clone and guards; other shapes original compiled"))
        report["matched_regions"] = matched
        native_compiled = torch.compile(original, fullgraph=True, dynamic=True, options=report["compile_options"])
        scene_compiled = torch.compile(scene, fullgraph=True, dynamic=True, options=report["compile_options"]) if matched else None
        candidates = {}
        replay = None
        policy_keys=None
        if args.replay_policy:
            from model_import_adapters.replay_policy import PolicyReplayRouter,runtime_identity,metadata_key,load_policy
            from model_import_adapters.graph_replay import tensor_metadata
            expected=runtime_identity(model_id=saved['model_id'],revision=saved['revision'],task=protocol['task'],
                pt2_sha256=identity['pt2_sha256'],protocol_sha256=identity['protocol_sha256'],compile_options=report['compile_options'])
            if args.prepare_capture_constants:
                from model_import_adapters.prepared_policy import bind_preprocessing
                expected=bind_preprocessing(expected,report['capture_constants'],identity['capture_constants_sha256'])
            policy,status=load_policy(args.replay_policy,expected)
            require(status=='loaded','paired qualification requires a valid policy: '+status)
            policy_keys={metadata_key(x) for x in policy['entries']}
            report.update(policy_identity=expected,policy_internal_sha256=policy['sha256'],
                candidate_difference='actual PolicyReplayRouter on every request, including unqualified misses; original PT2/compiled arithmetic unchanged')
            if args.phase!='calibrate':
                replay=PolicyReplayRouter(native_compiled,identity=expected,policy_path=args.replay_policy,
                    frozen_tensors=lambda:tuple(original.parameters())+tuple(original.buffers()),enabled=True)
        elif args.strategy == "graph_replay" and args.phase != "calibrate":
            from model_import_adapters.graph_replay import ExactReplayCache
            allowed = []
            for probe in saved["probes"]:
                path = args.case / Path(probe["archive"]).name
                require(sha256(path) == probe["sha256"], "input archive hash drift")
                with np.load(path, allow_pickle=False) as data:
                    allowed.append(tuple(tuple(data[k].shape) for k in probe["input_keys"]))
            replay = ExactReplayCache(native_compiled, identity={
                **identity, "source_sha256":identity["source_files"]["model_import_adapters/src/model_import_adapters/graph_replay.py"],
                "precision":"FP32/highest", "target":"PPU-ZW810E",
                "runtime":f"torch={torch.__version__};triton={triton.__version__}"},
                frozen_tensors=lambda:tuple(original.parameters())+tuple(original.buffers()),
                allowed_shapes=allowed, enabled=True)
        if args.phase != "calibrate" and args.strategy == "static_shapes":
            candidates["static"] = torch.compile(original, fullgraph=True, dynamic=False, options=report["compile_options"])
        elif args.phase != "calibrate" and matched:
            for block in set(args.blocks):
                if block == 16:
                    candidates[block] = scene_compiled
                    continue
                module, _ = rewrite_small_mlp_epilogues(original, torch.ops.flagtree_scene.small_mlp_gelu.default)
                for node in module.graph.nodes:
                    if node.op == "call_function" and node.target == torch.ops.flagtree_scene.small_mlp_gelu.default:
                        node.target = torch.ops.flagtree_scene.small_mlp_gelu_shape.default
                        node.args = (*node.args, block)
                module.graph.lint(); module.recompile()
                (args.output / f"candidate-bm{block}.py").write_text(module.code)
                candidates[block] = torch.compile(module, fullgraph=True, dynamic=True, options=report["compile_options"])
        baseline_dispatch = FrozenProbeDispatcher(native_compiled, namespace={"identity": identity, "blocks": [16,16]})
        candidate_dispatch = FrozenProbeDispatcher(native_compiled, namespace={"identity": identity,
            "blocks": list(args.blocks) if args.phase != "calibrate" else [16,16]})
        targets = {item["addmm"] for item in matched}

        class RegionGuard(torch.fx.Interpreter):
            def __init__(self):
                super().__init__(original)
                self.regions = []

            def run_node(self, node):
                if node.name in targets:
                    values, _ = self.fetch_args_kwargs_from_env(node)
                    bias, x, weight = values[:3]
                    m, k, n = x.shape[0], x.shape[1], weight.shape[1]
                    same = x.device.type == "cuda" and x.device == weight.device == bias.device
                    fp32 = all(v.dtype == torch.float32 for v in (x, weight, bias))
                    args_ = (m, k, n, x.stride(1), weight.stride(0), bias.stride(0), same, fp32)
                    self.regions.append({"node": node.name, "shape_mkn": [m,k,n],
                        "supported": region_shape_supported(*args_),
                        "decision": decision_record(select_mlp_config(*args_, enabled=True, blocks=args.blocks))})
                return super().run_node(node)

        def array(value):
            leaves = torch.utils._pytree.tree_leaves(value)
            require(len(leaves) == 1 and isinstance(leaves[0], torch.Tensor) and leaves[0].device.type == "cuda", "one PPU output tensor required")
            return leaves[0].detach().cpu().numpy()

        frozen = {(p["batch"], p["sequence"]): p for p in calibration["probes"]} if calibration else {}
        loaded = []
        with torch.inference_mode():
            for probe in saved["probes"]:
                b, length = probe["batch"], probe["sequence"]
                report["failure_stage"] = f"probe_{b}x{length}"
                path = args.case / Path(probe["archive"]).name
                require(sha256(path) == probe["sha256"], "input archive hash drift")
                with np.load(path, allow_pickle=False) as data:
                    # Versioned tensors are required for safe exact-probe routing.
                    with torch.inference_mode(False):
                        inputs = tuple(torch.from_numpy(data[k].copy()).to("cuda:0") for k in probe["input_keys"])
                    references = {k: data[k].copy() for k in ("original_output", "eager_output", "restored_output", "compiled_output")}
                eager = array(original(*inputs))
                regions = []
                if matched:
                    guard = RegionGuard()
                    require(compare_arrays(array(guard.run(*inputs)), eager)["passed"], "interpreter guard changed output")
                    regions = guard.regions
                hit = bool(matched) and len(regions) == len(matched) and all(r["supported"] for r in regions)
                blocks = {r["decision"]["block_m"] for r in regions}
                candidate_hit = hit and len(blocks) == 1 and None not in blocks
                baseline = scene_compiled if hit else native_compiled
                baseline_route = "scene_v3_compiled" if hit else "original_compiled"
                if args.strategy == "graph_replay":
                    candidate_hit = (policy_probe_qualified(inputs,policy_keys,tensor_metadata)
                        if args.replay_policy else (b,length) in {(1,8),(2,24)})
                    chosen = (replay if replay is not None else baseline) if args.replay_policy else select_replay_forward(replay, baseline, candidate_hit)
                    candidate_route = "exact_shape_replay" if replay is not None and candidate_hit else baseline_route
                elif args.strategy == "static_shapes":
                    candidate_hit = (b,length) in {(2,24),(1,64)}
                    chosen = candidates["static"] if args.phase != "calibrate" and candidate_hit else baseline
                    candidate_route = "static_shape_compiled" if args.phase != "calibrate" and candidate_hit else baseline_route
                else:
                    chosen = candidates[next(iter(blocks))] if args.phase != "calibrate" and candidate_hit else baseline
                    candidate_route = ("shape_bm32" if args.phase != "calibrate" and candidate_hit
                                       and next(iter(blocks)) == 32 else baseline_route)
                baseline_dispatch.register(inputs, baseline, route=baseline_route, input_sha256=probe["sha256"])
                candidate_dispatch.register(inputs, chosen, route=candidate_route, input_sha256=probe["sha256"])
                a = lambda: baseline_dispatch(*inputs)
                c = lambda: candidate_dispatch(*inputs)
                before = counters()
                start = time.perf_counter(); a_value = a(); torch.cuda.synchronize()
                first_a = time.perf_counter() - start
                start = time.perf_counter()
                preparation = None
                if replay is not None and candidate_hit:
                    preparation = replay.prepare(*inputs)
                    require(preparation["prepared"], "qualified replay preparation failed")
                c_value = c(); torch.cuda.synchronize()
                first_c = time.perf_counter() - start
                aa, cc = array(a_value), array(c_value)
                checks = {name: compare_arrays(cc, ref) for name, ref in references.items()}
                checks.update(fresh_pt2_eager=compare_arrays(cc, eager), paired_baseline=compare_arrays(cc, aa))
                require(all(v["passed"] for v in checks.values()), "candidate output comparison failed")
                require(all(compare_arrays(eager, ref)["passed"] and compare_arrays(aa, ref)["passed"] for ref in references.values()), "baseline/eager comparison failed")
                item = {"batch": b, "sequence": length, "input_sha256": probe["sha256"],
                        "baseline_route": "scene_v3_compiled" if hit else "original_compiled",
                        "candidate_route": candidate_route,
                        "hit": candidate_hit, "regions": regions, "comparisons": checks,
                        "first_call_s": {"A": first_a, "B": first_c}, "compile_counters_before": before,
                        "compile_counters_after_first": counters()}
                if args.strategy == "graph_replay":
                    item.update(preparation=preparation,
                        candidate_startup_scope="incremental capture/20 preparation warmups plus first dispatch after shared original compilation; not independent candidate cold compile")
                for _ in range(20): a(); c()
                torch.cuda.synchronize()
                if args.phase == "verify":
                    dest = args.output / f"probe-{b}x{length}.npz"
                    np.savez_compressed(dest, fresh_eager=eager, baseline=aa, candidate=cc)
                    item.update(status="verified_not_performance_accepted", archive=str(dest), archive_sha256=sha256(dest))
                    report["probes"].append(item)
                    loaded.append((inputs, [b,length], cc))
                    save(args.output / "progress.json", report)
                    continue
                if calibration:
                    require(frozen[b, length]["input_sha256"] == probe["sha256"], "calibration input drift")
                    repeats = frozen[b, length]["repeats_per_block"]
                else:
                    start = time.perf_counter()
                    for _ in range(20): a()
                    torch.cuda.synchronize()
                    repeats = max(1, min(4096, math.ceil(0.010 / ((time.perf_counter() - start) / 20))))
                item["repeats_per_block"] = repeats
                rounds = paired_rounds(a, c, repeats, torch.cuda.synchronize,
                                      lambda value: emit({"model_id": saved["model_id"], "shape": [b,length], **value}))
                item.update(rounds=rounds, summary=summarize_rounds(rounds), compile_counters_after_timing=counters())
                if not calibration:
                    item.update(gate=freeze_gate(item["summary"]), status="calibrated")
                else:
                    gate = frozen[b, length]["gate"]
                    peaks = {}
                    for label, forward in (("A", a), ("B", c)):
                        torch.cuda.synchronize(); before_mem = torch.cuda.memory_allocated()
                        torch.cuda.reset_peak_memory_stats(); value = forward(); torch.cuda.synchronize()
                        peaks[label] = torch.cuda.max_memory_allocated() - before_mem
                        del value
                    perf = performance_passed(item["summary"], gate)
                    item.update(gate=gate, performance_passed=perf, torch_allocator_transient_bytes=peaks,
                                first_call_cost_passed=(first_c <= gate["max_extra_first_call_seconds"]
                                    if args.strategy == "graph_replay" else first_c <= first_a + gate["max_extra_first_call_seconds"]),
                                **memory_observation(peaks, gate))
                    item["status"] = "performance_passed" if perf and item["first_call_cost_passed"] else "retain_baseline"
                dest = args.output / f"probe-{b}x{length}.npz"
                np.savez_compressed(dest, fresh_eager=eager, baseline=aa, candidate=cc)
                item.update(archive=str(dest), archive_sha256=sha256(dest))
                report["probes"].append(item)
                loaded.append((inputs, [b,length], cc))
                save(args.output / "progress.json", report)
                emit({"model_id": saved["model_id"], "shape": [b,length], "status": item["status"], "hit": candidate_hit})
            # Repeat the exact stored inputs in a different order. No new tensor
            # content or unsupported shape is invented to claim cache reuse.
            baseline_dispatch.seal(); candidate_dispatch.seal()
            order = [0,1,2,3,4,4,3,2,1,0,0,1,2,3,4]
            trace = []
            for index in order:
                inputs, shape, reference = loaded[index]
                before = counters(); start = time.perf_counter()
                value = candidate_dispatch(*inputs); torch.cuda.synchronize()
                trace.append({"shape": shape, "latency_ms": (time.perf_counter()-start)*1000,
                              "route": candidate_dispatch.last_route,
                              "comparison": compare_arrays(array(value), reference),
                              "counters_before": before, "counters_after": counters()})
                require(trace[-1]["comparison"]["passed"], "mixed request output drift")
                require(before == counters(), "unexpected warm mixed request recompilation")
            report["warm_mixed_trace"] = trace
            report["dispatch"] = {"baseline": baseline_dispatch.snapshot(), "candidate": candidate_dispatch.snapshot(),
                "scope": "audited resident benchmark tensors only; arbitrary requests retain original compiled PT2"}
            if replay is not None:
                if args.replay_policy:
                    report['policy_router']=replay.snapshot()
                    report['graph_replay']=replay.cache.snapshot()
                else:
                    report["graph_replay"] = replay.snapshot()
                report["graph_replay_memory"] = {"memory_policy":MEMORY_POLICY,
                    "live_torch_bytes":torch.cuda.memory_allocated(),
                    "reserved_torch_bytes":torch.cuda.memory_reserved(),
                    "observed_peak_torch_bytes":torch.cuda.max_memory_allocated(),
                    "scope":"sequential paired-process allocation observation; graph pools remain resident; not isolated B0/C1 total-peak delta"}
            if args.phase == "verify":
                inputs, _, reference = loaded[0]
                # Same metadata but new objects must not inherit observed MLP
                # qualification. A version change also invalidates an old binding.
                clones = tuple(x.clone() for x in inputs)
                clone_output = candidate_dispatch(*clones)
                torch.cuda.synchronize()
                clone_route = candidate_dispatch.last_route
                inputs[0].add_(0)  # values unchanged; normal tensor version advances
                mutated_output = candidate_dispatch(*inputs)
                torch.cuda.synchronize()
                mutation_route = candidate_dispatch.last_route
                clone_check = compare_arrays(array(clone_output), reference)
                mutation_check = compare_arrays(array(mutated_output), reference)
                require(clone_route == mutation_route == "original_compiled", "stale observed qualification reused")
                require(clone_check["passed"] and mutation_check["passed"], "compiled miss output drift")
                report["unqualified_requests"] = {"clone_route": clone_route, "clone_comparison": clone_check,
                    "mutation_route": mutation_route, "mutation_comparison": mutation_check,
                    "scope": "one cloned probe and a value-preserving version mutation; not arbitrary request coverage"}
            if args.phase != "verify":
                def mixed(dispatch):
                    for index in order:
                        dispatch(*loaded[index][0])
                rounds = paired_rounds(lambda: mixed(baseline_dispatch), lambda: mixed(candidate_dispatch),
                    1, torch.cuda.synchronize, lambda value: emit({"mixed_trace": True, **value}))
                summary = summarize_rounds(rounds)
                mixed_report = {"order": order, "requests_per_sample": len(order), "rounds": rounds,
                    "summary": summary, "timing_scope": "full trace wall time including real request dispatch; not individual-request tail latency"}
                if calibration:
                    gate = calibration["mixed_measurement"]["gate"]
                    mixed_report.update(gate=gate, performance_passed=performance_passed(summary,gate))
                else:
                    mixed_report["gate"] = freeze_gate(summary)
                report["mixed_measurement"] = mixed_report
        require(original.code == original_code and sha256(pt2) == identity["pt2_sha256"], "original PT2 modified")
        report["status"] = ("verified_not_performance_accepted" if args.phase == "verify" else
            "measured" if calibration else "calibrated" if all(v["gate"]["ready"] for v in report["probes"])
            and report["mixed_measurement"]["gate"]["ready"] else "unstable_baseline")
        report["failure_stage"] = None
        evidence = [{"path": str(f.relative_to(args.output)), "bytes": f.stat().st_size, "sha256": sha256(f)}
                    for folder in ("triton-cache", "inductor-cache") for f in (args.output / folder).rglob("*")
                    if f.is_file() and f.suffix in {".ttir", ".ttgir", ".llir", ".hgbin", ".py"}]
        save(args.output / "compiler-evidence.json", evidence)
        report["compiler_evidence_sha256"] = sha256(args.output / "compiler-evidence.json")
    except Exception as exc:
        report.update(error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    report["finished_at"] = time.time()
    save(args.output / "report.json", report)
    emit({key: report[key] for key in ("status", "failure_stage")})
    return 0 if report["status"] in {"calibrated", "measured", "verified_not_performance_accepted"} else 1


if __name__ == "__main__":
    raise SystemExit(main())
