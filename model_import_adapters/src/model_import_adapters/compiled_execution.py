"""统一图经torch.compile进入XPU后的执行与编译产物索引。"""

from __future__ import annotations

import json
from pathlib import Path
from typing import Any, Mapping

from .unified_ir import compare_outputs, load_core_aten, load_example_inputs, sha256_file


def _retarget_factory_devices(module: Any, device: str) -> int:
    """Move explicit CPU factory-op kwargs in an exported graph to the target."""

    import torch
    from torch.fx import GraphModule

    target_device = torch.device(device)
    changed_count = 0
    for child in module.modules():
        if not isinstance(child, GraphModule):
            continue
        changed = False
        for node in child.graph.nodes:
            if node.op != "call_function" or "device" not in node.kwargs:
                continue
            kwargs = dict(node.kwargs)
            source_device = kwargs.get("device")
            if source_device is None or torch.device(source_device).type != "cpu":
                continue
            kwargs["device"] = target_device
            node.kwargs = kwargs
            changed = True
            changed_count += 1
        if changed:
            child.graph.lint()
            child.recompile()
    return changed_count


def _artifact_index(root: Path) -> list[dict[str, Any]]:
    if not root.exists():
        return []
    records: list[dict[str, Any]] = []
    for path in sorted(item for item in root.rglob("*") if item.is_file()):
        records.append(
            {
                "path": str(path),
                "relative_path": str(path.relative_to(root)),
                "suffix": path.suffix.lower(),
                "size_bytes": path.stat().st_size,
                "sha256": sha256_file(path),
            }
        )
    return records


def run_exported_program_on_device(
    exported_program_path: str | Path,
    example_inputs_path: str | Path,
    input_schema: Mapping[str, Any],
    output_dir: str | Path,
    *,
    device: str = "cuda:0",
    fullgraph: bool = True,
    atol: float = 1e-4,
    rtol: float = 1e-4,
) -> dict[str, Any]:
    """回读统一图，在CPU与编译态XPU之间执行数值核对并索引产物。"""

    import torch

    exported_program_path = Path(exported_program_path).resolve()
    example_inputs_path = Path(example_inputs_path).resolve()
    output_dir = Path(output_dir).resolve()
    output_dir.mkdir(parents=True, exist_ok=True)
    dump_dir = Path(
        __import__("os").environ.get("TRITON_DUMP_DIR", output_dir / "triton-dump")
    ).resolve()
    inductor_cache = Path(
        __import__("os").environ.get("TORCHINDUCTOR_CACHE_DIR", output_dir / "inductor-cache")
    ).resolve()

    cpu_program = load_core_aten(exported_program_path)
    # ExportedProgram.module() 已保存导出时语义；PyTorch 2.5 禁止
    # 对该 GraphModule 再调用 eval()/train()。
    cpu_module = cpu_program.module()
    cpu_args, cpu_kwargs = load_example_inputs(
        example_inputs_path,
        input_schema,
        device="cpu",
    )
    with torch.no_grad():
        cpu_output = cpu_module(*cpu_args, **cpu_kwargs)

    device_program = load_core_aten(exported_program_path)
    device_module = device_program.module().to(device)
    retargeted_factory_devices = _retarget_factory_devices(device_module, device)
    device_args, device_kwargs = load_example_inputs(
        example_inputs_path,
        input_schema,
        device=device,
    )
    compiled_module = torch.compile(device_module, fullgraph=fullgraph)
    with torch.no_grad():
        device_output = compiled_module(*device_args, **device_kwargs)
    if device.startswith("cuda"):
        torch.cuda.synchronize(torch.device(device))
    outputs = compare_outputs(cpu_output, device_output, atol=atol, rtol=rtol)

    flat_output, _ = torch.utils._pytree.tree_flatten(device_output)
    tensor_devices = [str(item.device) for item in flat_output if isinstance(item, torch.Tensor)]
    dump_artifacts = _artifact_index(dump_dir)
    inductor_artifacts = _artifact_index(inductor_cache)
    stage_suffixes = {".ttir", ".ttgir", ".ttxir", ".llir", ".elf", ".xpubin"}
    triton_stage_artifacts = [
        item
        for item in dump_artifacts + inductor_artifacts
        if item["suffix"] in stage_suffixes
    ]
    report = {
        "status": "passed",
        "exported_program": {
            "path": str(exported_program_path),
            "sha256": sha256_file(exported_program_path),
        },
        "execution": {
            "device_requested": device,
            "tensor_devices": tensor_devices,
            "torch_compile": True,
            "fullgraph": fullgraph,
            "torch_cuda_available": bool(torch.cuda.is_available()),
            "visible_device_count": int(torch.cuda.device_count()),
            "visible_device_name": (
                torch.cuda.get_device_name(torch.device(device).index or 0)
                if device.startswith("cuda") and torch.cuda.is_available()
                else None
            ),
            "outputs": outputs,
            "retargeted_factory_device_count": retargeted_factory_devices,
        },
        "compiler_artifacts": {
            "triton_dump_dir": str(dump_dir),
            "inductor_cache_dir": str(inductor_cache),
            "triton_dump_files": dump_artifacts,
            "inductor_cache_files": inductor_artifacts,
            "triton_stage_files": triton_stage_artifacts,
            "triton_stage_evidence": (
                "found"
                if triton_stage_artifacts
                else "not_found_in_configured_dump_locations"
            ),
            "evidence_note": (
                "若未发现Triton阶段文件，本报告只证明ExportedProgram经"
                "torch.compile在目标设备正确执行，不据此推定所采用的"
                "具体Lowering路径。"
            ),
        },
    }
    report_path = output_dir / "compiled_xpu_report.json"
    report_path.write_text(
        json.dumps(report, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )
    return report
