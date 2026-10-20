"""Validate the F06 FX MVP on NVIDIA or CUDA-compatible XPU.

This harness records functional and host-inclusive timing evidence. It does
not claim a device-only speedup or treat fewer launches as a performance win.
"""

import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import time


def _cpu_xpu_bf16_mm_round(value):
    """XPU BF16 matrix materialization: nearest, ties away from zero.

    Controlled P800 probes found RNU here with zero mismatches for normal
    values; a generic CPU BF16 cast is RNE.  Quantize the FP32 bit pattern by
    adding half a BF16 ulp and truncating.  Infinities stay infinite and NaNs
    are quieted, never converted to infinities.  Subnormal FTZ is not modeled.
    """
    import torch
    value = value.float()
    bits = value.view(torch.int32).to(torch.int64) & 0xffffffff
    rounded = torch.where(torch.isfinite(value), (bits + 0x8000) & 0xffff0000, bits)
    rounded = torch.where(torch.isnan(value), (bits | 0x00400000) & 0xffff0000, rounded)
    signed = torch.where(rounded >= 0x80000000, rounded - 0x100000000, rounded)
    return signed.to(torch.int32).view(torch.float32).to(torch.bfloat16)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--source-root", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--cpu-tests", action="store_true")
    parser.add_argument("--device-tests", action="store_true")
    parser.add_argument("--smoke", action="store_true")
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)

    import torch
    import triton
    import triton.experimental
    if args.source_root:
        triton.experimental.__path__.insert(0, str(args.source_root / "python/triton/experimental"))
    from triton.experimental import graph_fusion
    from triton.experimental.graph_fusion import _backend

    torch.backends.cuda.matmul.allow_tf32 = False
    torch.backends.cuda.matmul.allow_fp16_reduced_precision_reduction = False
    torch.backends.cuda.matmul.allow_bf16_reduced_precision_reduction = False
    torch.set_num_threads(1)

    source_root = args.source_root or Path(__file__).resolve().parents[2]
    test_file = source_root / "python/test/unit/runtime/test_graph_fusion.py"
    if args.cpu_tests or args.device_tests:
        import pytest
        selection = "test_device" if args.device_tests else "not test_device"
        return pytest.main([str(test_file), "--rootdir", str(source_root), "-q", "-k", selection,
                            "--maxfail=1", "-p", "no:cacheprovider"])

    spec = importlib.util.spec_from_file_location("f06_test_cases", test_file)
    cases = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(cases)
    torch.manual_seed(61)
    report = {"torch": torch.__version__, "triton": triton.__version__, "triton_file": triton.__file__,
              "device": torch.cuda.get_device_name(), "driver": type(triton.runtime.driver.active).__module__,
              "timing": "synchronized wall time per logical call, including Python dispatch and allocation",
              "source_sha256": {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
                                for p in (source_root / "python/triton/experimental/graph_fusion").glob("*.py")},
              "cases": [], "checks": []}

    def save():
        (args.output / "results.json").write_text(json.dumps(report, indent=2) + "\n")

    save()
    dtypes = (torch.float32,) if args.smoke else (torch.float32, torch.float16, torch.bfloat16)
    sizes = ((16, 128),) if args.smoke else ((16, 128), (32, 256), (64, 1024))
    with torch.no_grad():
        for model, kind in cases.MODELS:
            for dtype in dtypes:
                for rows, columns in sizes:
                    print(json.dumps({"phase": "inputs", "kind": kind, "dtype": str(dtype),
                                      "shape": [rows, columns]}), flush=True)
                    inputs = cases.inputs_for(kind, "cuda", dtype, rows=rows, columns=columns)
                    graph = torch.fx.symbolic_trace(model())
                    plan = graph_fusion.compile(graph, inputs)
                    print(json.dumps({"phase": "fused", "kind": kind}), flush=True)
                    start = time.perf_counter()
                    actual = plan(*inputs)
                    torch.cuda.synchronize()
                    first_seconds = time.perf_counter() - start
                    print(json.dumps({"phase": "original", "kind": kind}), flush=True)
                    expected = graph(*inputs)
                    cpu_inputs = tuple(x.cpu() for x in inputs)
                    # Independent high precision reference, with original dtype
                    # rounding at the matmul/add materialization boundaries.
                    mm_rounding = "nearest_even"
                    if kind.startswith("matmul"):
                        product = cpu_inputs[0].double() @ cpu_inputs[1].double()
                        if dtype == torch.bfloat16 and ".xpu." in report["driver"]:
                            product = _cpu_xpu_bf16_mm_round(product)
                            mm_rounding = "xpu_bf16_nearest_ties_away"
                        else:
                            product = product.to(dtype)
                        reference = (product.double() + cpu_inputs[2].double()).to(dtype)
                        if kind.endswith("relu"):
                            reference = reference.relu()
                    else:
                        added = (cpu_inputs[0].double() + cpu_inputs[1].double()).to(dtype)
                        reference = added.double().softmax(-1).to(dtype)
                    atol = 3e-2 if dtype == torch.bfloat16 else 3e-3 if dtype == torch.float16 else 3e-4
                    rtol = 3e-3 if dtype != torch.float32 else 3e-4
                    try:
                        torch.testing.assert_close(actual.cpu(), expected.cpu(), rtol=rtol, atol=atol)
                        torch.testing.assert_close(actual.cpu(), reference, rtol=rtol, atol=atol)
                    except AssertionError:
                        tensors = {"actual": actual.cpu().float(), "original": expected.cpu().float(),
                                   "reference": reference.float()}
                        report["failure"] = {"kind": kind, "dtype": str(dtype), "shape": [rows, columns],
                                             "mm_rounding": mm_rounding, "plan": plan.explain(),
                                             "samples": {k: v[:2, :8].tolist() for k, v in tensors.items()},
                                             "max_error_to_reference": {
                                                 k: (v - tensors["reference"]).abs().max().item()
                                                 for k, v in tensors.items()}}
                        save()
                        raise
                    backend, reason = _backend.check(kind, inputs)
                    assert plan.last_report["mode"] == ("fallback" if reason else "fused"), plan.explain()
                    # Each admitted region must reach a real compiled launch.
                    if not reason:
                        assert plan.last_report["regions"][0]["kernel_name"]
                    first_record = json.loads(json.dumps(plan.explain()))
                    for _ in range(3):
                        plan(*inputs)
                        graph(*inputs)
                    timings = {"fused_plan": [], "original": []}
                    for round_index in range(3):
                        entries = (("fused_plan", plan), ("original", graph))
                        if round_index % 2:
                            entries = entries[::-1]
                        for label, fn in entries:
                            torch.cuda.synchronize()
                            begin = time.perf_counter()
                            for _ in range(10):
                                fn(*inputs)
                            torch.cuda.synchronize()
                            timings[label].append((time.perf_counter() - begin) * 1e6 / 10)
                    for original, tensor in zip(cpu_inputs, inputs):
                        torch.testing.assert_close(tensor.cpu(), original, rtol=0, atol=0)
                    record = {"kind": kind, "dtype": str(dtype), "shape": [rows, columns],
                              "mm_rounding": mm_rounding,
                              "first_call_seconds": first_seconds, "passed": True,
                              "max_abs_error": (actual.cpu().float() - reference.float()).abs().max().item(),
                              "wall_us": timings, "plan": first_record}
                    report["cases"].append(record)
                    save()
                    print(json.dumps({k: record[k] for k in ("kind", "dtype", "shape", "passed")}), flush=True)

        # Shape/stride changes, explicit disable, aliases, and changed values.
        inputs = cases.inputs_for("add_softmax", "cuda")
        graph = torch.fx.symbolic_trace(cases.AddSoftmax())
        plan = graph_fusion.compile(graph, inputs)
        for label, altered in (("changed_shape", cases.inputs_for("add_softmax", "cuda", rows=3)),
                               ("changed_stride", (inputs[0].t().contiguous().t(), inputs[1]))):
            torch.testing.assert_close(plan(*altered), graph(*altered))
            assert plan.last_report["reason"] == "static_input_guard_failed"
            report["checks"].append({"check": label, "passed": True})
        plan.enabled = False
        torch.testing.assert_close(plan(*inputs), graph(*inputs))
        assert plan.last_report["reason"] == "disabled"
        report["checks"].append({"check": "disabled", "passed": True})
        plan.enabled = True
        inputs[0].add_(0.125)
        torch.testing.assert_close(plan(*inputs), graph(*inputs), rtol=3e-4, atol=3e-4)
        report["checks"].append({"check": "changed_values", "passed": True})
        # Read-only aliases are legal because the kernel writes a fresh output.
        alias_inputs = (inputs[0], inputs[0])
        alias_plan = graph_fusion.compile(graph, alias_inputs)
        torch.testing.assert_close(alias_plan(*alias_inputs), graph(*alias_inputs), rtol=3e-4, atol=3e-4)
        report["checks"].append({"check": "readonly_alias", "passed": True})
        save()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
