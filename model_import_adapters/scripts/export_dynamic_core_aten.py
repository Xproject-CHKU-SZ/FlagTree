from __future__ import annotations

import argparse
import json
import os
import sys
import traceback
from pathlib import Path

if os.environ.get("DISABLE_XPYTORCH") != "1":
    os.environ["DISABLE_XPYTORCH"] = "1"
    os.execv(sys.executable, [sys.executable, *sys.argv])

import onnxruntime as ort
import torch

from model_import_adapters.dynamic_export_compat import (
    make_onnx_probe_inputs,
    rewrite_onnx2torch_symbolic_shapes,
)
from model_import_adapters.export_compat import rewrite_onnx2torch_for_export
from model_import_adapters.onnx_adapter import OnnxAdapter
from model_import_adapters.unified_ir import (
    compare_outputs,
    load_core_aten,
    onnx_dynamic_shapes,
)


def parse_shape(value: str) -> tuple[int, int]:
    try:
        batch, sequence = value.lower().split("x", maxsplit=1)
        result = (int(batch), int(sequence))
    except (ValueError, AttributeError) as exc:
        raise argparse.ArgumentTypeError("shape must use BATCHxSEQUENCE, for example 3x7") from exc
    if min(result) < 1:
        raise argparse.ArgumentTypeError("shape dimensions must be positive")
    return result


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Export an ONNX or TensorFlow-converted ONNX model as dynamic Core ATen."
    )
    parser.add_argument("--model", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--source-kind", choices=("onnx", "tensorflow"), default="onnx")
    parser.add_argument("--max-batch", type=int, default=8)
    parser.add_argument("--max-sequence", type=int, default=32)
    parser.add_argument("--export-shape", type=parse_shape, default=(2, 4))
    parser.add_argument("--atol", type=float, default=3e-4)
    parser.add_argument("--rtol", type=float, default=3e-4)
    parser.add_argument(
        "--probe-shape",
        action="append",
        type=parse_shape,
        dest="probe_shapes",
        help="repeatable BATCHxSEQUENCE validation shape",
    )
    return parser


def main() -> int:
    args = build_parser().parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)
    report_path = args.output_dir / "dynamic_core_aten_report.json"
    report: dict[str, object] = {"status": "failed"}
    try:
        if args.export_shape[0] == 1 or args.export_shape[1] == 1:
            raise ValueError(
                "--export-shape dimensions must be greater than 1 because PyTorch 2.5 "
                "specializes dimensions whose example value is 1"
            )
        adapter = OnnxAdapter(args.model)
        adapter.check()
        runtime_inputs = adapter._runtime_inputs()
        input_names = [item.name for item in runtime_inputs]
        export_numpy = make_onnx_probe_inputs(runtime_inputs, *args.export_shape)
        export_inputs = tuple(torch.from_numpy(export_numpy[name]) for name in input_names)
        module = adapter.to_torch().eval()

        with torch.no_grad():
            before_rewrite = module(*export_inputs)
        symbolic_rewrites = rewrite_onnx2torch_symbolic_shapes(module)
        static_rewrites = rewrite_onnx2torch_for_export(module)
        with torch.no_grad():
            after_rewrite = module(*export_inputs)
        rewrite_comparison = compare_outputs(before_rewrite, after_rewrite, atol=0.0, rtol=0.0)

        dynamic_shapes = onnx_dynamic_shapes(
            runtime_inputs,
            max_batch=args.max_batch,
            max_other_dimension=args.max_sequence,
        )
        exported = torch.export.export(
            module,
            export_inputs,
            dynamic_shapes=dynamic_shapes,
            strict=False,
        ).run_decompositions()
        artifact_path = args.output_dir / "model_dynamic_core_aten.pt2"
        torch.export.save(exported, artifact_path)

        loaded = load_core_aten(artifact_path).module()
        session = ort.InferenceSession(str(args.model), providers=["CPUExecutionProvider"])
        probe_shapes = args.probe_shapes or [(1, 2), args.export_shape, (3, 7)]
        probes = []
        for batch, sequence in probe_shapes:
            if batch > args.max_batch or sequence > args.max_sequence:
                raise ValueError(
                    f"probe {batch}x{sequence} exceeds configured bounds "
                    f"{args.max_batch}x{args.max_sequence}"
                )
            numpy_inputs = make_onnx_probe_inputs(runtime_inputs, batch, sequence)
            torch_inputs = tuple(torch.from_numpy(numpy_inputs[name]) for name in input_names)
            expected = tuple(torch.from_numpy(value) for value in session.run(None, numpy_inputs))
            with torch.no_grad():
                converted = module(*torch_inputs)
                actual = loaded(*torch_inputs)
            preservation = compare_outputs(converted, actual, atol=0.0, rtol=0.0)
            onnx_comparison = compare_outputs(
                expected,
                actual,
                atol=args.atol,
                rtol=args.rtol,
            )
            probes.append(
                {
                    "batch": batch,
                    "sequence": sequence,
                    # Keep the historical key for report consumers while also
                    # exposing the two distinct validation boundaries.
                    "outputs": onnx_comparison,
                    "core_aten_vs_onnxruntime": onnx_comparison,
                    "core_aten_vs_converted_torch": preservation,
                }
            )

        report = {
            "status": "passed",
            "source_kind": args.source_kind,
            "source_model": str(args.model),
            "artifact": str(artifact_path),
            "export_shape": list(args.export_shape),
            "input_names": input_names,
            "input_types": [str(item.type) for item in runtime_inputs],
            "validation_tolerances": {"atol": args.atol, "rtol": args.rtol},
            "symbolic_rewrite_count": len(symbolic_rewrites),
            "symbolic_rewrites": symbolic_rewrites,
            "static_rewrite_count": int(static_rewrites.get("count", 0)),
            "static_rewrite_kinds": static_rewrites.get("operator_counts", {}),
            "static_rewrites": static_rewrites,
            "rewrite_comparison": rewrite_comparison,
            "range_constraints": {
                str(symbol): str(constraint)
                for symbol, constraint in exported.range_constraints.items()
            },
            "core_aten_graph_node_count": sum(1 for _ in exported.graph_module.graph.nodes),
            "probes": probes,
        }
    except Exception as exc:
        report = {
            "status": "failed",
            "source_kind": args.source_kind,
            "source_model": str(args.model),
            "error": f"{type(exc).__name__}: {exc}",
            "traceback": traceback.format_exc(),
        }
    report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    visible = {key: value for key, value in report.items() if key not in ("symbolic_rewrites", "static_rewrites", "traceback")}
    print(json.dumps(visible, ensure_ascii=False, indent=2))
    if report.get("status") != "passed":
        print(str(report.get("traceback", ""))[-8000:])
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
