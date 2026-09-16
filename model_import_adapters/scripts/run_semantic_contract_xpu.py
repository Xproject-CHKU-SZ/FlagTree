#!/usr/bin/env python3
"""Validate a semantic contract, then compile its Core ATen artifact on XPU."""

from __future__ import annotations

import argparse
import json
import os
import traceback
from pathlib import Path
from typing import Any

import torch

from flagtree_model_ir import require_valid_semantic_contract
from model_import_adapters.compiled_execution import _retarget_factory_devices
from model_import_adapters.unified_ir import (
    compare_outputs,
    load_core_aten,
    load_example_inputs,
    sha256_file,
)


def _relax_export_input_device_assertions(module: torch.fx.GraphModule) -> int:
    """Retain dtype/layout assertions while accepting XPU input devices."""

    count = 0
    target = torch.ops.aten._assert_tensor_metadata.default
    for child in module.modules():
        if not isinstance(child, torch.fx.GraphModule):
            continue
        changed = False
        for node in child.graph.nodes:
            if node.op != "call_function" or node.target != target:
                continue
            kwargs = dict(node.kwargs)
            if kwargs.get("device") is None:
                continue
            kwargs["device"] = None
            node.kwargs = kwargs
            count += 1
            changed = True
        if changed:
            child.graph.lint()
            child.recompile()
    return count


def _load_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def run(artifact_dir: Path, output_dir: Path, device: str) -> dict[str, Any]:
    artifact_dir = artifact_dir.resolve()
    output_dir = output_dir.resolve()
    output_dir.mkdir(parents=True, exist_ok=True)
    manifest_path = artifact_dir / "manifest.json"
    semantics_path = artifact_dir / "semantics.json"
    program_path = artifact_dir / "model.core_aten.pt2"
    inputs_path = artifact_dir / "example_inputs.npz"

    manifest = _load_json(manifest_path)
    semantics = _load_json(semantics_path)
    require_valid_semantic_contract(semantics)
    expected_semantics_hash = manifest["semantics_artifact"]["sha256"]
    actual_semantics_hash = sha256_file(semantics_path)
    if actual_semantics_hash != expected_semantics_hash:
        raise RuntimeError("semantics.json SHA-256 does not match manifest.json")

    os.environ.setdefault("TORCH_COMPILE_DEBUG", "1")
    os.environ.setdefault("TRITON_KERNEL_DUMP", "1")
    os.environ.setdefault("TRITON_DUMP_DIR", str(output_dir / "triton-dump"))
    os.environ.setdefault("TORCHINDUCTOR_CACHE_DIR", str(output_dir / "inductor-cache"))

    input_schema = manifest["input_archive"]["schema"]
    cpu_args, cpu_kwargs = load_example_inputs(inputs_path, input_schema, device="cpu")
    cpu_module = load_core_aten(program_path).module()
    device_module = load_core_aten(program_path).module()
    relaxed_assertions = _relax_export_input_device_assertions(device_module)
    device_module = device_module.to(device)
    retargeted_factories = _retarget_factory_devices(device_module, device)
    device_args = tuple(item.to(device) for item in cpu_args)
    device_kwargs = {name: item.to(device) for name, item in cpu_kwargs.items()}
    compiled = torch.compile(device_module, fullgraph=True)
    with torch.no_grad():
        expected = cpu_module(*cpu_args, **cpu_kwargs)
        actual = compiled(*device_args, **device_kwargs)
    if device.startswith("cuda"):
        torch.cuda.synchronize(torch.device(device))

    return {
        "status": "passed",
        "semantic_contract": {
            "path": str(semantics_path),
            "sha256": actual_semantics_hash,
            "registry_version": semantics["registry_version"],
            "registry_sha256": semantics["registry_sha256"],
            "validation": semantics["validation"],
            "coverage": semantics["coverage"],
        },
        "core_aten_artifact": {
            "path": str(program_path),
            "sha256": sha256_file(program_path),
        },
        "execution": {
            "device": device,
            "torch_version": torch.__version__,
            "torch_compile": True,
            "fullgraph": True,
            "relaxed_input_device_assertion_count": relaxed_assertions,
            "retargeted_factory_device_count": retargeted_factories,
            "outputs": compare_outputs(expected, actual, atol=3e-4, rtol=3e-4),
        },
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--artifact-dir", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--device", default="cuda:0")
    args = parser.parse_args()
    report_path = args.output_dir.resolve() / "semantic_contract_xpu_report.json"
    try:
        report = run(args.artifact_dir, args.output_dir, args.device)
    except Exception as exc:
        report = {
            "status": "failed",
            "error": f"{type(exc).__name__}: {exc}",
            "traceback": traceback.format_exc(),
        }
    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(
        json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    print(json.dumps({key: value for key, value in report.items() if key != "traceback"}, ensure_ascii=False, indent=2))
    if report["status"] != "passed":
        print(report.get("traceback", "")[-8000:])
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
