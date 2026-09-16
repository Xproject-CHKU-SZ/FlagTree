from __future__ import annotations

import argparse
import json
import os
import time
import traceback
from dataclasses import dataclass
from pathlib import Path
from typing import Any

import torch

from model_import_adapters.dynamic_export_compat import make_onnx_probe_inputs
from model_import_adapters.compiled_execution import _retarget_factory_devices
from model_import_adapters.unified_ir import compare_outputs, load_core_aten


@dataclass
class InputMetadata:
    name: str
    type: str
    shape: list[Any]


def load_onnx_input_metadata(model_path: Path) -> list[InputMetadata]:
    """Read input metadata without importing ONNX Runtime in the XPU image."""
    import onnx

    model = onnx.load(str(model_path), load_external_data=False)
    initializer_names = {item.name for item in model.graph.initializer}
    element_types = {
        onnx.TensorProto.FLOAT: "tensor(float)",
        onnx.TensorProto.FLOAT16: "tensor(float16)",
        onnx.TensorProto.INT32: "tensor(int32)",
        onnx.TensorProto.INT64: "tensor(int64)",
        onnx.TensorProto.BOOL: "tensor(bool)",
    }
    result = []
    for item in model.graph.input:
        if item.name in initializer_names:
            continue
        tensor_type = item.type.tensor_type
        shape: list[Any] = []
        for dimension in tensor_type.shape.dim:
            if dimension.HasField("dim_value"):
                shape.append(int(dimension.dim_value))
            elif dimension.HasField("dim_param"):
                shape.append(dimension.dim_param)
            else:
                shape.append(None)
        result.append(
            InputMetadata(
                name=item.name,
                type=element_types[tensor_type.elem_type],
                shape=shape,
            )
        )
    return result


def relax_export_input_device_assertions(module: torch.fx.GraphModule) -> int:
    """Keep PT2 dtype/layout checks while allowing CPU-exported inputs on XPU."""
    count = 0
    target = torch.ops.aten._assert_tensor_metadata.default
    for node in module.graph.nodes:
        if node.op != "call_function" or node.target != target:
            continue
        kwargs = dict(node.kwargs)
        if kwargs.get("device") is not None:
            kwargs["device"] = None
            node.kwargs = kwargs
            count += 1
    module.graph.lint()
    module.recompile()
    return count


def parse_shape(value: str) -> tuple[int, int]:
    try:
        batch, sequence = value.lower().split("x", maxsplit=1)
        result = (int(batch), int(sequence))
    except (ValueError, AttributeError) as exc:
        raise argparse.ArgumentTypeError("shape must use BATCHxSEQUENCE") from exc
    if min(result) < 1:
        raise argparse.ArgumentTypeError("shape dimensions must be positive")
    return result


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Compile one dynamic Core ATen artifact once and validate several shapes on XPU."
    )
    parser.add_argument("--artifact", type=Path, required=True)
    parser.add_argument("--model", type=Path, required=True, help="source ONNX for input metadata")
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--device", default="cuda:0")
    parser.add_argument("--probe-shape", action="append", type=parse_shape, dest="probe_shapes")
    parser.add_argument("--atol", type=float, default=3e-4)
    parser.add_argument("--rtol", type=float, default=3e-4)
    return parser


def main() -> int:
    args = build_parser().parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)
    report_path = args.output_dir / "dynamic_compiled_xpu_report.json"
    report: dict[str, object] = {"status": "failed"}
    try:
        os.environ.setdefault("TORCH_COMPILE_DEBUG", "1")
        os.environ.setdefault("TRITON_KERNEL_DUMP", "1")
        os.environ.setdefault("TRITON_DUMP_DIR", str(args.output_dir / "triton-dump"))
        os.environ.setdefault("TORCHINDUCTOR_CACHE_DIR", str(args.output_dir / "inductor-cache"))

        runtime_inputs = load_onnx_input_metadata(args.model)
        input_names = [item.name for item in runtime_inputs]
        cpu_module = load_core_aten(args.artifact).module()
        device_module = load_core_aten(args.artifact).module()
        relaxed_device_assertions = relax_export_input_device_assertions(device_module)
        device_module = device_module.to(args.device)
        retargeted_factory_devices = _retarget_factory_devices(
            device_module, args.device
        )
        compile_started = time.perf_counter()
        compiled = torch.compile(device_module, fullgraph=True)
        compile_wrapper_seconds = time.perf_counter() - compile_started

        probes = []
        for batch, sequence in args.probe_shapes or [(1, 2), (2, 4), (3, 7)]:
            numpy_inputs = make_onnx_probe_inputs(runtime_inputs, batch, sequence)
            cpu_inputs = tuple(torch.from_numpy(numpy_inputs[name]) for name in input_names)
            device_inputs = tuple(value.to(args.device) for value in cpu_inputs)
            started = time.perf_counter()
            with torch.no_grad():
                expected = cpu_module(*cpu_inputs)
                actual = compiled(*device_inputs)
            torch.cuda.synchronize()
            elapsed = time.perf_counter() - started
            probes.append(
                {
                    "batch": batch,
                    "sequence": sequence,
                    "elapsed_seconds": elapsed,
                    "outputs": compare_outputs(
                        expected, actual, atol=args.atol, rtol=args.rtol
                    ),
                }
            )
        report = {
            "status": "passed",
            "artifact": str(args.artifact),
            "source_model": str(args.model),
            "device": args.device,
            "torch_compile": True,
            "fullgraph": True,
            "compiled_callable_creation_count": 1,
            "relaxed_input_device_assertion_count": relaxed_device_assertions,
            "retargeted_factory_device_count": retargeted_factory_devices,
            "compile_wrapper_seconds": compile_wrapper_seconds,
            "input_names": input_names,
            "input_types": [str(item.type) for item in runtime_inputs],
            "probes": probes,
        }
    except Exception as exc:
        report = {
            "status": "failed",
            "artifact": str(args.artifact),
            "source_model": str(args.model),
            "error": f"{type(exc).__name__}: {exc}",
            "traceback": traceback.format_exc(),
        }
    report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({k: v for k, v in report.items() if k != "traceback"}, ensure_ascii=False, indent=2))
    if report.get("status") != "passed":
        print(str(report.get("traceback", ""))[-8000:])
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
