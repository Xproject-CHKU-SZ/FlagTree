"""F06 expansion benchmark: eager vs one fixed fused plan.

Protocol:
* eager and fused use the same inputs and the same output comparison;
* the first fused call (planning + lazy kernel compile + first launch) is
  reported separately and excluded from the steady-state samples;
* both routes are warmed before timing;
* seven rounds alternate route order, each round runs 40 calls, and every
  batch is bounded by device synchronizations;
* times are synchronized host wall time per logical call, so they include
  Python dispatch and fresh output allocation;
* ``torch.set_num_threads(1)``, TF32 and reduced-precision reductions off.

No speedup is claimed. A fallback result records the backend reason rather
than being counted as a fused performance case.
"""

import argparse
import hashlib
import importlib.util
import json
import statistics
import time
from pathlib import Path


def _load_cases(source_root):
    test_file = source_root / "python/test/unit/runtime/test_graph_fusion_f06.py"
    spec = importlib.util.spec_from_file_location("f06_expand_cases", test_file)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def _cpu_preheat(seconds=0.5):
    import torch
    value = torch.randn(96, 96)
    deadline = time.perf_counter() + seconds
    while time.perf_counter() < deadline:
        value = torch.tanh(value @ value * 0.01)
    return seconds


def _module_for(cases, kind, columns):
    if kind.startswith("matmul"):
        if "gelu" in kind:
            return cases.MatmulBiasGelu("tanh" if kind.endswith("tanh") else "none")
        return cases.MatmulBiasSilu()
    if kind.startswith("add_layernorm"):
        affine = kind == "add_layernorm_affine"
        return cases.AddLayerNorm(columns, weight=affine, bias=affine, eps=1e-3)
    if kind.startswith("mul_sum"):
        return cases.MulSum(kind.endswith("keepdim"))
    if "gelu" in kind:
        return cases.AddGelu("tanh" if kind.endswith("tanh") else "none")
    return cases.AddSilu()


CASES = (
    "matmul_bias_gelu_exact",
    "matmul_bias_gelu_tanh",
    "matmul_bias_silu",
    "add_gelu_exact",
    "add_gelu_tanh",
    "add_silu",
    "add_layernorm",
    "add_layernorm_affine",
    "mul_sum",
    "mul_sum_keepdim",
)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--source-root", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--smoke", action="store_true")
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)

    import torch
    import triton
    import triton.experimental
    source_root = args.source_root or Path(__file__).resolve().parents[2]
    if args.source_root:
        triton.experimental.__path__.insert(
            0, str(args.source_root / "python/triton/experimental"))
    from triton.experimental import graph_fusion
    from triton.experimental.graph_fusion import _backend
    from triton.runtime import driver

    torch.backends.cuda.matmul.allow_tf32 = False
    torch.backends.cuda.matmul.allow_fp16_reduced_precision_reduction = False
    torch.backends.cuda.matmul.allow_bf16_reduced_precision_reduction = False
    torch.set_num_threads(1)
    cases = _load_cases(source_root)

    report = {
        "torch": torch.__version__,
        "triton": triton.__version__,
        "triton_file": triton.__file__,
        "driver": type(driver.active).__module__,
        "device": torch.cuda.get_device_name(),
        "timing": ("synchronized host wall per logical call, including Python "
                   "dispatch and allocation; 7 rounds x 40 calls"),
        "protocol": {"rounds": 7, "calls_per_round": 40, "warmup_calls": 8,
                     "torch_threads": 1, "tf32": False,
                     "reduced_precision_reductions": False,
                     "order": "alternating"},
        "source_sha256": {
            path.name: hashlib.sha256(path.read_bytes()).hexdigest()
            for path in (source_root / "python/triton/experimental/graph_fusion").glob("*.py")
        },
        "cases": [],
        "checks": [],
    }

    def save():
        (args.output / "results.json").write_text(
            json.dumps(report, indent=2) + "\n")

    save()
    dtypes = (torch.float32,) if args.smoke else (
        torch.float32, torch.float16, torch.bfloat16)
    sizes = ((8, 128),) if args.smoke else ((16, 128), (32, 256), (64, 1024))

    with torch.no_grad():
        for kind in CASES:
            for dtype in dtypes:
                for rows, columns in sizes:
                    record = {"kind": kind, "dtype": str(dtype),
                              "shape": [rows, columns], "rows": rows,
                              "columns": columns}
                    print(json.dumps({"phase": "case", "kind": kind,
                                      "dtype": str(dtype),
                                      "shape": [rows, columns]}), flush=True)
                    try:
                        inputs = cases.inputs_for(
                            kind, "cuda", dtype, rows=rows, columns=columns)
                        module = _module_for(cases, kind, columns)
                        if kind.startswith("add_layernorm"):
                            module = module.to(device="cuda", dtype=dtype)
                        graph = torch.fx.symbolic_trace(module)
                        check_inputs = inputs
                        if kind == "add_layernorm_affine":
                            check_inputs = (inputs[0], inputs[1],
                                            module.weight, module.bias)
                        backend, reason = _backend.check(kind, check_inputs)
                        record.update(backend=backend, eligibility_reason=reason,
                                      admitted=reason is None)
                        originals = tuple(t.clone() for t in inputs)
                        start = time.perf_counter()
                        plan = graph_fusion.compile(graph, inputs)
                        actual = plan(*inputs)
                        torch.cuda.synchronize()
                        record["first_call_seconds"] = time.perf_counter() - start
                        record["plan"] = plan.explain()
                        expected = graph(*inputs)
                        record["mode"] = plan.last_report.get("mode")
                        region = (plan.last_report.get("regions") or [{}])[0]
                        record["region_reason"] = region.get("reason")
                        record["implementation"] = region.get("implementation")
                        record["kernel_launches"] = region.get("kernel_launches")
                        record["kernel_names"] = region.get("kernel_names")
                        record["native_operators"] = region.get("native_operators")

                        if dtype == torch.bfloat16:
                            atol, rtol = 3e-2, 3e-3
                        elif dtype == torch.float16:
                            atol, rtol = 3e-3, 3e-3
                        elif kind.startswith("mul_sum"):
                            atol, rtol = 3e-4, 3e-4
                        elif dtype == torch.bfloat16:
                            atol, rtol = 3e-2, 3e-3
                        elif dtype == torch.float16:
                            atol, rtol = 3e-3, 3e-3
                        else:
                            atol, rtol = 3e-4, 3e-4
                        torch.testing.assert_close(
                            actual, expected, rtol=rtol, atol=atol,
                            equal_nan=True)
                        record["max_abs_error_vs_eager"] = (
                            actual.float() - expected.float()).abs().max().item()
                        for tensor, original in zip(inputs, originals):
                            torch.testing.assert_close(
                                tensor, original, rtol=0, atol=0)
                        record["inputs_unchanged"] = True
                        record["output_shape"] = list(actual.shape)
                        record["output_dtype"] = str(actual.dtype)

                        for _ in range(8):
                            plan(*inputs)
                            graph(*inputs)
                        torch.cuda.synchronize()
                        record["cpu_preheat_seconds"] = _cpu_preheat(0.5)
                        timings = {"fused": [], "eager": []}
                        for round_index in range(7):
                            entries = (("fused", plan), ("eager", graph))
                            if round_index % 2:
                                entries = entries[::-1]
                            for label, function in entries:
                                torch.cuda.synchronize()
                                begin = time.perf_counter()
                                for _ in range(40):
                                    function(*inputs)
                                torch.cuda.synchronize()
                                per_call = (time.perf_counter() - begin) / 40
                                timings[label].append(per_call)
                        record["wall_seconds_per_call"] = timings
                        record["median_seconds_per_call"] = {
                            label: statistics.median(values)
                            for label, values in timings.items()}
                        record["min_seconds_per_call"] = {
                            label: min(values)
                            for label, values in timings.items()}
                        record["passed"] = not record["admitted"] or record["mode"] == "fused"
                        if not record["passed"]:
                            record["error"] = "admitted route unexpectedly fell back"
                    except Exception as error:
                        record.update(passed=False,
                                      error=f"{type(error).__name__}: {error}"[:1000])
                    report["cases"].append(record)
                    save()
                    print(json.dumps({key: record.get(key) for key in (
                        "kind", "dtype", "shape", "passed", "mode",
                        "eligibility_reason")}), flush=True)
    save()
    return int(any(not row.get("passed") for row in report["cases"]))


if __name__ == "__main__":
    raise SystemExit(main())
